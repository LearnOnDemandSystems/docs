---
title: "Lab Profile Creation and Explanation"
description: "Lab profile creation, and explanation of lab profile configuration."
isPublished: true
---

# Create a Lab Profile

Labs in Lab on Demand (LOD) are housed in a lab profile. The lab profile is where the settings are configured for the lab. These settings include (but are not limited to): Name, owning organization, expected duration, resource requirements, virtual machines, network configuration, and much more. Lab profiles can exist on their own or they can be part of a Lab Series that contains multiple lab profiles.

<!--
### Max RAM Usage 
The maximum amount of RAM that can be used in the Lab Series, across all lab launches. Once this limit is reached, users will not be able to launch labs until another user closes their lab.

Organizations have a max RAM setting for both Hyper-V and vSphere virtual machines that will limit virtual machines to 50GB. This applies to both new virtual machines, and editing existing virtual machines. When editing a lab, if the changes being made will put the lab over the max RAM setting for that organization, a notice will be given to the lab developer. 
If a notice is received, a lab services ticket will need to be submitted and the Learn on Demand Systems team will assist with getting the lab updated, upon approval of your AE and an understanding of you consumptions projections. 

To submit a lab services ticket, please visit our [customer support page](http://www.learnondemandsystems.com/customer-support/).

-->

## Lab Profile Settings

![Create lab profile](images/create-lab-profile-button.png)

!INSTRUCTIONS[](settings.md)
