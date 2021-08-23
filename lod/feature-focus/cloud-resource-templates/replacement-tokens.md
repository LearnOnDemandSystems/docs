---
title: "Replacement Tokens"
description: "Replacement tokens use the syntax &commat;lab.replacementTokenName. You can see the list of all &commat;lab replacement tokens available to your lab by simply editing the instructions, and clicking on the &commat;lab button."
isPublished: true
---

# Replacement Tokens

Each Cloud Resource Template is associated with a raw template document that defines the collection of resources that will be deployed in the cloud. Replacement tokens can be used inside of the raw templates itself, or as parameter values to the Cloud Resource Templates or in lab instructions, to provide some dynamic values that help keep resource names unique. 

Replacement tokens use the syntax &commat;lab.replacementTokenName. 
The table below lists the replacement tokens that are available to use. Some replacement tokens may not be available in your lab, depending on the lab's configuration. I.E. Cloud related tokens are not available in labs that do not use cloud orchestration. You can see the list of all &commat;lab replacement tokens available to your lab by simply editing the instructions, and clicking on the &commat;lab button. 


   > |Lab Replacement Token|Description|
   > |--|--|
   >|`@lab.Activity(Automated1)`|Inserts activity Automated1 into the instructions.|
   >|`@lab.Activity(Question1)`|Inserts activity Question1 into the instructions.|
   >|`@lab.LabInstance.Id`|The unique ID of the running lab instance.|
   >|`@lab.LabInstance.GlobalId`|The globally unique ID of the running lab instance.|
   >|`@lab.LabInstance.StartDate`|The UTC start date of the running lab instance. Format: yyyyMMdd|
   >|`@lab.LabProfile.Id`|The unique ID of the lab profile.|
   >|`@lab.User.Id`|The unique ID of user running the lab.|
   >|`@lab.User.FirstName`|The first name of the user running the lab.|
   >|`@lab.User.LastName`|The last name of the user running the lab.|
   >|`@lab.User.Email`|The e-mail address of the user running the lab.|
   >|`@lab.User.ExternalId`|The external ID of the user running the lab (if launched via    API).|
   >|`@lab.User.Organization.Id`|The ID of the organization the user belongs to.|
   >|`@lab.User.Organization.Name`|The name of the organization the user belongs to.|
   >|`@lab.Tag`|The tag associated with the lab instance (if specified when launched via    API).|
   >|`@lab.CloudSubscription.Id`|The unique ID of the subscription backing the lab    instance.|
   >|`@lab.CloudSubscription.Name`|The name of the subscription backing the lab instance.|
   >|`@lab.CloudSubscription.TenantName`|The tenant name of the subscription backing the    lab instance.|
   >|`@lab.CloudResourceGroup(1).Name`|The instance name of the ResourceGroup1 resource    group.|
   >|`@lab.CloudResourceTemplate(Template1).Name`|The instance name of the VNET resource.|
   >|`@lab.CloudResourceTemplate(Template1).DeploymentLink`|A deployment link for the    VNET resource.|
   >|`@lab.CloudResourceTemplate(Template1).DeploymentUrl`|A deployment URL for the VNET    resource (rendered as text, not a link).|
   >|`@lab.CloudResourceTemplate(Template1).Parameters[complex-VNETName]`|The value sent    for the complex-VNETName parameter when creating the VNET resource.|
   >|`@lab.CloudPortalCredential(User1).Username`|The username of the User1-* cloud    portal user account.|
   >|`@lab.CloudPortalCredential(User1).Password`|The password of the User1-* cloud    portal user account.|
   >|`@lab.CloudCredential(PoolName).Username`|The Username assigned from the PoolName credential pool.|
   >|`@lab.CloudCredential(PoolName).Password`|The Password assigned from the PoolName credential pool.|
   >|`@lab.CloudCredential(PoolName).TenantName`|The TenantName assigned from the PoolName credential pool.|
   >|`@lab.CloudCredential(PoolName).TenantPrefix`|The TenantPrefix assigned from the   PoolName credential pool.|
   >|`@lab.CloudPortal.Link`|A link to the cloud portal.|
   >|`@lab.CloudPortal.Url`|The cloud portal URL (rendered as text, not a link).|
   >|`@lab.CloudPortal.SignInLink`|A cloud portal sign-in link.|
   >|`@lab.CloudPortal.SignInUrl`|The cloud portal sign-in URL (rendered as text, not a    link).|
   >|`@lab.CloudPortal.SignOutLink`|A cloud portal sign-out link.|
   >|`@lab.CloudPortal.SignOutUrl`|The cloud portal sign-out URL (rendered as text, not a    link).|
   >|`@lab.TextBox(name)`|A text box that allows the user to set the value of a named    variable. This variable value can then be displayed elsewhere using @lab.Variable(name)   .|
   >|`@lab.MaskedTextBox(name)`|A text box with hidden contents used for passwords.|
   >|`@lab.DropDownList(name)[val1,val2]`|A dropdown list that allows the user to set the    value of a named variable. This variable value can then be displayed elsewhere using    @lab.Variable(name).|
   >|`@lab.KeyCombo(title of button)[key combo]`|Generates a button that sends a combination of key codes to the active VM.|


## Using Replacement Tokens as Cloud Resource Template Parameters 

When you are assigning parameter values for a Cloud Resource template, you can provide specific values, or you can apply &commat;lab replacement tokens. To apply a Replacement Token, in the parameter value field, simply enter "&commat;lab," and then press the period key. The moment you type the period you will be presented with all available replacement tokens for your lab. 

![](/lod/images/replacement-tokens.png)

## Using Replacement Tokens inside a Cloud Resource Template

To use replacement tokens inside a Cloud Resource Template, simply insert the &commat;lab replacement token(s) in to your raw template document where you want them to be used. 

>[!KNOWLEDGE] Using replacement tokens as Cloud Resource Template parameters is a best practice, and highly preferred over using replacement tokens directly inside of raw template documents.  

## Using Replacement Tokens inside Lab Instructions

You can see the list of all &commat;lab replacement tokens available to your lab by simply editing the instructions, and clicking on the &commat;lab button. Alternatively, you can simply type &commat;lab. and any available replacement tokens will be displayed and selectable and a description of each replacement token will be displayed. 

![](/lod/images/add-replacement-token-in-lab-instructions.png)
