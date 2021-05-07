# PowerShell 5.1 with AzureRM 6.8.1

**This is a legacy script execution environment.**

## Interacting with Lab on Demand

Your scripts can communicate success or failure to LOD in one of two ways.

### Return a boolean value 

At its simplest...

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

```JavaScript
#a variable set elsewhere in the lab, but we can use it in our script
$myVariable1 = "@lab.Variable(myVariable1)"
```

## PowerShell Modules

Name                                  | Version    
----                                  | -------   
Azure.AnalysisServices                | 0.5.4      
Azure.Storage                         | 4.5.0      
AzureRM                               | 6.8.1      
AzureRM.AnalysisServices              | 0.6.14     
AzureRM.ApiManagement                 | 6.1.5      
AzureRM.ApplicationInsights           | 0.1.8      
AzureRM.Automation                    | 5.1.1      
AzureRM.Backup                        | 4.0.10     
AzureRM.Batch                         | 4.1.5      
AzureRM.Billing                       | 0.14.6     
AzureRM.Cdn                           | 5.0.5      
AzureRM.CognitiveServices             | 0.9.10     
AzureRM.Compute                       | 5.5.2      
AzureRM.Consumption                   | 0.3.7      
AzureRM.ContainerInstance             | 0.2.10     
AzureRM.ContainerRegistry             | 1.0.10     
AzureRM.DataFactories                 | 5.0.3      
AzureRM.DataFactoryV2                 | 0.5.10     
AzureRM.DataLakeAnalytics             | 5.1.4      
AzureRM.DataLakeStore                 | 6.1.2      
AzureRM.DevTestLabs                   | 4.0.9      
AzureRM.Dns                           | 5.0.4      
AzureRM.EventGrid                     | 0.3.7      
AzureRM.EventHub                      | 0.6.10     
AzureRM.HDInsight                     | 4.1.8      
AzureRM.Insights                      | 5.1.3      
AzureRM.IotHub                        | 3.1.8      
AzureRM.KeyVault                      | 5.2.1      
AzureRM.LogicApp                      | 4.1.4      
AzureRM.MachineLearning               | 0.18.5     
AzureRM.MachineLearningCompute        | 0.4.8      
AzureRM.MarketplaceOrdering           | 0.2.5      
AzureRM.Media                         | 0.10.4     
AzureRM.Network                       | 6.6.1      
AzureRM.NotificationHubs              | 5.0.3      
AzureRM.OperationalInsights           | 5.0.6      
AzureRM.PolicyInsights                | 1.0.4      
AzureRM.PowerBIEmbedded               | 4.1.10     
AzureRM.profile                       | 5.5.1      
AzureRM.RecoveryServices              | 4.1.8      
AzureRM.RecoveryServices.Backup       | 4.4.1      
AzureRM.RecoveryServices.SiteRecovery | 0.2.9      
AzureRM.RedisCache                    | 5.0.5      
AzureRM.Relay                         | 0.3.10     
AzureRM.Resources                     | 6.4.2      
AzureRM.Scheduler                     | 0.16.10    
AzureRM.ServiceBus                    | 0.6.11     
AzureRM.ServiceFabric                 | 0.3.12     
AzureRM.Sql                           | 4.11.3     
AzureRM.Storage                       | 5.0.4      
AzureRM.StreamAnalytics               | 4.0.10     
AzureRM.Tags                          | 4.0.5      
AzureRM.TrafficManager                | 4.1.1      
AzureRM.UsageAggregates               | 4.0.5      
AzureRM.Websites                      | 5.0.9      
