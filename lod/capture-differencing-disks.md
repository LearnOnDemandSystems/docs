# Capture Differencing Disks

A differencing disk is a virtual hard disk (VHD) that contains changes made to another VHD. The purpose of a differencing disk is to maintain information about changes made, so that they can be revered if needed. Captured differencing disks are stored on the virtual machine (VM) profile.

Capturing differencing disks allows you to permanently persist changes you've made in your virtual machines. The changes will be present for all users that launch this lab in the future. This feature is only available to lab developers and shouldn't be mistaken as a way to temporarily save your lab. If you simply want to save your lab so you can resume it later, please use the Save and Close Lab option in the Exit menu.

## Differencing Disk Capture

To capture a differencing disk:

1. Navigate to the lab profile that uses the VM you want to capture a differencing disk for. 

1. Launch the lab

1. Log in to the VM and make any changes that you would like to persist for each lab instance of the lab. For example, softare installations and/or configurations.

1. In the running lab, click the gear icon at the top of the screen and click _Differencing Disks_. ![](images/gear-icon.png){25X25} 

1. A dialog window will appear with two options:

    - **Create a new lab profile including my current differencing disks**: creates a new lab profile with an option to create new virtual machine(s), as well as an option to copy the instructions to the new lab profile.

    ![](images/create-a-new-lab-diff-disk.png){50X50}

    - **Update virtual machines in this lab profile with my current differencing disks**: updates the VMs used in the lab with changes saved during the differencing disk capture.

    ![](images/update-vm-in-this-lab-diff-disk.png){50X50} 

1. After selecting an option, click _Next_. 

1. The differencing disk will now begin to capture. 

    ![](images/saving-differencing-disks.png)

>[!alert] All impacted virtual machines will be shut down during the save procedure and restarted after the save is complete.

<!--
## Differencing Disk Management and Best Practices

Lab developers have options for managing differencing disks. They can delete, rename or move files associated with the differencing disks.

To manage differencing disk files:

1. From the LOD admin page, click **Manage Storage** on the Storage tile. 

1. Click [insert where to click here] and drill down to the disks and files you wish to manage. 

-->