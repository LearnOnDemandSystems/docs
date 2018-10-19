# How do I use a Word template to import content into my Lab Profile?

Do you want to be able to create your lab manual in Word and then import the exercises and steps into your lab profile without having to do it manually? You can download a Word template and use it to create the lab manual. This document can then be imported into the lab profile to add the exercise and steps automatically.

To access the Word template:

1. Click **Import** on the **Lab Profile** page. The Import dialog box will open with two choices: IDL Content and Virtual Machines. 
1. In the **Import** dialog box, select **IDL Content** and click **OK**. The Import Integrated Manual Content page will open. From here, you can download a Microsoft Word.docx template. 
1. Click the **word template** link and save the template to your computer.

You can use this template to create a basic lab manual for one lab. However, not all of the manual will be imported. The import mechanism uses Word Styles to determine what is imported and where. 

>[!ALERT] Do not change the Word Style applied to area when replacing the placeholder with your text. 

Not having the correct styles applied to the correct text will cause the import to fail. In addition, it is very important to understand the following terminology as it may be used differently than in your courseware:

- **Task Name** is the name of a single step you want the user to do; NOT the name of a collection of steps.
- **Task Detail** is one single step's directions that the user is to perform; NOT a set of directions.

>Example:
>
>- Task Name: Add .NET Framework 3.5 Features
>- Task Detail: On the Features page of the Add Roles and Features wizard, select .NET Framework 3.5 Features and click Next.
 
- Below is a list of the areas/placeholders that will be imported along with the Word Style names (in blue) that should be applied to each: 
    - **Exercise Description** ? Your exercise title (Exercise Heading)
    - **Text located here will appear as the exercise scenario** ? your scenario    (Exercise Scenario)
    - **Task Name** ? the title you will give that step (Task Name)
    - **Task Detail** ? the instructions for that step (Task Detail)
    - **Alert Text Example** ? any information you want displayed in the Alert  enhancement for that step (Alert)
    - **This is a good idea** ? any information you want displayed in the Knowledge enhancement for that step (Idea)

>[!KNOWLEDGE] You can only add bold formatting in the task detail area. Bullets, italics, underlines, and other formatting options will not be imported in any areas.

4. Replace the placeholders with your text, ensuring the Style applied stays the same. If you are copying from another document into this document, paste the text using Keep Destination Formatting. 

>[!ALERT] Do not include the paragraph mark when you selecting the placeholders and when pasting; this will help keep the Styles applied correctly. 

You can copy the placeholders to add to additional exercises and tasks. For the **Alert** and **Knowledge** enhancements, copy those placeholders to the tasks that will need them. When you have completed your manual, delete any extra placeholders you do not want imported, such as empty tasks or the initial Alert and Knowledge placeholders. 

5. Save your manual as a new Word .docx file on your computer.
6. Return to the Lab Profile, navigate again to the **Import Integrated Manual Content** page and click **Browse**. 
7. Navigate to, select, and open the manual you created in Word. 
8. Next, decide whether to append the content in the file to the existing content of the lab (this is the default) or check the **Replace Existing Content** box. Click **Import** to add the content.

Repeat these steps for as many lab profiles as you need. 

>[!KNOWLEDGE] You only need to download the word template file once, it can be reused over and over to create your various lab profile manuals.

