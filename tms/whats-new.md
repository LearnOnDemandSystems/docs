# What's New in the TMS

<span style="font-size:90%;"> <a href="/whats-new-toc.md">What's New in the other LODS platforms?</a></span>

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

## Released October 24 2019

### <span style="color:#0078d7;">Organization Profile Fields Moved to Different Tabs</span>
To make the **Organization Profile** more efficient and easier for you as Operations Managers to use, we have modified the **Basic Information** and **Preferences** Tabs. The **Basic Information** tab is now available to you, but the **Name** field is view-only. The **Preferences** tab has had all the fields you need for your organization moved here. These fields have been organized into the following sections for ease: 
- Business Settings
- User Settings
 -Class Settings, including subsections
     - Set Defaults on new Classes
     - When choosing instructor(s) for class
- Course Settings
- Default Surveys for new Courses and Classes
- Miscellaneous Settings

In addition, several fields have been renamed for clarity.

Basic Information tab:
> ![](./images/whats-new/org-basic-info.png)

Preferences tab:
> ![](./images/whats-new/org-preferences.png)

### <span style="color:#0078d7;">Basic Anonymous User Registration Form</span>
To facilitate quicker anonymous user registration, we have updated the **Basic Anonymous User Registration** form. Now the user can select their time zone from a dropdown. We have removed the **LinkedIn** and **Twitter** fields. Also, two settings will match your organization settings: the **Enable Notifications** and **Participate in Achievements** checkboxes.

> ![](./images/whats-new/basic-user-reg-form2.png)

### <span style="color:#0078d7;">EULAS on Publishing Groups</span>
As an Operations Manager, you can now add **End User License Agreements (EULAs)** to your publishing groups that users taking courses in the publishing group will have to accept. This new functionality facilitates our transition to Publishing Groups in place of Content Providers.

To add a EULA to a publishing group:
1. Edit the publishing group.
1. On the **Basic Information** tab, click **Choose** next to **End User License Agreement**.
1. In the **Choose License Agreement** dialog, search for and select the EULA to apply and click **OK**.
1. Save the publishing group. 

Any student who takes a class or course assignment based on any course in the publishing group will have to agree to the EULA before they can launch the activities in the course.

### <span style="color:#0078d7;">TMS Improvements and Fixes</span>
We have made the following enhancements to our TMS:
- Announcements are no longer be marked as **Expired** before their set expiration date.
- Course custom fields are no longer bulleted.
- The **Missing Information** flags in the **User Profile** fields are now positioned on the right-hand side of the fields.

----------------------------

## Released October 10 2019

### <span style="color:#0078d7;">Publishing Groups and Course Availability</span>
Soon courses will only be available for classes and course assignments if they are associated with a publishing group. Therefore, to assist LODS staff and Operations Managers, courses that don't belong to a publishing group are identified by a message at the top of the profile that states: **This course must be added to a Publishing Group to be available for use.** In addition, we have added a **Has Publishing Group** filter and output option to **Find Courses**.

> ![](./images/whats-new/no-pg-course-message.png)

### <span style="color:#0078d7;">Global Achievements</span>
With the proper permissions, achievements can now be made globally available. Your organization has the ability to opt in or out of global achievements when it has achievements enabled. Opting in allows your student to earn these achievements. This eliminates the need to mark **Enable achievements for outside organizations** on courses.

> ![](./images/whats-new/global-achievements.png)

### <span style="color:#0078d7;">Sort Output Option Lists</span>
You can now sort the Output Options list on search pages and Choose dialogs alphabetically or by groups (traditional method). Many of these pages and dialogs have large output option lists. The new Sort Alphabetically/Sort by Group toggle at the top of the lists help you to quickly find the output options you are looking for.

> ![](./images/whats-new/alpha-sort-oo.png)

> ![](./images/whats-new/group-sort-oo.png)

**Note**: The 2CSS custom fields in the images are fictitious fields that are only shown to demonstrate that these type of fields are included in the sort.

### <span style="color:#0078d7;">New Output Options on Instructor Schedule</span>
To help those who schedule classes and plan the logistics for instructors, we have added two new output options on the **Instructor Schedule**: **City** and **Country**. When turned on, these will display the city and country the instructor is from if that data is in their profile.

> ![](./images/whats-new/oo-on-instructor-schedule.png)

**Note**: The instructor names in the image are fictitious.

### <span style="color:#0078d7;">TMS Improvements and Fixes</span>
We have made the following enhancements to our TMS:
- For accessibility purposes, screen readers now correctly read the **Login Assistance** page.
- We now prevent users from being created through the API for organizations that have been disabled.
- All users created through the API will now have **Enable Notifications** set for them automatically.
- You can no longer save a class with a **Custom Virtual Classroom** delivery without the **URL** for the classroom.
- Instructors with the **Response viewing (by instructor class)** permission will now be able to export survey results from their classes.
- New subscriptions can now be saved without an expiration date if **Expires** is unchecked.
- Course custom fields can now be deleted.
- The small Achievements icon is no longer visible above the **Badges** section of a student's **Achievements** page.

----------------------------

## Released September 19 2019

### <span style="color:#0078d7;">TMS Improvements and Fixes</span>
We have made the following enhancements to our TMS:
1. Announcements can now be set by LODS employees to be seen by all organizations. These type of announcements will not happen often and will normally be targeted to **Operation Managers** only. If you do not want your organization to receive these announcements, please contact support.
1. To make our platform more accessible for all students, two more accessibility enhancements have been added to meet MAS - 
    1.  If you use a screen reader, the HTML content of an announcement is now read;
    1. If you use the keyboard to navigate and/or a screen reader, the X to close the Cookie Banner now works properly.
1. For those of you who use our API, the **SearchClasses** API method now returns whether the training key is enabled or not for each class, and if so, the training key.
1. On the **Class** profile and **Enrollment** profile pages, the **Instructor** and **Room** lines have been removed if there is no instructor or classroom assigned to the class.
1. On an announcement, the **Show automatically on login** checkbox, if checked, will now remain checked upon **Save**.

----------------------------

## Released September 12 2019

### <span style="color:#0078d7;">Manual Badge Issuance</span>

With the proper permissions, you and your instructors can now manually issue badges to students directly from the class Roster page. This provides you the flexibility of determining if the badge requirements have been met by a user through the class and possibly other ways not monitored by the TMS. For instance, if the badge is not tied to an achievement for the class, but you feel the class’ content meets the badge’s requirements, you could manually issue it. 

A badge must be set on its profile to allow manual issuance to be issued via the roster. When you have the proper permissions and there are available badges, you will see an **Issue a Badge** icon to the right of each student from which you can choose the badge.

> ![](./images/whats-new/manual-badge-issuance.png)

### <span style="color:#0078d7;">More Accessibility Improvements to Meet MAS</span>
In our continuing efforts to improve our accessibility for all students and meet MAS, we have made the following improvements:

1. When a sight-impaired user encounters errors in saving changes to their profile,
    1. The focus will now automatically return to the first error field.
    1. The color contrast of the error messages has been enhanced.
1. When using keyboard navigation,
    1. The user will now see an outline on the Save button when it has focus.
    1. The user will now be able to navigate the User menu with the arrow keys. Some screen reader programs may interfere with this capability.
1. For Screen reader users
    1. The bookmark on a course assignment will clearly identify whether the bookmark has been selected or not.
    1. The heading levels on the Contact Information page have been  corrected to progress from heading 1 to heading 2.
    1. The Training Key field announces as required / invalid if empty on the Training Key page.

----------------------------

## Released September 5 2019

### <span style="color:#0078d7;">New Badge Output Option and Filters on Find Achievements</span>
Operations managers, you now have an easy way to view which badges are attached to which achievements and to filter for achievements with a certain badge attached. We have added the **Badge** output option to the **Find Achievements** page. This column will display the name of the badge attached to the achievement. The name is a link to the badge profile. If no badge is attached to the achievement, the column will be empty for that achievement. 

You can also filter the results for those achievements that have a certain badge attached using one of two filters. The **Badge Name** filter allows you to filter on part or all of the name of the badge. The **Choose Badge** filter allows you to see badges and select the one you want to use as the filter criteria.

> ![](./images/whats-new/badge-f-and-oo-2.png)

### <span style="color:#0078d7;">TMS Improvements and Fixes</span>
We have made the following improvements to our TMS:

- For our users who use screen readers, we changed the **Edit User's Basic Information** tab for improved accessibility. The page no longer contains a table around the fields. This change was to meet MAS standards and reduce confusion by screen readers.
- For managers, we have removed the **Manager/Supervisor** tab and the **Fax** field from the **Contact** tab on the **Organization Profile**. This streamlines the profile by removing items that are not used.

----------------------------

## Released August 29 2019

### <span style="color:#0078d7;">API Created Classes Use Organization Setting for Event Training Key</span>
If you use the TMS API to create classes, these classes will now default to allow automatic enrollment using event training key if  your organization is set to allow automatic enrollment using event training key by default in new classes.

You can now pull this information for a class through the API, as well, using the **GetClass** API call response. The response will include the following properties:

- EnableClassTrainingKey - True/False
- ClassTrainingKey - the key

> ![](./images/whats-new/getclass-response-2.png)

### <span style="color:#0078d7;">Courses Visible on Publishing Groups</span>
For those of you who manage your organization's publishing group, you can now save time by adding courses directly to the publishing group itself, rather than going to each course to add the publishing group to it. All restrictions and warnings are still in effect. 
See the updated article, [How do I add a course to my publishing group?](/tms/tms-administrators/courses-and-activities/pgs/add-courses-to-publishing-group.md).

In addition, for anyone who can view the publishing group's profile page, the courses are now listed at the bottom of the page. This saves you time searching courses by a publishing group. 

> ![](./images/whats-new/pg-course-list-4.png)

The Help articles have been updated to reflect these changes. 

### <span style="color:#0078d7;">Accessibility Improvements to Meet MAS</span>
In our continuing efforts to improve our accessibility and meet MAS, we have made the following improvements:

 - Users with screen readers will now hear
    - The page title announced as a Heading 1 on the **Simple Course Assignment** page and in the **Redeem Training Key** dialog.
    - The **Training Key** announced as required on the **Redeem Training Key** dialog.
    - The TMS Logo announced as **Link, Learn on Demand TMS**.
- The language has also been set to English on pages for screen readers.
- Users who use keyboard controls will be able to cleanly tab through the **Current Training** page due to removing tab index values greater than 0.
- For users with impaired vision, the **Integrated Help** article links now have a color contrast greater than 4.5.

### <span style="color:#0078d7;">Enable Achievements Output Option and Filter</span>
Want to be which of your organizations have achievements enabled? On the **Find Organizations** search page, you can select the new **Enable Achievements** output option. You can also filter for those organizations who do or do not have achievements enabled using the new **Enable Achievements** filter.

> ![](./images/whats-new/enable-achievements-oo-filter-find-orgs.png)

### <span style="color:#0078d7;">Expected Duration Output Option</span>
Want to be able to control the duration of a course and its activities? You can turn on the new **Expected Duration** output option in the **Choose Lab** dialog when adding a lab activity to a course to be aware of how much time it will add to your course. 

> ![](./images/whats-new/expected-duration-oo.png)

You can also use thise output option on the **Find Lab Instances** search page to compare how long students were in labs versus the expected duration.

> ![](./images/whats-new/expected-duration-find-lab-instances.png)

### <span style="color:#0078d7;">TMS Improvements and Fixes</span>
The following improvements have been been pushed to TMS Production:

- To match current practices and to save everyone time, we have changed several defaults for new organizations and new child organizations.
- We have updated the **Maintenance and System Message** to have a more modern look.
- The **Theme** field has been removed from the **Company Profile** page.
- The icon on **External Link** activities in courses is now a chain link instead of the same icon used for video activities.

----------------------------

## Released August 16 2019

### <span style="color:#0078d7;">TMS Improvements and Fixes</span>

We have pushed the following items to TMS production:

- For those with the proper permissions to manage vouchers, you can now easily access your Manage Class Vouchers page from your **Organization Profile** page. There is now a Manage Class Vouchers link in the quick access bar for all organizations.
- You can now see the both the **Expected** and **Maximum Durations** on the **Lab Profile** page in the TMS. These values are set in LOD for the lab. This will help you when planning the duration for your courses and classes.
- You no longer need to use a shortened URL for activities in courses. The URL field for activities on the **Activities** tab of the **Course** Profile now has an unlimited character length.
- On the **Find Training Key Pools** search page, you will now see accurate results when using the **Expiration** filter.

----------------------------

## Released August 8 2019

### <span style="color:#0078d7;">Badges on Student Achievement Page</span>
You and your students can now easily view the badges and the achievements they have earned in one place, the student's Achievements page. To access this age, click the **Achievements** link in the quick access bar on the student's profile page. At the top of the page, you can see the achievements with their point values and description. Below achievements, you can see the badges earned with their description.

> ![](./images/whats-new/badges-on-achievements-page.png)

In addition, to make it easier for your students to participate in achievements, current organizations have been updated to have achievements enabled. If you would like to disable achievements for your organization, you can do this by unchecking ‘Enable Achievements’ at the bottom of the Preferences tab of your organization profile. Child organizations, at the time of creation, will have achievements enabled/disabled based on their parent organization’s setting.

### <span style="color:#0078d7;">Course Duration versus Activities Duration Check</span>
The course duration must now be longer than the amount of time the course activities are expected to take, based on a 12-hour day. Therefore, when creating or editing a course, you will need to ensure the course duration is less than the sum of the course’s activity durations. If it is less, you will receive an error message upon attempting to save the course. This only applies to activities available to everyone. For instance, if your course has the duration set to 1 day but the activities available to everyone have durations that add up to 12 hours and 15 minutes, you will be unable to save the course. You will receive the following error message: **The expected duration of the activities you have added to this course exceeds the time given in the Course’s duration for a student to complete the work. Please increase the Course’s duration. You may contact our help desk for further assistance.** 

Please be advised, once you attempt to save the course and receive this message, any changes you have made to the Activities tab prior to the save attempt currently will not be saved. You will need to make those changes again after adjusting your course's duration.

### <span style="color:#0078d7;">TMS Improvement</span>

The TMS will now return a 403 “Not Found. Sorry, the page you requested could not be found.” message when someone tries to access an invalid or disabled site URL.


----------------------------
