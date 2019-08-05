# Object Matching Scoring Sample (Azure PowerShell)

This script contains the following sections:
- [Define Variables](#om-wps-param)
- [Retrieve Items to Score](#om-wps-retrieve)
- [Establish Results](#om-wps-function)
- [Validate Items Exist](#om-wps-validation)
- [Scoring and Output](#om-wps-scoring)
- [Full Script](#om-wps-full)

## Define Variables {om-wps-param}
This is the beginning of our script, in this section we outline the various variables we will use throughout the script.

```linenums
param(
    $result = $false,
    $ItemId = "File-Settings-1",
    $filepath = 'C:\PS Scripts\Find 0 Byte Files.ps1'
)
```
- We begin our script with a "param()" section to easily identify and separate these variables. Containing them within "param()" is optional, but helps with script readability.

- The first variable we will define on every item is `$result = $false`. This establishes from the beginning that the user has gotten the item incorrect - we will use a `$result = $true` flag later to identify when they have gotten it correct.

- After defining a result of false, we define our "ItemId". This is however you would like to identify the item. You may already have a structure for how you define your exam items, or it could be some simple within the context of just that lab.

- Lastly, define any custom variables you will need within your script. While the Lab on Demand replacement tokens will work properly and replace as text anywhere in your script, it is a best practice to actually turn them into a variable so that bulk of the script is natural to the scripting language.

    > [!ALERT] Ensure any Replacement Tokens placed into a variable are done so wrapped with single quotes (**'token'**) and not double quotes (**"token"**).
    >
    > - When you enclose a string in single-quotation marks (a single-quoted string), the string is passed to the command exactly as you type it. No substitution is performed.
    > - When you enclose a string in double quotation marks (a double-quoted string), variable names that are preceded by a dollar sign ($) are replaced with the variable's value before the string is passed to the command for processing.
    > - [Source: Microsoft Docs](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_quoting_rules?view=powershell-6)
    >
    > By ensuring to use single quotes, it reduces risk of the variable not functioning as you would expect.

## Retrieve Items to Score {om-wps-retrieve}
After defining any variables to be used throughout our script, we must obtain any items that may be scored. 

```linenums
try{
    $file = Get-Item -Path $filepath -Force 
}
catch{}
```

- Here we should place any scoring commands into a try/catch - where the catch is left empty.
    - This will run the commands within it, and ignore any error messages that may come out.
- Within the "Try" section of your try/catch, contain each command within a variable so that it can be referenced later.

## Establish Results {om-wps-function}
After establishing the commands needed to retrieve the items desired to score, we must establish what we desire the value of those items to be and what the user's configuration of those items are.

```linenums
function Item-Details{

    $script:useritem = [pscustomobject]@{
        'File Name' = $file.Name
        Hidden = $file.Mode
        'Read Only' = $file.IsReadOnly
    }

    $script:correctitem = [pscustomobject]@{
        'File Name' = 'Find 0 Byte Files.ps1'
        Hidden  = '.{3}h.{2}'
        'Read Only' = 'True'
    }
}
```

- Item definitions within our script are stored within a function so that we can define it now but run it later in the script.
    - This also aids in script readability as it keeps these in a clearly defined section.
- For both the user's configuration and the correct configuration, we will create an object and store it in a variable.
- Values for the user's configuration all reference the item(s) we identified and stored in a variable in our last section. We then extract sub-properties that we will specifically be scoring.
- The values for the correct item are what we expect those user values to be.

## Validate Items Exist {om-wps-validation}

Now that we have established exactly what will be scored, the script must validate that the items exist.
```linenums
if ($file -ne $null) {
```
- Here we identify the opening of an "if" statement where we check that our scored item exists. 
    - What occurs after validation is outlined in the next section.

> If there were multiple items that needed to validated, we would validate them all in this single if statement. That may make this line look something more like:
> ```linenums
> if ($file -ne $null -and $file2 -ne $null) {
> ```

## Scoring and Output {om-wps-scoring}

After establishing what all of the user's settings should be, we must turn them into scored data. This section is where all the actual scoring occurs. This script performs different tasks based on if our previous validation was successful or not.

### Validation Successful

```linenums
# DO NOT EDIT BELOW THIS LINE

    # Determine if the resource has the required configuration
    Item-Details

    # Determine pass/fail result and return evidence
    $CompletionMessage = "Item ${ItemId}: Incorrect`n"
    if ($useritem -match $correctitem) {
        $result = $True
        $CompletionMessage = "Item ${ItemId}: Correct`n"        
    } 

    $CompletionMessage
    $userconfigheading = "User's Settings:"
    $userconfigheading
    $('-' * $userconfigheading.Length)
    $useritem | Format-List
    if ($result -eq $false) {
        $correctheading = "Expected Settings:"
        $correctheading
        $('-' * $correctheading.Length)
        $correctitem | Format-List
    }
```

- When validation is successful, the "Item-Details" function we built earlier (where our comparison objects were created) is run.
- If the user's items correctly match our expected values, we establish `$result = $True` and provides the user's configuration of the settings for the tested item(s).
    - `$result` is run at the end of the script and if True will inform LOD that the item was correct.
    - Example output:
        ![](./images/om-wps-correct.png?raw=true){400}
- If the user's items did not accurately match the expected values, the script outputs both the user's configured settings as-tested as well as what the correct settings would have been.
    - Example output:
        ![](./images/om-wps-incorrect.png?raw=true){400}

### Validation Unsuccessful

```linenums
} else {
    $CompletionMessage = "Item ${ItemId}: Incorrect`n"    
    $CompletionMessage    
    # Output errors if resources not found
    $errorheading = "Errors:"
    $errorheading
    $('-' * $errorheading.Length)
    if($Error -ne $null){
        $i = 0
        foreach($er in $Error){
            $i++
            "Command ${i}: $($er.InvocationInfo.Line)`nError Message ${i}: $($er.Exception.Message)`n"
        }
    } else {
        "No Errors Detected, but resources not found"
    }
}
$result
```
1. If one or more tested items were missing, the script outputs either the actual error message of any commands that failed to run. 
    - Collected Errors:
        ![](./images/om-wps-missing-errors.png?raw=true){400}

## Full Script {om-wps-full}
To see all these components together in a single script, expand the section below.
> [!KNOWLEDGE]
>
> ```linenums
> param(
>     $result = $false,
>     $ItemId = "File-Settings-1",
>     $filepath = 'C:\PS Scripts\Find 0 Byte Files.ps1'
> )
> 
> try{
>     $file = Get-Item -Path $filepath -Force    
> }
> catch{}
> 
> function Item-Details{
> 
>     $script:useritem = [pscustomobject]@{
>         'File Name' = $file.Name
>         Hidden = $file.Mode
>         'Read Only' = $file.IsReadOnly
>     }
> 
>     $script:correctitem = [pscustomobject]@{
>         'File Name' = 'Find 0 Byte Files.ps1'
>         Hidden  = '.{3}h.{2}'
>         'Read Only' = 'True'
>     }
> }
> 
> 
> if ($file -ne $null) {
> 
> # DO NOT EDIT BELOW THIS LINE
> 
>     # Determine if the resource has the required configuration
>     Item-Details
> 
>     # Determine pass/fail result
>     $CompletionMessage = "Item ${ItemId}: Incorrect`n"
>     if ($useritem -match $correctitem) {
>         $result = $True
>         $CompletionMessage = "Item ${ItemId}: Correct`n"        
>     } 
> 
>     # Return evidence
>     $CompletionMessage
>     $userconfigheading = "User's Settings:"
>     $userconfigheading
>     $('-' * $userconfigheading.Length)
>     $useritem | Format-List
>     if ($result -eq $false) {
>         $correctheading = "Expected Settings:"
>         $correctheading
>         $('-' * $correctheading.Length)
>         $correctitem | Format-List
>     }
> } else {
>     $CompletionMessage = "Item ${ItemId}: Incorrect`n"    
>     $CompletionMessage    
>     # Output errors if resources not found
>     $errorheading = "Errors:"
>     $errorheading
>     $('-' * $errorheading.Length)
>     if($Error -ne $null){
>         $i = 0
>         foreach($er in $Error){
>             $i++
>             "Command ${i}: $($er.InvocationInfo.Line)`nError Message ${i}: $($er.Exception.Message)`n"
>         }
>     } else {
>         "No Errors Detected, but resources not found"
>     }
> }
> $result
> ```
