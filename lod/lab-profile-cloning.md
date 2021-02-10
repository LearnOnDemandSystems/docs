---
title: "Lab Profile Cloning"
description: "Create a duplicate copy of a lab profile by cloning."
isPublished: true
---

# Lab Profile Cloning 

As a lab developer, you can create a new Lab Profile in Lab on Demand (LOD) by cloning an existing Lab Profile. When a lab is cloned, all configuration in the Lab Profile is duplicated in the new Lab Profile. 

There are two ways to clone a lab profile;  _Save As_ and Import/export. 

- **Save As**: Allows you to create a new lab profile based on the lab you're saving from. All lab configuration, settings and virtual machines (VM) will be cloned to the new lab profile.

- **Export/Import**: Allows you to export the lab profile. Any media or files uploaded to the lab instructions will be in a content folder, and all lab settings and configuration will be in a JSON file. 

    >[!alert] When using Export/Import, some lab components are not exported, and will not be in a new lab profile when you import the exported files. It is highly recommended to use **Save As** to clone lab profiles. You should only use Export/Import to clone a lab if you accept the risk that the cloned lab may not contain all lab components and settings.

## Save As

Cloning a lab profile using Save As is the preferred method to clone a lab profile. There are three options to choose from: 

- **Create new virtual machine profiles based on the ones in this lab profile (clone them)**: Changes in the new virtual machine will not affect the originals. 

- **Reuse the virtual machine profiles in this lab profile**: Changes made to the virtual machine profiles will affect both lab profiles. 

- **Inherit this lab profile's virtual environment, content and resources**: Choose which virtual machines, networks, and removable media you want to include in the new lab profile. Changes made to virtual machines inherited from this lab will be reflected in the new lab. 

1. Navigate to the lab profile you wish to clone. 

1. Click **Edit** to edit the lab profile. 

1. Scroll to the bottom of the page, and click **Save As**. 

1. There are four fields to complete. By default, they have information in them, but can be changed during this step or by editing the new lab profile after it is created. 

    - **Number:** Numbers are used in the title of the lab profile. 
    - **Name:** This will be the display name of the lab profile.
    - **Series:** Select the lab series that the lab profile will be associated    with.
    - **Organization:** Select the organization that will own the lab profile and be responsible for maintaining the profile. 

1. After completing the four fields, select one of the methods for cloning and click OK. 

You will be taken to the new lab profile. If you need to make changes to the new lab profile, depending on the option you selected in the previous step, you may need to edit the parent lab profile, to make changes to the child lab profile. 

## Export and Import

Cloning a lab profile using Export/Import is not recommended for typical lab cloning, but may be useful depending on your needs. 

>[!alert] When using Export/Import, some lab components are not exported, and will not be in a new lab profile when you import the exported files. It is highly recommended to >use **Save As** to clone lab profiles. You should only use Export/Import to clone a lab if you accept the risk that the cloned lab may not contain all lab components and settings.

>[!alert] Lab Profiles that have Start States configured on them should not be cloned using Export/Import. Cloning a Lab Profile with a Start State while using this method may cause the cloned Lab Profile to work improperly. If you need to clone a lab that has a Start State, clone the lab using [Save As](#save-as).

### Export

There are two options to choose from when using Export from a lab profile: 

- **Lab Metadata - Full Profile**: This will export all lab media and content, lab instructions, as well as a JSON file with all lab profile configuration and settings. 

- **Lab metadata - Instructions Only**: This will export a zip folder that contains the lab instructions in a Markdown file and a folder with all media and content. 

### Import

Lab Profiles can be imported into a Lab Series, or imported without a Lab Series associated. 

1. From the LOD Administration page, click **Import Lab Profile** on the Lab Profiles tile. 

1. (OPTIONAL) Select the lab series that the lab profile will be associated with.

1. Select the organization that will own the lab profile and be responsible for maintaining the profile. 

1. Select the zip file that was exported from LOD. 

1. Click Import

The lab profile will now be imported and you will be taken to the lab profile after the import is completed. 














