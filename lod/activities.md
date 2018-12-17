# Activities

 Activities are configured in the lab instructions, using the lab instruction editor. Activities can be modified at anytime, by anyone that has access to edit the lab instructions. When an Activity is created, it is represented in the lab instructions by a Replacement Token. 

Activities fall into two broad categories: Questions and Automated. 
- Questions are simply multiple choice or short answer questions. 
- Automated Activities have a script configured to run against a cloud subscription or Windows-based virtual machines running on Hyper-V in the lab.  

> [!KNOWLEDGE] If your lab profile does not use a Cloud Subscription, or if it does not have virtual machines configured, Automated Activities are not available in the Activities menu. 

To get started with Activities:

1. Navigate to your **lab profile**.

1. Click **Edit Instructions**.

1. Click the **Activities icon** to enter the settings Activities menu in your lab instructions. 

![](../lod/images/activity-icon.png)

1. Next, you should decide what type of Activity you would like to create -- Question, or an Automated Activity that targets a Cloud Subscription or a Windows-based virtual machines running on Hyper-V, with a PowerShell or Shell script. 

Click to go to a specific section, or continue reading to learn more about creating Activities in your lab. 

- [Automated Activity](#automated-activity)
- [Multiple Choice Question](#multiple-choice-questions)
- [Short Answer Question](#short-answer-questions)
- [Activity Management](#activity-management)
- [Scoring](#scoring)

## Automated Activity

Automated Activities are PowerShell or Shell scripts that target a Cloud Subscription, or a Windows-based virtual machine running on Hyper-V in the lab. Cloud Subscriptions are targeted by a PowerShell script, and Windows-based virtual machines can be targeted by both PowerShell and Shell. Automated Activities support using @lab replacement tokens in scripts as well. Automated Activities can be used to help make sure the student has configured their lab environment correctly, help the student understand mistakes that are made in their lab, as well as give the student confirmation that they are completing the lab instructions correctly. Automated Activities can also be used to automate any configuration or lab steps that you wish to automate. 

1. If you would like the lab to be scored, Click the **switch** next to _Enable Scoring_. If you would not like the lab to be scored, simply leave the **Switch** turned off. 

1. Click **New Automated Activity**.

![](../lod/images/new-automated-activity.png)

- **Name**: this will be the title of the automated Activity, and will be displayed in the lab instruction editor, in the activities menu.

- **Instructions**: this is where instructions for the Activity are entered, and will be displayed to students, in the lab instructions. 

- **Scored**: enables the question to be scored. Scoring must be enabled in your lab. [Scoring is covered below in this document](#scoring).

- **Display Scripts as Task List**: enables the script to be displayed as a Task List. This is useful when there is more than one script configured on an Activity. *Display Scripts as Task List* will take the **Text** field from each *Script* created within the activity and insert it in to the Instructions page with a box next to it that has a question mark. This is where users are able to manually run a check against those scripts to see if they are correct or not.  The boxes will then change to Green with a check for correct or Red with an X for incorrect and report any script output associated with them.

    > [!KNOWLEDGE] If **Display Scripts as Task List** is checked, On-Demand Evaluation will no longer be available for this Activity. 

- **On-Demand Evaluation**: enables a button that the user can click to check their answer to a question, or to score their answer if Activities are set to be scored.
 
- **Allow retries**: allows the user to retry a question if they enter or select an incorrect answer. This option is not available when On-Demand Evaluation is disabled. 

- **Required for submission**: requires the student to perform the Activity, to submit their lab for grading.

- **Blocks page navigation**: checking this box prevents the student from navigating to the next page in the lab instructions, unless they have entered or selected an answer to this question. 

- **Correct answer feedback**: this will be displayed to the user upon entering or selecting a correct answer to a question. 

- **Incorrect answer feedback**: this will be displayed to the user upon entering or selecting a incorrect answer to a question. 

- **Script 1**:
    - **Score Value**: the score value the student will recieve for completing the Activity correctly. This score contributes to their overall score in the lab.
    - **Target**: the virtual machine or cloud subscription that the script will target. Cloud subscriptions must be targeted by PowerShell, and Windows-based virtual machines running on Hyper-V can be targeted by PowerShell or Shell.
    - **Language**: the scripting language that will be used. PowerShell and Shell are supported. 
    - **Script**: enter the script that will be executed. @lab replacement tokens that are used in scripts will be replaced in the lab instructions when the lab is launched.

    - **New Script**: click to add an additional script to this Activity. The new script will be represented by a button, in a Task List. 

    >[knowledge] @lab Replacement Tokens can be used in Activity scripts, to replace data in the lab instructions that is not known at the time of authoring the lab instructions, by inserting a Replacement Token in the lab instructions where you want data to be replaced in the lab.

    The following two options are **only available if Display Scripts as Task list is checked**, and are located in the section for the script they belong to. This allows you to provide custom feedback on each Automated Activity. 

    - **Correct answer feedback**: you can enter text here, or you can use scripts to generate a response to the student.  

    - **Incorrect answer feedback**: you can enter text here, or you can use scripts to generate a response to the student.  

### Automated Activity Output

You can optionally store automated activity output separately from a script message that the student receives in the lab when they complete the automated activity. This allows you to display a message to the student in the lab, but leave more detailed evidence for reporting or remediation. 

An example, if you wanted to capture a list of all running services in a virtual machine, at a specific point in the lab. You could create an automated that uses PowerShell to target a Windows virtual machine with the following script:

```
Get-Service | Format-List *
Set-ActivityResult -Correct -Message 'You got it!'
```
When the student clicks the button in the lab to trigger the automated activity, the script will capture a list of running services and store them on the lab instance details page, and will display "You got it!" to the student in the lab. 

### Automated Activity Best Practice and Guidelines

- Use Automated Activities in areas of your lab when students are prone to making mistakes. A PowerShell script, such as the example shown below, helps students to make sure their lab is configured appropriately so that they do not get an error when trying to complete steps later in the lab.  

- Provide the student feedback with your scripts where possible, to help them complete the lab instructions correctly. An if/else statement in your script works very well in this situation, to provide unique feedback depending on if the student gave the correct answer or not. 

- If more than one script is configured on an Activity, the scripts will execute in sequential order. If one of your scripts is relying on another script to be completed, make sure you order the scripts appropriately to prevent your Automated Activity from not working correctly. 

- Automated Activities support PowerShell and Shell. Cloud Subscriptions must be targeted by a PowerShell script, and Windows-based virtual machines running on Hyper-V can be targeted by PowerShell or Shell.

### Automated Activity Notifications and Variables

Automated activity scripts can set a variable and send notifications to the student, to draw attention to some information or to notify the student of the outcome of the script once it is completed. This allows the student to progress through the lab instructions, without waiting for the result from the script. 

You can also use @lab replacement tokens, to replace information in the notification. This allows the lab author to provide more specific information to the student.  

You can set a variable and send a notification using the the variable in the following example. This example uses 2 PowerShell scripts. 

**Script 1**

```
Set-LabVariable -Name Directory -Value C:/users/student/documents
Set-ActivityResult -Correct
```

**Script 2**

```
Send-LabNotification -Message "Use this directory: @lab.Variable(Directory)!"
Set-ActivityResult -Correct
```

_Student view in the lab of automated activity_

![](images/automated-activity-student-view.png)

_Student view of the notification in the lab_

![](images/automated-activity-student-view-notification.png)

### Example Automated Activity 

The lab instructions ask the student to create a few accounts in a Cloud Subscription that will be used later in the lab. You could write a few PowerShell scripts that will check if the accounts were created correctly.

This 3 scripts below are to make sure the student has created a storage account, a public container, and private container:

**Storage Account**
```
$LabInstanceId = "@lab.LabInstance.Id"
$result = $false
$resourceGroupName = "CSSTlod${LabInstanceId}"
$storAccount = Get-AzureRmStorageAccount -ResourceGroupName $resourceGroupName -Name "sa${LabInstanceId}" -ErrorAction Ignore
if ($storAccount -eq $null){
    "The Storage Account has not been created"
} else {
    $result = $true
    "You successfully created the storage account."
}
$result
```

**Public Container**
```
$LabInstanceId = "@lab.LabInstance.Id"
$result = $false
$resourceGroupName = "CSSTlod${LabInstanceId}"
$storAccountName = "sa${LabInstanceId}"
$storAccount = Get-AzureRmStorageAccount -ResourceGroupName $resourceGroupName -Name $storAccountName -ErrorAction Ignore
if ($storAccount -eq $null){
    "The Storage Account has not been created"
} else {
    $storKey = Get-AzureRmStorageAccountKey -ResourceGroupName $resourceGroupName -Name $storAccountName | Select-Object -First 1 -ErrorAction Ignore
    $storageContext = New-AzureStorageContext -StorageAccountName $storAccountName -StorageAccountKey $storKey.Value -ErrorAction Ignore
    $container = Get-AzureStorageContainer -Name public -Context $storageContext -ErrorAction Ignore
    if ($container -eq $null) {
        "The Blob Container has not been created."
    } else {
        if ($container.PublicAccess -ne "blob") {
            "The container is not properly configured for public access."
        } else {
        $result = $true
        "You have successfully configured the blob container for public access."
        }
    }
}
$result
```

**Private Container**
```
$LabInstanceId = "@lab.LabInstance.Id"
$result = $false
$resourceGroupName = "CSSTlod${LabInstanceId}"
$storAccountName = "sa${LabInstanceId}"
$storAccount = Get-AzureRmStorageAccount -ResourceGroupName $resourceGroupName -Name $storAccountName -ErrorAction Ignore
if ($storAccount -eq $null){
    "The Storage Account has not been created"
} else {
    $storKey = Get-AzureRmStorageAccountKey -ResourceGroupName $resourceGroupName -Name $storAccountName | Select-Object -First 1 -ErrorAction Ignore
    $storageContext = New-AzureStorageContext -StorageAccountName $storAccountName -StorageAccountKey $storKey.Value -ErrorAction Ignore
    $container = Get-AzureStorageContainer -Name private -Context $storageContext -ErrorAction Ignore
    if ($container -eq $null) {
        "The Blob Container has not been created."
    } else {
        if ($container.PublicAccess -ne "off") {
            "The container is not properly configured for private access."
        } else {
        $result = $true
        "You have successfully configured the blob container for private access."
        }
    }
}
$result
```

This is what the student will see in the lab:

![](../lod/images/scripts-in-lab-instructions.png)

- The student clicks the Score button, and the scripts will begin executing the first script:

    - If the student **created the storage accounts correctly**, they will receive a message that says "You successfully created the storage account."
    
    - If the student **did not create the storage accounts correctly**, they will receive a message that says "The Storage Account has not been created". 

> [!KNOWLEDGE] You can provide a hint to students based on the outcome of the script. For example, if the script is to check if a specific directory has been created, you script could output a hint to help the student create the appropriate directory. 

## Questions

Activities in your lab can be configured to use the following types of questions:
- Multiple choice
    - Single answer
    - Multiple answers
- Short answer
    - Exact match
    - Regex match

Optionally, you can enable scoring for Questions in your lab. Once scoring is enabled:

- You will be presented with a text field where you can enter the passing score the student will need to achieve in the lab. 
- You can enable scoring only on the questions you wish to be scored. Questions that are not scored, are considered practice or review and do not contribute to the student's overall score in the lab. 
- Each question that is scored is given a score value, and that value is awarded to the student by selecting the correct answer to the question.   
- If Scoring is not enabled, you do not need to decide which questions will be scored and which will not be scored.

### Multiple Choice Questions 

1. If you would like the lab to be scored, Click the switch next to _Enable Scoring_. 

1. Click **New Question**.

![](../lod/images/activities-menu.png)

![](../lod/images/multiple-choice-question.png)

- **Text**: This is where the multiple choice question is entered. This will also be the text that is displayed in the Activities editing menu.

- **Format**: the format can be changed by clicking the drop-down menu. Format options for multiple choice include:
    - Multiple choice, single answer:
    - Multiple choice, multiple answer

- **Add Answer**: click to add an answer to the multiple choice question. 

- **Scored**: enables the question to be scored. Scoring must be enabled in your lab. [Scoring is covered below in this document](#scoring).

- **Score Value**: the value the student will receive upon selecting a correct answer.

- **On-Demand Evaluation**: enables a button that the user can click to check their answer to a multiple choice question in the lab, or to score their answer if Activities are set to be scored.
 
- **Allow retries**: allows the user to retry a question if they select an incorrect answer. This option is not available when On-Demand Evaluation is disabled. 

- **Blocks page navigation**: checking this box prevents the student from navigating to the next page in the lab instructions, unless they have selected an answer to this question. 

- **Required for submission**: click to make this multiple choice question required, for the student to submit their lab. 

- **Correct answer feedback**: this will be displayed to the user upon selecting a correct answer to a multiple choice question. 

- **Incorrect answer feedback**: this will be displayed to the user upon selecting a incorrect answer to a multiple choice question. 

### Short Answer Questions

1. If you would like the lab to be scored, Click the switch next to _Enable Scoring_. 

1. Click **New Question**.

![](../lod/images/activities-menu.png)

![](../lod/images/new-question-scoring-enabled-window.png)

- **Text**: This is where the short answer question is entered. This will also be the text that is displayed in the Activities editing menu.

- **Format**: the format can be changed by clicking the drop-down menu. Format options include:
    - Short answer, exact match
    - Short answer, regex match

- **Answer**: the answer to a short answer question.

- **Case-sensitive**: enables case-sensitivity on the students answer to short answer questions. 

- **Scored**: enables the question to be scored. Scoring must be enabled in your lab. [Scoring is covered below in this document](#scoring).

- **Score Value**: the value the student will receive upon entering a correct answer.

- **On-Demand Evaluation**: enables a button that the user can click to check their answer to a short answer question in the lab, or to score their answer if Activities are set to be scored.
 
- **Allow retries**: allows the user to retry a question if they enter an incorrect answer. This option is not available when On-Demand Evaluation is disabled. 

- **Blocks page navigation**: checking this box prevents the student from navigating to the next page in the lab instructions, unless they have entered an answer to this question. 

- **Required for submission**: click to make this short answer question required, for the student to submit their lab. 

- **Correct answer feedback**: this will be displayed to the user upon entering a correct answer to a short answer question. 

- **Incorrect answer feedback**: this will be displayed to the user upon entering a incorrect answer to a short answer question. 

## Scoring

Scoring allows the student to be given a score for each Activity they complete correctly, and those scores contribute to the student's overall score in the lab. As the lab author, you set the passing score for the lab after you enable scoring in the lab. 

> [!KNOWLEDGE] When Scoring is enabled, it is not required to make each question scored. As a lab author, you are free to decide which Activities have a score value associated, and only score the questions that you wish to.

To enable Scoring in your lab:

1. Click the **Activities icon** to enter the settings menu for Activities.

1. Click the **switch** to enable Scoring. 

1. Enter a **passing score** for the lab. You may change this at anytime, as often as you would like. 

    ![](../lod/images/activities-menu-scoring-enabled.png)

1. After Scoring is enabled, you will see the Score checkbox available to select on all Activities you have created, while editing that Activity.

1. Click the checkbox to enable scoring, and enter a score for that Activity. 

    ![](../lod/images/score-scored-checkboxes.png)

1. The student will be given the score value upon completing the Activity correctly. 

## Activity Management

After Activities are created, they can be modified at any time, using the Activity editing menu. 

To access this menu, simply click the **Activities Icon**

![](../lod/images/activity-icon.png)

![](../lod/images/activities-edit-menu.png)

- **Enable Scoring**: this enables Activities to be given a score value that will be given to the student by selecting the correct answer, or completing the Activity correctly. 

- **Activity**: this will display the text you entered as the Name of your Activity. 

- **Type**: this displays the type of Activity. 

- **Score**: this displays the score value of the Activity. This will display _Practice_ for non-scored Activities, and a the score value of the Activity for scored Activities. 

- **Token**: this is the replacement token that is used in lab instructions to represent this Activity in the lab. Simply place this Replacement Token where you would like the Activity to appear in the lab instructions. 

- **Edit**: click this to edit the Activity. 

- **Delete**: click to delete the Activity. Once it is deleted, there is no way to recover the Activity. 

- **Insert**: click to insert the Activity in your current position in the lab instruction editor. 

[Back to Top](#activities)


