# How do I make a change to my lab?

When working in a launched lab in the Lab Interface, you may want to update the VMs with the current status of your lab. You do this by creating a Differencing Disk.

To capture a VM?s current state in the lab you are working on:
1. you should first shut down all machines in the lab. 
1. Click **Developer** in the top right area of the lab interface and click **Differencing Disks**. 
1. In the **Save Differencing Disks** window, select **Update virtual machines in this lab profile with my current differencing disks** and click Next. 

The other choice is covered in the [How do I create a new lab profile with virtual machines from a launched lab?]() article.

1. In the **Update Virtual Machines** window, check only the virtual machines that you want to update and check their hard drives. 
1. You then need to type a name for the differencing disk on each hard drive checked and in the **Note** field, include a note explaining the changes made to that virtual machine. 
1. You should not uncheck the **Shut down affected virtual machines (Recommended: ensures all changes are flushed to disk)** checkbox. 
1. Click **Next**. 
1. If the storage folder that the virtual hard disks came from is read-only, you will be prompted for the folder to store the differencing disks in. 1. Select the folder and click **Next**. The differencing disks will be captured. 
1. In the **Save Successful** window, click **OK**.