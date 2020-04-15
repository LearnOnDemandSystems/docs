# What's New in the TMS

<span style="font-size:90%;"> <a href="/whats-new-toc.md">What's New in the other LODS platforms?</a></span>

----------------------------
## Released April 10 2020

### <span style="color:#0078d7;">Use Zoom for your Integrated Virtual Meeting Host</span>

Zoom can now be integrated in the TMS, allowing you to schedule a class and create the Zoom meeting all at once. The integration also gives each student links to class recordings directly from their enrollment. 

For information about how a Zoom integration functions, click here and for information about setting up a Zoom integration, click here.

### <span style="color:#0078d7;">Enable or Disable Class Activities</span>

You can control when and if students have access to class activities. Instructors can enable or disable any activity in a class they teach. Operations managers can disable activities in classes they manage. This allows blocking students from launching labs requiring an Azure pass. 

The course controls if activities can be disabled in a class. Courses default to not permitting activities to be disabled. When a course allows for activities in a class to be disabled, then any class using that course shows an Enabled check box on activities. All activities in a class, labs, external links (video, document, website), assessments, and SCORM modules can be disabled or re-enabled during class. Surveys cannot be disabled.

In the class, all activities are enabled by default. Instructors and operations managers have a check box on each class activity to disable or re-enable it. Uncheck the Enabled box to disable the activity. Students will see the update to the status of the activity within 30 seconds without refreshing the page. 

> ![](https://github.com/LearnOnDemandSystems/docs/blob/master/tms/images/enable-activity.png)

A disabled activity displays, slightly grayed out with a “Disabled by Instructor” message for students and the Launch button does not display.

> ![](https://github.com/LearnOnDemandSystems/docs/blob/master/tms/images/student-disabled-activity.png)

### <span style="color:#0078d7;">TMS Enhancements and Fixes</span>

1. Edit Class – We have corrected the prohibition from editing a class after it has started when the date has not been changed. Users were receiving a message, “You don't have the necessary permissions to set this class’s start date prior the current date and time." when they attempted to update fields other than the class start date and save a class.

----------------------------
## Released April 02 2020 

### <span style="color:#0078d7;">TMS Enhancements and Fixes</span>

1. API – We added some return values to several API calls. The SearchLabInstances call now returns the LastActivity value. The GetCourse and the GetCourseByExternalId calls now include values for CourseDateCreated and CourseLastModifiedDate.
1. Date and Time formats – We have updated the date formatting to configure based on the browser’s language setting rather than only show in US date format of MM/DD/YYYY. 
1. Classes – We have modified classes so that the start date and start time must be equal to or later than the user’s current date and time. 
1. Training Key Pools - Ops Managers are no longer able to create a Training Key Pool using an archived course or a course scheduled to be auto-archived before the expiration date set on the pool. Saving a new pool using an archived course shows the message, “Sorry, the course you are trying to create training keys for is archived.” Saving a pool with a start or expiration date that falls after the auto-archive date, shows either the message, “Sorry, the course you are trying to create training keys for is scheduled to be archived before the training key pool start date. Please select another course.”  Or “Sorry, the course you are trying to create training keys for is scheduled to be archived before the training key pool expiration date. Please select another course.”
1. Find Subscriptions – We have added an output option for Price on the Find Subscription search page.
1. Class Roster – We have corrected the negative figure in the Percent complete column on the Class Roster page. The Percent complete column shows the percentage of the required course activities that have been completed by each student. This was displaying a negative number before students started the labs and has been corrected to show zero. 
1. Find Lab Instances – We have updated the Lab Instance details page which was giving a Server Error. From the Find Lab Instances search, a server error displayed when the Details link was selected. LOD removed some legacy exam information which the page previously displayed. Initially, a fix was put in place that incorrectly removed exam results information, this information has been restored.

----------------------------
## Released March 19 2020 

### <span style="color:#0078d7;">TMS Enhancements and Fixes</span>

1. Find pages – We have corrected a sorting issue on the Output Options menu. When output options other than the defaults for a page are selected, now when you switch between Sort Alphabetically and Sort by Group, your selections will be retained.
1. Find Classes – We have added an Output Option to the Find Classes page showing the Max Lab RAM per Student showing the highest amount of RAM used in the class’ course per student.
1. Find Enrollments – We have added an Output Option to the Find Enrollments page showing the Job Title field’s data from the User profile.
1. Browse on Demand Catalog – We have updated the Browse on Demand pages to allow multiple Course Tags to be selected by default when users arrive on the page. Along with this, the page can now be set to default either the Match Any or Match All selections on the page. 
1. Class Training Key – We corrected an Application Error which was showing up when you saved after editing a Class Training Key. 
1. Find Lab Instances – We have repositioned the Percent Complete column when the search results are exported from the TMS to match column order on the Find Lab Instances page. 

----------------------------
## Released February 20 2020

### <span style="color:#0078d7;">View Students Progress from the Class Roster</span>

The Class Roster now shows a column for the percentage of course activities completed by each student. This gives an overview of the class’ progress through the lab work and other course activities without going to the individual student enrollments. The column is triggered to display once any student has completed an activity. To be included in the calculation the activity must be required for course completion. Labs, SCORM and LTI modules must be completed to be included while external links, documents, or videos are counted once launched. A numeric percentage shows on the roster while progress bars along with the percentage can be seen on enrollments and course assignments.

### <span style="color:#0078d7;">Cancelling Course Assignments</span>

1. Lab filters for Has Labs or Course Labs now also show results for lab types that do not use RAM like Azure, AWS, or Docker.
1. Find Lab Instances – The Output Option for Exam now shows up when using the print and export links on the Find Lab Instances page.
1. Merge Users – Two user accounts cannot be merged when both students used a training key to enroll into the same class. An assistance message has been added, “We are unable to process this account merge due to multiple enrollments in the same training created by training keys. Please open a Support ticket at https://lods.one/support for assistance.”
1. SCORM video player – SCORM videos played in the Chrome browser encountered a bug that prevented adjusting your place in a video. Players in Chrome can now be adjusted to move forward, to skip ahead, and go back within the video. Seeking in Chrome may take 3-8 seconds to load after moving to a new spot.
1. Class profile – The URL field for the Custom Virtual Classroom class delivery method has increased its capacity from 200 to 500 characters.

----------------------------
## Released February 6 2020

### <span style="color:#0078d7;">Cancelling Course Assignments</span>

We want our Operations Managers to have the ability to cancel course assignments that have been created in error. Course assignments, which are used for self-paced learning, will now have a Course Assignment Status field that is set to either Active or Cancelled. The status defaults to Active when created and is billed for the month when it was created. Operations Managers can change a Course Assignment to the Cancelled status within 24 hours of its creation date/time and only if none of the course activities have been launched. 

### <span style="color:#0078d7;">TMS Enhancements and Fixes</span>
1. Achievements – We corrected an issue where Achievements that were set up to be earned multiple times were only being awarded once.
1.  API – Our CreateClass API now passes the instructor into the TMS as the Primary Instructor, and now show in the Find Classes search results Instructor column.
1.  Custom Fields – We have fixed an issue where user role restrictions that applied to editing Custom Fields were incorrectly limiting viewing of the fields for other user roles.
1.  Accessibility updates – Several keyboard focus and navigation updates have been made. Keyboard focus indicator is now visible for:
      - Search buttons on Find pages.
      - The Sort Alphabetically button and Display Times Output Options on the Course Catalog page.
      - The Sign In button in the How Would you Like to Sign In dialog on our Login page.
      - The Send Instructions button on our Forgot Password Login Assistance page.
      - Users can now use the keyboard to navigate to the Edit, Share, and Delete links in the Open and Saved search dialogs on our Find pages.

----------------------------

## Released January 16 2020

### <span style="color:#0078d7;">Reporting Percentage Completed on Labs</span>

Operations Managers and Instructors may display the percentage of work completed in a lab along with the Completion Status on the Find Lab Instances page. Completion Statuses of labs can be, Complete, Cancelled, In Progress, or Error. The percentage of lab completed shows what percent of the lab’s tasks a student completed prior to saving or cancelling, or before the lab errored out. We are awaiting an update from Lab on Demand (LOD) to report the full range of percentages, at this time they are only reporting lab percentages of 0 or 100%.

### <span style="color:#0078d7;">Auto-Archive Date Blocks Class Creation</span>

Class Schedulers and Operations Managers will be prevented from creating classes after a course’s auto-archive date. This is being enforced to support course life cycle planning, allowing course managers to retire courses and labs without conflicting with organizations’ scheduling and students’ lab access. 

When scheduling a class directly in the TMS or through the API, if an auto-archive date is set and any class sessions fall after that date, then the class will not be created. The class import tool checks against the class start date during the upload and will not create classes that start after the auto-archive date. Classes scheduled directly in the TMS or through the API will prevent saving and show an error message, “The course associated with this class is being retired on [Date]. Content will no longer be maintained as of this date. Session dates cannot be scheduled beyond this date. Please consider changing to a newer version of the course; you must change the course or choose different date(s) to save this class.”

### <span style="color:#0078d7;">Auto-Archive Date May Block Saving an Edited Class</span>

For a class that was scheduled prior to setting the associated course’s auto-archive date, Class Schedulers and Operations Managers may edit the class, but will be prevented from saving it if a class session is more than 60 days after the course’s auto-archive date. We want to honor our customers’ training schedules and give you sufficient time to plan and prepare for a change of course content, while still supporting course life cycle planning allowing course managers to retire courses and labs without conflicting with organizations’ scheduling and students’ lab access. 

Updating classes past the archive date through the API will fail and classes edited in the TMS will not be saved. Both will show this error message, “The course associated with this class is scheduled to be archived on [Date]. When editing an existing class, its sessions must fall within 60 days or less after the course auto-archive date. Please consider changing to a newer version of the course; you must change the course or choose different date(s) to save this class.” 

### <span style="color:#0078d7;">TMS Enhancements and Fixes</span>
	
1. Sites – Site profile has had a check box added to turn on or off a Register with Training Key box on customers’ login pages. This functionality speeds up the process for our TMS Coordinator to create standard options for new customers. Sites that already have custom login pages will not be affected by this checkbox field.
1.	Training Keys – Exporting Training Keys was sometimes changing some of the training key values in Excel. The export function for Training Key Pools, Class Enrollment Training Keys, Subscription Training Keys, Class Vouchers, and Event training keys has been corrected to transmit the true key values. 
1.	Class Enrollments – Enrollments created using training keys or the API are now passed to the Customer Portal allowing them to be invoiced to customers.
1.	Courses – When a course creator creates or edits a course adding activities and they exceed the 12-hour expected duration activity limit per day, all activities are retained, but the course is not saved. This allows the course creator to decide how to manage the course; they may increase the course duration and or change the activities.
1.	Course Lab Activities – Some course activities can be set to allow or prevent retakes. The wording displayed for Lab Activities which are set to prevent retakes has been updated to read, “Once you have completed this activity you will not be able to retake it. Do you want to continue?” The message previously read, “Once you have launched this activity you will not be able to retake it.” However, relaunching of the activity is only prevented if the activity has been completed.

----------------------------

## Released December 19 2019

### <span style="color:#0078d7;">Phone Number Added for Instructor Help Desk Support</span>
We want to offer immediate support to instructors teaching a live class. We have set up a direct phone number to our Help Desk for instructor who encounter issues and have questions. Our new Instructor direct support phone number displays on the Class details page; this only shows to the instructor(s) scheduled to teach the class, they can see it before, during, and after class is in session. 

### <span style="color:#0078d7;">Auto Archive Warning Message when Creating or Editing Classes</span>
Class schedulers will receive a warning message when they schedule a class using a course scheduled to be retired. We would like to increase awareness of pending archive dates since labs will not be maintained once the course is retired and after a certain point the labs will become unavailable, which may affect your students’ post class lab access experience.

If the auto archive date is set up and any class session is scheduled to take place on or within 30 days before the auto archive date, the following warning displays when the class is saved, “This course is being retired on [auto archive date and time displayed]. Content will no longer be maintained as of this date. Please consider a newer version.” After clicking OK the class is saved.

The warning displays when creating, editing or cloning a class within 30 days before the auto archive date on the course. Please note the following variances if you are using any of these features:
	
1. Class Import tool: If you are using the class import tool, the warning shows if the start date on a class is within 30 days before the auto-archive date on the course. The import only looks at the start date in the CSV file, it does not calculate dates based on sessions you are scheduling to show a warning.
1. API: No warning will appear for classes created or edited through the API.
1. Class voucher: Warnings or restrictions on scheduling do not apply to classes scheduled using vouchers since they are paid for in advance of redeeming them. 

As a reminder, once a course is archived, the course can no longer be used to create a class or set up self-paced training, however, the labs and course activities still work for students in existing training.

### <span style="color:#0078d7;">Auto Archive Awareness Message on Courses</span>
Class schedulers and Operations managers will see a message highlighted on course profiles when an auto archive date is set. We added this message to increase awareness of approaching archive dates on courses for anyone who can schedule classes; we hope this will assist with your planning and remind you to be looking for a newer version of the course for future classes. 

The awareness message reads, “This course is scheduled to be archived on [auto archive date displayed]. Session dates cannot be scheduled beyond this date. Course content will not be maintained past this date.”

Please note: Once a course is archived, we do not maintain labs or any other course content. Labs may be deactivated on archived courses; it is advisable to find a newer version once a course has been archived.

----------------------------

## Released November 21 2019

### <span style="color:#0078d7;">Export Training Keys from Class Profile</span>
As an Operations Manager, you can compile a complete and accurate list of all available and assigned training keys for your classes by exporting them from the Class profile page. Previously, you could only do this if the class was created using class vouchers. However, you can now do this for any class with training keys.

To export your class’ training keys: 
1.	Navigate to the desired **Class** profile page. 
1.	On the **Class** page, click **Training Keys** on the quick launch bar at the top of the page. 
1.	On the **Training Keys** page, click **Export**.

**Note**: All training keys from the class will be exported to a CSV file.

### <span style="color:#0078d7;">Archive SCORM Modules</span>
As an Operations Manager you can archive SCORM modules, allowing you to control which modules can be selected as course activities. You can also use the new “Is or Is Not Archived” search Filter and Output Option on the Find SCORM Modules pages to locate your desired modules easier.

To archive SCORM modules: 
1.	Locate the page for the **SCORM Module** that you would like to archive. 
1.	On the **SCORM Module** page click **Edit**. 
1.	On the **Edit** page, click **Archived** at the bottom of the **Basic Information** tab.

When a SCORM module is archived, it will still play in courses where it is present. However, it is not available to be added to new courses as an activity.

Once archived, a SCORM module can be made available to new courses again by marking the module unarchived.

### <span style="color:#0078d7;">TMS Enhancements and Fixes</span>
- When your organization chooses to not enable achievements, your users will no longer see the **Participate in Achievements** checkbox on their own **User** profile. This prevents confusion on their part regarding why they aren’t earning achievements. If your organization chooses to enable achievements, all of your users will now automatically be set to Participate in Achievements. This saves you time and ensures your users don’t miss out on earning their achievements.
- You will now easily be able to see courses that are archived in publishing groups and subscriptions. They will now be outlined in red and show a red **Archived** icon next to them.
- The **UpdateCourseAssignment** documentation page now includes the **CourseAssignmentId** parameter in the **Parameter** table and shows it as required.
- Course custom fields that are set to display on the **Basic Information** or **Advanced** tabs and cascade to classes will no longer create new “basic” or “Advanced” tabs on the course upon creation of a class using the course. In addition, these fields that cascade down to a class will no longer have the value set in a created class flow up and display in the associated course field on the initial save.

### <span style="color:#0078d7;">TMS Enhancements and Fixes</span>
1. Find Lab Instances – We have corrected an issue on our Find Lab Instances search page, it produced errors when searching for a lab profile with special characters in the name.

----------------------------

## Released November 07 2019

### <span style="color:#0078d7;">Manual Issuance of Badges by Instructors/Operations Managers</span>
As an instructor or administrator, with the proper permissions, you can now manually issue badges to students. This allows you to add a badge to a student rather than only having badges issued automatically by meeting the requirements to earn an achievement. This can be done from the Class Roster or from individual course assignments, with a different process for each.

#### Class Enrollments
As an instructor or administrator, you can issue one or more badges to students in your class using the following steps:

1. On the **Class** page, click **Roster** and then click **Issue Badges** in the quick launch bar.
1. On the **Issue Badges** page under **Badges**, click **Add Badges**. 
1. In the **Choose Badges** dialog, select the badges to be issued and click **(Select a Badge)**. Only badges belonging to the same organization as the class will be listed.
1.  Under **Students**, click **Add Students**. 
1. In the **Choose Student(s)** dialog, select the student(s) to whom to issue the badge and click **OK**. If the instructor is an organization instructor (not a contract instructor), only enrolled students from the instructor’s organization in the class are listed. If the instructor is a contract instructor, all students enrolled in the class are listed.
1. Review the listed badges and the students and click **Issue Badges**. A list of the students and the badges issued to them will appear at the bottom of the page under the heading “The following badges were successfully issued:”

> Note: Students are only allowed to earn a badge once. Therefore, if there are any errors in issuing the badge, the user will receive a warning message stating: Warning: Not all badges were successfully issued. See the Failed Badge list for details. These failures will be listed at the bottom of the page under the heading “The following badge issuances failed:”. A description of the failure will be included. 

> ![](./images/whats-new/issue-badge-roster-page.png)

#### Course Assignments
As an administrator, you can also issue badges to students from their course assignments using the following steps:

1. Navigate to the course assignment and click **Issue a Badge** in the quick access bar.
1. In the **Choose Badge** dialog, select the badge to issue and click **Select a Badge**. Note: Only one badge can be selected/issued at a time for course assignments.

> ![](./images/whats-new/issue-badge-assignment-dialog.png)

There is no indication on a course assignment that the badge has been issued. To verify this, you can either look at the Find Issued Badges page or at the Achievements/Badges page of the student.

### <span style="color:#0078d7;">Class Vouchers Return</span>
If you use class vouchers to create classes, and have assigned any that won’t be used for enrollments in the class, you can request to have them released and made available to you to assign to a different class. To request that vouchers be released from a class, please create a Support ticket on our customer support page, https://lods.one/support.

### <span style="color:#0078d7;">Customized Required User Registration Fields</span>
If you allow users to create their accounts from your login page, you can now choose which fields from the User Registration form are required to be completed. If you use the Basic User Registration form, any fields you have requested to be required will be added to the form as required. To request this customization to your User Registration form, please create a Support ticket on our customer support page, [https://lods.one/support](https://lods.one/support).

Here is the list of fields you can choose to be required:
> ![](./images/whats-new/registration-fields.png)

### <span style="color:#0078d7;">TMS Improvements and Fixes</span>
- The logos for the **TMS** and **IT Pro Challenges** will now show as favicons on the browser tabs.
- To make it faster to select instructors to assign to a class, Class Schedulers can now filter the **Choose Instructor** dialog by those preferred by their organization. This requires that Operations Managers designate those instructors on the **Preferred Instructors** tab of the **Organization** profile.
- To better assist their students, instructors will now be able to view the **Lab Instance** profile pages for labs launched by students in their classes.
- Users will now be able to see when lab access expires post-class on the **Class** and **Enrollment** profile pages. This data is also available on the **Find Courses**, **Find Classes**, and **Find Enrollments** pages using the output option, **Post-class lab availability**.
- The **Abbreviated Name** field has been removed from the **Organization** profile and thus from the API calls of **GetOrganization**, **GetOrganizationbyExternalId**, **CreateOrganization**, and **UpdateOrganization**.
- The **Maintenance Banner** will now display properly on sites where the login page has been customized.
- When class vouchers are used to create a class, all enrollments for the class, regardless of how they are created, will be associated with a class voucher.
- When a class is updated through the API, users will now see, on the **Class History** page, the correct **Last Modified** and **Last Modified By** data for the update in those output columns.
- Filters that had their closing “X” out of alignment with other filters have been fixed. All filters will have the Xs aligned.

----------------------------
