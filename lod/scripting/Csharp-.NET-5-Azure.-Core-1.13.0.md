# C# .NET 5 | Azure.Core 1.13.0

# Interacting with Lab on Demand

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
setActivityResult(true);
```

```
//do stuff... uh oh
setActivityResult(false);
```

You can also report the result as a score %...

```C#
//do stuff... we want to report success and set the score value as 50%
setActivityResult(0.5);
```

### Send a Notification to the User

Notifications appear as real-time toasts in the lab client.

```C#
sendLabNotification("A notification from Node.js!");
```

### Lab Variables

Lab variables are always string name/value pairs. Variable values are scoped to the lab instances and become avaialble within the lab instructions as well as subsequent script executions. 

```C#
setLabVariable("myVariable1", "This was set by Node.js in the cloud!");
```

You can "receive" a variable in your script...

```C#
#a variable set elsewhere in the lab, but we can use it in our script
const myVariable1 = "@lab.Variable(myVariable1)";
```

### Use setActivityResult

If you choose to use setActivityResult, the last time it is called within your script will determine the outcome.

```C#
setTimeout(function() {
    console.log("This message was left inside the async code.");
    setActivityResult(true);
}, 1000);
return false; //<- this will have no effect, as it will be evaluated before the async code is run.
```