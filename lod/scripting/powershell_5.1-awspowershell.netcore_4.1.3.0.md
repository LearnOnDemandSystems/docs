# PowerShell 5.1 with AWSPowerShell.netcore 4.1.3.0

**This is a legacy script execution environment.**      

## Interacting with Lab on Demand

Your scripts can communicate success or failure to LOD in one of two ways.

### Return a Boolean value 

```PowerShell
//do stuff... all good
return true
```

```PowerShell
//do stuff... uh oh
return false
```

### Use setActivityResult

```PowerShell
//do stuff... all good
Set-ActivityResult -Correct
```

```
//do stuff... uh oh
Set-ActivityResult -Incorrect
```

You can also report the result as a score percentage...

```PowerShell
//do stuff... we want to report success and set the score value as 50%
Set-ActivityResult -Score .5
```

### Send a Notification to the User

Notifications appear as real-time toasts in the lab client.

```PowerShell
Send-LabNotification -Message "Hello from a script"
```

### Lab Variables

Lab variables are always string name/value pairs. Variable values are scoped to the lab instances and become avaialble within the lab instructions as well as subsequent script executions. 

```PowerShell
Set-LabVariable -Name firstName -Value John
```

You can "receive" a variable in your script...

```PowerShell
#a variable set elsewhere in the lab, but we can use it in our script
$myVariable1 = "@lab.Variable(myVariable1)"
```