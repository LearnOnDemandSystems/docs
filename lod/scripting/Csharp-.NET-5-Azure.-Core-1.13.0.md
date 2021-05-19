# C# .NET 5 | Azure.Core 1.13.0

## Azure Authentication

The script environment will be pre-configured for your lab instance. You can use the DefaultAzureCredential class to obtain credentials, which can then be passed other Azure service clients.

```C#
var subscriptionId = Environment.GetEnvironmentVariable("AZURE_SUBSCRIPTION_ID");
var resourceClient = new ResourcesManagementClient(subscriptionId, new DefaultAzureCredential());
var resourceGroupsClient = resourceClient.ResourceGroups;
```

For details working with the Azure SDK for .NET, please see Microsoft's documentation.

 - [Use the Azure libraries (SDK) for .NET](https://docs.microsoft.com/en-us/dotnet/azure/sdk/azure-sdk-for-dotnet)
 - [.NET API Browser](https://docs.microsoft.com/en-us/dotnet/api/?view=azure-dotnet) 

## Using Directives

C# scripts in Lab on Demand can use the `Using` directive at the beginning of a script, to help simplify your code. 

```C#
//To allow the use of types in a namespace so that you do not have to qualify the use of a type in that namespace:
using System.Text;
```

```C#
//To allow you to access static members and nested types of a type without having to qualify the access with the type name.
using static System.Math;
```

```C#
//To create an alias for a namespace or a type. This is called a using alias directive.
using Project = PC.MyCompany.Project;

## Interacting with Lab on Demand

Your scripts can communicate success or failure to LOD in one of two ways.

### Return a Boolean value 

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
