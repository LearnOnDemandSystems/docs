# What Types of Training Keys can be used for Classes

Two types of training keys are available to directly enroll students into a class: Enrollment Training Keys and Event Training Keys. For either key, an administrator creates a class and generates the enrollment keys or the event key. All training keys allow users to self-register by creating a user account and provisioning their training. Existing users can login and redeem their key to open their training. 

![](/tms/images/class-training-keys.png)

## Enrollment Training Keys

Enrollment training keys allow students to register automatically for instructor-led training. With this method, a unique key is generated for each individual user to be enrolled in the class up to the number of maximum enrollments set on a class.

You can provide the training keys to students prior to class to create their own enrollments, then monitor which students have redeemed keys and when.

To create class enrollment keys:

1. Navigate to the **Class** profile page.
1. Click the **Training Keys** link in the action bar at the top.
1. On the **Training Keys** page, click **Generate Training Keys**. 
1. In the dialog, input the number of keys you would like to create. 
1. Click **OK**. These keys will only be visible to Operations Managers and may be exported to distribute to students.

You are not billed for enrollment keys, only the students that are enrolled in the class. Enrollment keys can only be redeemed during the duration of class so they are not recommended for students who may want to take advantage of enrolling for the post class lab access after a scheduled event.

Main features:

- Class enrollment keys are used for instructor-led class deliveries
- A key is generated for each enrollment or student
- Keys can be generated up to the number of max enrollments set on the class
- Keys are created from the Training Keys link on the Class profile page
- Keys are only valid during the duration of the class
- Keys must be distributed to users manually

## Event Training Keys

Event training keys are also allow students to register for instructor-led classes. With this method, you create one key for the entire class. This method is very easy to use since all students use the same key to enroll.

There are unique benefits to using an event training key. If you have an automated notifcation setup to send class enrollment reminders, you can provide students with the event training key in the notification using a replacement token. In addition, you can set the timeframe when the key is valid with the event training key method. For instance, if you are running a one-day seminar and would like to offer participants access to the labs after the event has ended, the event training key can be set to allow this.

While the event training key is a simple solution for enrolling students, there is a downside to its use. It is recommended that when you use an event training key, you set the maximum number of students on the class to match the number of expected students. Because the key can be redeemed by anyone who has it, there is the potential that the key may be given to an unexpected user or a student may accidentally double enroll. Setting the maximum students can help keep your roster manageable and accurate. Another downside is that you will not be able to see when a key was redeemed without navigating to each student’s enrollment page.

Event training keys can be generated when the class is created or while editing an already scheduled class. To add an event training key:
1. Navigate to the **Class** profile page and click **Edit**.
1. Click **Show Advanced Settings**.
1. Under the **Basic Information** section, after adding a course, click **Allow automatic enrollment using event training key**.
1. The Event Training Key is automatically filled in.
    1. You may replace it with a unique training key of your choice, or
    1. Click **Generate New Key**.
1. Set either **Event training key can only be redeemed until the event ends** (default selection) or **Event training key can be redeemed during this event or after it ends**.
