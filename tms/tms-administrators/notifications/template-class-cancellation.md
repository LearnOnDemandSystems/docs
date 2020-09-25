---
title: "How do I create a notification to let students and instructors know a class is cancelled?"
description: "This is a template containing all the settings you need to create an automated notification to be sent to students and instructors when a class is cancelled."
ispublished: yes
---

# How do I create a notification to let students and instructors know a class is cancelled?

1. Open notification plans, from Site Administration on the **Notifications** tile, select **Create Notification Plan**.
1. Input a name and description for the notification.
1. The trigger is when a class’s status is changed to cancelled. The Trigger Event is **Class Cancelled**.
1. Add filters, as needed.
1. An administrator is the one cancelling the class, making the Triggered by **Administrator**. 
1. The student(s) and the instructor(s) can be sent the notification. If the notification is only to the students, then the To is **User**. To add instructors assigned to the class, check **Instructor**.
1. Fill in **From**and **Subject**. Add a **CC* as needed. 
1. Add **Calendar Integration** for the user to add an appointment for their class enrollment.
1. Uncheck **Enabled** until you are ready to test the notification.
1. Input your **text** with replacement text for the notification.
1. On the **Organization** tab, assign the organization(s) where the notification will be used.
1. If you wish to limit it the notification to specific courses, select them on the **Courses** tab.


## Enable notifications for a class
Notifications related to classes must have Enable Notifications checked to have them sent. 

To enable notifications on a class,
1. Edit the class and stay in the **Basic Information** section.
1. Select **Show Advanced Settings** in the top right above the section header.
1. Check the box for **Enable Notifications**. 

You can also add this as a default setting so that each class created has notifications enabled. To do this, 
1. Edit your **Organization** profile. 
1. Open the **Preferences** tab. 
1. Under Class Settings, check **Enable Class Notifications**.

## Test a cancelled class notification
Testing a notification gives you the opportunity to verify that the notification sends when you want it to go out and does not send when you do not want it to go out. You can limit the impact by restricting the notification to only go out for one course.

Time trigger notifications are sent out at the top of each hour and trigger for any class within the previous 59 minutes. If your notification is set up to send a reminder 24 hours after class ends, you will need to schedule a class starting the today and check that the notification has been sent tomorrow. 

Open your Notification Plan, if you have disabled the notification you will need to add the **Enabled** filter on the Find Notifications page and filter by **Is not Enabled**.

To set up testing, begin by preparing your notification.
1. Click **Edit** on the notification.
1. Open the **Courses** tab and select **Specify courses**.
1. Under the **Individual courses** heading, click **Add course**.
1. Search for and select a course named, **Testing Automated Notifications**, then click **OK**. If you do not have access to this course open a ticket to our Help Desk.
1. On the **Basic Information** tab, check the **Enabled** box. 
1. **Save**.

Create a class.
1. Create a new class using the course set on your notification.
1. Verify any notification filters you have set are set in the class. For example, if the class must be Dedicated for the notification to send, then assign a company to the class.
1. Add an **instructor** to the class. 
1. **Save** the class.

Create enrollments.
1. On the **Class Roster**, click the **Add Students** link.
1. Search for and select fake students or staff so that no one is sent a confusing notification, click **OK** to add the students to the roster.
1. Each student is added in the Enrollment status of Enrolled.
1. Click **Save** at the bottom of the roster to complete the enrollments.

Cancel the class.
1. Click the **Edit** link at the top of the roster page.
1. Change the class status to **Cancelled**.
1. **Save**.

Check for notifications.
1. Click the **Details** link in the top right corner of the page to return to the **Class** profile.
1. Click the **Find Sent Notifications** link to view all notifications sent for the class.

## Enable your notification

Once you have completed testing, you will want to enable your notification to put it in use.
1. Return to your **Notification Plan** to click **Edit** and open the **Courses** tab. 
1. To make your notification available for all courses used in your organization, remove the **Testing Automated Notifications** course and select **Applies to all courses**.
1. To make your notification available for specific courses used in your organization, remove the **Testing Automated Notifications** course. Click **Add Course** and select all courses that need this notification, then click **OK**.
1. **Save**.


### Additional Resources

For more information on class notifications and descriptions of all the available fields, go to the article below.

[How do I create class notifications?](/tms/tms-administrators/notifications/class-notifications.md)
