
# Replacement Tokens

Each Cloud Resource Template is associated with a raw template document that defines the collection of resources that will be deployed in the cloud. Replacement tokens can be used inside of the raw templates itself, or as parameter values to the Cloud Resource Templates, to provide some dynamic values that help keep resource names unique.

The table below contains a list of all possible replacement tokens, along with their type, syntax, and description.

To use a replacement token, simply insert the syntax associated with the token that you want to use into the raw template document where you want it replaced or into the parameter value where you want it passed in when the Cloud Resource Template is deployed.

|Name|Type|Syntax|Description|
|--|--|--|--|
|TemplateName|String|[Token:TemplateName]|The name of the template being deployed.|
|TemplateId|Int|[Token:TemplateId]|The ID of the template being deployed.|
|LabProfileId|Int|[Token:LabProfileId]|The ID of the lab profile in which the template is being deployed.|
|LabInstanceId|Int|[Token:LabInstanceId]|The ID of the lab instance where the template is being deployed.|
|SubscriptionName|String|[Token:SubscriptionName]|The name of the Cloud Subscription where the template is being deployed. This is the LOD entity name, not the name of the actual subscription from the cloud platform.|
|TemplateStorageContainer|String|[Token:TemplateStorageContainer]|The name of the container in your template storage account where template VHDs are stored.|
|InstanceStorageContainer|String|[Token:TemplateStorageContainer]|The name of the container in your instance storage account where instance VHDs are deployed.|
|SourceStorageAccountName|String|[Token:SourceStorageAccountName]|The name of the template storage account in your Cloud Subscription.|
|DestStorageAccountName|String|[Token:DestStorageAccountName]|The name of the instance storage account in your Cloud Subscription.|
|PoolId|Int|[Token:PoolId]|The ID of the Cloud Subscription Pool used to launch the Cloud Slice lab.|
|StartTime|DateTime|[Token:StartTime]|The time when the lab was launched, in UTC.|
|ExpirationTime|DateTime|[Token:ExpirationTime]|The time when the lab will expire, in UTC.|
|Tag|String|[Token:Tag]|The tags associated with a lab.|
|UserFirstName|String|[Token:UserFirstName]|The first name of the user who launched the lab.|
|UserLastName|String|[Token:UserLastName]|The last name of the user who launched the lab.|
|UserId|Int|[Token:UserId]|The ID of the user who launched the lab.|
|Username|String|[Token:Username]|The username for the user who launched the lab.|
|UserEmail|String|[Token:UserEmail]|The email address of the user who launched the lab.|
|UserImageUrl|String|[Token:UserImageUrl]|The URL for the image of the user who launched the lab.|
