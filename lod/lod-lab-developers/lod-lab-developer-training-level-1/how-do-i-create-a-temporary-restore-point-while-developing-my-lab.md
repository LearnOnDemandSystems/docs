# How do I create a temporary restore point while developing my lab?

When developing a lab, you may find you want or need to restore or rollback the machines to a previous point to do something a different a way. This is where you would use snapshots, which are temporary restore points available during that session of the lab.

You have to enable snapshots before launching the lab in order to use them within the lab. To do this:

1. Click **Edit** on the **Lab Profile** page. 
1. Click the **Advanced** tab.
1. In the **Maximum Allowed Snapshots** field, type the number of snapshots you want available. 
1. Click **Save** and launch the lab.

Once the lab is running and you are working on it, you can create a snapshot at any time.

To create a snapshot:

1. Click the **Commands** menu at the top of the lab interface
1. Click **Snapshots**. In the Snapshots window
1. Type the name of the snapshot and click **Create Snapshot**. This creates a snapshot of all machines in the lab.

To restore to a snapshot:

1. Open the **Snapshots** window again and click Apply next to the snapshot you want to restore the machines to. 
1. Click OK to confirm the action.
