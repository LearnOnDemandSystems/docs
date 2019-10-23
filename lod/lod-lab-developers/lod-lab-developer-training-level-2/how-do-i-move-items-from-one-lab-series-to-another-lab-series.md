# How do I move items from one Lab Series to another Lab Series?

Do you need to copy or move Lab Profiles (and other profiles) to a different Lab Series? For example, do you want to move a Lab Profile from a Development Lab Series into a Production Lab Series? Lab Series can be directly associated with three other types of profiles: 
Lab Profiles, Virtual Machine (VM) Profiles, and Removable Media Profiles. Each of these components can be copied and/or moved between different Lab Series. 

## Lab Profiles

The process for moving or copy a Lab Profile is exactly the same except at the point of saving. 

1.  Click **Edit** in the upper-right corner on the **Lab Profile** page. 
1. On the **Basic Information** tab, click **Choose** next to **Series**. 
1. In the **Choose Lab Series** window, search for and select the **Lab Series** you want the **Lab Profile** to be associated with, and click **OK**. 
1. To move the profile to the new series, click Save and the process is complete. 

To copy the Lab Profile, click **Save As**. This will prompt you to make some choices to complete the process.

1. In the Save As window, input a new Number and Name for the Lab Profile, if desired. 
1. select the appropriate Virtual Machine Profile option and click OK:

    - **Create new virtual machine profiles based on the ones in this lab profile (clone them).**
        - This will create cloned Virtual Machine Profiles that will remain associated with the original Lab Series. It is recommended to move them to the new Lab Series. Changes in the new VM profiles will not affect the original VM profile. 
    - **Reuse the virtual machine profiles in this lab profile.**
        - This option will reuse the existing Virtual Machine Profiles. Changes made to the VM profiles will affect both lab profiles.
    - **Inherit this lab profile?s virtual environment, content, and resources.**
        - Choose which virtual machines, networks, and removable media you want to include in the new lab. Changes made to virtual machines inherited from this lab will be reflected in the new lab.


## Virtual Machine Profiles

The process to move or copy a Virtual Machine Profile starts on the Virtual Machine Profile page and is exactly the same as for a Lab Profile except if you click Save As to copy. At this point, the Save As dialog only has the option to change the virtual machine name. Input a **New Name**, if desired, and click **OK**.
1.  Click **Edit** in the upper-right corner on the **Virtual Machine Profile** page. 
1. On the **Basic Information** tab, click **Choose** next to **Series**. 
1. In the **Choose Lab Series** window, search for and select the **Lab Series** you want the **Virtual Machine Profile** to be associated with, and click **OK**. 
1. To move the profile to the new series, click Save and the process is complete. 


## Removable Media Profiles

The Save As option is not available for Removable Media Profiles. To move a **Removable Media Profile**:
1.  Click **Edit** in the upper-right corner on the **Removeable Media Profile** page. 
1. On the **Basic Information** tab, click **Choose** next to **Series**. 
1. In the **Choose Lab Series** window, search for and select the **Lab Series** you want the **Removable Media Profile** to be associated with, and click **OK**. 
1. To move the profile to the new series, click Save and the process is complete. 

