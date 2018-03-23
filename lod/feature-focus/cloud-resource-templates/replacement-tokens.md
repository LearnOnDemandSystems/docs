
# Replacement Tokens

Each Cloud Resource Template is associated with a raw template document that defines the collection of resources that will be deployed in the cloud. Replacement tokens can be used inside of the raw templates itself, or as parameter values to the Cloud Resource Templates, to provide some dynamic values that help keep resource names unique.

The table below contains the syntax for all possible replacement tokens, along with their type and description.

To use a replacement token, simply insert the syntax associated with the token that you want to use into the raw template document where you want it replaced or into the parameter value where you want it passed in when the Cloud Resource Template is deployed.

|Syntax|Type|Description|
|--|--|--|
|[Token:TemplateName]|String|The name of the template being deployed.|
|[Token:TemplateId]|Int|The ID of the template being deployed.|
|[@lab.LabProfileId]|Int|The ID of the lab profile in which the template is being deployed.|
|[@lab.LabInstanceId]|Int|The ID of the lab instance where the template is being deployed.|
|[Token:SubscriptionName]|String|The name of the Cloud Subscription where the template is being deployed. This is the LOD entity name, not the name of the actual subscription from the cloud platform.|
|[Token:TemplateStorageContainer]|String|The name of the container in your template storage account where template VHDs are stored.|
|[Token:TemplateStorageContainer]|String|The name of the container in your instance storage account where instance VHDs are deployed.|
|[Token:SourceStorageAccountName]|String|The name of the template storage account in your Cloud Subscription.|
|[Token:DestStorageAccountName]|String|The name of the instance storage account in your Cloud Subscription.|
|[Token:PoolId]|Int|The ID of the Cloud Subscription Pool used to launch the Cloud Slice lab.|
|[Token:StartTime]|DateTime|The time when the lab was launched, in UTC.|
|[Token:ExpirationTime]|DateTime|The time when the lab will expire, in UTC.|
|[@lab.Tag]|String|The tags associated with a lab.|
|[@lab.UserFirstName]|String|The first name of the user who launched the lab.|
|[@lab.UserLastName]|String|The last name of the user who launched the lab.|
|[@lab.UserId]|Int|The ID of the user who launched the lab.|
|[Token:Username]|String|The username for the user who launched the lab.|
|[@lab.UserEmail]|String|The email address of the user who launched the lab.|
|[Token:UserImageUrl]|String|The URL for the image of the user who launched the lab.|

=======================================


|Syntax|Type|Description|
|--|--|--|
|@lab.UserExternalId|???|???|
|@lab.CloudSubscription.Id|???|???|
|@lab.CloudSubscription.TenantName|???|???|
|@lab.CloudCredential({CredentialId}).Username|???|???|
|@lab.CloudCredential({CredentialId}).Password|???|???|
|@lab.CloudResourceGroup({cloudResourceGroup.CloudResourceGroupId}).Name|???|???|
|@lab.CloudResourceTemplate({replacedResourceTemplate.Id}).Name|???|???|
|@lab.CloudResourceTemplate({replacedResourceTemplate.Id}).DeploymentLink|???|???|
|@lab.CloudResourceTemplate({replacedResourceTemplate.Id}|???|???|
|@lab.CloudResourceTemplate({replacedResourceTemplate.Id}).Parameters[{ParameterName}]|???|???|
|@lab.CloudPortalCredential({portalCred.ProfileLocalId}).{prop.Key}|???|???|
|@lab.CloudPortalLink|???|???|
|@lab.CloudPortalUrl|???|???|
|@lab.CloudPortalSignInUrl|???|???|
|@lab.CloudPortalSignInLink|???|???|
|@lab.CloudPortalSignOutUrl|???|???|
|@lab.CloudPortalSignOutLink|???|???|
|@lab.VirtualMachine({virtualMachineLabProfile.ProfileId}).SelectLink|???|???|
|@lab.VirtualMachine({virtualMachineLabProfile.ProfileId}).Username|???|???|
|@lab.VirtualMachine({virtualMachineLabProfile.ProfileId}).Password|???|???|
|@lab.OpticalMedia({removableMedia.Id}).LoadLink|???|???|
|@lab.FloppyMedia({removableMedia.Id}).LoadLink|???|???|