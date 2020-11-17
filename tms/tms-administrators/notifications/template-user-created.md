---
title: "How do I create a notification to send when a user is created?"
description: "This is a template containing all the settings you need to create an automated notification to be sent when a new user is created."
ispublished: yes
---


# How do I create a notification to send when a user is created?

> Please be aware that all functionality may not be available to you.

1. Open notification plans, from Site Administration on the **Notifications** tile, select **Create Notification Plan**.
1. Input a name and description for the notification.
1. The trigger is when a new user account is created in the platform. The Trigger Event is **User created**.
1. The student is the one cancelling the enrollment, making the Triggered by **User**. 
1. An administrator, a user import, or the API is the one adding an instructor, making the Triggered by **Administrator**. 
1. Fill in **From**and **Subject**. Add a **CC* as needed. 
1. Uncheck **Enabled** until you are ready to test the notification.
1. Input your **text** with replacement text for the notification. Please note, this is the only setting that will send out the username and password of a user, and it can only be sent when the user account is first created.
1. On the **Organization** tab, assign the organization(s) where the notification will be used.

## Test a user created notification

Testing a notification gives you the opportunity to verify that the notification sends when you want it to go out and does not send when you do not want it to go out. 

Open your Notification Plan, if you have disabled the notification you will need to add the **Enabled** filter on the **Find Notifications** page and filter by **Is not Enabled**.

Prepare your notification for testing.
1. Click **Edit** on the notification.
1. On the **Basic Information** tab, check the **Enabled** box. 
1. **Save**.

Next create a user account. [Information on creating a user account.](/tms/tms-administrators/users/student-management/create-student-user-accounts.md)
1. Create a user account for a fake user.
1. **Save** the user account.

Check for notifications.
1. On the Site Administration page, on the **Notification Plans** tile, click the **Find Sent Notifications** link to view all notifications sent.

Your user creation notification is enabled and in place, if it is not working as desired, be sure to edit the notification plan to disable it.


### Additional Resources

For more information on user creation notifications and descriptions of all the available fields, go to the article below.

[How do I create a user created notification?](/tms/tms-administrators/notifications/new-user-created-notification.md)
