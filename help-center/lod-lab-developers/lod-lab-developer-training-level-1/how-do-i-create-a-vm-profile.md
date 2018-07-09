## How Do I Create a VM Profile?

Virtual Machine Profiles are optional components for a lab. Each virtual machine you will use in your labs will need its own Virtual Machine Profile. You can add VM’s you have uploaded to storage.

For LOD lab component terminology and guidelines for building Lab Series and Lab Profiles, please read the LOD Terminology and Guidelines for Building a Lab article.

There are two locations to create a VM Profile: 1) from the Lab Series page you want to add the VM Profile to (automatically associates the VM Profile to the series) and 2) from the Admin page on the Virtual Machine Profiles tile (not automatically associated with any Lab Series). This article will cover from the Lab Series page.

Once you are logged in:

1. Navigated to the Lab Series page 
1. Click **Create Virtual Machine Profile** in the link bar towards the top of the page. 
3. The profile will open to the **Basic Information** tab with the following fields:

|Field|Type of Information|
|--- |--- |
|Name|Name of virtual machine; will be used for name of VM Profile|
|Description|Description of virtual machine|
|Series|Automatically filled in from the Lab Series where the process started|
|Organization|Automatically filled in from the Organization in your User’s Profile|
|Platform|Drop-down with Virtual Server, Hyper-V, vSphere, and Azure platforms|
|Generation|Drop-down with information available on the page to help|
|Operating System|Drop-down for the OS the virtual machine will use|
|Username|Default profile name for logging on|
|Password|Default password for logging|
|# Processors|Number of processors used|
|RAM|Available RAM in MB|
|Screen Width|Default screen width|
|Screen Height|Default screen height|
|Boot Order|Ordered list that can be reordered|

The **Enabled** and **Host Integration Enabled** checkboxes should be checked. The other checkboxes will be covered in later articles and videos.

4. Next click the **Hard Disk** tab and click **Add Hard Disk**. 
5. You can either use an existing virtual hard disk (VHD) file from your storage or create a new VHD file. This guide uses the existing file, therefore click **Use an existing virtual hard disk file** and click **Next**. 
6. In your storage, locate and select the virtual machine file you want to use and click **OK**.

The remaining tabs are:

|Tab|Use to|
|--- |--- |
|Network Adapters|Add the network adapter|
|SCSI Adapters|One is provided and more can be added|
|DVD-ROM Drives|One is provided and more can be added|

!IMAGE[How do I create a VM Profile](../../images/vm-profile.png)

For a visual demonstration, watch this video: [How do I create a VM Profile?](https://www.youtube.com/watch?v=FCIp9TRDVYk)