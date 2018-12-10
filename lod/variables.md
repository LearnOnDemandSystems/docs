# Lab Variables

Variables are used to store information that is not known at the time of lab instruction authoring. Variables store information and then that information can be recalled or used in the lab. Variables can be used in Life Cycle Actions, Automated Activities, and in lab instructions.  

Click to navigate to a specific section:

[Variables in Lab Instructions](#variables-in-lab-instructions)

[Variables in Life Cycle Actions](#variables-in-life-cycle-actions)

[Variables in Automated Activities](#variables-in-automated-activities)


# Variables in Lab Instructions

Variables can be defined in lab instructions so that lab users can input expected information unique to their lab, that can then be utilized later in the instructions. This is accomplished utilizing a combination of replacement tokens. 

Variables defined  lab instructions use two Replacement tokens;

- **&commat;lab.TextBox(name)** : used to define a variable called "name"

- **&commat;lab.Variable(name)** : used to recall the information stored in the variable "name".

To use these variables in lab instructions:
1. Place the **textbox replacement token** where you would like the user to enter information into. 
1. Next, place the **variable(name) replacement token** where you would like the entered information to be recalled.
    1. This could be in one or more locations throughout the manual.

It is highly recommended that you give the textbox a unique name in the (name) section of the replacement token. That same (name) is required in the variable(name) replacement token when the the stored information is needed. Giving these unique names, enables you to use more than one textbox variable in a single lab. 

>[!knowledge] For example, you could create a variable with &commat;lab.textbox(studentPassword) and ask the student to enter a password in the field. Later in the lab you could recall the student's password with &commat;lab.Variable(studentPassword). This prevents the student from having to remember or write down their password, since it is stored in the lab by a variable.

Below is how the textbox and variable will look in a lab environment:

- Defining Variable in lab instruction editor view:

    ![](../lod/images/variables-in-lab-instruction-editor.png)

- Defining Variable in lab from Student view in the lab:

    ![](../lod/images/variables-in-lab.png)

- The student enters their password in the lab

    ![](../lod/images/variables-enter-password.png)

- Calling Variable in lab instruction editor view:

    ![](../lod/images/variables-callback-variable-instruction-editor.png)

- Calling Variable in lab from Student view in the lab:

     ![](../lod/images/variables-callback-variable-in-lab.png)

# Variables in Life Cycle Actions

[Life Cycle Actions (LCAs)](life-cycle-actions.md) are actions that are triggered by specific events during the life cycle of the lab. Variables can be set in LCAs, and then later used in later LCAs, lab activities, and lab instructions. 

Variables set via LCAs must be set during a life cycle event that occurs before the variable will be used in the lab. For example, if you configured an LCA to set a variable during the tear down event, the variable would not be set while the student is performing the lab. Similarly, if you set a variable in a LCA you cannot use the variable in the same LCA, but you may use it in LCAs that trigger afterwards. For example, setting an variable in a blocking LCA during the building event, and reusing it in a different building LCA or one that triggers on the built event.

There are currently two forms of Life Cycle Action that can be configured to set a variable:

- **Execute Machine Command**: used to target a virtual machine.
- **Execute Cloud Platform Command**: used to target a Cloud platform.

To set a variable in a Life Cycle Action:

1. **Edit the lab** you wish to configure.
1. Click the **Life Cycle** tab.
1. Click **Add Life Cycle Action**.
1. Select the **Action** that you wish to use.
1. Select the **Event** for when the action will be executed.
1. In the **Command** field, add your PowerShell script.
1. Within your PowerShell script, include the syntax below.

!INSTRUCTIONS[][powershell-syntax]

# Variables in Automated Activities

Automated activities are configured in IDLx labs via PowerShell scripts. Variables set in an automated activity can be referenced in lab instructions, after the automated activity is executed. If the activity is not executed, the variable will not be set and any reference to that variable later in the lab will remain as a placeholder. 

Variables that are set in an automated activity script can be used as a replacement token in subsequent scripts in the same activity, or in another automated activity that occurs after the variable is set. They may not be utilized in the same script that where they are set. 

Automated activites can also use variables set by a life cycle action, as long as the life cycle event occurs before the automated activity is exectuted. If the life cycle event does not occur before the variable is referenced, the variable will remain as a placeholder.

!INSTRUCTIONS[][powershell-syntax]

> [powershell-syntax]:
> ## Syntax
> Variables can be declared via PowerShell and then re-used in lab instructions by the following syntax - where <nameHere> is the variable name and <valueHere> is the variable value:
> 
> Set the variable
>
> ```Set-LabVariable -Name <nameHere> -Value <valueHere>```
> 
> Recall the variable
>  
> > ++&commat;lab.Variable(storagekey)++
>
> ## Example
> As an example, you could set a variable for an Azure Storage Account's Key by running the commands to get the key and assigning to a variable. A variable like this would be declared similar to:
> 
> ```
> $storageKeys = Get-AzureRmStorageAccountKey -AccountName $StorageAccountName -ResourceGroupName $ResourceGroup
> $primaryKey = $storageAccountKey.Value[1]
> Set-LabVariable -Name storagekey -Value $primaryKey
> ```
> 
> You can recall the variable by using the following syntax:
> 
> > ++&commat;lab.Variable(storagekey)++
