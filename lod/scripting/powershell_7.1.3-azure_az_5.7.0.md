# PowerShell 7.1.3 with Azure AZ 5.7.0

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
## PowerShell Modules

Name                     | Version 
----                     | ------- 
Az                       | 5.7.0   
Az.Accounts              | 2.2.7   
Az.Advisor               | 1.1.1   
Az.Aks                   | 2.0.2   
Az.AnalysisServices      | 1.1.4   
Az.ApiManagement         | 2.2.0   
Az.AppConfiguration      | 1.0.0   
Az.ApplicationInsights   | 1.1.0   
Az.Automation            | 1.5.2   
Az.Batch                 | 3.1.0   
Az.Billing               | 2.0.0   
Az.Cdn                   | 1.6.0   
Az.CognitiveServices     | 1.8.0   
Az.Compute               | 4.10.0  
Az.ContainerInstance     | 1.0.3   
Az.ContainerRegistry     | 2.2.1   
Az.CosmosDB              | 1.1.0   
Az.DataBoxEdge           | 1.1.0   
Az.Databricks            | 1.1.0   
Az.DataFactory           | 1.11.5  
Az.DataLakeAnalytics     | 1.0.2   
Az.DataLakeStore         | 1.3.0   
Az.DataShare             | 1.0.0   
Az.DeploymentManager     | 1.1.0   
Az.DesktopVirtualization | 2.1.1   
Az.DevTestLabs           | 1.0.2   
Az.Dns                   | 1.1.2   
Az.EventGrid             | 1.3.0   
Az.EventHub              | 1.7.2   
Az.FrontDoor             | 1.7.0   
Az.Functions             | 2.0.0   
Az.HDInsight             | 4.2.0   
Az.HealthcareApis        | 1.2.0   
Az.IotHub                | 2.7.3   
Az.KeyVault              | 3.4.1   
Az.Kusto                 | 1.0.1   
Az.LogicApp              | 1.5.0   
Az.MachineLearning       | 1.1.3   
Az.Maintenance           | 1.1.0   
Az.ManagedServices       | 2.0.0   
Az.MarketplaceOrdering   | 1.0.2   
Az.Media                 | 1.1.1   
Az.Migrate               | 1.0.0   
Az.Monitor               | 2.4.0   
Az.Network               | 4.7.0   
Az.NotificationHubs      | 1.1.1   
Az.OperationalInsights   | 2.3.0   
Az.PolicyInsights        | 1.4.1   
Az.PowerBIEmbedded       | 1.1.2   
Az.PrivateDns            | 1.0.3   
Az.RecoveryServices      | 3.5.0   
Az.RedisCache            | 1.4.0   
Az.RedisEnterpriseCache  | 1.0.0   
Az.Relay                 | 1.0.3   
Az.Resources             | 3.4.0   
Az.ServiceBus            | 1.5.0   
Az.ServiceFabric         | 2.3.0   
Az.SignalR               | 1.2.0   
Az.Sql                   | 2.17.0  
Az.SqlVirtualMachine     | 1.1.0   
Az.Storage               | 3.5.0   
Az.StorageSync           | 1.4.0   
Az.StreamAnalytics       | 1.0.1   
Az.Support               | 1.0.0   
Az.TrafficManager        | 1.0.4   
Az.Websites              | 2.5.0   
