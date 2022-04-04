# How do I build an ESX lab from scratch?

Most instructions that we have for building labs apply to both Hyper-V and ESX labs. However, we have some specific steps that must be taken in order to build an ESX lab within our Lab Development Service.

The entries that matter when creating a lab on the ESX platform are located in the Lab Profiles under Platform and in the Virtual Machine Profile under Platform and Hardware Version. You may also need to create ESX Removable Media Profiles, this time by selecting ISOs that are stored in the ESX storage, selecting the **Choose (ESX)** button next to the path.

There are two types of storage available and the virtual hard drives and ISOs for ESX are stored in the ESX storage, not the Microsoft Storage.