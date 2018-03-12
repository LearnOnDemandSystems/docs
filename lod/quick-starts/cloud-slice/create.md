# Cloud Slice Quick Start - Create a Cloud Slice lab in 3 steps

> [!ALERT] You are currently viewing the third entry in a series of Quick Starts about Cloud Slice.
>
> To complete this quick start, you must have the following:
> * a cloud subscription configured for use with the One Learn Lab on Demand platform (LOD);
> * a Cloud Subscription Pool created in LOD that contains the cloud subscription(s) you will use with your Cloud Slice;
> 
> If you have not yet configured your cloud subscription for use with LOD, go through the [Configure your Cloud Subscription for use with LOD](configure-subscription.md) Quick Start.
>
> If you have configured your cloud subscription properly but have not added your subscription into LOD for use with Cloud Slice labs, go through the [Add your Cloud Subscription into LOD](add-subscription-into-lod.md) Quick Start.

Estimated time to completion: **5 minutes**.

Creating your first Cloud Slice lab is as easy as 1-2-3!

## Step 1: Create a Lab Profile

1. [ ] Navigate to the <[Lab on Demand Administration page](/Admin).

1. [ ] Find the **Lab Profiles** tile and click on the <[Create a Lab Profile](/LabProfile/Create) link.

    !IMAGE[screenshot](images/create-a-lab-profile.png)
    
1. [ ] Enter ++001++ in the a **Number** field, and ++cloud-slice-quick-start++ in the **Name** field.

    > [!KNOWLEDGE] You can left-click on any text that has the copy symbol next to it to copy it to your clipboard.
    >
    > e.g. ++This is copyable.++

This is all that is required to create a lab profile; however, you will need to configure a few additional items for a Cloud Slice lab.

## Step 2: Disable the Virtualization Platform

1. [ ] In the **Virtualization Platform** combo box, select **None** to disable virtualization.

    > [!KNOWLEDGE] You can use virtual machines in Cloud Slice labs, but for now let's keep things simple and turn virtualization off. We'll show you how to add a virtual machine to this lab later.

## Step 3: Enable Cloud Orchestration

1. [ ] In your **Create Lab Profile** window, navigate to the **Cloud** tab.

1. [ ] In the **Cloud Platform** combo box, select **Azure**.

1. [ ] Click the **Choose** button to select your cloud subscription pool.

    1. [ ] Click **Search** to see all cloud subscription pools that are available to you. If you want to find a specific pool, enter the name that subscription pool in the Name field before you click **Search**.
    
    1. [ ] Select your cloud subscription pool in the search results.
    
    1. [ ] Click **OK**.

1. [ ] Click **Add Portal User Account**, and enter ++Taylor++ into the Name Prefix field.

1. [ ] Click **Add Cloud Resource Group**, and enter ++corp-data++ into the Name Prefix field.

1. [ ] Click **Assign User Account**, select **Taylor** in the combo box, and select **Contributor** in the Role combo box.

1. [ ] Click **Save** at the bottom of the **Create Lab Profile** window to save the lab.

You have now created your first Cloud Slice lab. Let's launch it to see what it looks like.

1. [ ] In the lab profile details view, click **Launch** to launch your Cloud Slice lab.

1. [ ] Once the lab has finished deploying, click **Get Started**.

**Congratulations! You have just launched your Cloud Slice lab! You are now seeing the lab from the same perspective of a student.**

> [!KNOWLEDGE] There are no lab instructions written yet, but that's ok. We'll add those in the next Quick Start guide.

> [!KNOWLEDGE] When students launch a Cloud Slice lab, two windows will open: one displaying the current lab resources (called the _Resources Portal_), and another displaying the instructions, resources, and help information for the lab (called the _Lab Console_).

Select the **Resources** tab in the Lab Console. On this tab, students will see the default portal for their Cloud Slice lab, along with credentials for users that were dynamically provisioned for this specific lab session. Log in to the Azure Portal by clicking the username to copy it to your clipboard and pasting into the appropriate field in the Azure Portal, and then doing the same for the password.

When you log in, you are brought through the Microsoft Azure onboarding experience, with options to launch a tour. Every student launching your lab will receive this experience because these are brand new accounts that are provisioned dynamically, as the lab launches.

Click **Maybe later** to skip the tour, and then have a look around. You do anything in Azure that this student was given permission to do in your subscription. Don't worry, you can tighten up what students can and cannot do later.

Now let's shift gears, and start adding instructions to enhance the learning experience. Click on the link below to go through the next Quick Start where you will write instructions for your Cloud Slice lab.

[Write instructions for your Cloud Slice lab](write-instructions.md)

[Back to top][back-to-top]

[back-to-top]: #cloud-slice-quick-start---create-a-cloud-slice-lab-in-3-steps "Return to the top of the document"
