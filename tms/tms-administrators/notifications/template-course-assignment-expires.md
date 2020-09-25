---
title: "How do I create a notification reminding a student when their course assignment will expire?"
description: "This is a template containing all the settings you need to create an automated notification to be sent to remind a student when their course assignment will expire."
ispublished: yes
---

# How do I create a notification reminding a student when their course assignment will expire?

1. Open notification plans, from Site Administration on the **Notifications** tile, select **Create Notification Plan**.
1. Input a name and description for the notification.
1. The trigger is the amount of time you set before the course assignment expires. The Trigger Event is **Course assignment expiration**.
1. Fill in the time for the filter, **Trigger XX Days Before Course Assignment Expires**.
1. There is not a person triggering the action, it is based on time. 
1. The notification is only to the student making the To **User**. 
1. Fill in **From**and **Subject**. Add a **CC* as needed. 
1. Uncheck **Enabled** until you are ready to test the notification.
1. Input your **text** with replacement text for the notification.
1. On the **Organization** tab, assign the organization(s) where the notification will be used.
1. If you wish to limit it the notification to specific courses, select them on the **Courses** tab.

## Test your course assignment notification

Testing a notification gives you the opportunity to verify that the notification sends when you want it to go out and does not send when you do not want it to go out. You can limit the impact by restricting the notification to only go out for one course.

Time triggered notifications are a bit more difficult to test because triggers based on days trigger at midnight. If set the trigger to before the course assignment expiration it will check for anything in the next 24 hours and if set to the trigger after the course assignment expires then it checks for anything in the previous 24 hours. When testing this notification you must wait overnight to verify that a notification is sent. If there are multiple tests you want to run, set them all up to trigger overnight so that verification does not take multiple days.

Open your Notification Plan, if you have disabled the notification you will need to add the **Enabled** filter and filter by **Is not Enabled**.

To set up testing, begin by preparing your notification.
1. Click **Edit** on the notification.
1. Open the **Courses** tab and select **Specify courses**.
1. Under the **Individual courses** heading, click **Add course**.
1. Search for and select a course named, **Testing Automated Notifications**, then click **OK**. If you do not have access to this course open a ticket to our Help Desk.
1. On the **Basic Information** tab, check the **Enabled** box. 
1. **Save**.

Next create a course assignment.
1. Create a new course assignment using the course set on your notification. 
1. **Save** the course assignment.

1. If you are setting up a notification for a course assignment expiration notification, first follow the steps above to create a course assignment.
1. **Edit** the course assigment, 
- to test **XX days Before Course Assignment Expires** change the **Exires** date to XX plus 1 day. For example, if you have set the notification to be sent 30 days before the course assignment expires, then you will want the course assignment to be set to expire 31 days from the current date. 
- to test **XX days After Course Assignment Expires** change the **Exires** date to XX minus 1 day. For example, if you have set the notification to be sent 1 day after the course assignment expires, then you will want the course assignment to be set to expire on the current date. 

Check for notifications.
1. On the Site Administration page, on the **Notification Plans** tile, click the **Find Sent Notifications** link to view all notifications sent.

### Additional Resources

For more information on course assignment notifications and descriptions of all the available fields, go to the article below.

[How do I create course assignment notifications?](/tms/tms-administrators/notifications/course-assignment-notifications.md)
