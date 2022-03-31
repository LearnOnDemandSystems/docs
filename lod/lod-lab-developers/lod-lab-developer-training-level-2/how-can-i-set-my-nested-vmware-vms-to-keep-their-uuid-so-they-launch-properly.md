# How can I set my nested ESX VMs to keep their UUID so they launch properly?

When opening a nested VM, have you received the following message: "**Question (id = 0) : msg.uuid.altered:This virtual machine might have been moved or copied.**?? This is because ESX believes the nested VM has been moved or copied and doesn't recognize its universally unique identifier (UUID).

A UUID is based on the physical computer's identifier and the path to the virtual machine's configuration file. This UUID is generated when you power on or reset the virtual machine. As long as you do not move or copy the virtual machine to another location, the UUID remains constant. Since your labs are not starting on physical machines, instead using virtual machines, they are essentially starting a ?new? piece of ESX hardware every time. Nested VMs that were running previously will not successfully resume.

To prevent this from occurring, you can edit the .vmx file(s) to tell ESX to keep the original UUID the virtual machine was given. To do this:

1. In the **Virtual Machine Question**, click **I Moved it** and click **OK**.
1. In the ESX console, locate the VM in the tree, right-click it and click **Remove from Inventory**.
1. Navigate to your **ESX Storage**.
1. Locate the **.vmx** file for your VM.
1. Right-click the **.vmx** file and click Download .
1. Select a location on your management VM
1. In **Notepad**, edit the **.vmx** file and at the end, append the line **uuid.action = "keep?**
1. Save the file
1. In the ESX console, click the **Upload** icon and click **Upload File**.
1. Click **Yes** to overwrite the old **.vmx** file
1. Right-click the **.vmx** file and click **Add to Inventory**.

After completing these steps, please make a new differencing disk to keep the changes to the VM in place.
