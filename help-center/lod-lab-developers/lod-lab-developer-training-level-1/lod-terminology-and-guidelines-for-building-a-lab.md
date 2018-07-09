## Lab on Demand Terminology and Guidelines for Building a Lab

When building labs in Learn on Demand Systems, you need to know the LOD terminology used for the pieces or components of the lab and guidelines for determining what you will need. At the end of this article are the links to help you build the main components.

###  Required components

- **Lab Series**: A Lab Series is the identifier for a related group of lab components that will comprise your lab(s). It is used in Searches, filters, and other locations within LOD to find these components. It is also used by other programs to identify the group of components. You should build this first in LOD.

- **Lab Profile**: A Lab Profile is the component or vehicle that provides your users with the lab interface that they will interact with and other optional components. You may have one or more Lab Profiles associated to a Lab Series.

See the [Guidelines](#guidelines) section for help determining how many Lab Series and Lab Profiles you may want and/or need.

### Optional Components

- **VM Profile**: Contains specifics about one virtual machine including RAM, screen resolution, number of hard disks, operating system, etc. In each Lab Profile, you will associate all the VM Profiles for the virtual machines the user will need for that launched lab. The Lab Series should be set in each VM Profile to ensure it is easy to find and associate with Lab Profiles. A VM Profile can be associated with  more than one Lab Profile. 

- **Removeable Media**: Contains specifics about an ISO or a floppy disk that is stored in LOD storage. In each Lab Profile, you will associate all the Removeable Media profiles the user will need in that launched lab. The Lab Series should be set in each Removable Media profile to ensure it is easy to find and associate with Lab Profiles. A Removable Media profile can be associated with more than one Lab Profile. 

- **Content**: Contains the lab instructions provided within a launched lab for a user to complete. Content replaces the need for a separate manual for the user to follow to complete instructions in the lab. Content is a sub-component of a Lab Profile and does not have it's own separate container. 

- **Resources**: Other items you can add to a Lab Profile to be available to your users in the launched lab include:
    
    - External Link
    - PDF Document
    - XPS Document
    - HTML Document
    - Image
    - Video

### Guidelines

When you are planning how to design your structure, you should consider the following:

1. Do you have more than one general topic, course, presentation, etc. that you want to use LOD for? 

    >[KNOWLEDGE] You should build one Lab Series for each general topic, course, presentation, etc. This will make it easy to identify all the components that will be used for that topic, course, etc.

1. Do you want your users to have one lab (one Lab Profile) to interact with all of optional lab components and complete all objectives? – OR – Do you want your users to have more than one lab (multiple Lab Profiles) and in each separate lab, interact with one or more of the optional components and complete a subset of objectives?

#### One Lab Profile for everything
    
- **Pros**:

    - User only has to launch one lab and everything they need for the entire topic is there for them.
    - If the Lab Profile has VM Profiles associated with it, the user can progress through the objectives and see how their actions build upon each other and the results. There is no need to build separate VMs to reflect progression through the topic. 

- **Cons**:

    - Everything the user will need to interact with during the entire lab must be in or associated with the Lab Profile. 
    - If using VMs, all VM Profiles that will be used must be associated with the Lab Profile, which can cause the lab to be very slow to load. 
    - If a user makes an error, especially when working in a VM, it can affect their ability to complete the remaining parts of the lab. They may have to cancel and relaunch the lab which resets the lab to the beginning state. This can cause the user to lose valuable time. 

#### Multiple Lab Profiles, one for each subtopic

- **Pros**: 

    - You only have to associate or include those components in each Lab Profile that the user will use for that subtopic. 
    - If the Lab Profile has VM Profiles associated with it, an error a user makes in one lab will not cause them problems in the next lab. 
    - A User can redo a lab without having to start at the very beginning of the entire topic and without affecting other labs. 
    - Labs with fewer VM Profiles are faster to launch than those with many VM profiles.
    - The Lab environment and virtual machines are fresh for each subtopic. 
    - A user can launch the labs in any order, giving them the flexibility to explore in their own way. 

- **Cons**: 

    - Changes made by a suer to the lab environment or VM in one lab are not reflected in another lab, so if you want these captured and provided for your users, as a lab author you would need to make the changes on the VM(s) or lab environment and save them separately. If you are using VMs, this will create new VM Profiles from the current VM Profiles. (This will be covered in another article explaining differencing disks.)

    - A user would need to launch each lab to be able to cover all objectives of the main topic/presentation/course. 

### To find more information on these components, go to the following articles and videos:

- [How do I create a Lab Series?](how-do-i-create-a-lab-series.md)
- [How do I create a Lab Profile?](how-do-i-create-a-lab-profile.md)
- [How do I create a VM Profile?](how-do-i-create-a-vm-profile.md)
- [How do I create a Removable Media profile?](how-do-i-create-a-removable-media-profile.md)

For a comprehensive guide on building lab content, review our authoring guides below.

- [IDLx Authoring Guide](../../../guides/idl2/idlv2-authoring-guide-and-best-practice.md)

- [IDL (legacy) Authoring Guide](../../../guides/idl/idlv3.md)


    

