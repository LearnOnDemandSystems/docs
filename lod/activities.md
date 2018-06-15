# Activities

 Activities are configured in the lab instructions, using the lab editor. Activities can be modified at anytime, by anyone that has access to edit the lab instructions. When an Activity is created, it is represented in the lab instructions by a Replacement Token. 

There are multiple activity options that can be configured in your lab. Options include: Question (scored and not scored), and Automated Activites. 
- Questions are simply multiple choice or short answer questions. 
- Automated Activities have a PowerShell script configured to run against virtual machines in the lab.  

> [!KNOWLEDGE] If your lab profile does not have virtual machines configured, Automated Activities are not available in the Activities menu. 

You can enable scoring for Activities in your lab. Once scoring is enabled, you will be presented with a text field where you can enter the passing score the student will need to achieve in the lab. You can enable scoring only on the questions you wish to be scored. Questions that are not scored, are considered practice or review and do not contribute to the student's overall score in the lab. Each question that is scored is given a score value, and that value is awarded to the student by selecting the correct answer to the question.  

To get started with Activities:

1. [] Navigate to your **lab profile**.

1. [] Click **Edit Instructions**.

1. [] Click the **Activities icon** to enter the settings menu for Activities in your lab instructions. 

![](../lod/images/activity-icon.png)

1. [] Next, you should decide what type of Activity you would like to create -- Question with scoring enabled or disabled, or an Automated Acitivty that targets a virtual machine with a PowerShell script. 

Click to go to a specific section, or continue reading to learn more about creating Activities in your lab. 

- [Question with Scoring Disabled](#question-with-scoring-disabled)
- [Question with Scoring Enabled](#question-with-scoring-enabled)
- [Automated Activity](#automated-activity)
- [Edit Activities](#edit-activities)

## Question with Scoring disabled

![](../lod/images/activities-menu.png)

1. [] Ensure the button next to **Enable Scoring** is not enabled, to disable scoring features.

1. [] Click **New Question**.

![](../lod/images/new-question-scoring-disabled-window.png)

- **Text**: This is where the question is entered. This will also be the text that is displayed in the Edit Activities menu.

- **Format**: the format can be changed by clicking the drop-down menu. Format options include:
    - Multiple choice, single answer:
    - Multiple choice, multiple answer
    - Short answer, exact match
    - Short answer, regex match

- **Answer**: the answer to a Short answer question. **This field will look different when using multiple choice questions**. 

- **Case-sensitive**: enables case-sensitivity on the students answer to short answer questions. **This option is not available for multiple choice questions**. 

- **On-Demand Evaluation**: enables a button that the user can click to check their answer to a question in the lab, or to score their answer if Activities are set to be scored.
 
- **Allow retries**: allows the user to retry a question if they enter or select an incorrect answer. This option is not available when On-Demand Evaluation is disabled. 

- **Blocks page navigation**: checking this box prevents the student from navigating to the next page in the lab instructions, unless they have entered or selected an answer to this question. 

- **Correct answer feedback**: this will be displayed to the user upon entering or selecting a correct answer to a question. 

- **Incorrect answer feedback**: this will be displayed to the user upon entering or selecting a incorrect answer to a question. 

## Question with Scoring enabled

![](../lod/images/activities-menu-scoring-enabled.png)

<<<<<<< HEAD
1. [] Ensure the button next to **Enable Scoring** is enabled, to enable scoring features.

=======
>>>>>>> 22f677cfe1468f542baf3cc07936cd3d8428f386
1. [] After enabling scoring, a text box will appear. Enter the score that the student must achieve to receive a passing score in the lab. 

1. [] Click **New Question** to get started. 

![](../lod/images/new-question-scoring-enabled-window.png)

- **Text**: This is where the question is entered. This will also be the text that is displayed in the Edit Activities menu.

- **Format**: the format can be changed by clicking the drop-down menu. Format options include:
    - Multiple choice, single answer
    - Multiple choice, multiple answer
    - Short answer, exact match
    - Short answer, regex match

- **Answer**: the answer to a Short answer question. **This field will look different when using multiple choice questions**. 

- **Case-sensitive**: enables case-sensitivity on the students answer to short answer questions. **This option is not available for multiple choice questions**. 

- **Scored**: enables scoring on this question only. This option is not available if the **Enable Scoring** button is not enabled in your lab profile. 

- **Score value**: This the amount of points that will be given if the student answers the question correctly. 

- **On-Demand Evaluation**: enables a button that the user can click to check their answer to a question in the lab, or to score their answer if Activities are set to be scored.
 
- **Allow retries**: allows the user to retry a question if they enter or select an incorrect answer. This option is not available when On-Demand Evaluation is disabled. 

- **Blocks page navigation**: checking this box prevents the student from navigating to the next page in the lab instructions, unless they have entered or selected an answer to this question. 

- **Correct answer feedback**: this will be displayed to the user upon entering or selecting a correct answer to a question. 

- **Incorrect answer feedback**: this will be displayed to the user upon entering or selecting a incorrect answer to a question. 

## Automated Activity

![](../lod/images/automated-scoring-disabled-window.png)

- **Name**: this will be the title of the automated Activity, and will be displayed in the lab editor, in the activities menu. This field is **optional**.

- **Instructions**: this is where instructions for the Activity are entered, and will be displayed to students, in the lab instructions. This field is **optional**.

- **Display Scripts as Task List**: enables the script to be displayed as a Task List. This is useful when there is more than one script configured on an Activity. Each script is displayed as a button, that students can click to execute the script. 

    > [!KNOWLEDGE] If **Display Scripts as Task List** is checked, On-Demand Evaluation will no longer be available for this Activity. 

- **On-Demand Evaluation**: enables a button that the user can click to check their answer to a question, or to score their answer if Activities are set to be scored.
 
- **Allow retries**: allows the user to retry a question if they enter or select an incorrect answer. This option is not available when On-Demand Evaluation is disabled. 

- **Blocks page navigation**: checking this box prevents the student from navigating to the next page in the lab instructions, unless they have entered or selected an answer to this question. 

- **Correct answer feedback**: this will be displayed to the user upon entering or selecting a correct answer to a question. 

- **Incorrect answer feedback**: this will be displayed to the user upon entering or selecting a incorrect answer to a question. 

- **Script 1**:
    - **Target**: the virtual machine that the script will target
    - **Language**: the scripting language that will be used. PowerShell and Shell are supported. 
    - **Script**: enter the script that will be executed.

    - **New Script**: click to add an additional script to this Activity. The new script will be represented by a button, in a Task List. 

    The following two options are **only available if Display Scripts as Task list is checked**, and are located in the section for the script they belong to. 

    - **Correct answer feedback**: you can enter text here, or you can use scripts to generate a response to the student.  

    - **Incorrect answer feedback**: you can enter text here, or you can use scripts to generate a response to the student.  

    > [!KNOWLEDGE] You can provide a hint to students based on the outcome of the script. For example, if the script is to check if a specific directory has been created, you script could output a hint to help the student create the appropriate directory. 

## Edit Activities

After Activities are created, they can be modified at any time, using the Activity editing menu. 

To get to this menu, simply click the **Activities Icon**

![](../lod/images/activity-icon.png)

![](../lod/images/activities-edit-menu.png)

- **Enable Scoring**: this enables Activities to be given a score value that will be given to the student by selecting the correct answer, or completing the Activity correctly. 

- **Activity**: this will display the text you entered as the Name of your Activity. 

- **Type**: this displays the type of Activity. 

- **Score**: this displays the score value of the Activity. This will display _Practice_ for non-scored Activities, and a the score value of the Activity for scored Activities. 

- **Token**: this is the replacement token that is used in lab instructions to represent this Activity in the lab. Simply place the Replacement Token where you would like the Activity to appear in the lab instructions. 

- **Edit**: click this to edit the Activity. 

- **Delete**: click to delete the Activity. Once it is deleted, there is no way to recover the Activity. 

- **Insert**: click to insert the Activity in your current position in the lab instruction editor. 

[Back to Top](#activities)


