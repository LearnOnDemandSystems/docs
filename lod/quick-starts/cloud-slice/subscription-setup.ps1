$spDisplayName = ''
$cancel = $false

function aad-auth{
    try{
        $currentTenant = Get-AzureADTenantDetail
    }catch{
        Connect-AzureAD
        $currentTenant = Get-AzureADTenantDetail
    }
    
    "`n"
    "Current Tenant Information Below:"
    "Name: $($currentTenant.DisplayName)"
    "ID: $($currentTenant.ObjectId)"
    "`n"
    Write-Host -ForegroundColor Yellow 'Validate you are in the correct tenant according to the above information.'
    Write-Host -ForegroundColor Cyan -NoNewline 'If this is the correct tenant, press Enter. If it is the incorrect tenant, type "Cancel":'
    $confirmation = Read-Host 
    "`n"
    if($confirmation -eq "Cancel"){
        $script:cancel = $true
        return
    }
}

function get-spperms{
    $msGraphPrincipal = Get-AzureADServicePrincipal -All $true | Where-Object {$_.DisplayName -eq "Microsoft Graph"}
    $script:msGraphAccess = New-Object -TypeName "Microsoft.Open.AzureAD.Model.RequiredResourceAccess"
    $script:msGraphAccess.ResourceAppId = $msGraphPrincipal.AppId
    foreach($guid in $($msGraphPrincipal.Oauth2Permissions.Id)){
        $resourceAccess = New-Object -TypeName "microsoft.open.azuread.model.resourceAccess" -ArgumentList $guid, "Scope"
        $script:msGraphAccess.ResourceAccess += $resourceAccess
    }
    foreach($guid in $($msGraphPrincipal.AppRoles.Id)){
        $resourceAccess = New-Object -TypeName "microsoft.open.azuread.model.resourceAccess" -ArgumentList $guid, "Role"
        $script:msGraphAccess.ResourceAccess += $resourceAccess
    }

    $aadGraphPrincipal = Get-AzureADServicePrincipal -All $true | Where-Object {$_.DisplayName -eq "Windows Azure Active Directory"}
    $script:aadGraphAccess = New-Object -TypeName "Microsoft.Open.AzureAD.Model.RequiredResourceAccess"
    $script:aadGraphAccess.ResourceAppId = $aadGraphPrincipal.AppId
    foreach($guid in $($aadGraphPrincipal.Oauth2Permissions.Id)){
        $resourceAccess = New-Object -TypeName "microsoft.open.azuread.model.resourceAccess" -ArgumentList $guid, "Scope"
        $script:aadGraphAccess.ResourceAccess += $resourceAccess
    }
    foreach($guid in $($aadGraphPrincipal.AppRoles.Id)){
        $resourceAccess = New-Object -TypeName "microsoft.open.azuread.model.resourceAccess" -ArgumentList $guid, "Role"
        $script:aadGraphAccess.ResourceAccess += $resourceAccess
    }
}

function get-sp($spDisplayName){
    $script:sp = Get-AzureADServicePrincipal -All $true | Where-Object {$_.DisplayName -eq $spDisplayName}
    if($sp -ne $null){
        $app = Get-AzureADApplication -All $true | Where-Object {$_.DisplayName -eq $spDisplayName}
        Set-AzureADApplication -ObjectId $app.ObjectId -RequiredResourceAccess $msGraphAccess,$aadGraphAccess
    }
}

function create-sp($spDisplayName){
    "`n"
    "Creating new Service Principal"
    $signInURL = "https://labondemand.com/User/SignIn"

    $app = New-AzureADApplication -DisplayName $spDisplayName -HomePage $signInURL -ReplyUrl $signInURL -RequiredResourceAccess $msGraphAccess,$aadGraphAccess
    $script:sp = New-AzureADServicePrincipal -AppId $app.AppId 
    $secret = New-AzureADApplicationPasswordCredential -ObjectId $app.ObjectId -CustomKeyIdentifier "LOD Initial Setup" -EndDate (get-date).AddYears(50)
    $companyAdminRole = Get-AzureADDirectoryRole | Where-Object DisplayName -eq 'Company Administrator'
    Add-AzureADDirectoryRoleMember -ObjectId $companyAdminRole.ObjectId -RefObjectId $sp.ObjectId
    
    $script:AppInfo = [pscustomobject]@{
        'Application Name' = $app.DisplayName
        'Application Id' = $app.AppId
        'Application Secret' =  $secret.Value
    }
}

function create-role-assignment($spDisplayName,$subId,$sp){
    "Validating Service Principal Role Assignment..."    
    $roleAssignment = Get-AzRoleAssignment -ObjectId $sp.ObjectId -Scope "/subscriptions/$subId/" -RoleDefinitionName "Owner" -ErrorAction Ignore
    if($roleAssignment -eq $null){
        Start-Sleep -Seconds 30
        $addRole = New-AzRoleAssignment -ObjectId $sp.ObjectId -Scope "/subscriptions/$subId/" -RoleDefinitionName "Owner" -ErrorAction Ignore
    }
    "Service Principal assigned as Owner to subscription $subId."    
}

function get-subscriptions{
    $script:subscriptionIds = @()
    "`n"
    $subscriptions = Get-AzureRMSubscription | Sort-Object -Property Name
    $menu = @{}
    $script:subObjects = @()
    for ($i=1;$i -le $subscriptions.count; $i++) {
        $script:subObjects += [pscustomobject]@{
            'Number' = $i
            'Name' = $subscriptions[$i-1].Name
            'Id' = $subscriptions[$i-1].Id
        }
    }
}

function select-subscriptions{
    Do {
        $script:subObjects | ft
        Write-Host -ForegroundColor Yellow "Currently Selected:"
        if($subscriptionIds -eq $null){
            "None"
        }else{
            $subscriptionIds | ft
        }
        "`n"
        Write-Host -ForegroundColor Cyan -NoNewline 'From the table above select Subscription Number(s), input 0 leave blank when ready to proceed with current selection, or for exit/reset options:'
        [int]$ans = Read-Host
        if($ans -eq '0'){
            Do{
            "`n"
            "Selected Subscriptions for Configuration:"
            $script:subscriptionIds | ft
            Write-Host -ForegroundColor Cyan -NoNewline 'Would you like to reset your selections, exit setup, add more subscriptions to the list, or continue with current selections? (Reset/Cancel/Add/Proceed):'
            $continue = Read-Host
            if($continue -eq "Reset"){
                $script:subscriptionIds = @()
                return
            }elseif($continue -eq "Exit"){
                Exit "Setup Cancelled."
            }elseif($continue -eq "Proceed"){
                $script:proceed = $true
                return
            }elseif($continue -eq "Add"){
                break
            }else{
                "Invalid Option"
            }
            }while($true)
        }else{
            $selection = $subObjects | ? number -eq $ans
            $script:subscriptionIds += $selection
            $script:subObjects = $subObjects | ? id -NotIn $subscriptionIds.Id
        }
    } While ($True)
}

function configure-resource-providers($subId,$subscriptionName){
    "Registering Resource Providers for subscription $subscriptionName - ${subId}:"
    # Register most providers
    Get-AzResourceProvider -ListAvailable | Where-Object {$_.RegistrationState -ne "Registered"} | foreach-object{
        $registering = Register-AzResourceProvider -ProviderNamespace $_.ProviderNamespace -ErrorAction Ignore
        if($registering -ne $null){
            "$($registering.ProviderNamespace): $($registering.RegistrationState)"
        }
    }

    # Register Databricks Provider
    $databricks = Get-AzResourceProvider -ProviderNamespace Microsoft.Databricks
    if($databricks.RegistrationState -ne "Registered"){
        $registering = Register-AResourceProvider -ProviderNamespace Microsoft.Databricks
        "$($registering.ProviderNamespace): $($registering.RegistrationState)"
    }

    # Register site recovery provider
    $siterecovery = Get-AzResourceProvider -ProviderNamespace Microsoft.SiteRecovery
    if($siterecovery.RegistrationState -ne "Registered"){
        $registering = Register-AzResourceProvider -ProviderNamespace Microsoft.SiteRecovery
        "$($registering.ProviderNamespace): $($registering.RegistrationState)"
    }
    "All resource providers registered for $subscriptionName."
}

aad-auth
if($cancel -eq $true){return "You have identified this as the incorrect tenant. Please login to the correct tenant and try again."}
Write-Host -ForegroundColor Cyan -NoNewline 'Enter the name of your service principal here. If left blank, it will default to "cloud-slice-app":'
$spDisplayName = Read-Host
if($spDisplayName -eq '' -or $spDisplayName -eq $null){
    $spDisplayName = "cloud-slice-app"
}
"Service Principal Name: $spDisplayName"
get-spperms
get-sp -spDisplayName $spDisplayName
if($sp -eq $null){
    create-sp -spDisplayName $spDisplayName
    Write-Host "Service Principal Created, use the below items for authentication info."
    Write-Warning "Be sure to record your secret somewhere secure! This cannot be retrieved in the future."
    $AppInfo | fl
    Write-Host -ForegroundColor Cyan -NoNewline 'After you have put your authentication information in a secure location, press the Enter key when ready to continue:'
    Read-Host
}else{
    "`n"
    "Service Principal found, validating permissions."
}

"Continuing to Subscription Configuration"
Do{
    get-subscriptions
    select-subscriptions
    if($script:proceed -eq $true){
        break
    }
}while($true)
foreach($subscriptionId in $script:subscriptionIds){
    $subId = $subscriptionId.Id
    $subscription = Select-AzSubscription -Subscription $subId
    $subscriptionName = $subscription.Subscription.Name
    Write-Host -ForegroundColor Yellow "`nConfiguring $subscriptionName - $subId"
    if($cancel -eq $true){return "Cancelling Subscription Setup."}    
    configure-resource-providers -subId $subId -subscriptionName $subscriptionName
    create-role-assignment -spDisplayName $spDisplayName -subId $subId -sp $sp
}
