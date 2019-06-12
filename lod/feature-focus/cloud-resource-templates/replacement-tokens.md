
# Replacement Tokens

Each Cloud Resource Template is associated with a raw template document that defines the collection of resources that will be deployed in the cloud. Replacement tokens can be used inside of the raw templates itself, or as parameter values to the Cloud Resource Templates or in lab instructions, to provide some dynamic values that help keep resource names unique. 

Replacement tokens use the syntax &commat;lab.replacementTokenName. You can see the list of all &commat;lab replacement tokens available to your lab by simply editing the instructions, and clicking on the &commat;lab button. 

The table below lists the replacement tokens that are available to use. Some replacement tokens may not be available in your lab, depending on the lab's configuration. I.E. Cloud related tokens are not available in labs that do not use cloud orchestration. 

|lab Replacement Token|Description|
|--|--|
|lab.Activity(1) | Inserts activity (1) into the instructions (if activities are configured in the lab instructions).|
|lab.LabInstance.Id|The ID of the lab instance where the template is being deployed. The identifier is unique within a deployment of lab on demand. This token should be used as a suffix on resource names to make them unique within the cloud subscription. Example: 123456|
|lab.LabInstance.GlobalId|The globally unique identifier of the lab instance where the template is being deployed. This identifier is unique across all deployments of lab on demand. This token should be used as a suffix on resource names to make them globally unique across all cloud subscriptions. Example: lod123456|
|lab.LabInstance.StartDate| The UTC start date of the running lab instance. Format: yyyMMdd.
|lab.LabProfile.Id|The ID of the lab profile in which the template is being deployed. It is unique within a deployment of Lab on Demand. This token should be used when naming resources that you want to share amongst all users in a lab. |
|lab.User.Id|The ID of the user that launched the lab.|
|lab.User.FirstName| The first name of the user running the lab.|
|lab.User.LastName| The last name of the user running the lab.|
|lab.User.Email| The e-mail address of the user running the lab.|
|lab.User.ExternalId| The external ID of the user running the lab (if launched via API).|
|lab.Tag|The tag associated with the lab instance (if specified when launched via API).|
|lab.CloudSubscription.Id| The unique ID of the subscription backing the lab instance.|
|lab.CloudSubscription.TenantName| The tenant name of the subscription backing the lab instance.|
|lab.CloudCredential(1).UserName| The username assigned from the credential pool.|
|lab.CloudCredential(1).Password| The password assigned from the credential pool.|
|lab.CloudResourceGroup(1).Name| The instance name of the ResourceGroup1 resource group.|
|lab.ResourceTemplate(1).Name| The instance name of resources deployed in the lab via a resource template in the lab profile.|
|lab.ResourceTempalte(1).DeploymentLink| A deployment link for resources deployed in the lab via a resource template in the lab profile.|
|lab.CloudResourceTemplate.Parameters[parameterName]| The value sent for the resource parameter when creating the resources that were deployed in the lab via a resource template in the lab profile.|
|lab.CloudPortal.Link| A link to the cloud portal (left window in IDLx labs).|
|lab.CloudPortal.URL| The cloud portal URL (rendered as text, not a link).|
|lab.TextBox(name)| A text box that allows the user to set the value of a named variable. This variable value can then be displayed elsewhere using lab.Variable(name).
|lab.Variable(name)| Used to display the variable defined in lab.TextBox(name), where (name) is the unique name of the variable.


## Using replacement tokens as Cloud Resource Template parameters 

When you are assigning parameter values for a Cloud Resource template, you can provide specific values, or you can apply &commat;lab replacement tokens. To apply a Replacement Token, in the parameter value field, simply enter "&commat;lab," and then press the period key. The moment you type the period you will be presented with all available replacement tokens for your lab. 

!IMAGE[](/lod/images/replacement-tokens.png)

## Using replacement tokens inside a Cloud Resource Template

To use replacement tokens inside a Cloud Resource Template, simply insert the &commat;lab replacement token(s) in to your raw template document where you want them to be used. 

>[!KNOWLEDGE] Using replacement tokens as Cloud Resource Template parameters is a best practice, and highly preferred over using replacement tokens directly inside of raw template documents.  
