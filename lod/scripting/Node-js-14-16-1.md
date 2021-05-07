# Node.js 14.16.1

This script execution environment is running Node.js 14.16.1.

## Interacting with Lab on Demand

Your scripts can communicate success or failure to LOD in one of two ways.

### Return a boolean value 

At its simplest...

```JavaScript
//do stuff... all good
return true;
```

```JavaScript
//do stuff... uh oh
return false;
```

### Use setActivityResult

```JavaScript
//do stuff... all good
setActivityResult(true);
```

```
//do stuff... uh oh
setActivityResult(false);
```

You can also report the result as a score %...

```JavaScript
//do stuff... we want to report success and set the score value as 50%
setActivityResult(0.5);
```

### Send a Notification to the User

Notifications appear as real-time toasts in the lab client.

```JavaScript
sendLabNotification("A notification from Node.js!");
```

### Lab Variables

Lab variables are always string name/value pairs. Variable values are scoped to the lab instances and become avaialble within the lab instructions as well as subsequent script executions. 

```JavaScript
setLabVariable("myVariable1", "This was set by Node.js in the cloud!");
```

You can "receive" a variable in your script...

```JavaScript
#a variable set elsewhere in the lab, but we can use it in our script
const myVariable1 = "@lab.Variable(myVariable1)";
```

##Dealing with Async

It's very common to work with asynchronous JavaScript. 

### Use setActivityResult

If you choose to use setActivityResult, the last time it is called within your script will determine the outcome.

```JavaScript
setTimeout(function() {
    console.log("This message was left inside the async code.");
    setActivityResult(true);
}, 1000);
return false; //<- this will have no effect, as it will be evaluated before the async code is run.
```

### Use a Promise

You can use a promise and return the result to Lab on Demand by resolving the promise.

```JavaScript
return await (new Promise((resolve, reject) => {
    setTimeout(function() {
        console.log("This message was left inside the async code.");
        resolve(true);
    }, 1000);
}));
```