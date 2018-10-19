# How do I add step-by-step instructions to my labs?

Want your users to be able to complete your labs without having to refer to an external document or have a separate monitor for the lab manual? If yes, you can add manual content to your labs to provide your users with step-by-step instructions in place of a separate manual.

There are three methods to add content to your lab: 
1. Add each step to the content area of the lab
1. Import content from another source
1. Inherit content from another lab profile. 

This article will cover the first method. The other two methods will be covered in separate articles.

To add content steps directly to a lab, in the **Lab Profile**:
1. Click **Edit** on the **Lab Profile page. 
1. At the bottom of the **Basic Information tab**, check the **Has IDL Content** check box. 
1. If you want your exercises to be automatically numbered, check the **Show Exercise Numbers** check box. This check box only appears after you have checked the Content check box. 
1. Click **Save**. 

> [!KNOWLEDGE] Notice the **Lab Profile** now has a **Check Out** option in the command bar below the lab title.

5. Click **Check Out**. This locks the content area of the Lab Profile to keep others from changing the content while you are working on it. Notice the new **Launch** option in the command bar and the message bar that appears stating you have this **Lab Profile** checked out.

There are two locations to add content to your lab: 
- The static interface that provides everything but the VMs
- IDL Studio, which will be covered in this article. 

6. Click **Launch in IDL Studio**.

Once the lab has completely launched, notice the **Developer** menu on the lab title bar and the **Content** tab on the right side of the lab interface. You will use these to add your content. On the **Content** tab, click **New Exercise**. This will open the New Exercise window with the following required and optional fields:

||||||
|---|---|---|---|---|
|**Field**|**Required**|**Type**|**Displayed in Launched labs**|**Content**|
**Name**|Yes|Plain text|In outline of Content tab and in Exercise dialog boxes|Exercise name|
|**Introduction Message**|No|Rich text|In Exercise window when user first accesses the ecercise in the lab| Introductory information for the exercise|
**Introduction Content URL**|No|Link|In separate window on user's device after Exercise Introduction window is cleared.|URL to other content, such as a video you want your users to see at the beginning of the exercise|
**Completion Message**|No|Rich text|In Exercise window when the user complete the steps in the exercise| Completion information for the exercise|
**Completion Content URL**|No|Link|In separate window on user's device after Exercise Completion window cleared|URL to other content, such as a video you want your users to see at the end of the exercise. 

You can either type in the fields or copy from the lab manual or other location. For rich text fields, use the Formatting toolbar that appears when you click in the field to add formats to content. 

You can also use the **Source Code** window for each rich text field to manually correct HTML codes or set new codes. To access the Source code window, click the ```<>``` button from the toolbar. To exit the **Source code** window, click **OK** or **Cancel**.

Once you have completed the exercise fields you want, click **OK** in the **Edit Exercise** window. This will open the first task window with the following fields:

||||||
|---|---|---|---|---|
|**Field**|**Required**|**Type**|**Displayed in Launched labs**|**Content**|
|**Name**|Yes|Plain text|In outline on Content tab and in bottom left corner of the lab interface|Brief summary of what the user will do in the step (there is a limit on the number of characters)|
|**Text**|Yes|Rich text|At bottom of lab interface (when using one monitor)|Directions for the step from the lab manual|
|**Alert**|No|Rich text|Immediately upon completion of the previous step by user, in its own window. User cannot do the step until they clear the window. Can also be access on other steps, from the Alert icon in the lower left corner of the lab interface.|Any important information the user must have before performing the step|
|**Knowledge**|No|Rich text|In a window pop-up when the user clicks the Knowledge icon in the lower left corner of the lab interface.|Any secondary or extra information for the step or lines of code for the step|

Covered in other articles:

||||||
|---|---|---|---|---|
|**Field**|**Required**|**Displayed in Launched labs**|**Content**|
|**Screen shot**|No|In a separate pop-up window when the user clicks the Screen shot (camera) icon in the lower left corner of the lab interface|Screen shot taken of active VM using Developer manu in lab interface or uploaded PNG file|
|**Video**|No|In separate pop-up window when the user clicks the Video button in the left side of the lab interface|Video file|
|**VM Select**|No|Displays Switch to Machine button to the right of the step direction to make different VM active|Name of another VM included in lab on the Virtual Machines tba of the lab profile|
|**Floppy Drive**|No|Displays Load Disk buttonto the right of the step directions to load the floppy in the active VM|A floppy disk added on the Removable Media tab of the lab profile|
|**DVD Drive**|No|Displays Load Media button to the right of the step directions to load the optical disk in the active VM|An optical disk added on the Removable Media tab of the lab profile|
|**Command**|No|Displays Command button to the right of the step directions to assist user in completing step|Drop-down for type of command and a Command box with the content you want executed when the button is clicked|

Like the Exercise fields, you can type or copy/paste the content into the Task fields and use the Formatting toolbar and/or Source code window for the rich text fields. When you have finished building the step, click either **Add** to add the step and return to the lab interface or **Add and create another** to add the step and open the **New Task** window for the next step.

Content is saved as it is added. To add another exercise or task after the currently selected task, click **New Exercise** or **New Task** on the **Content** tab on the right side. When you have finished adding all of the exercises and steps for the lab from the lab manual, you can cancel the launched lab. Finally in the **Lab Profile**, click **Check In** to release the content.

For a comprehensive guide on building lab content, review the [Learn On Demand Systems Integrated Digital Lab Authoring Guide](http://lodmanuals.blob.core.windows.net/support-files/IDL_Guide/IDL_Guide.pdf).

