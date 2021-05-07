---
title: "Script Execution"
description: "Description of document."
isPublished: false
---

# Script Execution

## Targetless Script Execution



## Life Cycle Actions

Select the Cloud Execution Type: 

- **Legacy PowerShell**: uses Azure RM 6.8.1 modules and PowerShell version 5.1.
- **PowerShell**: uses PowerShell version 7.  
    - **Azure**: Azure AZ 4.8.0
    - **AWS**: AWSPowerShell.NetCore 4.1.7.0
- **Python**: uses Python version 3.8
    - **Azure**: AZ CLI
    - **AWS**: AWS Boto3

## Activities

#### **Python**

### Automated Activity Syntax

Along with traditional syntax, there is additional syntax that can be used. 

- Setting Lab Variables: sets a variable that can be recalled in subsequent lab instructions using @lab replacement tokens, as many times as necessary. 

- Sending Lab Notifications: Sends a a popup notification to the lab, using the text specified in the syntax.

- Scoring: used to determine how much of the score value the lab user will receive for the activity. This can be used to award partial score values for the automated activity. The partial score is dictated by a numerical value in the syntax, that represents the percentage of the score value that will be awarded. For Windows Command Shell and Bash, you can also display a message in the lab instructions with text specified scoring syntax.

#### **PowerShell** 

- **Setting Variables**
    
    `Set-LabVariable -Name firstName -Value John`

    `Set-LabVariable -Name lastName -Value Smith`

- **Sending Lab Notifications**

    `Send-LabNotification -Message "Hello from a script"`

- **Scoring**

    `Set-ActivityResult .5 -Correct`

#### **Windows Command Shell and Bash**

- **Setting Variables**
    
    `set_lab_variable "firstname" "John"`

    `set_lab_variable "lastname" "Smith"`

- **Sending Lab Notifications**

    `send_lab_notification "Hello from a script"`

    `send_lab_notification "I hope you're doing well"`

- **Scoring**

    `set_activity_result .5 "good job!"`
    
- **Setting Variables**

    Prepend your command with the parameter defined in your function. In the example below the parameter is `param1`.

    ```Python
    def run(param1):
        param1.setLabVariable('Name','John')
        return True,'output shown to the user in lab instructions'
    ```

- **Sending Lab Notifications**

    ```Python
    def run(param1):
        param1.sendLabNotification('message shown in the notification popup')
        return True,'output shown to the user under the activity'
    ```

- **Custom Python Script**

    Define your script inside of a Python function using the template below.

    - **Template**

    ```
    def run(param1):
        your command here
        return boolean,"output shown to the user in lab instruction"
    ```

    - **Example**
    ```
    def run(param1):
        if 1 == 1:
            outcome = True
            outcomeText = '1 equals 1'
        else:
            outcome = False
            outcomeText = 'Please check statement'
        return outcome,outcomeText
    ```
