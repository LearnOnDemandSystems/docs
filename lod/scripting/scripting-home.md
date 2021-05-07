---
title: "Scripting in Lab on Demand"
description: "Description of document."
isPublished: false
---

# Scripting in Lab on Demand

Lab on Demand allows execution of scripts against a cloud subscription, as well as executing scripts that do not have a target. Scripts are used in Automated Activites and Life Cycle Actions.

Scripting languages are available in three versions; Azure, AWS  and no cloud provider. Available scripting languages include: 

- **C#**
    - [C# .NET 5](Csharp-.NET-5.md) **
    - [C# .NET 5 | Azure.Core 1.13.0](Csharp-.NET-5-Azure.-Core-1.13.0.md) **
- **Javascript**
    - [node.js 14.16.1](Node-js-14-16-1.md)
    - [node.js 14 | AWS SDK for JS 3](node-14.16.1_aws-sdk-3.13.1.md) 
- **PowerShell**
    - [PS 5.1 with AWSPowerShell.netcore 4.1.3.0](powershell_5.1-awspowershell.netcore_4.1.3.0.md) 
    - [PS 5.1 with AzureRM 6.8.1](powershell_5.1-azurerm_6.8.1.md)
    - [PS 7.1.3](PS-7.1.3.md) 
    - [PS 7.1.3 | AWS CLI 2.1.39](PS-7.1.3-AWS-CLI-2.1.39.md) 
    - [PS 7.1.3 | AWS.Tools 4.1.10.0](powershell_7.1.3-aws.tools_4.1.10.0.md)
    - [PS 7.1.3 | Az 5.7.0](powershell_7.1.3-azure_az_5.7.0.md)
    - [PS 7.1.3 | Azure-CLI 2.22.1](PS-7.1.3-Azure-CLI-2.22.1.md) 
- **Python**
    - [Python 3.9.4](Python-3.9.4.md)
    - [Python 3.9.4 | AWS Boto3 1.17.50](python_3.9.4-aws_boto3_1.17.50.md)
    - [Python 3.9.4 | Azure SDK 1.13.0](python_3.9.4-azure_sdk_1.13.0.md)

** Documentation needs updated

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
