# Lab Variables

Variables are used to store information that is not known at the time of lab instruction authoring. Variables store information and then that information can be recalled or used in the lab. Variables can be used in Life Cycle Actions, Automated Activities, and in lab instructions.  
Variables can be set in lab steps using a Replacement Token, or in Life Cycle Actions or Automated Activites using PowerShell. All variable types support alphanumberic characters with no spaces.

Click to navigate to a specific section:

[Variables in Lab Instructions](#variables-in-lab-instructions)

[Variables in Life Cycle Actions](#variables-in-life-cycle-actions)

[Variables in Automated Activities](variables-in-automated-activities)

# Variables in Lab Instructions

Variables can be set in lab instructions using the textbox replacement token, and then used later using the Variable(name) replacement token. 

@lab Variables in lab instructions use two Replacement tokens;

Define the variable in the (name)
- **&commat;lab.textbox(name)** 

Recall the information stored in the variable.
- **&commat;lab.Variable(name)**

To use these variables in lab instructions:
1. Place the textbox replacement token where you would like the student to enter information into. 
1. Next, place the variable(name) replacement token where you would like the entered information to be recalled. 

It is highly recommended that you give the textbox a unique name in the (name) section of the replacement token, and use that same (name) in the variable(name) replacement token. Giving these unique names, enables you to use more than one textbox variable in a single lab. 

>![knowledge] For example, you could create a variable with &commat;lab.textbox(studentPassword) and ask the student to enter a password in the field. Later in the lab you could recall the student's password with &commat;lab.Variable(studentPassword). This prevents the student from having to remember or write down their password, since it is stored in the lab by a variable.

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

Life Cycle Actions are actions that are triggered by specific events, during the life cycle of th elab. Variables can be set in LCAs, and then later used in lab Activities and lab instructions. The variable must be set during a life cycle event that occurs before the variable will be used in the lab. For example, if you configured an LCA to set a variable during the tear down event, the variable would not be set while the student is performing the lab. 

There are currently two events that can be configured to set a variable; **Execute Machine Command** and **Execute Cloud Platform Command**. Machine commands are used to target a virtual machine, and Cloud Platform commands are used to target a Cloud platform in a Cloud Slice lab. 

To set a variable in a Life Cycle Action:

1. **Edit the lab** you wish to configure
1. Click the **Life Cycle** tab
1. Click **add Life Cycle Action**
1. Select the **Action** that you wish to use (machine or cloud platform command)
1. Select the **Event** for when the action will be executed.
1. Enter PowerShell syntax in the **Command** feild, to set the variable.

Variables can be declared in an Life Cycle Action by the following syntax:

```Set-LabVariable -Name nameHere -Value valueHere```

As an example, you could set a variable for the student's name. If the student's name was _Sammy_, the variable would be declared like:

```Set-LabVariable -Name studentName -Value Sammy```

You can recall the student's name in lab instructions by using the following syntax:

```@lab.Variable(studentName)```

# Variables in Automated Activities

Variables can be declared in an Automated Activity by using the following syntax in the script field of an automated activity:

```Set-LabVariable -Name nameHere -Value valueHere```

Variables set in an automated activity can be used in lab instructions, after the automated activity is executed. 


