# C# .NET 5

## Interacting with Lab on Demand

Your scripts can communicate success or failure to LOD in one of two ways.

### Return a boolean value 

At its simplest...

```C#
//do stuff... all good
return true;
```

```C#
//do stuff... uh oh
return false;
```

### Use setActivityResult

```C#
//do stuff... all good
#Set-ActivityResult -Correct -Message 'Nice job'
```

```C#
//do stuff... uh oh
#Set-ActivityResult -Correct -Message 'Please try again'
```

You can also report the result as a score percentage...

```C#
//do stuff... we want to report success and set the score value as 50%
Set-ActivityResult -Percentage .5 -Message "You received half credit"
```

### Send a Notification to the User

Notifications appear as real-time toasts in the lab client.

```C#
Send-LabNotification 'Hello from Azure CLI'
```

### Lab Variables

Lab variables are always string name/value pairs. Variable values are scoped to the lab instances and become avaialble within the lab instructions as well as subsequent script executions. 

```C#
Set-LabVariable -Name 'firstName' -Value 'John'
```

You can "receive" a variable in your script...

```C#
#a variable set elsewhere in the lab, but we can use it in our script
var myVariable1 = "@lab.Variable(myVariable1)";
```