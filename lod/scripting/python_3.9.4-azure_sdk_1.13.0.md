# Python 3.9.4 with Azure SDK 1.13.0

This script execution environment is running Python 3.9.4 and Azure libraries (SDK) for Python.

## Accessing Your Lab's Subscription

The lab's subscription ID  can be obtained from an environment variable.

```Python
subscription_id = os.environ["AZURE_SUBSCRIPTION_ID"]
```

You can also use standard @lab replacement token syntax.

```Python
subscription_id = "@lab.CloudSubscription.Id"
```

## Azure Authentication

The script environment will be pre-configured for your lab instance. You can use the DefaultAzureCredential class to obtain credentials, which can then be passed other Azure service clients.

```Python
credentials = DefaultAzureCredential()
subscription_id = os.environ["AZURE_SUBSCRIPTION_ID"]
resource_client = ResourceManagementClient(credentials, subscription_id)
```

For details working with the Azure SDK for Python, please see Microsoft's documentation.

 - [Use the Azure libraries (SDK) for Python](https://docs.microsoft.com/en-us/azure/developer/python/azure-sdk-overview)
 - [Python API Browser](https://docs.microsoft.com/en-us/python/api/?view=azure-python) 

## Using Python Import Keyword

The `import` keyword is used to import modules.

```Python
#Import the datetime module and display the current date and time
import datetime

x = datetime.datetime.now()
print(x)
```

## Interacting with Lab on Demand

Your scripts can communicate success or failure to LOD in one of two ways.

### Return a Boolean value 

```Python
#do stuff... all good
return True
```

```Python
#do stuff... uh oh
return False
```

### Use setActivityResult

```Python
#do stuff... all good
setActivityResult(correct=true)
```

```Python
#do stuff... uh oh
setActivityResult(correct=false)
```

You can also report the result as a score...

```Python
#do stuff... we want to score our findings
setActivityResult(score=0.5)
```

### Send a Notification to the User

Notifications appear as real-time toast notification in the lab client.

```Python
sendLabNotification("A notification from Python!")
```

### Lab Variables

Lab variables are always string name/value pairs. Variable values are scoped to the lab instances and become avaialble within the lab instructions as well as subsequent script executions. 

```Python
setLabVariable("myVariable1", "This was set within a Python script!")
```

You can "receive" a variable in your script...

```Python
#a variable set elsewhere in the lab, but we can use it in our script
myVariable1 = "@lab.Variable(myVariable1)"
```

## Python Package List

|Package                                         |Version
|------------------------------------------------|-----------
|adal                                             |1.2.7
|aiohttp                                          |3.7.4.post0
|async-timeout                                    |3.0.1
|attrs                                            |20.3.0
|azure-ai-formrecognizer                          |3.0.0
|azure-ai-textanalytics                           |5.0.0
|azure-appconfiguration                           |1.1.1
|azure-applicationinsights                        |0.1.0
|azure-batch                                      |10.0.0
|azure-cognitiveservices-anomalydetector          |0.3.0
|azure-cognitiveservices-knowledge-qnamaker       |0.3.0
|azure-cognitiveservices-language-luis            |0.7.0
|azure-cognitiveservices-language-spellcheck      |2.0.0
|azure-cognitiveservices-language-textanalytics   |0.2.0
|azure-cognitiveservices-personalizer             |0.1.0
|azure-cognitiveservices-search-customimagesearch |0.2.0
|azure-cognitiveservices-search-customsearch      |0.3.0
|azure-cognitiveservices-search-entitysearch      |2.0.0
|azure-cognitiveservices-search-imagesearch       |2.0.0
|azure-cognitiveservices-search-newssearch        |2.0.0
|azure-cognitiveservices-search-videosearch       |2.0.0
|azure-cognitiveservices-search-visualsearch      |0.2.0
|azure-cognitiveservices-search-websearch         |2.0.0
|azure-cognitiveservices-speech                   |1.16.0
|azure-cognitiveservices-vision-computervision    |0.8.0
|azure-cognitiveservices-vision-contentmoderator  |1.0.0
|azure-cognitiveservices-vision-customvision      |3.1.0
|azure-cognitiveservices-vision-face              |0.5.0
|azure-common                                     |1.1.27
|azure-core                                       |1.13.0
|azure-cosmos                                     |4.2.0
|azure-cosmosdb-nspkg                             |2.0.2
|azure-cosmosdb-table                             |1.0.6
|azure-datalake-store                             |0.0.52
|azure-digitaltwins-core                          |1.1.0
|azure-eventgrid                                  |4.1.1
|azure-eventhub                                   |5.4.0
|azure-eventhub-checkpointstoreblob               |1.1.4
|azure-eventhub-checkpointstoreblob-aio           |1.1.4
|azure-functions                                  |1.7.0
|azure-functions-durable                          |1.0.0
|azure-graphrbac                                  |0.61.1
|azure-identity                                   |1.5.0
|azure-iot-device                                 |2.5.1
|azure-iot-hub                                    |2.2.3
|azure-iothub-provisioningserviceclient           |1.2.0
|azure-keyvault-certificates                      |4.2.1
|azure-keyvault-keys                              |4.3.1
|azure-keyvault-secrets                           |4.2.0
|azure-loganalytics                               |0.1.0
|azure-mgmt-advisor                               |9.0.0
|azure-mgmt-alertsmanagement                      |1.0.0
|azure-mgmt-appconfiguration                      |1.0.1
|azure-mgmt-applicationinsights                   |1.0.0
|azure-mgmt-appplatform                           |6.0.0
|azure-mgmt-attestation                           |1.0.0
|azure-mgmt-authorization                         |1.0.0
|azure-mgmt-automation                            |1.0.0
|azure-mgmt-azurestackhci                         |1.0.0
|azure-mgmt-batch                                 |15.0.0
|azure-mgmt-batchai                               |2.0.0
|azure-mgmt-billing                               |1.0.0
|azure-mgmt-cdn                                   |11.0.0
|azure-mgmt-cognitiveservices                     |11.0.0
|azure-mgmt-commerce                              |6.0.0
|azure-mgmt-communication                         |1.0.0
|azure-mgmt-compute                               |20.0.0
|azure-mgmt-confluent                             |1.0.0
|azure-mgmt-consumption                           |8.0.0
|azure-mgmt-containerinstance                     |7.0.0
|azure-mgmt-containerregistry                     |2.8.0
|azure-mgmt-containerservice                      |15.1.0
|azure-mgmt-core                                  |1.2.2
|azure-mgmt-cosmosdb                              |6.2.0
|azure-mgmt-costmanagement                        |1.0.0
|azure-mgmt-databox                               |1.0.0
|azure-mgmt-databricks                            |1.0.0
|azure-mgmt-datadog                               |1.0.0
|azure-mgmt-datafactory                           |1.1.0
|azure-mgmt-datalake-analytics                    |0.6.0
|azure-mgmt-datalake-nspkg                        |3.0.1
|azure-mgmt-datalake-store                        |0.5.0
|azure-mgmt-deploymentmanager                     |0.2.0
|azure-mgmt-deviceupdate                          |1.0.0b2
|azure-mgmt-devtestlabs                           |9.0.0
|azure-mgmt-digitaltwins                          |1.0.0
|azure-mgmt-dns                                   |3.0.0
|azure-mgmt-edgegateway                           |0.1.0
|azure-mgmt-eventgrid                             |8.0.0
|azure-mgmt-eventhub                              |8.0.0
|azure-mgmt-frontdoor                             |1.0.0
|azure-mgmt-hanaonazure                           |1.0.0
|azure-mgmt-hdinsight                             |7.0.0
|azure-mgmt-hybridcompute                         |2.0.0
|azure-mgmt-hybridkubernetes                      |0.2.0
|azure-mgmt-iothub                                |1.0.0
|azure-mgmt-iothubprovisioningservices            |0.2.0
|azure-mgmt-keyvault                              |8.0.0
|azure-mgmt-kusto                                 |1.0.0
|azure-mgmt-labservices                           |1.0.0
|azure-mgmt-loganalytics                          |9.0.0
|azure-mgmt-logic                                 |9.0.0
|azure-mgmt-machinelearningservices               |1.0.0
|azure-mgmt-managedservices                       |1.0.0
|azure-mgmt-managementgroups                      |0.2.0
|azure-mgmt-marketplaceordering                   |1.1.0
|azure-mgmt-media                                 |3.1.0
|azure-mgmt-mixedreality                          |0.4.0
|azure-mgmt-monitor                               |2.0.0
|azure-mgmt-msi                                   |1.0.0
|azure-mgmt-netapp                                |2.0.0
|azure-mgmt-network                               |18.0.0
|azure-mgmt-notificationhubs                      |7.0.0
|azure-mgmt-nspkg                                 |3.0.2
|azure-mgmt-operationsmanagement                  |1.0.0
|azure-mgmt-policyinsights                        |1.0.0
|azure-mgmt-powerbiembedded                       |2.0.0
|azure-mgmt-privatedns                            |1.0.0
|azure-mgmt-purview                               |1.0.0b1
|azure-mgmt-rdbms                                 |8.0.0
|azure-mgmt-recoveryservices                      |1.0.0
|azure-mgmt-recoveryservicesbackup                |0.11.0
|azure-mgmt-redis                                 |12.0.0
|azure-mgmt-redisenterprise                       |1.0.0
|azure-mgmt-relay                                 |1.0.0
|azure-mgmt-resource                              |16.0.0
|azure-mgmt-resourcegraph                         |8.0.0
|azure-mgmt-resourcemover                         |1.0.0
|azure-mgmt-scheduler                             |2.0.0
|azure-mgmt-search                                |8.0.0
|azure-mgmt-security                              |1.0.0
|azure-mgmt-servicebus                            |6.0.0
|azure-mgmt-servicefabric                         |0.5.0
|azure-mgmt-sql                                   |1.0.0
|azure-mgmt-storage                               |17.0.0
|azure-mgmt-subscription                          |1.0.0
|azure-mgmt-support                               |6.0.0
|azure-mgmt-synapse                               |2.0.0
|azure-mgmt-trafficmanager                        |0.51.0
|azure-mgmt-web                                   |2.0.0
|azure-nspkg                                      |3.0.2
|azure-search-documents                           |11.1.0
|azure-servicebus                                 |7.1.1
|azure-servicefabric                              |7.2.0.46
|azure-servicemanagement-legacy                   |0.20.7
|azure-storage-blob                               |12.8.0
|azure-storage-common                             |2.1.0
|azure-storage-file                               |2.1.0
|azure-storage-file-datalake                      |12.3.0
|azure-storage-file-share                         |12.4.1
|azure-storage-queue                              |12.1.5
|azure-synapse                                    |0.1.1
|azure-synapse-accesscontrol                      |0.6.0
|azure-synapse-artifacts                          |0.6.0
|azure-synapse-managedprivateendpoints            |0.3.0
|azure-synapse-monitoring                         |0.2.0
|azure-synapse-spark                              |0.5.0
|certifi                                          |2020.12.5
|cffi                                             |1.14.5
|chardet                                          |4.0.0
|cryptography                                     |3.4.7
|deprecation                                      |2.1.0
|furl                                             |2.1.2
|idna                                             |2.10
|isodate                                          |0.6.0
|janus                                            |0.4.0
|msal                                             |1.11.0
|msal-extensions                                  |0.3.0
|msrest                                           |0.6.21
|msrestazure                                      |0.6.4
|multidict                                        |5.1.0
|oauthlib                                         |3.1.0
|orderedmultidict                                 |1.0.1
|packaging                                        |20.9
|paho-mqtt                                        |1.5.1
|pip                                              |21.0.1
|portalocker                                      |1.7.1
|pycparser                                        |2.20
|PyJWT                                            |2.0.1
|pyparsing                                        |2.4.7
|PySocks                                          |1.7.1
|python-dateutil                                  |2.8.1
|requests                                         |2.25.1
|requests-oauthlib                                |1.3.0
|requests-unixsocket                              |0.2.0
|setuptools                                       |56.0.0
|six                                              |1.15.0
|typing-extensions                                |3.7.4.3
|uamqp                                            |1.3.0
|urllib3                                          |1.25.11
|wheel                                            |0.36.2
|yarl                                             |1.6.3
