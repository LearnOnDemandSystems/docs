# Using Start States with VMware ESXi

WMware ESX does not support creating or importing a virtual machine from a saved state. However, ESX does support saving disks and virtual machine import and export. Import/export does not include the saved state (RAM) of the virtual machine. New ESX virtual machines are created with no memory state, meaning the operating system is cold-booted. 

Lab on Demand can use memory file swapping to enable start states on new VMware ESX virtual machines. The memory file of a running virtual machine is captured and stored when a lab author chooses to capture the start state in a lab. When a new lab is launched, LOD builds a fresh virtual machine, saves it, and then swaps the memory file on the virtual machine with the memory file stored. Then the virtual machine is resumed with the save state in place. 

This method can enable start states in VMware ESX, but it also comes with some limitations. 

- May take extended time to launch 

- May not work with all virtual machines

- Does not work with VMs that have nested virtualization enabled.

This method may not work every time and Learn on Demand Systems is unable to support this method. However, it may still be used in labs. 

There are some alternatives that we recommend for using Start States in a lab.  
- **Pre-instancing**: A pool of labs are kept in a saved state. When a user launches a lab that belongs to that pool, a lab from the pool will be given to the user. The lab will launch much quicker than the above mentioned method.

- **User Microsoft Hyper-V**: Hyper-V supports importing and cloing of virtual machines with a saved memory state. This is supported by Learn on Demand Systems and is available to lab authors to use. Hyper-V is not supported by all virtual machines, but it is the best option to use, when it is possible. 
    
Learn on Demand Systems is available to help convert existing labs to use Microsoft Hyper-V, for a service fee. Please speak to your Sales representative for more information.
