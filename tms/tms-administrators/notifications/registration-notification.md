---
title: "How do I create a registration notification?"
ispublished: true
---

# How do I create a registration notification?

Automated notifications are a way to notify students, instructors and staff when something changes in the TMS. Most notifications are triggered based on an action taken in the platform, but we also have time triggers for enrollments, classes and course assignments. Using notifications can save you a significant amount of time because you will not need to email people with updates.

Please keep in mind, all users have the right to opt out of notifications. Even though a notification is sent out by the platform it does not mean that the email will be received by the user.

![](/tms/images/notification-process.png)
*Overview of the process of creating a notification*

## Preparation for creating a notification
Take some time to answer the following questions for each notification you want to create. 

1. What action triggers a notification?
1. Who is the user completing the action triggering the notification?
1. Who are the user(s) receiving the notification?
1. A valid email address to display in the “From” line of the notification
1. Subject for the email notification
1. Text for the email you are sending through the notification

## Select a trigger event
The Trigger Event is an action in the platform causing a notification to be sent out. In most cases this is an action that is taken in the platform, like changing an enrollment status from Enrolled to Cancelled, then when the enrollment is saved it triggers the notification to be sent. A time trigger is also available based on when a class begins and ends or when a course assignment is set to expire. 

One or more trigger events may be used. When multiple triggers are in place a notification is sent when any of the event triggers are met. After choosing the first trigger the selection list is limited to similar types of notifications based on filters and replacement text options used. 

### Types of registration notifications

Most registration triggers are related to the Enrollment Status and Completion Status set on a student’s enrollment. 

Enrollment statuses are used to control which registered students can attend class and access its content. The most commonly used are Enrolled and Cancelled. Other statuses may be used as part of an organization’s registration process. Enrollment Status names are formatted Class enrollment [Enrollment Status], the trigger for enrollments in the Cancelled status would be Class enrollment cancelled.

Completion statuses are used to show if the students are attending class and then at the end of class to show if the student successfully completed the class. Completion Status names are formatted Class enrollment completion status [Completion Status], the trigger for an enrollment completion status set to No Show reads Class enrollment completion status no show.

Two additional types of registration notifications are the Class enrollment class time trigger and the Class enrollment late minimum. 

The class enrollment class time trigger sends notifications in relation to the class start or class end times. The trigger time is set in hours prior to or after the class start or end time. This trigger is very similar to the Class time trigger, but has three additional filters available, the First occurrence of course only, Attendance Location, and Lab Availability filters.

The Class enrollment late minimum trigger is used to notify you when a student is cancelled from a class and the cancellation has dropped the total class enrollments below the Minimum Capacity set on the class. The class Minimum Capacity setting is to find any classes that do not meet the number of students you want to run the class, allowing you to find and cancel those classes. On the notification, you can set the number of days before class starts that you want notifications sent to you.

### Add a trigger event
Select trigger(s) for your automated notification.
1. Beside Trigger Event click the **Add event** link, this opens a pick list of triggers.
1. Select a trigger and click **Add** to enable the trigger for your notification, it is added in the Trigger Event field.
1. Click **Add event** again to add more triggers.

## Trigger filters
After adding a trigger event, different filters can be applied to further define when a notification is sent. Along with the Trigger Event you can add criteria to limit it to specific circumstances. This will also allow you to send different notifications for the same type of trigger event with different criteria enabled. 

Trigger filters must be applied with a time trigger, but they are optional for all other trigger types. A time trigger must have the number of hours and the class start or class end options added.

### Student registration filters
Explanations of the filters available when setting up student enrollment or completion status notifications are listed below.

**Scoped to student Organization?**
By default, class and enrollment notifications are sent based on class ownership, this means that anyone registered for the class receives notifications sent by the organization holding the class. This setting is in place for instances where one organization is holding a class and students from other organizations are attending the class. Enabling this setting allows the student’s organization to send a notification to their student when they are enrolled in another organization’s class. It may be used when you have multiple organizations or are using preferred partners. 

**First occurrence of change only**
Notifications are normally sent each time your selected trigger event(s) takes place. You can enable the First Occurrence of Change Only to limit sending the notification only the first time your selected student registration trigger is changed on an enrollment.

**Dedicated Classes**
Dedicated classes are set up to only allow registration of students who belong to a specific company. Use Do not check for the notification to go out whether or not the class is dedicated, or you can specify the notification to only go out for dedicated classes, or to only go out for classes that are not dedicated.
*Dedicated class is set up in a class. It is found on the Basic Information tab with Advanced Settings opened; the Company field must have a company added for the class to be dedicated.*

**Attendance Location**
Each student enrollment can specify a location or classroom for the student, these triggers align with available choices for your class and enrollments. You may set up and send different notifications based on whether a student is attending in a classroom at your location, at an off-site classroom, or if they are attending virtually. 
* An On-premise classroom sends notifications to students enrolled to attend in a physical classroom set up in your organization. 
* A Remote classroom has the enrollment’s Classroom set to Virtual/Remote and has a Remote Classroom assignment assigned on their enrollment. 
* A virtual student is attending virtually with the classroom set to Virtual/Remote and does not have a Remote Classroom assignment on their enrollment.
*The Class determines which attendance locations are available. On a class, the Delivery tab allows you to set a class as physical, physical and virtual or virtual. A class that is physical, and has classroom(s) added to it, allows a class enrollment to add a classroom attendance location. A class delivered virtually allows you to set up a class enrollment as Remote or Virtual.*

**Lab Availability**
You may choose to have a notification sent based on whether the class has lab activities in it or not. This setting can enable notifications only for classes with labs, only for classes without labs or to send if either is true.

**Class Status**
The Class status is set to show that a class is going to run or not. You can have notifications sent based on the status set on the class. You may only want notifications to go out based on a class status being Scheduled or Guaranteed to Run. If a class status is not specified, then notifications are sent for all class statuses.

**Enrollment Status** 
Only displays for the Class enrollment class time trigger.

The Enrollment status is set prior to class to show that a student is registered to attend the class. You can have notifications sent based on the Enrollment status set on an enrollment. You may only want notifications to go out based on the Enrollment status being Enrolled. If an Enrollment status is not specified, then notifications are sent for all Enrollment statuses.

**Completion Status**
Only displays for the Class enrollment class time trigger.

The Completion status is set at the end of class to designate if the student successfully completed the class. You can have notifications sent based on the status set on the Completion status of an enrollment. You may only want notifications to go out based on the Completion status being Complete. If a Completion status is not specified, then notifications are sent for all Completion statuses.

**Time Triggers**
Time trigger notifications must have settings input for the time filter. The time trigger sends notifications based on the designated amount of time you set; and are set to a specific number of hours before class starts, after class has started, before class ends, or after class has ended. Notifications are sent at the top of the hour for any time triggered in the previous hour.  

**Time trigger – hours**
Only displays for the Class enrollment class time trigger.

You can set the notification to trigger a set number of hours before class starts, after class starts, before class ends, or after class ends. Input the number of hours and the class start or end setting needed.

**Time Trigger - days**
Only displays for the Class enrollment late minimum time trigger.

Input the number of days before class takes place to receive notifications of a student’s enrollment cancellation.

### Add trigger filters
Select filters you wish to add.

1. Enable check boxes and choose from pick lists if you wish to change the default filter settings.

## Select the user triggering the notification and users receiving the notification
The Triggered by and Send to selections are based on the user’s roles. Trigger by allows you to choose the person completing the action triggering the notification, while Send to indicates who the recipients of the notifications will be. For example, if you would like to have a notification sent when a staff member enrolls a student into a class, then you will choose Triggered by Administrator and Send to User.

### Triggered by
For most notifications, two user types are available to select from as the one triggering the action to send the notification, User or Administrator.  

For Triggered by: 
* User refers to a student taking an action in the platform.
* Administrator means a user with a role with administrative rights acting in the platform. 

One or both can be selected as the one triggering the notification. For example, both a student and an administrator can cancel a student’s enrollment, you may want to set up a notification where it is sent when either have initiated the cancellation.

No user is selected for time-based triggers, they are triggered based on the time selected in the trigger filters.

### Add a triggered by user
Select the user taking the action in the platform that triggers the notification.

1. Check the box beside **User** or **Administrator** based on the criteria above.

### Select users receiving the notification
Notification recipients are set by role. For some choices the user role chosen is limited based on their connection to the trigger event. In other cases, everyone in your organization with the chosen role will receive the notification. 
 
#### Send to options:
Explanations of the users available when setting up notifications are listed below.

**User**
When the user is the recipient, user is not defined by role but is a user that the trigger event and filters apply to. For example, for the Class Enrollment enrolled trigger, all users enrolled in the class receive a notification.

**Account Executive**
Adding the Account Executive as a recipient will send a notification to a user’s Account Executive when the trigger event and filters applies to that user. The Account Executive is set on the User profile.

**Instructor**
Adding Instructor as a recipient sends a notification to the assigned instructor(s) on a class.

**Creator**
Enabling Creator as a recipient sends a notification to the user who created an item, like a class, an enrollment, a course assignment, etc.

**Editing Delegates**
Editing delegates is for organizations using roles that limit editing of a class to the class creator. Adding Editing delegates on a class allows the creator to assign other users to be able to edit their class. Adding an editing delegate as a recipient on notifications will send a notification to any editing delegate that is added to a class.

**Class Custom Users**
Class custom users is a custom field option that can be added to a class allowing specific users to be selected based on their role. Enabling Class custom users on your notification allows you to select from custom fields that are enabled to use Class custom users. Select the custom fields you want added and notifications are sent to the users added to a class through that field. 

**Organization Managers**
Adding Organization managers allows you to choose roles, like Operations Manager or Automated Notification Recipient 1, once added all users with that role are sent a notification.

**Company Managers**
A company manager has access to users based on the Company added on their User profile, management of users in a company is added on the User profile’s Company Management tab. Adding Company managers to your notification allows you to choose roles, like Company Training Manager, once added all users with that role are sent a notification.

*Please note: We have created roles called "Automated Notifications Recipient" and they are numbered 1-5. These roles do not have permissions, they are in place to give you flexibility to assign a user the role to have them receive a notification. 

### Add recipients of the notification
One or multiple recipients can be set for a notification. Follow the instructions below to add recipients in the To field.

1. Place check marks beside all **recipients** for the notification.
1. For **Class Custom Users**, once checked a section opens below, select the **Add Class Custom User Field** link opening the Choose Custom Field dialog. Search for and select one or more **custom field** and click **OK** to add your selections. 
1. For **Organization Managers**, once checked a section opens below, **Include parent Organizations** is selected by default, uncheck this if you do not want users in your parent organizations to receive notifications. Select the **Add Organization manager user role** link opening the Choose User Role dialog. Search for and select one or more **user role** and click **OK** to add your selections. 
1. For **Company Managers**, once checked a section opens below, select the **Add company manager user role** link opening the Choose User Role dialog. Search for and select one or more *user role ** and click **OK** to add your selections. 

## Email header information and calendar appointments
Each notification sends an email showing a Subject line and From line. You can also add a CC’d email to receive the notification. 

### Notification From line
You need to provide a valid email address to display in the From address, an invalid email address may be read as spam and be rejected by a recipient’s email server. The email will be sent by LODS, but this is the address which is shown to recipients. 

### Notification CC line
A carbon copy (CC) email address can be added. When in place a copy of each notification is sent to the recipient.

### Notification subject line
Input a Subject for the email notification. Replacement text fields can be added to the subject. 

**Calendar Integration**
You can add an appointment to registration notifications. The appointment can be sent in two ways, as an appointment or an appointment with an attachment. The email address in the From field acts as the organizer and receives any accept/decline responses for the appointment.

* Appointment - an email is sent which once accepted only appears on the recipient’s calendar and the email is removed from their inbox. 
* Appointment with an attachment - an email with an appointment attachment is sent, the recipient can open the attachment to add the appointment to their calendar and the email remains in their inbox until they choose to remove it. 

### Add email header information
Follow the instructions to add information in the From, CC, To, Subject fields, and add a calendar appointment.

1. In the **From** field input a valid email address.
1. If needed, add an email address in the **CC** field to be copied on each notification sent. 
1. Input a title in the **Subject** field to let the recipient know what the email is about.
1. If desired, select an option from the **Calendar Integration** pick list.
1. Uncheck **Enabled** until you are ready to test the notification.

## Email’s content
The Notification text tab is where you input the message you want to send out to recipients. 

You can use HTML code to format the email, add links, and images, like a logo. Replacement text fields are located below the text field, these are used to pull data from the platform to add information specific to the recipient. For example, using the replacement text field [StudentFirstName] inputs the recipients first name, as shown in their user profile.

### Add email content
Follow the steps below to add the text to your notification email.

1. Open the **Notification Text** tab. 
1. Input plain text by clicking in the top left corner of the text field.
1. Use the formatting bars to enhance the text.
1. Use the Source Code button, **< >**, to enter HTML code directly.
1. Be certain to use Replacement text for anything that can change by person or event, like the student’s name, class name, class date and time, etc.

## Organization availability
Organization availability determines which organizations the notification is enable for. 

Organization management, set on the user profile, determines which organizations an administrative user can view and manage. If you only have one organization, then check the organization to enable your notification for it. If you manage multiple organizations, check the box beside the organizations that will use the notification.

The organization show in their hierarchies, if a down arrow, **v**, shows beside an organization name, then the arrow can be clicked to show its child organizations. Checking the box beside a parent organization automatically selects all its child organizations, however, child organizations can be selected individually if the parent organization is unchecked.

### Add organization availability
Follow the instructions below to enable your notification in your chosen organizations.

1. Open the **Organizations** tab, you will see a listing of organizations you manage.
1. Check the box beside the **organization(s)** that will use the notification.

## Specify which courses are required for the notification to be sent
Your notification can be set to apply to all courses or to only apply to specific course(s). It defaults to being used with all courses and that is what is needed in most cases. When you have unique instructions for a course that do not apply to other courses, it can be helpful to be able to send instructions about that course or courses. You can set up the notification against individual courses or use course groups. Course groups are given a title and a group of courses is added, this feature is for convenience of finding a set of courses in the platform.

It is best to not set a Program. Most organizations only use the Training program. Programs align with permissions and entities, if you set a program that doesn’t apply to your users, courses, subscriptions, or classes, then the notification will not work.

### Add courses to trigger notifications
Do the following to add courses as triggers for notifications. Using courses as a trigger limits the notification to only be sent for the selected courses.

**Individual courses**
1. Open the **Courses** tab, Applies to all courses is selected by default, click the radio button beside **Specify courses**.
1. Under Individual courses, click the **Add Course** link, this opens the Choose Course dialog. 
1. Input part of the **course name**, click **Search**, and select the desired **course**.
1. Continue to search and select all the courses needed, then click **OK**. The selections are added under the Individual courses heading.

**Course Groups**
1. Open the **Courses** tab, Applies to all courses is selected by default, click the radio button beside **Specify courses**.
1. Under Course Groups, click the **Add Course Group** link, this opens the Choose Course Group dialog. 
1. Input part of the **course group name**, click **Search**, and select the desired **course group**.
1. Continue to search and select all the course groups needed, then click **OK**. The selections are added under the Course Groups heading.

> :small_blue_diamond: Please note: Notifications related to a class must have Enable Notifications checked to have them sent. This can be done on a class, in the **Basic Information** section select **Show Advanced Settings** and check the box for **Enable Notifications**. You can also add this as a default setting so that each class created has notifications enabled. To do this, edit to your **Organization** profile, open the **Preferences** tab and under Class Settings, check **Enable Class Notifications**.

### Additional Resources

[How can I use automated notifications?](/tms/tms-administrators/notifications/use-automated-notifications.md)

[How do I create an automated notification?](/tms/tms-administrators/notifications/create-an-automated-notification.md)

[How do I create instructor notifications?](/tms/tms-administrators/notifications/instructor-notifications.md)

[How do I create class notifications?](/tms/tms-administrators/notifications/class-notifications.md)

[How do I create course assignment notifications?](/tms/tms-administrators/notifications/course-assignment-notifications.md)

[How do I create a user created notification?](/tms/tms-administrators/notifications/new-user-created-notification.md)

[How do I create a user role assignment notification?](/tms/tms-administrators/notifications/user-role-notification.md)

[How do I create a subscription assignment notification?](/tms/tms-administrators/notifications/subscription-assignment-notification.md)

