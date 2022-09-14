# Bash

## Interacting with Skillable Studio

Your scripts can communicate success or failure to Skillable Studio in one of two ways.

### Return a Boolean value 

```Bash
//do stuff... all good
echo true
```

```Bash
//do stuff... uh oh
echo false
```

<!--
### Use setActivityResult

```Bash
//do stuff... all good
set_activity_result .5 "Correct"
```

```
//do stuff... uh oh
set_activity_result .5 "Incorrect"
```


You can also report the result as a score percentage...

```Bash
//do stuff... we want to report success and set the score value as 50%
set_activity_result -Score .5
```
-->

### Send a Notification to the User

Notifications appear as real-time toast notification in the lab client.

```Bash
send_lab_notification "Hello from a script"
```

### Lab Variables

Lab variables are always string name/value pairs. Variable values are scoped to the lab instances and become available within the lab instructions as well as subsequent script executions. 

variable_name=value

```Bash
var_firstName="John"
```

You can "receive" a variable in your script... 