# Python 3.9.4

## Interacting with Lab on Demand

Your scripts can communicate success or failure to LOD in one of two ways.

### Return a Boolean value 

```Python
//do stuff... all good
return true;
```

```Python
//do stuff... uh oh
return false;
```

### Use setActivityResult

```Python
//do stuff... all good
setActivityResult(true);
```

```
//do stuff... uh oh
setActivityResult(false);
```

You can also report the result as a score %...

```Python
//do stuff... we want to report success and set the score value as 50%
setActivityResult(0.5);
```

### Send a Notification to the User

Notifications appear as real-time toasts in the lab client.

```Python
sendLabNotification("A notification from Node.js!");
```

### Lab Variables

Lab variables are always string name/value pairs. Variable values are scoped to the lab instances and become avaialble within the lab instructions as well as subsequent script executions. 

```Python
setLabVariable("myVariable1", "This was set by Node.js in the cloud!");
```

You can "receive" a variable in your script...

```Python
#a variable set elsewhere in the lab, but we can use it in our script
const myVariable1 = "@lab.Variable(myVariable1)";
```

### Use setActivityResult

If you choose to use setActivityResult, the last time it is called within your script will determine the outcome.

```Python
setTimeout(function() {
    console.log("This message was left inside the async code.");
    setActivityResult(true);
}, 1000);
return false; //<- this will have no effect, as it will be evaluated before the async code is run.
```