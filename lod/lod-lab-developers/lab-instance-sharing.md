---
title: "Lab Instance Sharing"
description: "Lab Instance Sharing allows multiple users to work together in a lab profile at the same time. "
isPublished: true
---

# Lab Instance Sharing

Lab Instance Sharing allows multiple users to work together in a lab profile at the same time. This may add to your efficiency as different users can simultaneously work on tasks. For example, a lab developer can email a link to another user to work on a lab (see Figure 1 for the lab developer and user relationship). When sending a link, the lab developer simply sets permissions for the user and when their access expires. The lab developer retains ownership of the lab instance.

>[!note] To share a lab profile, lab instance sharing must be enabled for the organization listed on the lab profile. This setting is not inherited by child organizations.

![](/tms/images/lab-instance-sharing-process.png "The lab developer and user relationship during Lab Instance Sharing")

*Figure 1: The lab developer and user relationship during Lab Instance Sharing*

If you would like this feature enabled, contact our [Customer Support](http://www.learnondemandsystems.com/customer-support/) team. Please provide them with the authentication provider you want enabled for access through lab instance sharing as well as the sharing setting. 

For reference, authentication options include: 

* Corporate AAD 
* Google 
* Microsoft AAD 
* Microsoft Account 

Sharing setting options include: 

* **Share within organization** – You can share a link with users in your organization. 
    
    >[!note]Users must have launched at least one lab successfully or already have a user account in Learn on Demand (LOD). 

    >[!note]Users may be from related organization, either child, parent, or sibling organizations.

* **Share with anyone** – You can send a link giving access to anyone.

## Sharing a Lab 

Once enabled, you can share the instance from within the Lab Interface.  
1. From the **Lab** profile, click the **Launch** button. 
1. The lab interface opens, from the menu choose **Share**. 

![](/tms/images/lab-instance-sharing-menu.png)

3. This opens the **Share this lab instance** dialog, input an **email address** to share the lab with another user. For the email to be valid, it must match to a user in your LOD organization. 
4. Set the expiration for the user’s lab instance.  
   * **When the lab ends** – Choosing End from the lab menu by any user terminates the user’s access to the lab instance. 
   *  **At a particular time** – Set the date and time when the user’s access is over 
5. Choose the permissions for the user, one or more permissions can be selected. 
   * **Capture virtualization start states** – Grants start state capture rights in virtual machine-based labs within platforms that allow it. 
   * **Edit lab activities** – Grants Lab authoring rights to edit lab activities in the Lab Editor. 
   * **Edit lab instructions** – Gives the user rights to edit lab instructions in the Lab Editor. 
   * **Edit lab profile data** – This feature set to release in the future. 
   * **Install LOD virtualization integration services** – Grants rights to install Integration Services to use features like dynamic screen resizing. 
   * **Load developer files** – Grants rights to upload files from their system into the VM(s) of the lab. 
   * **Save differencing/delta disks in the current lab profile** – Grants rights to add a differencing disk to the current lab profile. 
   * **Save differencing/delta disks in a new lab profile** – Grants rights to create a new lab profile with the updated VM profile with a new differencing disk. 
6. Under **Existing Shares**, a verification message displays here when your lab instance has been successfully shared and it also displays users who have access to the lab. 
7. Click **Share** to send a link to the user. 

![](/tms/images/lab-instance-sharing-permissions.png)

Once shared, an email is sent to the designated user with a link to open the lab instance. Clicking the link forces authentication, based on the authentication provider set on your LOD Organization profile. After authenticating, the lab interface opens and the user can work in conjunction with other users based on the permission and expiration settings.
