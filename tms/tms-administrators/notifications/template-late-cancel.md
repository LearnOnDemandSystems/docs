---
title: "How do I create a notification to be sent to a student who has cancelled their enrollment in the late cancellation window?"
description: "This is a template containing all the settings you need to create an automated notification to be sent to students when they have cancelled their enrollment within the late cancellation window. If you have a cancellation policy charging students if they cancel too close to when class starts, then you may be interested in this notification."
ispublished: yes
---

# How do I create a notification to be sent to a student who has cancelled their enrollment in the late cancellation window? 

*If you want late cancellation set up, go to your Organization profile, select Edit, and go to the Preferences tab. Under Enrollment Settings you can set the late cancellation window, this is needed to trigger as a late cancellation.*

1. Open notification plans, from Site Administration on the **Notifications** tile, select **Create Notification Plan**.
1. Input a name and description for the notification.
1. The trigger is when a student’s enrollment status is changed to cancelled. The Trigger Event is **Class Enrollment Late Cancelled**.
1. Add filters, for example you may want to set the Class Status to **Scheduled**, then nothing is sent for a class in another status.
1. The student is the one cancelling the enrollment, making the Triggered by **User**. 
1. The student, and perhaps your accounting staff, will need to be notified if there are billing implications. If the notification is only to the student, then the To is **User**. To notify staff, you can check **Organization Manager** and select the user role that should receive the notification.
1. Fill in **From**and **Subject**. Add a **CC* as needed. 
1. Add **Calendar Integration** for the user to add an appointment for their class enrollment.
1. Uncheck **Enabled** until you are ready to test the notification.
1. Input your **text** with replacement text for the notification.
1. On the **Organization** tab, assign the organization(s) where the notification will be used.
1. If you wish to limit it the notification to specific courses, select them on the **Courses** tab.

### Additional Resources

For more information on enrollment notifications and descriptions of all the available fields, go to the article below. 

[How do I create registration notifications?](/tms/tms-administrators/notifications/registration-notification.md)
