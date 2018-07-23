## How Do I Create a Removable Media Profile?

If you want to be able to load an ISO or a floppy disk into a virtual machine in a launched lab, you will need to create a Removable Media Profile and have the ISO or floppy disk in file format stored in your storage. A Removable Media Profile is used to connect an ISO or Floppy file to Lab Profiles so they can be used in the launched labs.

For LOD lab component terminology and guidelines for building Lab Series and Lab Profiles, please read the [LOD Terminology and Guidelines for Building a Lab article](lod-terminology-and-guidelines-for-building-a-lab.md).

There are three locations to create a Removable Media Profile: 
- From the Lab Series page that will be use the removable media (automatically associates the Removable Media Profile to the series) 
- From the Lab Profile page that will use the removable media. 
- From the Admin page on the Removable Media Profile tab (not automatically associated with any Lab Series). This article will be from the Lab Series page.

Once you are logged in, you will need to upload your removable media file to your **Storage** (see [How do I upload my virtual machine files to the server](how-do-i-upload-my-virtual-machine-files-to-the-server.md) article and use the same technique). 
1. Navigate to the **Lab Series** page for the series that will use the media. 
1. On this page, click **Create Removable Media** in the link bar towards the top of the page. The profile will open to the Basic Information tab with the following fields:

|Field|Req.|Type of Information|
|--- |--- |--- |
|Name|Y|Name of lab|
|Description|N|Information on what is on the media or how it will be used|
|Series|Y|Automatically filled in from the Lab Series where the process started|
|Organization|Y|Automatically filled in from the Organization in your User’s Profile|
|Type|Y|Drop-down with Optical (iso) or Floppy|
|Path|Y|Path to the storage folder where the file is stored|

3. In the **Path** field, you can type in the path or click either **Choose (Microsoft)** or **Choose (Vmware)** to browse to those folders to fill in the path to the file. Read the important information below this field before proceeding.

The Enabled checkbox is checked by default so this profile can be added to Lab Profiles. Click **Save** to save the **Create Removable Media** Profile. This profile can now be added to Lab Profiles in the series from their Removable Media tab (will covered in a later article/video).
