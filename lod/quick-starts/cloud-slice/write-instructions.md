# Cloud Slice Quick Start - Adding Instructions to Your Lab

> [!ALERT] You are currently viewing the fourth entry in a series of Quick Starts about Cloud Slice.
>
> To complete this quick start, you must have the following:
> * a lab profile that is properly configured as a Cloud Slice lab;
> 
> If you have not yet configured your Lab Profile to be used with Cloud Slice, go through the [Create a Cloud Slice lab in 3 steps](create.md) Quick Start.

Estimated time to completion: **10 minutes**.

Now that you have created a Cloud Slice lab, it is time to add instructions to your lab.

1. [] **Navigate** to the lab profile page for your Cloud Slice lab (you may be there already).

1. [] Click **Check Out** to check out the instructions for your lab. 

    (if you are on the page to edit the lab profile, click **details** in the upper-right corner, to return to the lab profile details page, where the instructions can be checked out)

    ![Check out Lab Profile](images/check-out-lab-profile.png)

    > [!KNOWLEDGE] You must check out lab instructions before you can edit them. As long as you have the instructions checked out, you are the only person who can modify them.

    Now that you have checked out your lab instructions for editing, you can edit them in the idl-md editor.

1. [] Click **Edit Instructions** to open the instruction editor in a new window, as shown below.

    ![Edit instructions](images/edit-instructions.png)

    The instruction editor consists of a markdown editor on the left, and a preview pane on the right. This gives you the ability to create lab instructions, and see a live preview in real time showing how they will be displayed to the user during the lab.
    
    > All Cloud Slice lab instructions are authored in an IDLx (Integrated Digital Learning eXperience) flavor of Markdown, called idl-md. This allows for easy plain-text authoring of instructions, with special syntax to used to decorate instruction text when you want it to be formatted differently in the rendered instructions presented to students.

    > [!KNOWLEDGE] Did you know that Markdown natively supports HTML, and HTML syntax can be used inline in the instructions you write in Markdown?
    
1. [] Now you're going to copy some sample instructions for use in your lab. Click ^INSTRUCTIONS[here](sample-instructions.md) to open sample instructions in a dialog window, and follow the instructions in that dialog.
    
1. [] Once you have finished experimenting with the markdown instructions, close the instruction editor.

1. [] Click the **Launch** button on your lab profile to launch it. You should see something like what is shown in the screenshot below.

    ![](TODO.png)

**You have now successfully added instructions to your first Cloud Slice lab! Great job!**

Once you have added instructions to the lab, the lab is ready to be launched by students; however, there are additional features that can be pre-provisioned in your Cloud Slice lab to fast forward the learning experience for students, such as cloud resources and managed virtual machines.

> [!KNOWLEDGE] At this point, if your instructions are written to guide students through the steps necessary to create and manage resources in the cloud, you could pat yourself on the back for successfully creating a working lab. However, for many labs it is advantageous to pre-provision cloud resources and managed virtual machines that students will use in their lab. This allows students to maximize their time learning how to work with those resources rather than having to manually create/deploy the resources themselves. The next steps in this quick start will show you how to configure your lab to provision these optional resources.

Click on the link below to use a Quick Start to provision cloud resources in your Cloud Slice lab.

[Provision cloud resources in your cloud slice lab](provision-cloud-resources.md)

[Back to top][back-to-top]

[back-to-top]: #cloud-slice-quick-start---adding-instructions-to-your-lab "Return to the top of the document"
