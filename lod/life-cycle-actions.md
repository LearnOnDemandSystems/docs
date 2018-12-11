# Life Cycle Actions

With the Life Cycle Actions feature, LOD is able to execute actions when specific events occur during the lab instance life cycle. 

Actions include:

- **[Send a notification to the user:](#send-notification-to-user)**  sends a notification to the user during the specified event.
- **[Send an email to the user:](#send-e-mail-to-user)** sends an email to the user during the specified event.
- **[Send a web request:](#send-web-request)** sends a web request to the URL specified. The URL can optionally contain placeholders that will be replaced by live data, with @lab replacement tokens.
- **[Execute a machine command:](#execute-machine-command)** sends a PowerShell or Shell command to the virtual machine.
- **[Execute a cloud platform command:](#execute-cloud-platform-command)** sends a PowerShell command to the cloud platform.

Events include:

- **Building**: the lab environment is being built.
- **Built**: the lab environment has been built, but components like virtual machines may still be starting. 
- **Running**: all components of the lab are now running and the user can now interact with the lab.
- **IP Addresses Assigned**: if the lab has public IP addresses, this event will wire when all public IP addresses have been verified to be assigned to the lab's virtual machine(s).
- **Saving**: the lab is in the process of being saved.
- **Saved**: the lab is in a saved state and no longer active. 
- **Resuming**: the lab is resuming from a saved state.
- **Resumed**: the lab has been resumed from a saved state and the user can interact with the lab again. 
- **Tearing Down**: the lab environment is being torn down. 
- **Torn Down**: the lab environment is fully torn down.

<!--
## Send Web Request
-->

## Send Notification to User

This will send a notification to the student's lab, during the specified event. This can contain plain text, or @lab replacement tokens. When the notification is sent to the student, information will be replaced by the @lab replacement token. 

For example, if you were to configure the notification to the below, the notification will say "Hello" followed by the student's first name. 

```Hello, @lab.User.FirstName``` 

## Send E-mail to user

This will send an E-mail to the student, during the specified event. This can contain plain text, or @lab replacement tokens. When the notification is sent to the student, information will be replaced by the @lab replacement token. 

<!--
## Execute Machine Command

## Execute Cloud Platform Command

-->
