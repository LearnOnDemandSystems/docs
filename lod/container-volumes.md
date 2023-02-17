---
title: "Container Volumes"
description: "How to create and manage Container Volumes. Container Volumes are used to store and access files within containers in Skillable Studio."
isPublished: false
---

# Container Volumes

Container Volumes contain a directory (or multiple directories) that files can be uploaded to or file scan be uploaded outside of a directory. Once files are uploaded, Container Volumes allow lab authors to load files into any container in the lab and share content between containers within a lab. 

## Table of Contents 

- [Table of Contents](#table-of-contents)
- [Create Container Volume](#create-container-volume)
- [Container Volume Management](#container-volume-management)
    - [Create New Directory](#create-new-directory)
    - [Upload Files to Container Volume](#upload-files-to-container-volume)
- [Use a Container Volume in a Lab](#use-a-container-volume-in-a-lab)
    - [Add Container Volume to Lab Profile](#add-container-volume-to-lab-profile)
    - [Access Container Volume Files in a Running Lab](#access-container-volume-files-in-a-running-lab)
- [Example Use Cases](#example-use-cases)

## Create Container Volume

To create a new Container Volume: 

1. From the Skillable Studio Admin page, select **Container Volumes** on the Containers tile. 

1. Select **+ Create Container Volume** in the upper-right corner of the page. 

1. Enter a **Name** and **Description** for the Container Volume. 

1. Select the **Organization** that will have access to the Container Volume, and all the files that are uploaded to the Container Volume.

    >[!knowledge] If a lab uses containers that do not belong to the organization configured on a container lab, the lab will be unable to access the Container Volume and the files uploaded to the Container Volume. The same organization must be configured on the Container Volume and containers, to access the Container Volume and files uploaded to the Container Volume. 

## Container Volume Management

Container Volumes can be managed on the Container Volume details page. 

>[!knowledge] When making changes to files or directories in a Container Volume, it may take up to five minutes for file changes to be available in new lab instances.


To manage your Container Volume: 

1. Navigate to the Container Volume in Skillable Studio. 

1. Select the **Files** button in the upper-right corner of the page. 

    From this page, you can create a new directory or upload files.

### Create New Directory 

Container Volumes can contain directories, to store files. 


To create a new directory: 

1. Select **+ New Directory**. 

1. In the dialog that appears, enter a **Name** for the new directory

1. The new directory will be displayed on the page. Select the directory by double clicking on it. 

1. Select **Upload**

1. Drop files into the dialog or select **Choose Files** to navigate to a file on your local computer. 

1. Select **OK** to upload the file. 

    >[!knowledge] If you are uploading a file and wish to overwrite an existing file that has the same file name, select **Overwrite existing files**. 

### Upload Files to Container Volume 

If a directory already exists in your Container Volume, you may upload files to it, or you can upload files outside of a directory. 

To upload files: 

1. Navigate to **your Container Volume**.

1. Select the **directory** if you wish to upload files to a directory, or select **Upload** to upload files outside of a directory. 

1. Drop files into the dialog or select **Choose Files** to navigate to a file on your local computer. 

1. (Optional) If you are uploading a file and wish to overwrite an existing file that has the same file name, select **Overwrite existing files**. 

1. Select **OK** to upload the file. 

    >[!knowledge] File uploads are limited to 2mb per file. 

## Use a Container Volume in a Lab 

To use a Container Volume in a lab, it must be added to the Lab Profile. Once it is added to the Lab Profile, all containers within the Lab Profile will be able to have access enabled to the Container Volume and any directories and files that are stored in it. 

### Add Container Volume to Lab Profile

To add a Container Volume to a Lab Profile: 

1. Navigate to the **Lab profile** that you wish to use a Container Volume with. 

1. Select the **Edit** button in the upper-right corner of the page. 

1. Select the **Volumes** tab at the top of the page. 

1. Select **+ Add Container Volume** to add your Container Volume to the Lab Profile. If you do not have a Container Volume, follow the steps to create one in the [Create Container Volume section](#create-container-volume) of this document.

1. Enter the **Name** of the Container Volume you wish to add, or add additional filters to the search, to locate the Container Volume you wish to add. 

1. Select **Search**, then select the **Container Volume** you wish to add and then select **OK**. 

1. Next, select the **Containers** tab. 

1. Select the name of the container volume next to the **Volumes** checkbox on each container that you wish to have access to the Container Volume. 

1. Enter the **Mount Point** of the Container Volume, if you wish to have a container mount the volume at a specific file path within the Container Volume. If you wish to have the container mount the Container Volume at the root of the Volume, leave the default Mount Point as Skillable Studio has entered it. 

1. Save the Lab Profile. 

### Access Container Volume Files in a Running Lab

Accessing a Container Volume in a lab is accessed the same as interacting with the file system 

Accessing the files in a container volume is the same as accessing the container's file system or accessing any attached storage and/or media. Lab users can use the container specific methods to access Container Volumes.

To access the Container Volume in a running lab: 

1. Launch the lab. 

1. Access the file system with the container specific methods for your container. For most containers, this will be entering commands in a terminal or command line interface, but for some containers there may be a graphical user interface. 

>[!knowledge] Changes made to a Container Volume file in a running lab can be seen by other containers within the lab instance. These changes will not be reflected in other labs that are using the same containers or Container Volumes.

## Example Use Cases

- Allow lab authors to create a single container image and use that container image with multiple labs, each using custom content from the files in the Container Volume.
- a scored developer lab where the learner creates code within container A and the code is assessed by running activity scripts against container B that isn't visible to the lab user. This simplifies the overall architecture, and increases the integrity of the assessment. 