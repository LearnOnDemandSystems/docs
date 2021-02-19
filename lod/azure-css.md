---
title: "Microsoft Azure Cloud Slice Subscription"
description: "Configure a lab profile to deliver training on Microsoft Azure subscriptions."
isPublished: false
---

# Microsoft Azure Cloud Slice Subscription 

- [Overview](#overview)
- [Subscription Pool Setup](#subscription-pool-setup)
- [Configuring a Lab profile](#configuring-a-lab-profile)
    - [Cloud Credential Pools](#cloud-credential-pools)
    - [Orchestration](#orchestration)
    - [User Accounts](#user-accounts)
    - [Subscription Permissions](#subscription-permissions)
      - [Permissions](#permissions)
      - [Subscription Access Control Policies](#subscription-access-control-policies)
    - [Cloud Resource Groups:](#cloud-resource-groups-)
      - [Permissions](#permissions-1)
      - [Resource Templates](#resource-templates)
      - [Access Control Policies](#access-control-policies)
    - [Launch Your Lab](#launch-your-lab)

## Overview

Microsoft Azure Cloud Slice Subscription (CSS) provides an environment that allows training on Microsoft Azure and gives the lab user access to administrative settings in the Azure subscription. 

## Subscription Pool Setup 

Azure CSS labs require a subscription pool to be configured and linked to any Lab Profiles that will be used for Azure CSS. 

A subscription pool should be created and configured before proceeding to the next steps. If you do not have a subscription pool created and configured, please reach out to our [customer support team](http://www.learnondemandsystems.com/customer-support/) for assistance. 

## Configuring a Lab profile

1. Navigate to your lab profile or create a new lab profile. If you need assistance creating a lab profile, see our [Lab Profile Creation and Explanation](lab-profile) documentation. 

1. Edit the lab profile. 

1. On the Basic Information tab, set the Virtualization Platform to **None** if no virtual machines (VM) are needed in the lab. If VMs are needed, select the virtualization platform for your VMs. 

1. Click the Cloud tab. Cloud Slice settings are configured on the Cloud tab of the lab profile. 

### Cloud Credential Pools

1. If you would like your lab to use a cloud credential pool, click **+ Add Cloud Credential Pool**. This is used to provide lab users credentials in the lab instructions from a pool of credentials that is already configured. This is not required to provide lab users credentials to log in to the Azure subscription, those credentials will be provided in the lab instructions automatically. 

### Orchestration

1. **Cloud Platform**: select Azure as the cloud platform. 

1. **Override Client landing page**: this is used to override the landing page the lab user will see when they launch the lab. For Azure CSS labs, it is recommended to leave this option unchecked so that the lab user can access the Azure portal in the lab. 

1. **Append Lab data**: when this is enabled, the following user lab data will be appended to the URL as URL parameters in `name=value` format.  
    - labProfileId
    - labInstanceId
    - globalLabInstanceId
    - userId
    - userExternalId (if launched via API)
    - email
    - firstname
    - lastName
    - tag (if included when launched via API)

1. **Subscription Pool:** Select your subscription pool. 

    Subscription Pools are used to deploy resources in a subscription. Subscriptions will be shared among users with permissions to only access resource groups or virtual machines provisioned for their lab instance. If you do not have a subscription pool created and configured, please reach out to our [customer support team](http://www.learnondemandsystems.com/customer-support/) for assistance. 

1. **Enable Multiple Subscriptions** (OPTIONAL): enable this option if the lab profile needs more than one Azure subscription. This option is not commonly enabled, only enable this if you are sure you need multiple subscriptions. Leave this unchecked for a single subscription configuration. 

1. **Deployment Failure**: when a lab fails to deploy to Azure, select the action that will occur; terminate lab, send the user a notification, or ignore the failure. 

1. **Expected Cloud Cost**: the estimated cost of cloud resources that the lab will use.

1. **Datacenter Availability**: One or more datacenters that resources will be deployed to. If multiple datacenters are selected, the datacenter physically closest to the lab user will be selected. If a region is marked as 'Privileged' then additional clearance from the fabric owner may be needed to successfully launch labs in that region.

### User Accounts

1. **Add User Account**: This user account will have access to the subscription and will have access to subscription settings. 

- **Name Prefix**: prefix that will be used to display the portal username.

- **Replacement Token Alias**: alias that will be used in replacement tokens to reference the username and password.

- **Subscription Token**: select the subscription that the user account will have access to.

### Subscription Permissions

#### Permissions 

These permissions only apply to the selected subscription.

1. **Add Permission**: Select the user account that will be given permission to the subscription, and assign a role to the user.

    - **User Account**: Add a user account from previous steps. Enabling this will allow the lab to display credentials in the lab instructions, to log in to the cloud portal.

    - **Role**: Choose the role that the user account will be assigned. 

        - **Reader**: has read access only to the cloud subscription.

        - **Contributor** has read access and limited write access to the cloud subscription.

        - **Owner** has read and write access to the cloud subscription.

#### Subscription Access Control Policies

The Access Control Policies that are defined here apply to the subscription. An Access Control Policy is used by Azure, to limit the resources that can be provisioned. For more information, read our [Access Control Policies documentation](create-a-restriction-policy.md).

1. **Add Policy**: add an Access Control Policy that is already created in LOD.

1. **Create Policy**: create an Access Control Policy in LOD.

### Cloud Resource Groups: 

- **Name**: enter a name for the resource group. This will be the display name of the Resource Group in the lab instructions. 

- **Replacement Token Alias**: this allows you to change the token to something more identifiable when reviewing the lab instructions.

- **Subscription Token**: select the subscription that the Resource Group will be deployed to.

- **Override Region**: This overrides the region(s) selected in the Datacenter Availability menu. Check this box to select a region to override the Resource Group deployment to. 

    >[!knowledge] When Override Region is selected, the datacenter physically closest to the lab user will be selected. 

#### Permissions
These permissions apply to this Resource Group only.

- **Add Permission**: Select the user account that will be given permission to the Resource Group, and assign a role to the user.

    - **User Account**: Add a user account from previous steps. Enabling this will allow the lab to display credentials in the lab instructions, to log in to the cloud portal.

    - **Role**: Choose the role that the user account will be assigned. 

        - **Reader**: has read access only to the cloud subscription.

        - **Contributor** has read access and limited write access to the cloud subscription.

        - **Owner** has read and write access to the cloud subscription.

#### Resource Templates

Resource templates are used to deploy resources to a Resource Group in Azure.

- **Add Template**: add a resource template that is already created in LOD.

- **Create Template**: create a new resource template in LOD.

#### Access Control Policies
The Access Control Policies that are defined here apply to this Resource Group only. An Access Control Policy is used by Azure, to limit the resources that can be provisioned. For more information, read our [Access Control Policies documentation](create-a-restriction-policy.md).

- **Add Policy**: add an Access Control Policy that is already created in LOD.

- **Create Policy**: create an Access Control Policy in LOD.

Click **Save** to save the Lab Profile. 

### Launch Your Lab

After the lab is saved, your lab is ready to be launched. 

1. Click Launch on the Lab Profile details page. 

1. After the lab launches, log in to the Azure portal using the credentials provided in the lab instructions. If there are multiple user accounts configured on the Lab Profile, there will be credentials displayed for each user account in the lab instructions. 