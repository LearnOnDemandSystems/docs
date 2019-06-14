# If Statement Scoring Sample (Azure PowerShell)

This script contains the following sections:
- [Define Variables](#if-azps-param)
- [Retrieve Items to Score](#if-azps-retrieve)
- [Establish Results](#if-azps-function)
- [Scoring and Output](#if-azps-scoring)
- [Full Script](#if-azps-full)


## Define Variables {if-azps-param}
This is the beginning of our script, in this section we outline the various variables we will use throughout the script.

```
param (
    $successmessage = "Task successfully completed!"    
    $LabInstanceID = '@lab.LabInstance.Id',
    $resourceGroupName = '@lab.CloudResourceGroup(###).Name',
    $storageAccountName = "storacct${LabInstanceID}",
)
```

- We begin our script with a "param()" section to easily identify and separate these variables. Containing them within "param()" is optional, but helps with script readability.
- The first variable we will define is the success message.
    - This is the message that you will provide your user if they complete the item successfully. This could be something simple and universal as seen here, or more specific to an item.
- Here you define any custom variables you will need within your script. While the Lab on Demand replacement tokens will work properly and replace as text anywhere in your script, it is a best practice to actually turn them into a variable so that the bulk of the script is natural to the scripting language.

    > [!ALERT] Ensure any Replacement Tokens placed into a variable are done so wrapped with single quotes (**'token'**) and not double quotes (**"token"**).
    >
    > - When you enclose a string in single-quotation marks (a single-quoted string), the string is passed to the command exactly as you type it. No substitution is performed.
    > - When you enclose a string in double quotation marks (a double-quoted string), variable names that are preceded by a dollar sign ($) are replaced with the variable's value before the string is passed to the command for processing.
    > - [Source: Microsoft Docs](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_quoting_rules?view=powershell-6)
    >
    > By ensuring to use single quotes, it reduces risk of the variable not functioning as you would expect.

## Retrieve Items to Score {if-azps-retrieve}
After defining any variables to be used throughout our script, we must obtain any items that may be scored. 

```
function scoredItem{

    $storageAccount = Get-AzureRmStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName

    ...
    ...
    ...
}
```

- Here we place any scoring commands into a function so that we can define it now but run it later in the script.
- Within the function, contain each command within a variable so that it can be referenced later.

## Establish Results {if-azps-function}
After establishing the commands needed to retrieve the items desired to score, we must establish what we desire the value of those items to be and if the user's configuration meets those values.

```
    if ($storageAccount -eq $null) {
        $evidence += "Storage Account Not Found.`n"
    }

    if ($storageAccount.Location -ne "eastus2") {
        $evidence += "Location not set to eastus2.`n"
    }

    if ($storageAccount.AccessTier -ne "Hot") {
        $evidence += "Access Tier not set to Hot.`n"
    }
    
    if ($evidence.Length -gt 0) {
        throw $evidence
    }
```

- To establish results within our script,a series of "if" statements will be utilized to validate item settings are correct.
    - If a setting matches our desired value, the script simply continues to progress.
    - If a setting does not match our desired value, the script will add a statement to our "evidence" that will be discussed later.
        - Ensure you test your script and that output comes out as desired. You will see there is a `n at the end of each line so that it will force a new line to be created.
- The first if statement simply validates that our scored item exists at all before later ones validate specific settings.
- The final if statement will be the same in every item, if evidence exists we will output it.

## Scoring and Output {if-azps-scoring}

After establishing what all of the user's settings should be, we must turn them into scored data. This section is where all the actual scoring occurs. 

```
function Evaluate{ 
    $result = $true
    $evidence = @()

    try {
        scoredItem
    } catch {
        $result = $false
        $evidence += $_.Exception.Message
    }

    if ($result -eq $true){
        $evidence = $successMessage        
    }

    $evidence
    $result
}

Evaluate
```

- Our evaluation code here is contained within a function, this is optional and simply allows for cleaner and easier to read code.
- We first establish a `$result = $true` to identify that the user is correct unless our evidence proves otherwise.
- We then create our evidence variable as an empty array.
    - Although we have defined evidence earlier in our script, that was within a function that has not yet run. Here we are technically defining it for the first time.
- Following this is a try/catch loop.
    - Within the "try" section we simply run the function we defined previously.
    - Anything within the "catch" section only runs if an error occurs within our function. In this sections we add `$result = $false` to identify that the user got the item incorrect, and we add any errors into our evidence.
- If the user was correct, we define our evidence to match our success message.
- Lastly we output any evidence retrieved along the way and our result variable value to mark the item correct or incorrect.
    - If the user's configuration was correct they will receive only the success message as output.
    - Example Output:
        ![](./images/if-azps-correct.png?raw=true){400}
    - If the user's configuration was incorrect, they will receive the evidence we collected as output.
    - Example Output:    
        ![](./images/if-azps-incorrect.png?raw=true){400}
        
## Full Script {om-azps-full}
To see all these components together in a single script, expand the section below.

> [!KNOWLEDGE]
>
> ```
> param (
>     $successmessage = "Task successfully completed!"        
>     $LabInstanceID = "@lab.LabInstance.Id",
>     $resourceGroupName = "@lab.CloudResourceGroup(###).Name",
>     $storageAccountName = "storacct${LabInstanceID}",
> )
> 
> 
> 
> function scoredItem{
> 
>     $storageAccount = Get-AzureRmStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName
> 
>     if ($storageAccount -eq $null) {
>         $evidence += "Storage Account Not Found.`n"
>     }
> 
>     if ($storageAccount.Location -ne "eastus2") {
>         $evidence += "Location not set to eastus2.`n"
>     }
> 
>     if ($storageAccount.AccessTier -ne "Hot") {
>         $evidence += "Access Tier not set to Hot.`n"
>     }
>     
>     if ($evidence.Length -gt 0) {
>         throw $evidence
>     }
> }
> 
> function Evaluate{ 
>     $result = $true
>     $evidence = @()
> 
>     try {
>         scoredItem
>     } catch {
>         $result = $false
>         $evidence += $_.Exception.Message
>     }
> 
>     if ($result -eq $true){
>         $evidence = $successMessage        
>     }
> 
>     $evidence
>     $result
> }
> 
> Evaluate
> ```
