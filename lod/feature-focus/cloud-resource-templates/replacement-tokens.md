
# Replacement Tokens

Each Cloud Resource Template is associated with a raw template document that defines the collection of resources that will be deployed in the cloud. Replacement tokens can be used inside of the raw templates itself, or as parameter values to the Cloud Resource Templates, to provide some dynamic values that help keep resource names unique. 

Replacement tokens use the syntax @lab._replacementTokenName_. You can see the list of all @lab replacement tokens available to your lab by simply editing the instructions, and clicking on the @lab button. 

The table below lists the replacement tokens that are most commonly used with Cloud Resource Templates, along with suggestions where they should be used. 

|@lab Replacement Token|Description|
|--|--|
|\@lab.LabInstanceId|The ID of the lab instance where the template is being deployed. The identifier is unique within a deployment of lab on demand. This token should be used as a suffix on resource names to make them unique within the cloud subscription. Example: 123456|
|\@lab.GlobalLabInstanceId|The globally unique identifier of the lab instance where the template is being deployed. This identifier is unique across all deployments of lab on demand. This token should be used as a suffix on resource names to make them globally unique across all cloud subscriptions. Example: lod123456|
|\@lab.LabProfileId|The ID of the lab profile in which the template is being deployed. It is unique within a deployment of Lab on Demand. This token should be used when naming resources that you want to share amongst all users in a lab. |
|\@lab.UserId|The ID of the user that launched the lab.|


## Using replacement tokens as Cloud Resource Template parameters 

When you are assigning paramater values for a Cloud Rsource template, you can provide specific values, or you can apply @lab replacement tokens. To apply a Replacement Token, in the parameter value field, simply enter `@lab`, and the press the period key. The moment you type the period you will be presented with all available replacement tokens for your lab. 

!IMAGE[](/lod/images/replacement-tokens.png)

## Using replacement tokens inside a Cloud Resource Template

To use replacement tokens inside a Cloud Resource Template, simply insert the @lab replacement token(s) in to your raw template document where you want them to be used. 

>[!KNOWLEDGE] Using replacement tokens as Cloud Resource Template parameters is a best practice, and highly preferred over using replacement tokens directly inside of raw template documents.  
