# Lab on Demand Scoring

### Table of Contents:

1. [Overview](#overview)
1. [Getting Started](#started)
    1. [Scoring Formats](#scoring)
        - [Traditional Exams/Quizzes](#traditional)
        - [Activity Based Assessments](#aba)
        - [Performance Based Testing](#pbt)
    1. [Configuring Items](#config)
        - [Virtual Machine Requirements](#requirements)
        - [Automated Scoring Best Practices](#auto-bp)
1. [Examples](#examples)
    1. [Scoring Script Samples](#scripts)
<!--    1. [Sample Lab Experiences](#labs)-->

## <u>Overview</u> {overview}
The Lab on Demand platform supports the ability to score users either in an exam/quiz format or within a hands-on lab. The options for what can be scored are plentiful and can be mixed and matched within a single scenario.

Scorable items include:
- Windows, Windows Server and Linux virtual machine configurations
- Cloud subscription configurations
- Multiple choice questions (Select 1 or Select Multiple)
- Short answer questions (with either precise or flexible answers)

## <u>Getting Started</u> {started}

### Scoring Formats {scoring}

There are a few distinct methods of scoring that are implemented on the platform in very similar ways, yet have vastly different user experiences. 

Before doing anything else, you must determine which of these formats best meets your desired end experience.


#### **Traditional Exams/Quizzes** {traditional}

This format presents a user with a series of multiple choice or short answer questions that they are required to answer. 

In this format, users complete the exam/quiz then submit it at the end for scoring and are presented with a grade.

#### **Activity Based Assessments** {aba}

This format engages the user directly and allows them to either validate skills they already have or have obtained throughout a course. These may take on traditional question/answer format, but excel in hands-on learning scenarios where they evaluate the user's environment in an automated fashion and encourage a try, fail, learn, repeat mentality by giving users an opportunity to attempt a goal, quickly determine success or failure, and try again if necessary. While a try, fail, learn model may be used with Activity Based Assessments, they may also permit only a single attempt without retries and be scored based upon that outcome.

In this format, while a user progresses through a course or hands-on lab they are presented a challenge or question, given an opportunity to complete or answer it, and then they manually trigger that specific item and are immediately provided feedback.

#### **Performance Based Testing** {pbt}

This format, similar to Activity Based Assessments, engages the user directly and allows for skills validation. This can be used in small scenarios such as ensuring users learned some of the key topics within a course, or grander scenarios such as technical certification exams. While Activity Based Assessments are best used for user engagement in learning by providing valuable feedback, Performance Based Testing excels in validating retention after learning.

In this format, a user is expected to complete a series of tasks and then, similar to Traditional Exams/Quizzes, submit everything at the end for scoring to be presented with a grade. Unlike Activity Based Assessments, users do not receive verbose feedback for every item as they progress.

### Configuring Items {config}

Once you have determined which of the formats best fits your desired scoring experience, we need to design scorable items for users to complete. No matter the scoring format you will be utilizing, all scored items on the Lab on Demand platform are configured utilizing the Activity Manager within the lab instruction editor. If you are not already familiar with this tool, please review the ^INSTRUCTIONS[Activities](../activities.md) documentation before moving forward. 

Traditional items will have pre-defined structures, while hands-on items that are scored in an automated fashion are designed by the author using scripting languages - such as PowerShell and BASH - to evaluate the user's environment.

- [What is PowerShell?](https://docs.microsoft.com/en-us/powershell/scripting/overview?view=powershell-6)
- [What is BASH?](https://www.gnu.org/software/bash/manual/html_node/index.html)

#### Virtual Machine Requirements {requirements}

**Hyper-V**:

- LOD Integration services are not required to be installed but it is recommended, to enable features such as screen resizing. 

- Supported Operating Systems:
    - Windows 10
    - Windows Server 2016
    - Windows Server 2019  

- The VM must support Hyper-V PowerShell Direct. There are no additional steps to install or configure PowerShell Direct, but the VM must support it. 

>[!knowledge] PowerShell Direct can be used to remotely manage a Windows 10, Windows Server 2016, or Windows Server 2019 virtual machine from a Windows 10, Windows Server 2016, or Windows Server 2019 Hyper-V host. 
>
>PowerShell Direct allows Windows PowerShell management inside a virtual machine regardless of the network configuration or remote management settings on either the Hyper-V host or the virtual machine. This makes it easier for Hyper-V Administrators to automate and script virtual machine management and configuration. For more information about PowerShell Direct, read [Manage Windows virtual machines with PowerShell Direct](https://docs.microsoft.com/en-us/windows-server/virtualization/hyper-v/manage/manage-windows-virtual-machines-with-powershell-direct).


**VMware**: 

- VMware Tools must be installed.

- PowerShell must be installed on the VM.

- Supported Operating Systems:
    - Windows 7
    - Windows 7 
    - Windows 8 
    - Windows 10
    - Windows Server 2008
    - Windows Server 2012
    - Windows Server 2016
    - Windows Server 2019

#### **Automated Scoring Best Practices** {auto-bp}

- Score absolute values when possible. 
    - If a value or setting is susceptible to lots of variation or cannot be easily predicted it makes it harder to reliably score and may compromise the integrity of the item.
- Don't be afraid to mix and match item types! 
    - Even within hands-on Activity Based Assessments and Performance Based Testing, traditional question-style items may still be useful in addition to automated items.
    - For example, regex short-answer questions can be used to validate something such as a URL that a user might need to generate.
- Maintain a development environment separate from your production environment.
    - This permits you to perform ongoing maintenance and updates to scoring items and then update the production item when they are ready, without potentially introducing breaking changes to the production items.
- Design scripts to be only as complex as they need to be. 
    - Simpler designs are easier to replicate the format across multiple items, easier to modify if/when necessary, and easier for your script authors to read when going from item to item.
- Design output/feedback that's useful for the format being implemented.
    - For example, Activity Based Assessments with retries permitted may provide some feedback to aid a user in discovering the proper solution while Performance Based Testing may simply provide whether or not an item was correct.

## <u>Examples</u> {examples}

### Scoring Script Samples {scripts}

The below samples are designed to aid in the design of your scoring scripts. While they can be copy/paste/modified, their formats may not exactly fit your items to be scored. They are intended as guides and suggestions of structure but should not be considered the only valid methods.

Arguably more important than what your script looks like or how easy it is to read, is what your output looks like. Having verbose output that can be referenced later and easily used to identify why someone got an item correct or incorrect may be important for formats such as Performance Based Testing in the event a user disputes an item., but more user friendly messages may be better for formats such as Activity Based Assessments.

A best practice is to keep formats as consistent across your items of the same format as possible so that most of the script can be simply copy/pasted from item to item, with minimal lines requiring modifications. Maintaining the same format from item to item also aids in readibility across items.

#### **Object Matching Method**

While not mandatory in your own designs, all of the output from sample scripts of this format provided here begin with a simple statement that includes the Item Id and whether the user was correct or incorrect.

The Object Matching Method and the output associated with it is a bit more complex than the If Statement Method, but also tends to be more verbose and reports better information for logging purposes.

- ^INSTRUCTIONS[PowerShell Sample - Azure Storage Account](./azps-object-match.md)
<!-- - ^INSTRUCTIONS[PowerShell Sample - VM File Creation](./vmps-object-match.md)  -->

#### **If Statement Method**

The If Statement Method is the most common scoring script method and is typically easier and more flexible to implement. However, in comparison to the Object Matching Method output is typically a bit more basic and requires author definition.

- ^INSTRUCTIONS[PowerShell Sample - Azure Storage Account](./azps-if-statement.md)  
<!-- - ^INSTRUCTIONS[PowerShell Sample - VM File Creation](./vmps-if-statement.md)  -->
<!-- - ^INSTRUCTIONS[BASH Sample - VM File Creation](./vmbash-if-statement.md)  -->

<!--
### Sample Lab Experiences {labs}

The below links will launch a lab...
-->
