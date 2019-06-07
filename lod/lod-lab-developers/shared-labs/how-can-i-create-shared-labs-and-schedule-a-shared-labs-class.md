# How can I create Shared Labs and schedule a Shared Labs class?

With the correct permissions, you can create an environment in which the instructor and users share one or more lab networks. This allows the VMs in the environment to communicate with each other. To create and use shared labs it is important to understand the terminology and the processes to create the environment, the course, and the class.

### Terminology

- **Shared lab group** ? a group of two or more lab profiles in a lab series that can communicate with each other using the shared network(s).
- **Shared Environment role (Shared Environment)** ? the lab profile that will supply the shared class networks and the shared VMs for the shared lab group.
- **Participant role (Participant)** ? the lab profile(s) that will participate in the shared lab group and use a Shared Environment lab profile for its networks and the shared VMs. These lab profiles will have their own VMs that connect to the shared networks.
- **Shared Class Environment** ? the section on a lab profile where you can designate the role the lab will have in the group of shared labs.
- **Shared Class Network** ? a network in the Shared Environment lab profile that is designated to be shared with the other labs in the group. More than one network in the Shared Environment lab can be shared.

## Create the environment

For a lab to be part of shared labs it either needs to be designated as a Shared Environment or a Participant. In a lab series, you can use any current Lab Profiles or create new ones for the Shared Environment and Participant labs. Always start with the lab that will be designated as the Shared Environment. To do this, on its lab profile page:

1. Click the **Advanced** tab and click the dropdown under the Shared Class Environment section and select Shared Environment.
1. When a lab is configured with the Shared Environment role, networks within that lab can be flagged as a "Shared Class Network." Click the **Network** tab and check **Shared Class Network** under any networks that be will be shared between the Shared Environment and the Participant labs. This is the key to Shared Labs.

Once you have set up the Shared Environment, you need to designate which lab profiles will be the participants that will access the Shared Environment and its shared networks. To designate a lab profile as a Participant:

1. On the **Advanced** tab of its lab profile page, click the dropdown in the **Shared Class Environment** section and select Participant.
1. For **Shared Environment**, click **Choose**. Search and select the Shared Environment lab this participant lab will connect to.
1. Click the Virtual Machines tab and configure the VMs to use any of the shared networks defined in the Shared Environment.
1. Repeat this process for any other labs in the lab series that will be Participants.

## Create the course in the LMS

Notify the LODS Course Requests Team at https://lod.one/help to set up the course. Specify the following information:

- Name of course
- Name of Lab Series in LOD
- Name of Participant labs to add as Lab Activities to the course.

>[!KNOWLEDGE] Shared - Environment labs do not need to be added to the course.

## Create the class in the LMS

 Once the course has been created, work with the LODS Course Requests Team to create your class. Specify the following information:

- Course used for the class
- Class dates
- Number of students

## Work with the shared labs during class

Follow the normal class setup for these classes. However, when it is time to launch the Shared Environment, as the instructor you will:

- Click Monitor Labs from the Class
- Under the basic information on the Monitor Class page, click Shared Environment.

## Saving and Closing Labs

All labs (Shared and Participant) can been saved and closed as normal. 

>[!KNOWLEDGE] Saving and closing the Shared Environment lab does not make the shared network(s) unavailable.

## Canceling Labs

- If a Participant wishes to reset their Participant machine(s), they can **Exit Lab -> End Lab -> Cancel** at any time without affecting any other Participants or the Shared Lab Environment.
- If the Instructor exits the Shared Environment lab the same way, it cancels all the Participant labs as well.
