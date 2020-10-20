---
title: "Azure Shared Image Gallery Virtualization"
description: "Deploy an Azure hosted virtual machine using Azure Shared Image Gallery."
isPublished: true
---

# Azure Shared Image Gallery Virtualization

A virtual machine (VM) can be deployed in Azure and accessed from a launch lab using [Azure Shared Image Gallery](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/shared-image-galleries). The VM can be replicated to multiple regions, so that it can geolocate the lab user and launch the VM in the Azure region that is physically closest to the lab user. 

## Overview

To set a VM using a Shared Image Gallery, there is some configuration to do in Azure before you can configure a VM profile and Lab profile in Lab on Demand. You will need to create several components in Azure and they must be completed in the order below, as each one builds upon the previous. 
1. Shared Image Gallery
1. Image Definition
1. Image Version
1. Disk
1. Snapshot


[Azure Setup](#azure-setup)
- [Create a Resource Group](#create-a-resource-group)
- [Create a Shared Image Gallery](#create-a-shared-image-gallery)
- [Add Image Definition](#add-image-definition)
- [Upload a VHD File](#upload-a-vhd-file)
    - [Create a Storage Account Inside the New Resource Group](#create-a-storage-account-inside-the-resource-group)
    - [Create Containers Inside of the Blob Service in Your Storage Account](#create-containers-inside-of-the-blob-service-in-your-storage-account)
    - [Uploading a VHD To Azure](#uploading-a-vhd-to-azure)
- [Create Managed Disk](#create-managed-disk)
    - [Create Snapshot](#create-snapshot)
- [Create Image Version](#create-image-version)
- [Update Replication](#update-replication)
- [Azure Check List](#azure-check-list)

[Lab on Demand Setup](#lab-on-demand-setup)
- [Subscription Pool](#subscription-pool)
- [Virtual Machine Profile](#virtual-machine-profile)
- [Lab Profile](#lab-profile)


## Azure Setup

When a region option must be selected, it is recommended to select the same region for each to avoid issues during the process. Once the process is completed, the files needed to launch the VM in a different region can be replicated to all needed regions.

### Create a Resource Group
Create a new resource group. This will be used to store your Shared Image Gallery. 

1. Go to the [Azure portal](https://portal.azure.com) and log in to your account. 
1. From the Azure Admin page, click **Resource Groups** on the left side navigation.
1. Click **+Add** in the upper-left of the page. 
    1. **Subscription**: Select the subscription that the resource group will bill to when resource are   deployed. 
    1. **Resource Group**: Name the resource group.
    1. **Region**: Select a region where the resource group will be deployed.
    1. Click **Next: Review + Create**.
    1. Click **Create**.

### Create Shared Image Gallery
Create a Shared Image Gallery. This will be used to store your Image Definitions, Image Versions, Snapshots and Disks. 

1. Go to the resource group you just created.
1. Click **+Add** in the upper-left of the resource group section of the page. 
1. Search for Shared Image Gallery and select it from the search results.

    1. **Subscription**: Select the subscription that the Shared Image Gallery will bill to when resource are deployed. 
    1. **Resource Group**: Select the resource group where the shared image gallery will be deployed to. This should default to the resource group selected in the previous step. 
    1. **Name**: Name the shared image gallery.
    1. **Region**: Select a region where the shared image gallery will be deployed.
    1. Click **Next: Review + Create**.
    1. Click **Create**.

### Add Image Definition
Create an image definition to define specifications for virtual machines that are created and deployed from your shared image gallery. 

1. Go to the Shared Image Gallery you just created. 
1. Click **+Add new image definition** in the upper-left of the page. 
1. **Region**: Select a region where the image definition will be created. 
1. **Image definition name**: Name the image definition. This name will be used in LOD in the _Machine Image_ fields on the VM profile. 
1. **Operating system**: select the operating system that your VM will use. 
1. **VM Generation**: Select the VM generation that your VM will use. 
1. **Operating system state**: Select the state that the OS will be in at the time of launch. Generalized typically boots slower, but may be needed for some learning scenarios. Specialized typically boots quicker, but may skip some basic configuration steps that some learning scenarios may benefit from including. 
1. **Publisher**: Enter a publisher name for the Image Definition. This can be the lab author or the organization that is publishing the VM for student use. 
1. **Offer**: Enter the name of the Image Definition offer. 
1. **SKU**: Enter the name of the Image Definition SKU.
1. select **Next: Publishing options** in the Azure portal to add Publishing options.
    1. **Recommended VM vCPUs**: Select the minimum and maximum number of vCPUs that can be used in any VMs that are deployed using this image definition. 
    1. **Recommended VM memory**: 
    1. **Excluded disk types**: select any disk types that should be excluded. 
1. Click **Next: Review + Create**.
1. Click **Create**.
	
### Upload a VHD file
To upload template VHDs into a Microsoft Azure subscription using the Microsoft Azure Portal, you must perform the following tasks:

- Create a storage account inside of your resource group where template VHDs will be stored in a storage container.
- Create a container inside your storage account.
- Upload each template VHD.

####  Create a Storage Account Inside the Resource Group

1. Navigate to the resource group created at the beginning of this document.
1. Click **+ Add** to add a resource to the resource group. 
1. Search for **Storage** and select the **Storage Accounts** service.
1. Select the **Resource group** drop-down and select the resource group you created in a previous task.
1. Enter a name for your storage account in the **Storage account name** field. This name must be globally unique, so it is a good idea to choose a name that is meaningful to you and that will be unique. 
1. Choose the region where you want to store your storage account from the list of regions available in the **Location** drop-down.
1. Click **Review + create** to create the storage account.

#### Create Containers Inside of the Blob Service in Your Storage Account

Once you have created a resource group and a storage account within it, you need to create containers inside of the blob service in your storage account to store VHD files and host running virtual machine instances. This can be done from within the Microsoft Azure Portal, by following these steps:

1. Navigate to the storage account that you created in the previous task. This will open the storage account blade.
1. Click on the Containers service in the storage account blade. This will open the container service blade.
1. Click on the **+ container** button to create a new storage container.
1. In the Name field, enter the name that you would like to use for your storage container (e.g. template-vhds for the container for template virtual hard disks, or instance-vhds for the container for running virtual machine instances). Save the name in a document because you will need it later on.
1. Select **Blob** for the **Public access level**. 
1. Click on **OK** to create the container.
1. Repeat these steps to create a second storage container, this time for running virtual machine instances.

#### Uploading a VHD To Azure

1. Navigate to the storage account you are going to use to store VHD files and host running virtual machine instances. 
1. In the storage account, go to the container where the VHD files will uploaded (template VHD storage). 
1. Click the **upload** button near the top of the page. 
1. Click the **blue folder icon** and select the VHD file that you want to upload.
1. Click **Advanced**.
1. Select the drop-down menu for **Blob type** and change the blob type to **Page blob**.

    >[!alert] If the VHD is uploaded as a _Block Blob_ (default upload setting), the VHD will not be able to be used for a VM in a lab. The VHD must be uploaded as a page blob. 

1. Click the **Upload** button to upload the VHD to the container. 
1. After the VHD uploads, copy the VHD file name and save the name in a document because you will need it later on.

### Create Managed Disk

Go back to the Azure admin dashboard and in the upper search bar, search for **Managed Disks** and select the **Managed Disks** service.

On the **Create a managed disk** page, enter the following:
1. **Subscription**: select the same subscription as previous selections.
1. **Resource Group**: Select the resource group where the Managed Disk will be deployed to. This should be the resource group selected in previous steps. 
1. **Disk Name**: Name the shared disk.
1. **Region**: select the same region selected in previous steps. 
1. Click **Review + Create**. 

#### Create a Snapshot

1. From the Managed Disk overview page, click **+Create Snapshot**. 
1. **Resource Group**: select the resource group selected in previous steps. 
1. **Name**: Name the snapshot.
1. Click **Review + Create**. 
1. This may take several minutes, depending on the size of the disk. 

### Create Image Version 
	
1. Go back to your image definition that was created in previous steps. 
1. Click **+Add Version**.
1. **Region**: select the same region selected in previous steps. The region selected must be the same region where the managed disk is stored.
1. **Name (version number)**: enter a name for the image version. E.g. `1.0.0`.
1. **OS Disk snapshot**: select the snapshot that was created in the previous steps. 
1. **Exclude from latest**: this is an optional step. If this flag is set to _yes_, VMs created using the latest version will omit this version.
1. Click **Review + Create**. 

### Update Replication

1. Go to the Image Version that was created in the previous steps. 
1. Click **Update replication** on the left side of the page. 
1. **Target regions**: select all regions that you want the VM to launch from. Geolocating labs and launching VMs in the region closest to the lab user, is dependent on the regions that the image version is replicated to. 
1. **Target region replica count**: select the number of replicas that will be needed in each region. 
1. **Storage account type**: select the type of storage that will be used; Standard HDD, Premium SSD or Zone-redundant.
1. Click **Save** to begin replicating to the chosen regions. 
1. If you wish to replicate more replicas, or replicate to different regions, you can do so after the current replication job is completed by completing these steps again. 

## Azure Check List

At this point, you should have the following created in your resource group in Azure:

- Shared Image Gallery
- Image Definition
- Image Version
- Disk
- Snapshot

If you are missing any of these items in your resource group, please go back to previous steps and complete any sections that were missed. 

## Lab On Demand Setup

### Subscription Pool
Create a subscription pool, using the authentication information from your subscription in Azure. 

1. Click **Create Cloud Subscription**.
1. Configure the storage settings on the subscription itself.

The Shared Image Gallery where the image definition is stored needs to be mapped in the cloud subscription that is associated with the lab that will use the VM.

To map the shared image gallery in the subscription:

1. Navigate to the **cloud subscription** in LOD. 

1. Click **Edit** next to the subscription that you want to map. 

1. Click the **Storage** tab of the _Edit Cloud Subscription_ dialog. 

1. Enter the name of each in LOD, to align with the containers in your Azure storage account.

    - **Image Libray Name**: 
    - **Image Library Resource Group**:

    >[!knowledge] These fields need to be configured for each subscription in the subscription pool. 

    ![](IMAGES/cloud-subscription-storage-sig.png)

>[knowledge] The following fields are used for Managed Disk VMs, **skip these fields for Shared Image Gallery configuration**. To learn more about managed disk configuration, read [Azure Managed Disk Virtualization](azure-virtualization.md).
>
> - Template Storage Account
> - Template Storage Resource Group
> - Template Storage
> - Instance Storage Account
> - Instance Storage Resource Group
> - Instance Storage

### Virtual Machine Profile
Create a virtual machine profile that can be assigned to a lab profile. 

1. Select **Azure** as the virtualization platform. 
1. Select **Use Image Library**.
1. Enter the **Machine Name**. This will be the Image Definition name that was created during previous steps. 
1. Enter a version number if you want the VM profile to use a specific version of your image. If you do not want to specify an image, you can leave this blank.
1. Enter the VM username. 
1. Enter the VM log in password. 

### Lab profile
Create a lab profile that launches your VM against your Azure subscription, to deploy the virtual machine in Azure. 

1. Configure the lab for cloud slice as normal. 
1. Add the VM profile to your lab profile. 
1. Configure the Network tab
1. Configure the Cloud tab
1. On the Virtual Machines tab, select the Network and Resource Group that the VM will use. 
