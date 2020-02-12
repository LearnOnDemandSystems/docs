# Virtual Machine Profiles

Virtual machine (VM) profiles in Lab on Demand (LOD) are used in lab profiles. VMs in LOD use either Hyper-V or VMware as the hypervisor. 

## Supported Operating Systems
For information which operating systems are supposed by Hyper-V and VMware, click below:

### Hyper-V

- [Windows](https://docs.microsoft.com/en-us/windows-server/virtualization/hyper-v/supported-windows-guest-operating-systems-for-hyper-v-on-windows)

- [Linux](https://docs.microsoft.com/en-us/windows-server/virtualization/hyper-v/supported-linux-and-freebsd-virtual-machines-for-hyper-v-on-windows)

### VMware

- [VMware Compatibility Guide](https://www.vmware.com/resources/compatibility/search.php?deviceCategory=software&details=1&releases=428&productNames=15&page=1&display_interval=10&sortColumn=Partner&sortOrder=Asc&testConfig=16)

- [VMware Virtual Machine Hardware Versions](https://kb.vmware.com/s/article/1003746)

## Create a Virtual Machine Profile

To look at documentation for a specific section of a virtual machine profile, choose an option below:

### [Basic Information](#basic-information)

### [Hard Disks](#hard-disks)

### [Network Adapters](#network-adapters)

### [SCSI Adapters](#scsi-adapters)

### [DVD-ROM Drives](#dvd-rom-drives)

### [Advanced](#advanced)

### [Internal Notes](#internal-notes)

To create a Virtual Machine profile, click **Create Virtual Machine profile** from the LOD Site Administration page.

![](images/create-vm-profile.png)

### Basic Information

1. **Name**: The display name of the VM.

1. **Description**: Used to provide more information about the VM profile.

1. **Series**: The lab series that VM profile will be available to. 

1. **Organization**: The organization that the VM profile will be available to. 

1. **Platform**: Select the virtualization platform that the VM profile will use.

    Available platforms include: Hyper-V, vSphere, Azure and AWS. Each platform will have different options listed below. 

   The next set of options on the basic information tab are different, based on the Platform used:

    - [Hyper-V](#hyper--v)

    - [vSphere](#vsphere)

    - [Azure](#azure)

    - [AWS](#aws)

    #### Hyper-V

    - **Generation**: Select the generation of hypervisor the VM profile will use.

        - Generation 1: provides the standard visual hardware to the virtual machine dating back to the original release of Hyper-V.

        - Generation 2: provides support for new features such as Secure Boot, and PXE boot using a standard network adapter, while dropping support for legacy devices like IDE and floppy drives. Guest operating system must be running at least Windows Server 2012 or 64-bit versions of Windows 8. 

    - **Operating System**: Enter the operating system that the VM will use.

    - **Username**: Enter a username for the VM.

    - **Password**: Enter a password for the VM.

    - **# Processors**: Select the number of processors that the VM will use.

    - **RAM**: Enter the amount of RAM the VM will use. Ram can be specified in MB or GB.

    - **Screen Width**: Enter the screen width that the VM will use, measured in pixels.

    - **Screen Height**: Enter the screen height that the VM will use, measured in pixels.

    - **Boot Order**: Configure the boot order of the VM. Selecting the up/down arrows moves items in boot order. The number beside the item designates it's order in the boot sequence.

    - **Enabled**: Check to enable the VM profile for use in lab profiles.

    - **Host Integration Enabled**: Enables Hyper-V Integration Services on the VM. This includes time synchronization with the host, heartbeat detection and graceful shutdown.

    - **Use Enhanced Session Mode**: Enables a connection similar to an RDP connection, that allows for better performance with the HTML5 and Enhanced controllers. Enhanced session mode leverages guest services to enabled additional features such as: automatic VM logon, redirection of clipboard, audio, drives, devices, printers, and smart cards. When ESM is used in conjuction with the Enhanced controller, the login status will be preserved when switching between multiple virtual machines in a lab environment. If ESM is enabled and the HTML5 controller utilized, the virtual machines will show a login prompt whenever switching from one to another.

    - **Enable Dynamic Screen Resizing**: Allows the VM to automatically resize it's resolution based on the size of the lab window. It is, however, limited to the resolution options available in the display settings of Windows. If the lab window is larger than the VM, there will be a gray space around the VM in the lab window. NOTE: this requires Integration services to be installed on the VM. This can be installed by clicking the gear icon at the top of a launched lab, and selecting _Install Integration Services_ and following the prompts.

    - **Enable Nested Virtualization**: Allows the VM profile to perform nested virtualization and run another VM on the VM.

    #### vSphere

    - **Hardware Version**: Select the hardware version that the VM will use. Each hardware version allows for more features to be available to the guest operating system. Some features may not be available on older hardware versions, such as nested virtualization. For learn more about VMware hardware features, read [VMware documentation on hardware features](https://docs.vmware.com/en/VMware-vSphere/6.7/com.vmware.vsphere.vm_admin.doc/GUID-789C3913-1053-4850-A0F0-E29C3D32B6DA.html).
    
    - **Operating System**: Select the operating system that the VM will use.

    - **Username**: Enter a username for the VM.

    - **Password**: Enter a password for the VM.
    
    - **# Processors**: Select the number of processors that the Vm will use.

    - **# Core Per Processor**: Select the number of cores per processor.
    
    - **RAM**: Enter the amount of RAM the VM will use. RAM can be specified in MB or GB.

    - **Video RAM**: Select the amount of video RAM the VM will use. Video RAM is specified in MB.
    
    - **Screen Width**: Enter the screen width that the VM will use, measured in pixels.

    - **Screen Height**: Enter the screen height that the VM will use, measured in pixels.

    - **Enabled**: Check to enable the VM profile for use in lab profiles.

    - **Host Integration Enabled**: This enables additional features on the VM, depending on if VMTools is installed on the VM. VMTools is installed on the VM in a launched lab, from the DVD drive drop-down menu on the Resources tab of the lab. VMTools must be added to the lab profile on the Removeable Media tab, for it to be available in the lab.

        **With VMTools installed** it will enable: Improved visual performance of the VM, improved mouse performance, graceful shutdown and the ability to pixel-perfect resize the VM to fit the lab window.
    
       **Without VMTools installed** it will enable time synchronization with host. 

    - **Enable Dynamic Screen Resizing**: 2 vCPU, 2048MB RAM, 32MB video RAM recommended.

    - **Enable Nested Virtualization**: Allows the VM profile to perform nested virtualization and run another VM on the VM.

    - **Enable 3D Video**: Allows 3D video to be viewed on the VM. 64MB video RAM recommended.

    - **Use EFI**: Enables Extensible Firmware Interface on the VM. This is most often used when it is necessary for EFI system partition is required for a VM's bootload to function.

    #### Azure

    - **Machine Type**: Select Azure SKU for the machine type that the VM will use. For more information about Azure virtual machines, read [Sizes for Windows Virtual Machines in Azure](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/sizes).

    - **Operating System**: Enter the operating system that the VM profile will use.

    - **Username**: Enter a username for the VM.

    - **Password**: Enter a password for the VM.

    - **Screen Width**: Enter the screen width that the VM will use, measured in pixels.

    - **Screen Height**: Enter the screen height that the VM will use, measured in pixels.

    - **Enabled**: Check to enable the VM profile for use in lab profiles.

    - **Host Integration Enabled**: Enables Hyper-V Integration Services on the VM. This includes time synchronization with the host, heartbeat detection and graceful shutdown.

    - **Enable Dynamic Screen Resizing**: Allows the VM to automatically resize it's resolution based on the size of the lab window. It is, however, limited to the resolution options available in the display settings of Windows. If the lab window is larger than the VM, there will be a gray space around the VM in the lab window. NOTE: this requires Integration services to be installed on the VM. This can be installed by clicking the gear icon at the top of a launched lab, and selecting _Install Integration Services_ and following the prompts.

    ### AWS

    - **Machine Type**: Select the AWS SKU for the machine type the VM will use. For more information about AWS virtual machines, read [Amazon EC2 Pricing](https://aws.amazon.com/ec2/pricing/on-demand/).

    - **Machine Image**, **AWS Region**, **Image Owner Account**

     - **Operating System**: Enter the operating system that the VM profile will use.

    - **Username**: Enter a username for the VM.

    - **Password**: Enter a password for the VM.

    - **Screen Width**: Enter the screen width that the VM will use, measured in pixels.

    - **Screen Height**: Enter the screen height that the VM will use, measured in pixels.

    - **Enabled**: Check to enable the VM profile for use in lab profiles.

    - **Enable Dynamic Screen Resizing**: Allows the VM to automatically resize it's resolution based on the size of the lab window. It is, however, limited to the resolution options available in the display settings of Windows. If the lab window is larger than the VM, there will be a gray space around the VM in the lab window. NOTE: this requires Integration services to be installed on the VM. This can be installed by clicking the gear icon at the top of a launched lab, and selecting _Install Integration Services_ and following the prompts.

### Hard Disks

**Add Hard Disk**: Click to add a virtual hard disk for the VM to use. A new virtual hard disk (VHD) can be created, or an existing VHD can be used.

### Network Adapters

**Add Network Adapter**: Click to add a network adapter, and configure adapter settings. 

- **Specify ethernet (MAC) address**: Allows the MAC address to be set to a unique value, or generate a random MAC address.  

- **Is legacy adapter**: Allows the network adapter to operate as a legacy adapter without a Hardware ID.

- **Enable spoofing of MAC address**: Allows the network adapter's MAC address to be spoofed.

- **Enable virtual LAN (VLAN) identification**: Allows a custom VLAN ID to be assigned.

- **Monitoring mode**: Enables Hyper-v port mirroring, to monitor network traffic. Monitoring the source or destination traffic is supported.  


### SCSI Adapters

**Add SCSI Adapter**: allows a SCSI adapter to be added to the VM profile. Multiple SCSI adapters are supported. The first SCSI adapter has an ID of 0, and subsequent  SCSI adapters added to the VM profile will have an ID incremented by 1. 

### DVD ROM Drives

Select the DVD-ROM drive and channel. 

Available channels include:
- Primary 0

- Primary 1

- Secondary 0

- Secondary 1

### Advanced

- **BIOS GUID**: this controls the BIOS GUID set within the virtual machine's configuration. The value should include the curly braces, e.g. {46486DC1-B2A6-456E-B091-9816D6F61F30}. Setting a custom BIOS GUID is optional and under normal circumstances, this does not need to be used and can be left blank.

- **UUID**: this controls the UUID set within the virtual machine's configuration. The UUID is a 128-bit integer. The 16 bytes of this value are separated by spaces, except for a dash between the eighth and ninth hexadecimal pairs. Setting a custom UUID is optional and under normal circumstances, this does not need to be used and can be left blank. An example UUID looks like this: `00 11 22 33 44 55 66 77-88 99 aa bb cc dd ee ff`.

    For more information about setting a custom UUID, read [Custom UUID Documentation](/lod/uuid.md).

- **Allow Disk Updates in Lab console**: This must be enabled for differencing disk capture or start states on the VM, in a lab.

- **Connect via Remote Desktop Connection (external to lab console)**: allows the VM to be connected to by an RDP connection. This is used in conjunction with the _Has Virtual Machines Pool_ checkbox on the Virtual Machines tab of a lab profile. A VM profile is required for each concurrent user, otherwise each user will receive the same RDP file and only 1 user will be able to connect to the VM at a time. 

### Internal Notes

This area is used to record notes, or additional information about the VM. This is useful if the VM has specific configurations, or if there are multiple users/authors that use the VM.

[Back to top](#virtual-machine-profiles)
