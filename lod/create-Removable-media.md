---
title: "Create Removable Media"
description: "Removable Media to be used with virtual machines."
isPublished: true
---

# Create Removable Media

Removable Media is used in lab environments, to supplement lab instrucitons. Removable Media is used in the form of DVDs, or Floppy disks.

To create Removable media, click **Create Removable Media** on the Removable Media tile, on the Site Administration page.

![Create Removable Media](images/create-removeable-media.png)

## Basic Information

1. **Name**: This is the display name of the Removable Media. It is helpful to name media with unique names, in the event that multiple removable media items are used in the same lab.

1. **Description**: If there are multiples of the same media type used in a lab, it is helpful to provide a detailed description, to be able to tell which Removable media to use.

1. **Series**: Select the Lab Series that the Removable media will be associated with. Any lab profile in the lab series will be able to utilize the Removable media.  

1. **Organization**: Select the organization that the Removable media will be available to. 

1. **Type**: Select the type of Removable media; Optical (DVD) or Floppy disk.

1. **Path**: **Microsoft** (Hyper-V) or **VMWare vSphere** (ESXi)

_We don't recommend sharing Removable media profiles between vendor platforms. However, if you need this removable media to be available to both Microsoft-based and VMware-based platforms, you will need to ensure that the file resides in the same relative location for both vendors._
