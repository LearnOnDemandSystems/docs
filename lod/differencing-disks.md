# Rollback Differencing Disks

A differencing disk is a virtual hard disk (VHD) that stores changes made on the virtual machine in the lab. The purpose of differencing disks is to contain the changes to the virtual disk since the previous differencing disk. This captures the current configuration in the lab, and if needed it allows changes to be made such as rolling back to a previous configuration or deleting disks.  

## Delete or Rollback to a Previous Disk

In Lab on Demand (LOD), to rollback to a previous differencing disk, you must delete any disks that were added after the disk you wish to roll back to.

1. In LOD, navigate to the VM profile you wish to change the disks on.
1. Click **Edit** on the VM Profile.

    ![](images/edit-vm-profile.png)

1. Click **Hard Disks** tab

    ![](images/edit-vm-profile-hard-disks-tab.png)

1. Click the **X** next to the last disk to remove it.

    ![](images/edit-vm-profile-hard-disks-tab-x-button.png)

If you would like to rollback and delete multiple disks, you can click the **X** on the disk immediately following the one you want to roll back to, and select **Include all child disks**, when prompted.

>[!knowledge] If you're rolling disks back on a set of VMs that all belong to the same domain, make sure you roll each VM Profile back to the same point, otherwise you may run intoTrust Relationship errors between the virtual machines.