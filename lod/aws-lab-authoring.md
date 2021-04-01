---
title: "AWS Lab Authoring"
description: "Authoring a lab profile that uses AWS cloud technologies."
isPublished: true
---

# Authoring a Lab Profile to Use AWS Technologies

Lab Profiles can utilize Amazon Web Services (AWS) technologies in a Cloud Slice lab environment. This requires an AWS Account, and configuration in both Lab on Demand and The AWS Portal. 

Configuration Checklist: 

- Enable Cloud Slice support for your AWS account in the AWS portal.  
- Setup your AWS Account in a Lab on Demand subscription pool.
- Configure a lab profile to use the subscription pool associated with your AWS account(s).

## Creating a lab profile 

1. From the Lab on Demand (LOD) Administration page, click _Create Lab Profile_ on the Lab Profiles tile. 

1. You may be taken to the Template Gallery page. If you are, click **Create Custom Environment** in the upper-right corner. 

## Basic Information 

1. Enter a **Number** and **Name** for the lab profile.

1. Change the **Virtualization Platform** to **None**.

1. Click the **Cloud** tab. This is where all AWS settings will be configured for the lab. 

## Cloud Tab 

### Orchestration 

1. **Cloud Platform**: click the Cloud Platform drop-down menu and select **AWS**. 

1. **Override Client Landing Page**: (OPTIONAL) select to override the cloud portal portion of the lab. The student's landing page will default to the AWS Portal if this option is not configured. 

1. **Append Lab Data**: (OPTIONAL) When this is enabled, the following lab date will be appended to the URL as URL parameters in `name=value` format:
    - labProfileId
    - labInstanceId
    - globalLabInstanceId
    - useId
    - userExternalId (if launched via API)
    - email
    - firstName
    - lastName
    - tag (if included when launched via API)

1. **Enable Automatic Login**: When this option is enabled, users will be automatically logged in to the AWS portal. No cloud portal users are required to be configured in subsequent steps on the Cloud tab. If this is disabled, users will need to manually log into the portal using a required cloud portal user that is configured in the User Accounts section of the Cloud tab. 

1. **Deploy Default VPC**: When enabled, the lab instances will contain default VPC (Virtual Private Cloud) and resources. Default resources typically contain a VPC, Gateway and other networking resources. Default resources will be deployed prior to template deployment and may add to the instance launch time. 

1. **Subscription Pool**: Select your subscription pool that has all of your organizations's AWS accounts configured that you want to use with this lab profile. The subscription pool will be used to deploy AWS resources in the AWS portal. These accounts are shared among users that launch the lab and will be used in a round robin fashion. 

1. **Deployment Failure**: Select the option you want to happen if resources fail to deploy for the lab for any reason. During lab authoring, it is recommended to set this option to "Send notification", so that you can get real-time feedback on the deployment failure. The notification will be sent to your lab when it is launched. After the lab is authored, a more favorable option would be to terminate the lab or no action. 

1. **Expected Cloud Cost**: (OPTIONAL) This field is used to help track the average costs of cloud resources. This field does not affect any resource deployment or any other settings on the lab profile. 

1. **Datacenter Availability**: Select the cloud datacenters that resources will be deployed to. Cloud datacenters correlate to AWS Regions. If multiple datacenters are selected, the datacenter physically closest to the lab user will be selected. Some regions may be marked as Privileged and will require additional clearance from the fabric owner to successfully launch labs in that region. 

### User Accounts

User accounts are used to provide the user credentials to log in to the AWS portal. A user account is not needed if Automatic Login is enabled. A user account can have a custom _Name Prefix_ and a custom _Replacement Token Alias_. 

>[!knowledge] A custom Name Prefix and/or custom Replacement Token Alias may be needed if you would like to reference the username or password in lab instructions. 

- **Name Prefix**: Enter a name prefix. When the username is generated and added to the lab instructions, it will be formatted with the Name Prefix entered in this field. 

- **Replacement Token Alias**: Enter text that can be used to reference the user account with an @lab replacement token in the lab instructions. User Accounts are automatically displayed on the Resources Tab of the lab instructions. 

- **Add user Account**: Click to add additional user accounts. This is useful if the lab requires the student to perform tasks in the AWS Portal under the context of different users. 

### Stack Deployments

Stack deployments contain Permissions, Resource Templates and Access Control Policies. 

- **Stack Name**: Provide a name for the Stack. The name of the stack will be displayed on the Resources tab of the lab when it is launched. 

- **Replacement Token Alias**: Enter text that can be used to reference the Stack Deployment with an @lab replacement token in the lab instructions. Stack Deployments are automatically displayed on the Resources Tab of the lab instructions. 

- **Override Region**: Enable this to force the stack deployment to deployed to a specific region. After the checkbox is checked, a drop-down will be shown to select the AWS Region to deploy resources to. 

### Permissions 

- **Add Permission**: When a user is added to the permissions of a stack, they will receive the permissions in the Access Control Policy attached to that stack.

### Resource Templates

Resource Templates are used to specify which cloud resources will be deployed in AWS when the lab is launched. These resources will be torn down and removed from AWS when the lab is ended. 

- **Add Template**: Click to add a Resource Template that has already been created in Lab on Demand. 

- **Create Template**: Click to create a Resource Template. For more information about Resource Template creation, [click here](create-a-resource-template-and-configure-it-into-a-resource-group.md). 

- **Deploy in Background**: Resource templates can be set to deploy in the background, so that the lab user can get into the lab without having to wait until the resources from the Resource Template are fully deployed. This is useful when you have tasks that users can complete while cloud resources are being deployed in the background. By default, users will not be able to start a lab until all Resource Templates have fully deployed. 

### Access Control Policies

Access Control Policies (ACP) are used to control which resources can be deployed in the lab. ACPs are required for all labs that leverage AWS cloud resources. 

By default deployment of all resources in AWS is denied. Resources must be explicitly allowed in an Access Control Policy for lab users to be able to deploy them. These permissions will be granted to the user that was specified in the [Permissions](#permissions) section. 

- **Add Policy**: Click to add a Resource Template that has already been created in Lab on Demand. 

- **Create Policy**: Click to create an Access Control Policy. For more information about Access Control Policy creation, click [here](create-a-restriction-policy.md).

### Save The Lab Profile 

Additional Stack Deployments can be added if needed, but are not required. If additional Stack Deployments are needed, click **Add Stack Deployment** and repeat the steps above. 

The lab profile can now be saved and launched. 


