# How do I reuse lab content from one lab in another lab?

There may be instances when you have exercises (content) in a lab that you want to use in another lab. For instance:
- When a new version of courseware comes out and the new labs are very similar to the old labs. 
- When labs from different courses have one or more exercises that are almost identical. There are a couple of options for adding the existing content rather than building it from scratch.

One method to reuse content is to export the content from the old lab profile and import it into the new lab profile.

Every lab profile has an Export button on its toolbar under the name of the lab. This button offers three choices: 
- Lab Metadata: Full Profile, 
- Lab Metadata: Integrated Manual Content Only
- Virtual Machines. 

This article will cover Integrated Manual Content Only. The remaining options may be covered in other articles and serve different uses/purposes.

The second option will export everything in the exercises including:
- Introductory 
- Completion information
- Steps 
- Screenshots 
- Videos

It does not include:
- Lab description 
- Objectives
- Scenario 
- Any other information contained on the Lab Profile page. 

## You will need to create the Lab Profile for the exported content separately: 

1. Start on the **Lab Profile** page of the lab that has the content you want to reuse. 
1. Click **Export**
1. In the Export dialog box, select **Lab Metadata: Integrated Manual Content Only**, then click **OK**. 
1. Save the zip file to a location on your machine.
1. Open the **Lab Profile** page for the lab you would like to use the exported content in. 
1. Click **Import** from its toolbar. 
1. Select **IDL Conten** and click **OK**. 
1. On the **Import Integrated Manual Content** page, click **Browse**. 
1. Locate and select the zip file that was saved from the exported content.  
1. Click **Open**.

The next step depends on whether the current Lab Profile has content already in it and how you want to handle the new content:
- If the Lab Profile does not have any content currently in it, click Import to finish the process. 

- If the **Lab Profile** has content already in it, you can either append the imported content to the end of the current content or replace the current content with the imported content. 

### To append the imported content:
1. Click **Import** to finish the process. 

### To delete the old content and replace with the imported content:
1. select the checkbox **Replace Existing Content** and click **Import**. 

> [!ALERT] When you click Import with the Replace Existing Content checkbox selected, the old content will be deleted and replaced by the imported content immediately. You will not receive a warning message asking you to confirm the action. Therefore, use the Replace Existing Content only when you are sure that is what you want to do. Remember, exercises can be moved around, deleted, and changed later.