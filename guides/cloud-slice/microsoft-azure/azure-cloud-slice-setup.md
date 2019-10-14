# Cloud Slice Guide - Microsoft Azure Setup

[Return to the Cloud Slice guide][back]

## Table of Contents

1. [Overview](#overview)
    1. [What level of access is the platform provided?](#access)
    1. [What do I need before getting started?](#getting-started)
1. [Tutorials](#tutorials)
    1. [Enable Cloud Slice support in your Microsoft Azure subscription(s)](#enable-subs)
    1. [Add your subscription(s) to the Lab on Demand Platform](#add-lod)


## Overview {overview}

This document explains the Lab on Demand (LOD) platform permissions within each Microsoft Azure subscription that it will use, and how to enable those subscriptions to be utilized by labs when creating Cloud Slices.

### What Level of Access is Lab on Demand Provided? {access}

When a subscription is enabled for Cloud Slice, LOD is provided the following access:

- Global Administrator on the Tenant
- Owner on the Subscription
- Subscriptions are enabled for all resource providers

### What Do I Need Before Getting Started? {getting-started}

Before getting started with Azure Cloud Slice, you should have the following:

- A Microsoft Azure Active Directory Tenant
    - It is recommended this tenant is dedicated to only LOD Cloud Slice labs.
- One or More Azure Subscriptions
    - It is highly recommended these subscriptions are dedicated to only LOD cloud slice labs.
        - While only one subscription is needed to get started, it is recommended to use a group of subscriptions (otherwise known as a "pool") to provide load balancing across them 
    - To aid in cost isolation, it is helpful to separate subscriptions for different purposes. Within Microsoft Azure, it is helpful to segregate these subscriptions within Management Groups.

## Tutorials {tutorials}

### Enable Cloud Slice support in your Microsoft Azure subscription(s) {enable-subs}

In Microsoft Azure, an application registration is used to create the cloud resources contained in each Cloud Slice and to provide students with the user account(s) that they will use for the duration of their lab. In order to make this possible, this application registration must be configured as owner over each Azure subscription from which it will create each Cloud Slice. 

To enable Cloud Slice support, you must perform the following tasks for each tenant you are enabling subscriptions within:

> [!ALERT] To complete these steps, you must login using an account that is both a Global administrator on the Azure Active Directory and an Owner on the Azure Subscription(s). Without these permissions this process will likely fail.

1. Navigate to the [Azure Portal](https://portal.azure.com).
1. From the Azure Portal, ensure your active tenant is the one containing the subscriptions you would like to configure.
1. From the Azure Portal, Open **Azure Cloud Shell**.
    1. If prompted, select **PowerShell**.
    1. If you are put into Bash, switch to PowerShell.
    1. If prompted to create a storage account, do it in any subscription you want.
1. Within the Azure Cloud Shell PowerShell Prompt, submit the following command.
    
    ```
    iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/LearnOnDemandSystems/docs/master/lod/quick-starts/cloud-slice/subscription-setup.ps1'))
    ```

1. Follow the prompts presented by the terminal and input the information it requests.
    
    > [NOTE] When asking you which subscriptions to use, input the number from the "number" column in the subscription list to select which subscription(s) to configure.
    >
    > Leave the field blank and press enter to proceed with setup, reset selections, or exit setup.
    
### Add your subscription(s) to the Lab on Demand Platform {add-lod}

1. If you are creating a new subscription pool, begin at step 2.  If you are adding subscriptions to an existing pool, begin at step 5.
1. Navigate to **Subscription Pools** and select **+ Create Subscription Pool** within LOD.
1. Define the fields on the **Basic Information** tab, using the following settings:
    1. **Cloud Platform:** Azure 
    1. **Pool Type**: ++Manual++
    1. **Subscription Mode:** ++Shared++
    1. **All Other Fields:** [Fill in with identifying information]
    1. **Health Checks:** These are optional, but recommended at an interval you are most comfortable with.
1. If all or multiple of your subscriptions are within the same tenant, fill in the fields on the **Authentication** tab.
    1. In the **Tenant Name** field, put the full domain name of the tenant (Ex. MyTenant.onmicrosoft.com). This is the domain name that user accounts will be created and displayed with.
        1. If you have custom domains defined on your tenant (Ex. MyTenant.com) you may use one of these instead.
    1. The Application ID and Secret should have been retrieved from the **Enable Cloud Slice Support** step if this is your first subscription(s) within this tenant, otherwise use the credentials you should have stored somewhere secure.
1. Click the **Save** button.
1. Navigate to the appropriate subscription pool. 
    1. If you just created one, simply continue from where you left off.
1. On the subscription pool page, select **+ Create Cloud Subscription**
1. Add the subscription's name and ID, and optionally a description.
1. If the Subscription Pool has authentication information set at the pool level, and that information is to be used for this subscription as well, click **OK** and your subscription configuration is complete.
1. If the Subscription Pool does not have authentication information at the pool level, or the authentication information for this subscription is different than that information - go to the **Authentication** tab, select **Override Pool Client Authentication**, perform steps 4.1 and 4.2 above, and click **OK**.
1. Repeat steps 7-10 for as many subscriptions as you need to add to LOD.

[Back to top][back-to-top]

[Return to the Cloud Slice guide][back]

[back-to-top]: #cloud-slice-guide---microsoft-azure-setup "Return to the top of the document"
[back]: ../cloud-slice.md#enable-cloud-slice-support-in-your-cloud-platform "Return to the Cloud Slice guide"
