# What's New in the TMS

<span style="font-size:90%;"> <a href="/whats-new-toc.md">What's New in the other LODS platforms?</a></span>

----------------------------
## Released July 9 2020

### <span style="color:#0078d7;">Enhancements and Fixes</span>

* End User License Agreement - A user impersonating a student will no longer receive “Access Denied”.  The message displayed will now be “Only [Student Name] can accept this agreement.  Impersonated users cannot accept License Agreements”.
* Lab Profile - The lab profile Expected Duration in the TMS will now match the Expected Duration in LOD. 
* Find Lab Instances – The Start filter default has been changed from “Anytime” to “Within Last [Number] Days”.

### <span style="color:#0078d7;">Accessibility Items</span>

In our continuing effort to improve accessibility for all our students and meet MAS standards, the Screen Reader now narrates:
- The Find Course header.
- The Pagination and Next controls on the Course Catalog page.

----------------------------
## Released June 29 2020


### <span style="color:#0078d7;">Segmented Student Class Activity Assignments</span>

For Classes where different activities should be completed by different Students, Instructors and others can now assign individual Class activities to a subset of Students.  This allows some Students to see and access some activities while other Students will see and access others. This feature is best utilized if you are running Classes in a Shared Lab Environment. 

This feature is enabled on the individual activities in the Course using the “Assign to Students Manually” checkbox.  When this is checked for an activity, if a User has one of the new permissions, they can then assign that activity to one or more Students in the class. The activities are assigned and unassigned manually. Only those Students assigned an activity will see it in their Enrollments.  If no Students are assigned to the activity, no student will see it.   

If an Instructor assigns an activity to a Student while the Student is looking at the Enrollment, the activity will automatically appear after a few seconds.  If a Student’s assignment is removed it can take up to 25 seconds to be removed from the Student’s Enrollment.  If they click the Launch button prior to it disappearing, they will receive a message stating “Sorry, you don’t currently have access to this activity.  Please see instructor”.  

This feature is separate from the Disable activities feature released in April of this year, which is used to disable an activity for all students.  Note: If a course is set to Allow activities to be auto-enabled after a class ends, any activities that were disabled when class ends will still show as disabled for anyone looking at the Class but will be enabled for the Students. 

### <span style="color:#0078d7;">Multi-Language Support for TMS Pages</span>

We now support the localized language on a user’s browser setting for many of the core TMS platform pages. Available Language Translations for localization are: 

* English 
* Chinese (Simplified) 
* German (Germany)
* Japanese 
* Korean 
* Portuguese (Portugal)
* Spanish (Spain)

### <span style="color:#0078d7;">Lab Instance Transfers via TMS</span>

Earlier this month, we released functionality that allowed a user to transfer their lab instance to another user via email within the Lab on Demand platform. We’ve now included this functionality within the TMS.  

A user can now transfer their lab instance to another user from within the same organization. The transfer occurs via the recipient’s email address. 

> ![](https://github.com/LearnOnDemandSystems/docs/blob/master/tms/images/transfer-lab-email.png)

Items to be aware of: 
The system looks in the Primary Email address field in the transferee’s LOD profile. The user must belong to the same organization as the owning user in LOD.  If the email address is not found, the following message will appear in the Transfer window: “Sorry, this user was not found within your organization”. 

> ![](https://github.com/LearnOnDemandSystems/docs/blob/master/tms/images/transfer-lab.png)

This will occur if either of the following is true:  
* The transferee has never launched a lab 
* The transferee last launched a lab while belonging to an organization outside of the LOD organization family tree the user transferring the instance belongs to.  

If the transferee has the maximum number of saved labs when the transfer is initiated, the transfer will fail, and the following message will appear in the Transfer dialog: “Transferee has the maximum number of saved lab instances”. 

### <span style="color:#0078d7;">Accessibility Items</span>
In our continuing effort to improve accessibility for all our users we have made the following updates to the TMS: 
* The Screen Reader will narrate Close “X” and “Display times in” on Output Options.  
* The “Featured” and “New” icons on courses meet the minimum luminosity ration of 4.5:1. 

### <span style="color:#0078d7;">Enhancements and Fixes</span>
* Has Shared Lab Filter and Output Option.  We have added “Has Shared Labs” as a filter and output option on Find Courses, Classes, Enrollments and Labs. 
* Training Keys and archived courses.  Training Keys will be expired for courses that are archived. Users will receive an error message when using these keys.  Training key pools will display the following message “The course aligned to this pool has been archived and the keys in this pool have been expired.” 
* Zoom Update: Zoom recordings will now show properly. We have fixed an issue with the Zoom api query and its date parameters.  
* TMS Administrators: You will no longer receive an application error when modifying your own roles when you have permissions to do so.  
* Courses: Courses will now always archive on their auto archive date and the message displayed on the course will now be “This course is archived.”  
* Has Shared Lab Filter and Output Option.  We have added “Has Shared Labs” as a filter and output option on Find Courses, Classes, Enrollments and Labs.   
* Training Keys and archived courses.  Training Keys will be expired for courses that are archived. Users will receive an error message when using these keys.  Training key pools will display the following message “The course aligned to this pool has been archived and the keys in this pool have been expired.” 

----------------------------
## Released May 21 2020


### <span style="color:#0078d7;">Wait-Listed Enrollments – Automatic enrollment after cancellation</span>
We can now automatically enroll a student from the Wait-List when an enrolled student cancels.  This requires an organization to enable this feature under Preferences on the Organization profile.  Auto-enrollment is only done when a student cancels their own enrollment and class is at its maximum capacity; not when an Operation Manager cancels the student. Automatic enrollment is based on earliest created date. If there are no Wait-Listed students, it will look for Requested enrollments to promote. 

![](/tms/images/waitlist-enrollment.png)

### <span style="color:#0078d7;">TMS Enhancements and Fixes</span>

* Zoom. We have fixed the recordings display issues from zoom accounts configured to save recording files outside MP4.
* Find Class Sessions – Has Labs Filter.  We have fixed the Has Lab filter to be based on Activity type in order for cloud-based lab class sessions to appear in the Does Have Lab results. 

----------------------------
## Released May 7 2020


### <span style="color:#0078d7;">Class Browser - Multiple Tag IDs in URL</span>

You can craft your Class Browser URL with multiple tags in it so the page loads with them automatically checked and the page filtered by them when it loads. 

For multiple tags without group reference, the URL structure is https://[site url]/class/browse?tagId,tagId&matchtype=1. The matchtype is optional. If you leave it off, Match All will be checked. If you include it, use 0 for Match All and 1 for Match Any.
 
For a tag in a specific group and a tag in any group, the URL structure is https://[site url]/class/browse?groupIdtag,tagId. Use the group Id for the specific group in which you want the tag to be checked.

### <span style="color:#0078d7;">Find Lab Instances - Company Filter/Output Option</span>

Need to see your students’ lab instances by the company they belong to? You can do this using the new the new Company output option on Find Lab Instances. This column will display the company set in the user’s profile. You can also narrow the results to see only lab instances from a specific company’s users with the new Company filters available, Choose Company or Company Name. 

> ![](https://github.com/LearnOnDemandSystems/docs/blob/master/tms/images/FindLabInstances-CompanyFOO.png)
 
### <span style="color:#0078d7;">Instructors in All Sessions of Class Automatically</span>

Now when you set up a class with multiple instructors, all instructors will be automatically added to all sessions of the class. In addition, if you add an instructor later, they are also automatically added to all sessions. If you add another session, all instructors are added to it. When you remove an instructor from one or more sessions, they will not be re-added unless the you click Add all instructors to all sessions in the Instructors section of the class. 

### <span style="color:#0078d7;">Position of HTML Description on Courses</span> 

Want the HTML Description on your courses to be easier to see? This section is now at the top of the Course Profile page, directly below the Description, if present. The HTML Description section will be expanded by default. 

> ![](https://github.com/LearnOnDemandSystems/docs/blob/master/tms/images/CourseHTMLDescription.png)

### <span style="color:#0078d7;">Disabled Class Activities Re-enabled at Class End</span> 

Do you or your instructor’s forget to re-enable class activities at the end of class? No worries. Now, if the course is set to allow activities to be auto enabled after class ends, any activities disabled for students in a class will automatically be enabled for them when the class ends.

> ![](https://github.com/LearnOnDemandSystems/docs/blob/master/tms/images/ClassActivitiesReenabling.png)

### <span style="color:#0078d7;">Accessibility Items</span> 

Two improvements have been made to assist users with accessibility needs.
1. Users can now use the keyboard to access the pagination elements of search pages to pull up different pages of results.
1. The contrast ratio for the Incorrect Username and Password message on the login page has been increased to help with visual clarity.

### <span style="color:#0078d7;">TMS Enhancements and Fixes</span>

1. Class Browser/Course Catalog/On-Demand Browser. We have improved the filter functionality on these pages to not allow a change in filters until the previous filter results are loaded.

1. Tab alignment on Create/Edit pages. Tabs on the second row of an entity's Create/Edit page now stay properly aligned and do not move over to be underneath the selected tab.

1. Featured Date Chooser in User's Date Format. The Date Chooser will now input the date, using the browser setting of the user, into the Featured field in the Create/Edit Course page.

1. Percent Complete Column for New Students. The Percent Complete column will now appear correctly for new students added to a class roster.

----------------------------
## Released April 23 2020

### <span style="color:#0078d7;">TMS Enhancements and Fixes</span>

1. API – Calls for GetCourse and GetCourseByExternalID have had the new Date/Time values added to display in seconds rather than milliseconds. 
1. Class – Class activities now have a disable all check box to disable or re-enable all activities at once. Once any activities are disabled by the instructor, they cannot be launched by students but now remain available for class instructor(s) to use. This allows instructors to demo labs or prepare future activities while preventing students from skipping ahead in the curriculum.
1. Class – A Custom Virtual Meeting Host issue has been corrected. When setting the delivery to use a Custom Virtual Meeting and inputting a URL for the meeting, if the delivery was reset to Physical, the Enter Classroom button still displayed. Changing a class delivery back to Physical no longer displays the Enter Classroom button to users.
1. Class – Zoom’s integrated Virtual Meeting Host will now reflect the correct time in UTC for when a class is scheduled. It was picking up the user’s time zone as the UTC time for the event. Zoom does straight UTC and does not take into consideration daylight savings time. Therefore, if a class is scheduled right now for 8:00 Central Daylight Time, it will appear in Zoom as 13:00 UTC instead of 14:00 UTC. 
1. Class import – The “Inherit certificates from course” setting was not being enabled by default for classes when they were created through the class import. This prevented completion certificates associated with the course to be set up automatically on the class. The setting is now enabled by default when classes are imported.
1. Enrollments – On the Find Enrollments page, when using the Class Status filter and filtering for Any, it was not showing any search results. It now shows results for all statuses. 
1. Course Assignments – The Find Course Assignments page has had several updates. The Payment Type filter now has options for Is, Is Not, and Is or Is Not. Columns for Payment Type and Completion Status are now sortable. 
o	Sorting on the Payment Type column groups by types of payments but not within types. For example, a listing in the column may be Payment Type “Subscription” with the “Subscription Name”; it will sort Subscriptions together but does not sort by the name of the subscription. 
1. Labs – On the Lab Details page we have relabeled the button that cancels a lab instance to read Cancel instead of Delete. The delete label was confusing to some users.
1. Badges – On the Class Roster page, when a badge is added for an individual by clicking the trophy icon on the roster, a Badge chooser dialog opens to select the badge(s) to add. When the badge is added a message will briefly display on the roster line for the student that the badge was successfully added. The success message which showed in the chooser dialog has been removed. 
1. Chrome browser back button – A search issue in Chrome has been corrected, you can now use the Back button to return to a search page and have it return results. The issue was that on any “Find” page, if you ran a search, navigated away, then used the Back button to return to the search and run it again, you would receive an error message.  

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
