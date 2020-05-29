# What are the different types of Training Keys and how can they be used?

Training Keys are a great feature to help manage creating user accounts and training for students. You can use training keys to quickly and easily enroll students into both instructor-led or self-paced training without the need to manually create each training assignment. A training key is a code you distribute to users, that code is then redeemed creating their training and it can also be used for them to create their user account. Training keys can be aligned with classes, course assignments, and subscriptions. 

## Types

We have several different types of training keys that can be used for different purposes, each with their own advantages:

- [Enrollment Training Keys](/tms/tms-administrators/classes/training-keys/class-training-keys.md) - Unique keys with one distributed to each student, used to create enrollments in an instructor-led class.
- ![Event Training Keys](/tms/tms-administrators/classes/training-keys/class-training-keys.md) - One key shared to all students to create enrollments in an instructor-led class.
- [Training Key Pools](#training-key-pools) - A batch of keys aligned with a course used to create course assignments for the course.
- [Subscription Keys](#subscription-keys) - A batch of keys aligned with a subscription profile used to create a subscription assignment giving access the user to create course assignment from any of the courses in the subscription profile.

## Class Enrollment Training Keys

Class enrollment training keys are one method of allowing students to register automatically for instructor-led training. With this method, one key is generated for each individual user that is to be enrolled in the class up to the number of maximum enrollments set on a class.

There are two ways to use these keys. You can provide the training keys to students prior to class to create their own enrollments. You can then monitor which students have redeemed keys and when. On the other hand, you can provide the keys to the instructor to pass out at the beginning of class to students who are present physically or virtually. In this way you can ensure that the class roster is correct and that students who did not show up to class do not appear as enrolled. 

To create class enrollment keys:

1. Navigate to the **Class** profile page.
1. Click the **Training Keys** link in the action bar at the top.
1. On the **Training Keys** page, click **Generate Training Keys**. 
1. In the dialog, input the number of keys you would like to create. 
1. Click **OK**. These keys will only be visible to Operations Managers and will need to be provided to the instructors or students manually.

Class enrollment keys that are left unused will not affect billing, and there is no issue if you create more class enrollment keys than students who attend the class. Class enrollment keys can also only be redeemed during the duration of class so they are not recommended for students who may want to take advantage of enrolling for the post class lab access after a scheduled event.

Main features:

- Class enrollment keys are used for ILT Class deliveries
- A key is generated for each enrollment or student
- Keys can be generated up to the number of max enrollments set on the class
- Keys are created from the Class Training Key link on the Class profile page
- Keys are only valid during the duration of the class
- Keys must be distributed to users manually

[Back to Types](#types)

## Event Training Keys

Event training keys are another method to allow students to register for instructor-led classes. With this method, you create one key for the entire class. This method is very easy to use since all students use the same key to enroll.

There are unique benefits to using an event training key. If you have a class enrollment reminder automated notification plan set up for your organization, you can provide students with the event training key in the notification using a replacement token. In addition, you can set the timeframe when the key is valid with the event training key method. For instance, if you are running a one-day seminar and would like to offer participants access to the labs after the event has ended, the event training key can be set to allow this.

While the event training key is a simple solution for enrolling students, there is a downside to its use. It is recommended that when you use the event training key, you set the maximum number of students on the class to match the number of expected students. Because the key can be redeemed by anyone who has it, there is the potential that the key may be given to an unexpected user or a student may accidentally double enroll. Setting the maximum students can help keep your roster manageable and accurate. Another downside is that you will not be able to see when a key was redeemed without navigating to each student’s enrollment page.

Event training keys can be generated when the class is created or while editing an already scheduled class. To add an event training key:
1. Navigate to the **Class** profile page and click **Edit**.
1. Click **Show Advanced Settings**.
1. Under the **Basic Information** section, click **Allow automatic enrollment using event training key**.
1. The Event Training Key is automatically filled in.
    1. If wanted, replace it with a unique training key of your choice, or
    1. Click **Generate New Key** if wanted.
1. Set either **Event training key can only be redeemed until the event ends** (default selection) or **Event training key can be redeemed during this event or after it ends**.

Main features:

- Event Training keys are used for ILT Class deliveries
- One key is generated per class; all students use the same key
- Key allows anyone to redeem; requires management of maximum students
- Key can be created from the Create/Edit Class page
- Key can be set to allow redemption after class
- Key can be distributed manually or through a notification plan

[Back to Types](#types)

## Training Key Pools

Training key pools are one method to automatically create self-paced course assignments for a specific course when students redeem their key. This method is much more efficient than creating individual course assignments for each student if multiple course assignments are needed. 

With training key pools, you can set the validity of the key and the duration of access to the content for students. If you would like the students to have access to the labs in the course for a limited amount of time, this can be designated on the training key pool. 

Like class enrollment training keys, each key must be assigned to an individual user. Keys can only be used once by one user. These keys must be distributed to students manually, but the list of keys can be exported as a CSV file as needed. The training key pool will keep track of which keys have been redeemed by which users and when. There’s no limit to the number of keys created. If the number of keys initially generated is insufficient, new keys can be created later and added to the same pool.

To create a training key pool:

1. On the **Admin** menu in the **Training Keys** group, click **Create Training Key Pool**.
1. Enter the **Name** of the training key pool.
1. Click **Choose** next to **Course**.
1. In the **Choose Course** dialog, search for and select the course to align the pool with and click **OK**.
1. Set the **Starts** date - when the keys can start to be redeemed.
1. Set the **Expires** date – when the keys can no longer be redeemed. This may be helpful if you know that a new version of the course will soon be available and would like to ensure that the keys for an older version are no longer used.
1. Set the **Content Availability**, which limits the duration the students have access to the course. This can be set up to 180 days.
1. Click the **Training Keys** tab. Here you can either create your own keys with a SKU or pattern or generate keys. Each key is required to be unique.
1. Enter the first key and click **Add Training Key** for each additional key  – OR – 
1. Click **Add Multiple Training Keys** and in the **Add Multiple Training Keys** dialog, paste each training key on its own line and click **OK** – OR – 
1. Click **Generate Training Keys** and in the popup dialog enter the number of keys that are needed and click **OK**.
1. Once the keys have been created, click **Save**.

New keys can be added at any time.

Main features:

- Training key pool key is used for individual self-paced course assignments
- Key pools are course specific
- There is no limit to the number of keys that can be generated
- Key pools can have set expirations and content access time to content can be configured up to 180 days
- Training key pools are created from the Create Training Key Pool link in the Training Keys group on the Admin menu
- Keys must be manually distributed; CSV can be exported

[Back to Types](#types)

## Subscription Keys

Subscription keys are another method to automatically create course assignments for courses. With this method, however, the keys are aligned to a subscription instead of a course. Subscriptions allow you to group together multiple courses in one package that can be assigned to the student. The student would then have on demand access to these courses and can choose which content they would like to consume.

Subscription keys are like the self-paced training key pools but instead of the keys being attached to a pool aligned to a course, they belong directly to the subscription. To create subscription keys:

1. On the **Admin** menu in the **Training Keys** group, click **Create Subscription Keys**.
1. On the **Create Subscription Keys** page, click **Choose** next to **Subscription Profile**.
1. In the **Choose Subscription Profile** dialog, search for and select the subscription profile to align the keys with and click **OK**.
1. Click the **Training Keys** tab.
1. Click **Generate Training Keys** and in the popup dialog, enter the number of keys that are needed and click **OK**.
1. Once the keys have been created, click **Save**.

Main features:

- Key is used for access to subscriptions (Self-paced)
- Keys are specific to subscription profiles
- No limit to the number of keys that can be generated
- Key pools are created from the Subscription Keys link in the Training Keys group on the Admin menu
- Keys must be manually distributed; CSV can be exported

[Back to Types](#types)

## Related Articles

For more information on Training Keys, please see:
- [How can I use class enrollment training keys for students to self-register for a class?](/tms/tms-administrators/classes/training-keys/use-training-keys-for-students-to-self-register-for-class.md)
- [What information should I send to students who are registering for class using training keys?](/tms/tms-administrators/classes/training-keys/information-to-send-to-students-who-are-registering-using-training-keys.md)
