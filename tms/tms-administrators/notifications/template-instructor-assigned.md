---
title: "How do I create a notification to send when an instructor is added to a class?"
description: "This is a template containing all the settings you need to create an automated notification to be sent to instructors when they are assigned to teach a class."
ispublished: yes
---

# How do I create a notification to send when an instructor is added to a class?

1. Open notification plans, from Site Administration on the **Notifications** tile, select **Create Notification Plan**.
1. Input a name and description for the notification.
1. The trigger is when an instructor has been added to a class. The Trigger Event is **Instructor assigned to class**.
1. Add filters as needed. 
1. An administrator is the one adding an instructor, making the Triggered by **Administrator**. 
1. The instructor is the recipient, making the To **Instructor**. 
1. Fill in **From**and **Subject**. Add a **CC* as needed. 
1. Add **Calendar Integration** for the user to add an appointment for their class enrollment.
1. Uncheck **Enabled** until you are ready to test the notification.
1. Input your **text** with replacement text for the notification.
1. On the **Organization** tab, assign the organization(s) where the notification will be used.
1. If you wish to limit it the notification to specific courses, select them on the **Courses** tab.

## Enable notifications on a class
Notifications related to classes must have Enable Notifications checked to have them sent. 

To enable notifications on a class,
1. Edit the class and stay in the **Basic Information** section.
1. Select **Show Advanced Settings** in the top right above the section header.
1. Check the box for **Enable Notifications**. 

You can also add this as a default setting so that each class created has notifications enabled. To do this, 
1. Edit your **Organization** profile. 
1. Open the **Preferences** tab. 
1. Under Class Settings, check **Enable Class Notifications**.

## Test an instructor notification

Testing a notification gives you the opportunity to verify that the notification sends when you want it to go out and does not send when you do not want it to go out. You can limit the impact by restricting the notification to only go out for one course.

Open your Notification Plan, if you have disabled the notification you will need to add the **Enabled** filter and filter by **Is not Enabled**.

To set up testing, begin by preparing your notification.
1. Click **Edit** on the notification.
1. Open the **Courses** tab and select **Specify courses**.
1. Under the **Individual courses** heading, click **Add course**.
1. Search for and select a course named, **Testing Automated Notifications**, then click **OK**. If you do not have access to this course open a ticket to our Help Desk.
1. On the **Basic Information** tab, check the **Enabled** box. 
1. **Save**.

Next create a class.
1. Create a new class using the course set on your notification. 
1. Verify any notification filters you have set are set in the class. For example, if the class must be Dedicated for the notification to send, then assign a company to the class.
1. Add an instructor for the class.
1. **Save** the class.
1. Alternately, you can create a class without an instructor, then edit it to add an instructor. Or create a class with an instructor, edit to change the instructor on the class. All of these scenarios will trigger a notification to the instructor added to the class.

Check for notifications.
1. Click the **Details** link in the top right corner of the page to return to the **Class** profile.
1. Click the **Find Sent Notifications** link to view all notifications sent for the class.

## Enable your notification

Once you have completed testing, you will want to enable your notification to put it in use.
1. Return to your **Notification Plan** to click **Edit** and open the **Courses** tab. 
1. To make your notification available for all courses used in your organization, remove the **Testing Automated Notifications** course and select **Applies to all courses**.
1. To make your notification available for specific courses used in your organization, remove the **Testing Automated Notifications** course. Click **Add Course** and select all courses that need this notification.
1. **Save**.

### Additional Resources

For more information on instructor notifications and descriptions of all the available fields, go to the article below.

[How do I create instructor notifications?](/tms/tms-administrators/notifications/instructor-notifications.md)
