# Deploying a Linux VM on Azure using a template

> [!ALERT] To complete this guide, you must have a lab profile in LOD, and an active Microsoft Azure subscription. If you have not created a lab profile, or have not yet configured your Azure subscription for use with LOD, please have a look at our [Quick Start guide on Configuring your Subscription](/lod/quick-starts/cloud-slice/configure-subscription.md).

## Deploying a Linux VM on Azure is quick and easy, using Resource Templates. Resource Templates can be entered into OneLearn Lab on Demand (LOD) using JSON format, or linked from a GitHub repository that contains a Resource Template. 

> [!KNOWLEDGE] As a best practice, you should only use external templates if the template files are managed by you or your organization. Otherwise, you risk breaking changes being introduced to a template that is in use in a production lab.

## To create a Resource Template in OneLearn Lab on Demand platform (LOD), you must perform the following tasks:

1. [] Navigate to the <[Lab on Demand Administration page](/Admin).

1. [] Click <[Cloud Resource Templates](/CloudTemplate) on the Cloud Services tile.

   ![Cloud Resource Templates](images/lod-open-cloud-resource-templates.png)

1. [] Click <[Create Resource Template](/CloudTemplate/Create) in the upper-right corner of the page.

   ![Create Cloud Resource Template](images/lod-create-cloud-resource-template.png)

1. [] Enter +++linux-vm+++ into the **Name** field on the **Basic Information** tab.

1. [] Enter +++Deploys a linux virtual machine+++ into the **Description** field on the **Basic Information** tab.

1. Select your organization, or the organization that will use this Resource Template.

1. [] Click ^INSTRUCTIONS[here](sample-resource-template.md) to open a sample Resource Template in a dialog window, and follow the instructions in that dialog.

> [!KNOWLEDGE] As a best practice, we recommend altering the location parameter from XXXXXX to  `[parameters('location')]`. This ensures that the resources are provisioned in the same location as the resource group. Additionally, the location parameter should be replaced throughout the Resource Template with XXXXX.

1. [] In the **Template** field, highlight from the first curly bracket (`{`) at the top of the template, to the last curly bracket (`}`) at the bottom, before the variables section of the JSON (line 1 through line 49). This should look like [this](parameters-example.md).

1. [] Select the **Parameters** tab.

1. [] Click **Import from JSON**.

1. [] Paste the content that is on your clipboard. 

    - Scroll to the bottom of the Import Parameters window
    - Press enter at the end of the JSON text, to move the cursor to a new line
    - Add a right curly bracket (`}`), to close the JSON expression
    - Click **OK**

1. [] Now the parameters from the Resource Template are added. Parameters can be defined here, to give them a unique name. At this step in the process, you may remove parameters for resources that you do not wish to define. For this guide, remove the following parameters, by clicking **Delete** next to the parameter you wish to delete:
    
    - publicIPAddresses_Ubuntu_ip_name
    - virtualNetworks_Ubuntu_vnet_name
    - networkSecurityGroups_Ubuntu_NSG_name
    - subnets_default_name
    - securityRules_SSH_name
    - vmsize

1. [] Enter the following for each parameter. You can click to copy each value, and then paste into the appropriate fields in LOD. 

    |Name|Display Name|Description|Required|Display To Student|
    |--|--|--|--|--|
    |virtualMachines_Ubuntu_name|+++VM Name+++|+++The name of the virtual machine+++|No|Yes|
    |networkInterfaces_ubuntu551_name|+++NIC Name+++|+++The name of the network interface+++|Yes|No|
    |vmAdminUsername|+++VM Admin Username+++|+++Admin username to log in to the virtual machine+++|No|Yes|
    |vmAdminPassword|+++VM Admin Password+++|+++Admin password to log in to the virtual machine+++|No|Yes|
    |dnsName|+++DNS Name+++|+++The name of the DNS that the virtual machine uses+++|Yes|Yes|

> [!KNOWLEDGE] **Required** and **Display to Student** are used to assist with the user experience of your lab. Use **Required** for any parameters that do not have default values.

1. [] Click **Save**.

## Now that you have created a Resource Template to deploy an Ubuntu Linux virtual machine, it can be used to deploy a single Linux VM in the Azure portal. Next, we need to configure the lab profile to use the Resource Template. 

1. [] Return to the Lab on Demand Administration page. 

1. [] Navigate to your lab profile. 

> [!KNOWLEDGE] If you are unsure how to get to your lab profile, you can get to it by doing the following:
> - Click **Find Lab Profiles** to find your lab profile. 
> - Enter the name of your lab in the **Name** field.
> - Change the operator drop-down adjacent to **Equal**.
> - Click **Search** to find your lab profile. 
> - In the search results, click the Name hyperlink of your lab profile, to open the Lab Profile details view.

1. [] Click **Edit Profile** to open the edit view for your lab profile. 

1. [] On the **Basic Information** tab, ensure that the **Virtualization Platform** is set to **None**.

1. [] Select the **Cloud** tab. 

1. [] Ensure that the **Cloud Platform** is set to **Azure**, and the **Cloud Portal URL** is set to ```https://portal.azure.com```.

1. [] Click **Choose** next to **Shared Subscription Pool**. If you have not set up a Subscription Pool, please have a look at our [Cloud Slice Quick Start Guide](/lod/quick-starts/cloud-slice/add-subscription-into-lod.md)

    1. [] Click **Search** to see all cloud subscription pools that are available to you. If you want to find a specific pool, enter the name that subscription pool in the Name field before you click **Search**.

    1. [ ] Select your cloud subscription pool in the search results.
    
    1. [ ] Click **OK**.

1. [ ] Click **Add User Account**, and enter ++Taylor++ into the Name Prefix field.

1. [ ] Click **Add Resource Group**, and enter ++corp-data++ into the Name Prefix field.

1. [ ] Click **Add Permission**, select **Taylor** in the combo box, and select **Contributor** in the Role combo box.

1. Click **Add Resource Template**.

    1. [] Enter +++linux-vm+++ into the **Name** field, and change the operator drop down adjacent to it to **Equal**. 

    1. [] Click **Search** to find your Resource Template.

    1. [] Select your Resource Template in the list of results, then click **OK**.

1. [] Enter +++nic-@lab.GlobalLabInstanceId+++ into the **NIC Name** field, and enter +++ubuntu-@lab.GlobalLabInstanceId+++ into the **DNS Name** field. This will give the NIC and DNS unique names. 

1. [] Leave **VM Name**, **VM Admin Username**, and **VM Admin Password** blank, since a unique name is not required for those.

1. [] Click **OK**

> [!KNOWLEDGE] Checking the box next to **Deploy In Background** will allow the lab user to start the lab even if this Resource Template is still deploying. This is  useful when you have tasks that users can complete while these resources are being deployed in the background. **By default, users will not be able to start a lab until all Resource templates have fully deployed.**

1. [] Click **Save** to save the updated lab profile. 

You have now created a Resource Template that will deploy a single Linux Virtual Machine for each student who launches this lab. Let's launch it to see what it looks like.

1. [ ] In the lab profile details view, click **Launch** to launch your Cloud Slice lab.

1. [ ] Once the lab has finished deploying, click **Get Started**.

**Congratulations! You have just deployed an Ubuntu Linux Virtual Machine in your Cloud Slice lab! You are now seeing the lab from the same perspective of a student.**

