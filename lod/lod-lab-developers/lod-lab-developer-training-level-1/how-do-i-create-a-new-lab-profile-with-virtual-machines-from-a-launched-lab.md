# How do I create a new lab profile with virtual machines from a launched lab?

If you want to create a new Lab Profile from a current running lab and to give yourself a copy of your lab with the work already done, you will use differencing disks.

To capture a VM?s current state in a new Lab Profile, you should:

1. Shut down all machines in the lab.
1. Delete all snapshot that have been created (**Commands > Snapshots**).
1. Click Developer > Differencing Disks.
1. Select Create a new lab profile including my current differencing disks in the Save Differencing Disks window.
1. Click Next. 

The **Update virtual machines in this lab profile with my current differencing disks** choice is covered in the article, [How do I make a change to my lab?](how-do-i-make-a-change-to-my-lab.md).

In the Create New Lab Profile window:

1. Fill in the Number and Name fields for the new profile. 
1. If you want the exercises and tasks from the current Lab Profile in the new Lab Profile, check the Include content (exercises and content) checkbox.
1. Select only the virtual machines you want in the new Lab Profile and fill in Display Name and Profile Name for each VM. These are what the new Lab profile will use. 
1. Type a name for each hard disk. 

>[!ALERT] Notice the statement at the bottom of the box, All impacted virtual machines will be shut down during the save procedure and restarted after the save is complete. 

5. Click Next. If the storage folder that the virtual hard disks came from is read-only, you will be prompted for the folder to store the differencing disks in. 
6. Select the folder and click Next. The differencing disks will be captured and associated with the new Lab Profile. 
7. In the Save Successful window, click OK. 

You can then continue working in the running lab or cancel it.
