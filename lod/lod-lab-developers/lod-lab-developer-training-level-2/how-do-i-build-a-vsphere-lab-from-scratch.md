# How do I build a vSphere lab from scratch?

Most instructions that we have for building labs apply to both Hyper-V and vSphere labs. However, we have some specific steps that must be taken in order to build a vSphere lab within our Lab Development Service.

The entries that matter when creating a lab on the vSphere platform are located in the Lab Profiles under Platform and in the Virtual Machine Profile under Platform and Hardware Version. You may also need to create vSphere Removable Media Profiles, this time by selecting ISOs that are stored in the VMware storage, selecting the **Choose (VMware)** button next to the path.

There are two types of storage available and the virtual hard drives and ISOs for vSphere are stored in the VMware storage, not the Microsoft Storage.