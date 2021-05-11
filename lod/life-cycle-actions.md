---
title: "Life Cycle Actions"
description: "Define actions to occur at certain times within the lab's life cycle, such as calling an external service when the lab builds, or sending a notification to the user when the lab is resumed."
isPublished: true
---

# Life Cycle Actions

With the Life Cycle Actions (LCA) feature, LOD is able to execute actions when specific events occur during the lab instance life cycle. 


* [Life Cycle Actions Management](#life-cycle-actions-management)
  + [Child Lab Profile LCA inheritance](#child-lab-profile-lca-inheritance)
* [Life Cycle Configuration](#life-cycle-configuration)
* [Send Web Request](#send-web-request)
  + [Lab data can be appended to the URL](#lab-data-can-be-appended-to-the-url)
  + [Web Requests have multiple verb options](#web-requests-have-multiple-verb-options-)
  + [Headers](#headers)
* [Send Notification to User](#send-notification-to-user)
* [Send E-mail to user](#send-e-mail-to-user)
* [Execute Machine Command](#execute-machine-command)
* [Execute Cloud Platform Command](#execute-cloud-platform-command)
  + [Azure](#azure)
  + [AWS](#aws)
* [Execute Custom Script](#execute-custom-script)

## Life Cycle Actions Management

Once you have added Life Cycle Actions to your lab, they will be listed on the Life Cycle tab of the lab profile, organized by event. If there is more than one LCA per Event, they can be arranged in the order they should execute when the Event happens. 

To change the order, click the Up or Down arrow on the right side of the Action you want to move. You can only move Actions within an Event. Life Cycle Actions can be edited or deleted from the buttons on the right side of it as well.

### Child Lab Profile LCA inheritance

When a child lab profile is configured to inherit the lab environment from a parent lab profile, LCAs can optionally be set to inherit from the parent lab profile. 

To inherit Life Cycle Actions, click the checkbox on the Life Cycle tab of the child lab profile, to enable inheritance. Once inheritance is enabled, no other LCA configuration will be available on the child lab profile. All LCA changes must be made on the parent lab profile. 

## Life Cycle Configuration

Life Cycle Actions are configured to execute an action at a specified event during the life cycle of the lab. 

First, decide what type of action should be executed, then decide when that action should be executed in your lab. 

**Life Cycle Actions include**:

- **[Send a web request:](#send-web-request)** sends a web request to the URL specified. The URL can optionally contain placeholders that will be replaced by live data, with @lab replacement tokens.
- **[Send a notification to the user:](#send-notification-to-user)**  sends a notification to the user during the specified event.
- **[Send an email to the user:](#send-e-mail-to-user)** sends an email to the user during the specified event.
- **[Execute Script in Virtual Machine:](#execute-machine-command)** sends a PowerShell or Shell command to a virtual machine.
- **[Execute Script in Container:](#execute-machine-command)** sends a Bash command to a container.
- **[Execute Script in Cloud Platform:](#execute-cloud-platform-command)** sends a PowerShell command to the cloud platform.
- [Execute Custom Script](#execute-custom-script)

**Life Cycle Events include**:

- **Pre-Build**: the lab components are being deployed, as well as any cloud resources.
- **Post-Build**: the lab environment has been built, but components like virtual machines may still be starting. 
- **First Displayable**: all components of the lab are now running and the user can now interact with the lab.
- **IP Addresses Assigned**: if the lab has public IP addresses, this event will wire when all public IP addresses have been verified to be assigned to the lab's virtual machine(s).
- **Saving**: the lab is in the process of being saved.
- **Saved**: the lab is in a saved state and no longer active. 
- **Resuming**: the lab is resuming from a saved state.
- **Resumed**: the lab has been resumed from a saved state and the user can interact with the lab again. 
- **Tearing Down**: the lab environment is being torn down. 
- **Torn Down**: the lab environment is fully torn down.
- **Building**: the lab environment is being built.

There are additional settings that can **optionally** be configured:

- **Blocking**: this allows you to block further execution of the lab life cycle until the action completes. You can use this to sequence actions that depend on each other. 

- **Delay**: allows you to introduce a delay between the moment the life cycle event occurs and the action is executed. 

- **Error Action**: controls how Lab on Demand will handle errors that occur when executing this action. All errors are logged against the lab instance by default. You can also choose to notify the user about the error or to end the lab. To prevent users from losing their work, only events early in the lifecycle (build, building, running, etc) allow you to end the lab when an error occurs. 

## Send Web Request

A Web Request is used to send a URL request. The URL can optionally contain placeholders that will be replaced by live data. 

Placeholders include:

- @lab.LabProfile.Id
- @lab.LabInstanceId
- @lab.LabInstance.GlobalId
- @lab.User.Id
- @lab.User.ExternalId (if launched via API)
- @lab.User.email
- @lab.User.FirstName
- @lab.User.LastName
- @lab.Tag (if included when launched by API)

### Lab data can be appended to the URL. 

When Append Lab Data is enabled, the following lab data will be appended to the URL as URL parameters in the ```name=value``` format. 

- labProfileId
- labInstanceId
- globalLabInstanceId
- userId
- userExternalId (if launched via API)
- email
- firstName
- lastName
- tag (if included when launched via API)

### Web Requests have multiple verb options:

- GET
- POST
- DELETE
- PUT

### Headers

You can optionally include HTTP headers. Each header should be on a separate line and in the ```name=value``` format. 

## Send Notification to User

This will send a notification to the student's lab, during the specified event. This can contain plain text, or @lab replacement tokens. When the notification is sent to the student, information will be replaced by the @lab replacement token. 

For example, if you were to configure the notification to the below, the notification will say "Hello" followed by the student's first name. 

```Hello, @lab.User.FirstName``` 

You can give the notification a **name**. If a name is provided, only one copy of the notification with that name will be displayed in the lab client. This allows you to replace a notification with updated text. 

## Send E-mail to user

This will send an E-mail to the student, during the specified event. This can contain plain text,or @lab replacement tokens. When the notification is sent to the student, information will be replaced by the @lab replacement token. 

## Execute Machine Command

Machine commands are used to target a virtual machine with a PowerShell or Shell command. 

Machine commands support Blocking, which allows you to block further execution of the lab life cycle until the action completes. You can use this to sequence actions that depend on each other. It is recommended to use the blocking feature if the script in the LCA will take very long to complete. Machine commands also support @lab replacement tokens, that can be used in PowerShell and Shell commands. 

Multiple commands types are available:

- **PowerShell**: PowerShell command execution without UI shown to the student. 

- **PowerShell with UI**: PowerShell command execution with PowerShell UI visible to the student. 

- **Shell**: Shell command execution without UI shown to the student. 

- **Shell with UI**: Shell command execution with Command Prompt UI visible to the student. 

## Execute Cloud Platform Command

Cloud Platform commands are used to target a cloud platform such as Microsoft Azure or Amazon Web Services with a PowerShell, Python, C# or JavaScript command. 

Along with traditional syntax, there is additional syntax that can be used to interact with Lab on Demand. 

- Setting Lab Variables: sets a variable that can be recalled in subsequent lab instructions using @lab replacement tokens, as many times as necessary. 

- Sending Lab Notifications: Sends a a popup notification to the lab, using the text specified in the syntax.

Cloud Platform commands support Blocking, which allows you to block further execution of the lab life cycle until the action completes. You can use this to sequence actions that depend on each other. It is recommended to use the blocking feature if the script in the LCA will take very long to complete. 

Cloud Platform commands also support @lab replacement tokens, that can be used in PowerShell <!-- or Python --> commands.

Language options include: 

### Azure

- **Legacy PowerShell**: uses PowerShell version 5.1. 
    - **Azure**: Azure RM 6.8.1.
- **PowerShell**: uses PowerShell version 7.1.3.  
    - **Azure**: 
        - Azure AZ 5.7.0.
        - Azure-CLI 2.22.1.
- **Python**: uses Python version 3.9.4.
    - **Azure**: AZ SKY 1.13.0.
- **C#: (Azure Only**) uses C# .NET 5.
    - **Azure**: Azure.Core 1.13.0.

### AWS

- **Legacy PowerShell**: uses PowerShell version 5.1. 
    - **AWS**: AWSPowerShell.netcore 4.1.3.0.
- **PowerShell**: uses PowerShell version 7.1.3.  
    - **AWS**: 
        - AWS CLI 2.1.39.
        - AWS.Tools 4.1.10.0.
- **Python**: uses Python version 3.9.4.
    - **AWS**: AWS Boto3 1.17.50.
- **JavaScript (AWS Only)**: uses node.js 14
    - **AWS**: AWS SDK for JS 3


## Execute Custom Script

Scripts can be executed against a custom target, using a specific package for the selected language. Scripts can use packages that are hosted by supported package providers. 
- PowerShell: [PowerShell Gallery](https://wwpowershellgallery.com/)
- Python: [PyPi](https://pypi.org/)
- JavaScript: [NPM](https://www.npmjs.com/)
- C#: [Nuget](https://www.nuget.org/)

For more information about the available languages, see our [Lab on Demand Scripting documentation](scripting-home.md).

[Back to top](#life-cycle-actions)
