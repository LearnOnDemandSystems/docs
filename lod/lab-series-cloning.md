---
title: "Lab Series Cloning"
description: "Create a duplicate copy of a Lab Series by cloning."
isPublished: true
---

# Lab Series Cloning 

As a lab developer, you can create a new Lab Series in Lab on Demand (LOD) by cloning an existing Lab Series. When a Lab Series is cloned, all Lab Profiles and configuration in the Lab Profiles are duplicated in the new Lab Series. 

There are two ways to clone a Lab Series;  _Save As_ and Import/export. 

- **Save As**: Allows you to create a new Lab Series based on the Lab Series you're saving from. All lab configuration, settings and virtual machines (VM) will be cloned to the new Lab Series.

- **Export/Import**: Allows you to export the Lab Series. Any media or files uploaded to the lab instructions of Lab Profiles will be in a content folder, and all lab settings and configuration will be in a JSON file. These files will be exported for each Lab Profile in the Lab Series. 

    >[!alert] When using Export/Import, some lab components are not exported, and will not be in a new Lab Profile when you import the exported files. It is highly recommended to use **Save As** to clone a Lab Series. You should only use Export/Import to clone a Lab Series if you accept the risk that the cloned Lab Profiles in the Lab Series may not contain all lab components and settings.

## Save As

Cloning a Lab Series using Save As is the preferred method to clone a Lab Series. 

1. Navigate to the Lab Series you wish to clone. 

1. Click **Edit** to edit the Lab Series. 

1. Scroll to the bottom of the page, and click **Save As**. 

1. There are two fields to complete. By default, they have information in them, but can be changed during this step or by editing the new Lab Series after it is created. 

    - **Name:** This will be the display name of the Lab Series.
    - **Organization:** Select the organization that will own the Lab Series and be responsible for maintaining the series. 

1. After completing the two fields, select the Lab Profiles that will be cloned into the new Lab Series, and click OK. 

    >[!knowledge] If a Lab Profile isn't selected to be cloned to the new Lab Series, the VM profiles for that Lab Profile will not be cloned to the new Lab Series. Any VM profiles in the original Lab Series that are not used by a Lab Profile in the new Lab Series will not be cloned to the new Lab Series. 

You will be taken to the new Lab Series. 

## Export and Import

Cloning a Lab Series using Export/Import is not recommended for typical Lab Series cloning, but may be useful depending on your needs. 

>[!alert] When using Export/Import, some lab components are not exported, and will not be in a new Lab Profile when you import the exported files. It is highly recommended to use **Save As** to clone a Lab Series. You should only use Export/Import to clone a Lab Series if you accept the risk that the cloned Lab Profiles in the Lab Series may not contain all lab components and settings.

>[!alert] Lab Profiles that have Start States configured on them should not be cloned using Export/Import. Cloning a Lab Series that contains Lab Profiles with a Start State using Export/Import may cause the cloned Lab Profile to work improperly. If you need to clone a Lab Series with Lab Profiles that have a Start State, clone the Lab Series using [Save As](#save-as).

### Export

When you export the Lab Series, all Lab Profiles will be downloaded in a zip file that contains a content folder that contains a folder for each Lab Profile. There is also a JSON file that contains configuration settings for each Lab Profile in the Lab Series. 

1. Navigate to the Lab Series you wish to clone. 

1. Click **Export** to export the Lab Series. 

1. The files will begin to download. Depending on the size of the Lab Series, this may take a few minutes. 

### Import

1. From the LOD Administration page, click **Import Lab Series** on the Lab Series tile. 

1. Select the organization that will own the Lab Series and be responsible for maintaining the series. 

1. Select the zip file that was exported from LOD. 

1. Click Import

The Lab Series will now be imported and you will be taken to the Lab Series after the import is completed. 














