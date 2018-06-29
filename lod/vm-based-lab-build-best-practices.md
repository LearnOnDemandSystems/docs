# Best Practices: Virtual Machine Based Lab Development

This document outlines the considerations and recommendations for lab authors who plan to use virtual machine-based labs as part of their lab development strategy.

This document covers the following topics:

-   [Creating and editing virtual machine profiles](#create-and-edit-virtual-machine-profiles)

-   [Creating and editing lab profiles](#create-and-edit-lab-profiles)

-   [Building Windows-based virtual machines](#build-a-windows-virtual-machine)

### Assumptions

You have created or imported a virtual machine.

## Create and Edit Virtual Machine Profiles

#### Basic Information Tab

1.  Set the **username and password**.

    >[!KNOWLEDGE] The best practice is to set the username and password to the primary account that will be used to access the virtual machine. This may not always be the administrator account.

1.  Set the **RAM limit**. RAM is the main driving factor in cost. You need to determine a reasonable limit for the amount of RAM required for your virtual machine. Setting the limit to a value that is much higher than you actually need will increase cost, but setting the limit to a value that is too low will provide a poor user experience. Your goal is to ensure that your users have a good learning experience, while also managing costs.

1.  Set the **processor count**. A processor count higher than 4 results in diminishing returns on performance, so consider 4 to be the maximum value.

1.  If your lab requires nested virtualization, select **Enable Nested Virtualization**.

#### Hyper-V Virtual Machines

1.  Select **Enable Dynamic Screen Resizing (requires helper app)** if you want to use dynamic screen resizing.

    >[!KNOWLEDGE] This only works with Windows virtual machines. To use dynamic screen resizing, you need to install **Integration Services**.

#### vSphere Virtual Machines

1.  Ensure that the **Operating System** value is accurate.

    >[!ALERT] An incorrect operating system value can cause boot issues.

1.  Set the **number of processors and the cores per processor**. These values are multiplicative. You can set both the number of processors and the cores per processor and still adhere to the 4 core maximum.

1.  If you need 3D video, select **Enable 3D Video**, and then set an appropriate video RAM value.

#### Network Adapters Tab

1.  If you are configuring an **internal NIC**, select **Specify Ethernet (MAC) Address**, and then generate the MAC address.

1.  If you are configuring an **internet-connected NIC using NAT**, select **Specify Ethernet (MAC) address** and generate one.

    >[!KNOWLEDGE] If you are **configuring multiple virtual machines** at the same time, generate the MAC addresses for one virtual machine, and then save the VM Profile for that virtual machine before configuring the next virtual machine, otherwise the LOD system will generate the same MAC address for each VM Profile for which you click **Generate**.

1.  If you are configuring a NIC that needs a Public IP address, ensure that Specify Ethernet (MAC) address is not checked.

## Create and Edit Lab Profiles

#### Basic Information Tab

1.  Ensure that the **lab profile belongs to a lab series**.

    >[!KNOWLEDGE] To publish a lab profile successfully, the lab profile must be assigned to a lab series.

1.  In the Owner Name and Email, **provide the contact information for the lab owner**. The lab owner is the person who can provide information about a specific lab profile, if needed.

#### Networks Tab

1.  For all VM-to-VM communication, select **Private**.

    >[!NOTE] If you're familiar with Hyper-V, this is effectively an internal switch.

1.  For internet connectivity that doesn't need a public IP address, set the network to **Web Access (NAT)**.

    >[!KNOWLEDGE] When using DHCP, unless a conflicting IP scope exists in the virtual machine setup, the best practice is to use the pre-configured IP scope and gateway.

1.  For a public IP connection, contact the Help Desk to request approval, and then select **Web Access (Public IP)**.

    >[!ALERT] A public IP address requires approval. In order to get Public IP access, contact the Help Desk using the support request form, or send an email to support@learnondemandsystems.com.

#### Virtual Machines Tab

1.  Set the **Startup Delays**.

    >[!KNOWLEDGE] The recommended best practice is to start the domain controllers first, followed by the servers (as needed), and then clients. 15 to 30 second staggered delays should be sufficient, but this value is dependent on your environment.

1.  When using a start state, set the **Resume Order/Delays**.

#### Hyper-V Lab Profiles

1.  For all non-Windows virtual machines, uncheck **Wait for heartbeat before displaying to user**.

    >[!ALERT] The Wait for heartbeat before displaying to user setting does not work with non-Windows virtual machines.

#### vSphere Lab Profiles

1.  To freeze the virtual machines at a specific date and time, uncheck **Synchronize system time with host**, and then check **Set initial system time**.

    >[!ALERT] Do not use this feature when internet access is enabled.

#### Resources Tab

1.  Add any required resources to your lab profile. You can add as many resources as needed to the lab profile. The resources will be made available to lab users on the Resources tab.

1.  If attaching a manual (PDF, Word, XPS, HTML etc.), select the **In-line side-by-side with main content area** display option.

>[!KNOWLEDGE] The best practice when displaying a manual is to use the In-line side-by-side with main content area option. You can configure additional sizing options on the Advanced Tab.

#### Advanced Tab

1.  When using an attached manual with the display set to **In-line, side-by-side with main content area**, as a best practice, set the **Navigation Bar Width** to **Large**, **X-Large**, or **Custom**.

2.  As a best practice, use the same value when setting the **Minimum Time Given To Saved Labs** and the **Expected Duration**.

## Build a Windows Virtual Machine

1.  Set screen resolution to **1024x768**, set the desktop to a solid color, and empty the Recycle Bin.

2.  Set the Power Options to **High Performance**, and then disable the **Turn off the display** and **Put the computer to sleep** settings.

3.  In Advanced System settings, select **Adjust for best Performance**, and then check **Smooth Edges of Screen Fonts**.

4.  In the Action Center, in Security and Maintenance, **disable all notifications**.

5.  In the Automatic maintenance setting, select **Turn Off**.

6.  In Windows Defender, select **Turn Off**.

7.  In Screen Saver, select **Turn Off**.

8.  In Background, **select a solid color**.

    >[!NOTE] This will provide a smoother controller by the users when the background is visible.

1.  In Windows Firewall, select **Turn Off** (if appropriate).

2.  Set the homepage of the browser to **about:blank**.

3.  Clear the **Recycle Bin**.

4.  Disable Password Expiration (Local and/or Domain) for the Administrator account and any other account(s) that may be used.

5.  Ensure that security certificates will not expire during the life of the lab.

6.  Clear the Start menu history.

7.  Empty the event logs.

8.  Ensure that all virtual machines in a lab profile are set to a uniform time zone and are synced with each other.

9.  Ensure that all software used on your virtual machine is properly licensed.

10. Disable Windows Update.

    >[!KNOWLEDGE] For Windows 8.1 or earlier, you can do this from the Control Panel. In Windows 10, go to Services, double-click Windows Update (wuauserv), and then on the Log On tab, set to logon as "." with no Password. Disable the service, and then set the Startup Type to Disabled.

#### For Hyper-V Virtual Machines

1.  In the lab environment, on the **Developer menu** (the gear icon), click **Integration Services**.

    >[!NOTE] This will attach a DVD from which you can install Integration Services. If you are prompted to install .NET 4.5, you’ll find a .NET 4.5 installer included on the DVD. You can use File Explorer to open the installer.

    >[!KNOWLEDGE] Integration Services allows automatic screen resizing, command execution within a virtual machine, and automated performance-based scoring.

#### For vSphere Platform Virtual Machines

1.  In the lab profile, on the Removable Media tab, click **ESX_VMTools_ForWindows**.

    >[!ALERT] If you don’t see the ESX_VMTools_ForWindows Removable Media option, click **Create Removable Media**, set the name to **ESX_VMTools_ForWindows**, and then in Path, click **Choose (VMware)**. Browse to **VMWare(vm)-tools-windows-9.0.5-1137270.iso**, click **OK**, and then click **Save**. Launch the lab, and then in the DVD Drive list, click **ESX_VMTools_ForWindows**.

    >[!KNOWLEDGE] ESX_VMTools_ForWindows contains VMware Tools for Windows Guests that, in this environment, is primarily useful for enabling mouse control of the Virtual Machine.

1.  Use your keyboard to proceed through the installation.

2.  Once completed, accept the **reset machine** option.

## Configure a Virtual Machine that is a Domain Controller

1.  If using multiple domain controllers, in Active Directory, increase the tombstone value to 1,000 days.

    >[!ALERT] If replication is used, ensure that it is functional.

1.  In the domain administrator account, disable password expiration. Do the same for any other accounts that may be used.

## Configure Internet Connectivity in a Virtual Machine

1.  For a NAT-connected NIC, set the **IP**, **Subnet Mask**, and **Gateway** to the scope of the **Web Net (NAT)** IP settings.

    >[!NOTE] These settings were configured after import.

1.  Set the DNS to **8.8.8.8** or **4.2.2.1**.

    >[!KNOWLEDGE] You can set the DNS value to anything you want, but 8.8.8.8 or 4.2.2.1 works well for most labs.

## Configure Office 2013 or Later in a Virtual Machine

1.  Run the **Regedit** command.

2.  In the registry, go to **HKEY_CURRENT_USER\\Software\\Microsoft\\Office\\OfficeVersion\\Common**, and then create a new key named **Graphics**.

3.  In the Graphics key, create a new Dword value named **Disableanimations**.

4.  Right-click **Disableanimations**, and then click **Modify**.

5.  Select **Decimal**, enter a value of **1**, and then click **OK**.

    >[!KNOWLEDGE] This disables the animations in Office, which improves performance.

1.  Launch Office to confirm the setting change.

#### Rearm Office

1.  To check the remaining number of Office rearms, at an elevated command prompt, enter **cscript C:\\windows\\system32\\slmgr.vbs /dlv All \>\> C:\\\\OfficeRearmCount.txt**.

4.  Open **OfficeRearmCount.txt** and find the **Remaining Office rearm count** for your Office installation.

#### Rearm Office When There Are Multiple Office Rearms Remaining

1.  Search for **OSPPREARM.EXE** for your version of Office, and then run **OSPPREARM.EXE** as an Administrator.

    >[!KNOWLEDGE] As an example, the default location for OSPPREARM.EXE in Office 2016 is **C:\\Program Files (x86)\\Microsoft Office\\Office16**.

#### Rearm Office When Only One Office Rearm Remains

1.  Removing the Office rearm disk, make any additional required changes to the virtual machine, and then save those changes to a new differencing disk.

    >[!ALERT] If there is only one remaining Office rearm, you need to create a separate differencing disk to keep the rearm separated from all other changes made to the virtual machine. This ensures that the last remaining Office rearm is preserved by allowing you to be remove the Office rearm disk from the Hard Disks tab in the virtual machine profile in the future if any changes need to be made to the virtual machine.

1.  Repeat the Office rearming process, and then save the rearmed virtual machine to its own, separate differencing disk.

## Rearm Windows

1.  To check the remaining number of Windows rearms, at an elevated command prompt, enter **SLMGR -DLV**, press **Enter**, and then check value of the **Remaining Windows rearm count**.

#### Rearm Windows When There Are Multiple Windows Rearms Remaining

1.  At an elevated command prompt, run **SLMGR -Rearm**.

2.  Shut down the virtual machine, and then save the differencing disk.

#### Rearm Windows When Only One Windows Rearm Remains

1.  Remove the Windows rearm disk, make any additional required changes to the virtual machine, and then save those changes to a new differencing disk.

    >[!ALERT] If there is only one remaining Windows rearm, you need to create a separate differencing disk to keep the rearm separated from all other changes made to the virtual machine. This ensures that the last remaining Windows rearm is preserved by allowing you to be remove the Windows rearm disk from the Hard Disks tab in the virtual machine profile in the future if any changes need to be made to the virtual machine.

1.  Repeat the Windows rearming process, and then save the rearmed virtual machine to its own, separate differencing disk.

Create a Combined Rearm Disk
----------------------------

1.  If you have Office installed, and either Office or Windows is down to one remaining rearm, create one differencing disk that contains the rearm for both Windows and Office, and then keep this differencing disk separate from all other work. See Rearm Windows When Only One Windows Rearm Remains and Rearm Office When Only One Office Rearm Remains.

[Back to top](#best-practices:-virtual-machine-based-lab-development)


