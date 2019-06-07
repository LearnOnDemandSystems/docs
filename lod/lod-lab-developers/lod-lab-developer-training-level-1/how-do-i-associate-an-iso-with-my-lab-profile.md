# How do I associate an ISO with my Lab Profile?

You can add an ISO to any Lab Profile and associate it with your VMs. There are two ways to do this: 

- Create the Removable Media Profile for the ISO first and then associate it with the Lab Profile (covered here)  
- Create the Removable Media Profile from the Lab Profile itself (to be covered later)

Once you are logged in:
 
1. From **Site Administration**, under Lab Profiles, click **Find Lab Profiles**. 
1. Input part of the **Lab Series** name, and then click **Search**. 
1. In the search results, click the name of the **Lab Profile** you want. 
1. On the Lab Profile page, click **Edit**.
1. On the Removable Media tab, click Add **Removable Media**. 
1. Use the filters to refine the search results, click **Search**, 
1. select the **Removable Media** Profiles wanted and then click OK. 
1. Save the **Lab Profile**. By default, once you have added a Removable Media Profile to a Lab Profile, it is available to all virtual machines in that Lab Profile, but not pre-loaded into any VMs at launch. In a launched lab, the user loads the removable media into a machine the from **DVD Drive** dropdown for the machine on the **Machines** panel in the lab interface.

You can set the Removable Media Profile to pre-load an ISO or floppy into specific **virtual machines** at launch, if needed. To do this: 
1. Click the **Virtual Machines** tab in the **Lab Profile**.
1. For the VM using the ISO, expand the dropdown for the **DVD Drive** and change the setting from **No Media** to the Removable Media Profile you just added. 
1. Click **Save**.

For floppy disks, you would use the same process with Removable Media Profiles.
