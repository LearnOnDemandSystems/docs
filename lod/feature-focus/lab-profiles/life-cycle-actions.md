# Life Cycle Actions

This guide will walk you through how to create Life Cycle Actions in a lab. In the past, you could send a request to an outside URL when a lab was first built or torn down using the Build Service URL and Tear Down Service URL fields on the Advanced tab of the Lab Profile. This functionality has been expanded to include more actions and a wider range of life cycle events of the lab. These are called Life Cycle Actions. The types of actions that can be performed are:

- **Send Web Request** – Like the Service URLs in the past, calls an external service URL.The information that is sent is based on that URL, the verb used to send the information, and the receiving API.
- **Send Notification to User**– Uses the Send Notification functionality to send information to the lab user in the form of a toast in the lab interface.
- **Send E-mail to User** – Sends an e-mail to the lab user. The subject and content of the e-mail will be the same for each lab user.
- **Execute Machine Command** – Like the Command field on lab steps. It requires the lab user to be logged into a virtual machine that has the Lab on Demand integration service installed. It runs a machine command on the active machine.

Each of these actions have different events and fields related to them. Currently there are 10 overall events:

1. **Building**– when the lab user launches the labs and the environment is in the process of being built, including the virtual machines (VMs) if present.
2. **Built**– after the lab environment has been built but the virtual machines are still powering up.
3. **Running**– Once the lab user can interact with the lab interface and the VMs, if present.
4. **IP Address Assigned** – When the public IP address has been assigned, when applicable.
5. **Saving**– When the lab user clicks Save and confirms they want to save the lab.
6. **Saved**– After the lab has finished the Save process.
7. **Resuming**– When the lab user clicks Resume and the lab interface is in the process of rebuilding itself
8. **Resumed**– When the lab user is again able to interact with the lab interface and the VMs, if present.
9. **Tearing Down** – When the lab user cancels or completes the lab and the lab environment is being torn down.
10. **Torn Down** – Once the tearing down process has been completed.

# Add Life Cycle Actions

To add Life Cycle Action to your lab profile, follow these steps for every Action:

1. Click the **Advanced** tab, and in the new **Life Cycle Actions** section, click **Add Life Cycle Action**.
2. From the **Action Type** dropdown, select the action you want performed.
3. From the **Event** dropdown, select the event when you want the Action to be triggered.
4. In the **Delay** box, set the number of seconds after the Life Cycle Event occurs that the Action should trigger, if wanted.
5. In the **Error Action** dropdown, select the type of action to LOD will take if an error occurs.
   1. If you select **Notify User** as the **Error Action**, an **Error Notification** field will appear. Type the text the user will receive in the Notifications toast in the lab interface.
6. Uncheck **Enabled** if necessary.
7. Click **OK** to add the **Life Cycle Action**.

<!--
![image001](images/image001.png)                                  
-->

# Action Types
Each Action type has steps specific for it. The Action Types are listed below. You can use this list to navigate to the steps for the Life Cycle Action you would like to implement and then return to the list to navigate to another action.

- [Send Web Request](#send-web-request)
- [Send Notification to User](#send-notification-to-user)
- [Send E-mail to User](#send-email-to-user)
- [Execute Machine Command](#execute-machine-command)

Once you have added Life Cycle Actions to your lab, navigate to [Manage Life Cycle Actions](#manage-life-cycle-actions) for information and steps to rearrange and delete the actions.

## Send Web Request

1. In the **URL** field, type the URL of the external service you want called. Include any placeholders for live data, as needed.
2. Check **Append Lab Data** if needed. When checked, the following data is appended to the URL as parameters in name=value format:
   1. labProfileId
   2. labInstanceId
   3. userId
   4. userExternalId (if launched via API)
   5. username
   6. email
   7. firstName
   8. lastName
   9. tag (if included when launched via API)
3. In the **Verb** dropdown, select the HTTP verb that will be used to send the request.

![image002](images/image002.png)

4. In the **Headers** box, add optional HTTP headers. Each should be on a separate line and in the format of name=value.
   1. If the **POST** or **PUT** verb is chosen in the **Verb** dropdown, add optional HTTP content in the **Content** field that will appear. 

![image003](images/image003.png)     

5.   Check **Blocking** if you want the lab to be paused while awaiting a response from the external web service.

6.   In the **Timeout **field, set the number of seconds the lab should wait for the external service to reply before giving up.

[Back to Action Types](#action-types)

## Send Notification to User

1.    In the **Name** field, optionally type the name for the notification. If a name is provided, only one copy of the notification with that name will be displayed in the lab client. This allows you to replace a notification with updated text.

2.    In the empty field under **Enabled**, type the notification text.

![image004](images/image004-2740826319.png)     

## Send Email to User

1.    In the **Subject** field, type the subject for the email. 

2.    In the empty field under **Enabled**, type the body of the email.

![image005](images/image005.png)

[Back to Action Types](#action-types)

## Execute Machine Command

The Execute Machine Command action can only be triggered by the Running, IP Addresses Assigned, and Resumed events. For the command to run successfully, the user must be logged into the virtual machine and the machine must have the Lab on Demand integration service installed. Because the user must be logged in, we recommend only using this feature when the lab is resumed or launched from a saved state.

1.   From the **Machine **dropdown, select the VM on which you want the command to run.
2.   From the **Command Type** dropdown, select the type of command:
     1.   PowerShell
     2.   PowerShell with UI
     3.   Shell
     4.   Shell with UI

3.   In the **Command** field under **Enabled**, type the command to run.

![image006](images/image006.png) 

[Back to Action Types](#action-types)

# Manage Life Cycle Actions

Once you have added Life Cycle Actions to your lab, they will be listed with their details by the Event that triggers them under Life Cycle Actions in the Lab Profile. If there is more than one Action per trigger Event, they can be arranged in the order they should occur when the Event happens. To do this, click the **Up** or **Down** arrow on the right side of the Action you want to move. You can only move Actions within a trigger Event.

![image007](images/image007.png)      

You can **Edit** and **Delete** an Action from the buttons on the right side of it as well.
