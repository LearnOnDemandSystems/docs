# What's New in the TMS

<span style="font-size:90%;"> <a href="/whats-new-toc.md">What's New in the other LODS platforms?</a></span>

## Released February 25 2021
### <span style="color:#0078d7;">Accessibility Items</span>
*   In our continuing effort to improve accessibility for all our students and meet MAS standards:
    *   General search pages will retain the focus on Add Filter after a filter option is selected. 
    *   Screen Reader is now narrating the pagination and Next controls on the Course Catalog page.  
    *   Screen Reader on the Course Catalog page from the header of the Open Saved Search dialog box now narrates My Searches and Shared Searches.
    *   Screen Reader is now narrating Display Times in Output Options. 

### <span style="color:#0078d7;">Enhancements and Fixes</span>
*   Course Certificate – Completion Certificate Template: We have added a Course Certificate Date Format field with 8 different options to choose from.  A user with the appropriate permissions can specify the date format on the certificate template. 
*   Find Organizations – Lab On Demand Organization ID Output Option: We have added a Mapped To Lab Provider filter and output option on Find Organization. 
*   User Profile – Time Zone Flag: We have added the ability to set a flag on the Time Zone field on the User Profile.  
*   API Documentation – SearchClasses: A CustomFieldSearchFilter has been added to the SearchClasses API calls. 
*   Bulk Update User Profiles – Organization Management: We have fixed an issue when Bulk Editing Users auto-checking all organizations and assigning organization management to edited users.  

## Released February 11 2021
### <span style="color:#0078d7;">Accessibility Item</span>
*   In our continuing effort to improve accessibility for all our students and meet MAS standards, 
    *   The Screen Reader will narrate Include Children for the add filter option of Belongs to Organization on Find Courses.

### <span style="color:#0078d7;">Create Multiple Course Assignments</span>
An option to create multiple course assignments for multiple students has been added to the Course Assignments tile.

### <span style="color:#0078d7;">Enhancements and Fixes</span>
*   Find Courses – Subscription Filters: We have added a “Subscription Profile (Choose) and Subscription Profile Name” filter on Find Courses. 
*   Find Courses – Organization Search:  You will no longer receive a query message indicating to reduce the scope of your query when finding courses. We have increased the default maximum organizations that you are able to search from 50 to 100.

## Released January 28 2021
### <span style="color:#0078d7;">Enhanced account security scheduled for implementation at 10:00pm ET Friday, February 12th</span>
Learn on Demand Systems is implementing enhanced account security for user accounts that sign in with a username/password. You can learn more about these security measures here.
Starting 10:00pm ET on Friday, February 12, local users will be prompted to reset your TMS password upon login at https://lms.learnondemand.net. Users logging in through API or Corporate Azure AD will not be prompted to reset their password

### <span style="color:#0078d7;">This password reset will require email verification.</span> 
*   If you want to continue to use this email address, no action is required. 
*   If you want to change your email address on file, update your profile by 10:00pm ET on Tuesday, February 9.

This small task will enable you to reset your password quickly and easily upon first login after the platform update.

### <span style="color:#0078d7;">Credit Pools</span>
The Credit Pool feature and functionality has been removed from all TMS UI.

### <span style="color:#0078d7;">Enhancements and Fixes</span>
Find Entities by ID – Filter: We have added an “ID” filter to the following search/choose pages.
*   Find/Choose Classes
*   Find/Choose Class Enrollments
*	Find/Choose Courses
*	Find/Choose Course Assignments
*	Find/Choose Subscriptions
*	Find/Choose Users

## Released January 14 2021
### <span style="color:#0078d7;">Enhancements and Fixes</span>
*   Find Lab Instances – E-mail Address: We have added a student “E-mail” address filter and output option on Find Lab Instances.
*   Find Publishing Group – Aligned To An Organization:  We have added an “Aligned To An Organization” filter on Find Publishing Groups.
*   Edit Users – Flag: When flagging fields for change, then editing the users page a second time and saving the formerly flagged fields are now flagged.  
*   Edit User Profile – Roles: The Starts/Expires time fields now fully display AM or PM and no longer stacked.
*   Course, Class, and Catalog Browsers – Default Search Save: When saving a search and making it default, then navigating away the default search is now saving.

## Released December 17 2020
### <span style="color:#0078d7;">Bulk Update User Profiles</span>
A new Bulk Update User Profiles page has been added to TMS. This page allows TMS administrators to disable users, set time zones, change company and account executives, assign permanent or temporary roles, and designate user accounts for organization management en masse. It can also flag the following fields for update on next user login:

*   First Name
*   Last Name
*   Job Title
*   Primary Phone
*   Secondary Phone
*   Address
*   Address Line 2
*   City
*   State / Province
*   ZIP / Postal Code
*   Country

### <span style="color:#0078d7;">Enhancements and Fixes</span>
*   API Documentation – Archived Status: An Archived field has been added to the GetCourse and GetCourseByExternalId API calls. 
*   Find Assessments – Company Name Field: A Company Name output option has been added to the Find Assessments Response page. 
*   Bug Fix – Duplicate Training Key: Fixed an issue that could allow for two course assignments to be assigned the same Training Key.
*   Bug Fix – TMS Error Messaging: Fixed a typo in a TMS error message displayed to students who enter their classroom before the class begins.
*   Custom Site – User Creation Landing Page: Newly created users will now be presented with a custom site’s designated landing page on first login. 
*   Bug Fix – Lab Instance Search Page: Fixed an issue on the Lab Instance Search page that displayed a non-translated string in a filter dropdown.
*   Bug Fix – Deferred Launch Labs: Fixed an issue that caused deferred launched labs to not be associated with a user profile.

## Released December 3 2020
### <span style="color:#0078d7;">User Role Expiration on Bulk User Import</span>
When assigning individual roles to users during the user import process, an option has been added to add automatic expiration dates for each role on a per user basis. 


*   API Documentation – Postman Collection: An importable Postman Collection of API calls has been added to the OneLearn TMS API documentation page.
* Bug Fix – Launching Archived Courses: Fixed an issue that allowed students to launch expired courses from their subscriptions by directly accessing the course launch URL.
*   Bug Fix – Course Progress Bars: Fixed an issue that caused progress bars on the Enrollment and Course Assignment pages to not properly reflect a student’s progress.
*   Bug Fix – Launch Activities Buttons: Fixed an issue that caused Activity Launch buttons to not appear when viewing the Class Details page.

## Released November 19 2020
### <span style="color:#0078d7;">Browser and Catalog Save Filter Selections</span>
When enabled, users will now be able to save custom search filters on the Course Browser, Class Browser, and Course Catalog pages.

### <span style="color:#0078d7;">Enhancements and Fixes</span>
*   Bug Fix – Notification plan calendar invites: Notification plans now properly send attached calendar invites.
*   Bug Fix – Enrollment status: Users with the enrollment statuses of Requested, Cancelled, or Denied are no longer treated as being enrolled in the class.
*   Bug Fix – Zoom recordings: Fixed an issue that would cause single delivery classrooms delivered over multiple days to only display the first days Zoom recordings.

## Released October 29 2020
### <span style="color:#0078d7;">Create Multiple Enrollments</span>
We have added a Create Multiple Enrollments link on the Classes tile. Operations managers can now waitlist and enroll multiple students to multiple classes simultaneously from a single menu. If the class is full and users are added with an enrollment status of “Enrolled,” the enrollment status changes to “Wait-Listed” when then enrollments are saved. 

### <span style="color:#0078d7;">Enhancements and Fixes</span>
*   Sites - Class browser anonymous access: The class browser will now have an option to Allow users to access the class browse page anonymously, allowing users to view class “sessions” without signing into TMS.
*   Notification plans with calendar invites: The following changes were made to notification plans. 
    *   Calendar invites are now only sent when a user has the status of Enrolled or Audit.
    *	Cancellations are now sent when a user status is changed from Enrolled or Audit.
    *	No calendar invite or cancellation is sent when a user is placed in a non-enrolled status.
*   Subscription Profile – Create multiple subscriptions: A Create Multiple Subscriptions link on the Subscription profile page has been added. This will allow an Operations Manager to assign multiple students to a subscription. 
*   Sites – Use training key pool checkbox: The Use training key pool owner organization for new user registrations checkbox will now appear when the Enable register by training key on logon page is checked.
*   Find Enrollments/Find Course Assignments – Duration: Duration has been added as an output option to the Find Enrollments and Find Course Assignments searches. 
* Find Courses – Training days: A training days field has been added as an output option and search filter to the Find Courses search. 


## Released October 15 2020
### <span style="color:#0078d7;">TMS Platform – Adobe Flash</span>
At the end of 2020, Adobe will permanently end the life of Flash. To prepare for this, the SCORM video upload and Adobe Connect integration have been updated to remove Flash from the platform. It should be noted that Internet Explorer only has legacy Adobe Connect available; once Flash is deprecated, students using Internet Explorer will have to download the Adobe Connect Client or switch to a different browser.

### <span style="color:#0078d7;">Instructors – Class Enrollments</span>
When an Operations Manager assigns an instructor to a class, the instructor will be prohibited from enrolling or auditing the class.  The following message will appear when the instructors Enrollment Status is set to Enrolled or Audit when attempting to save.

![](images/inst-class-enroll.png)

When an instructor has an Enrollment Status of Enrolled or Audit and is then assigned to the class as an instructor, the following message will appear when attempting to save. 

![](images/inst-class-enroll.png)

If the instructor is not assigned to the class but has an Enrollment Status of Wait-Listed or Requested, the instructor’s enrollment will be bypassed when another student’s enrollment is cancelled.  The student with the earliest created date will be automatically enrolled.   If there are no Wait-Listed students, it will look for Requested enrollments to promote. 

### <span style="color:#0078d7;">Enhancements and Fixes</span>
*   Find Users - Created By Filter Added: We have added Created By and Created By (Choose) as a filter on Find Users.
*   Featureset - Description: We have updated the Description field to allow values up to 2,000 characters from the previous limit of 1,000.
*   Custom Sites - Training Key Pool: Users can now redeem keys against a central (parent) site and still be placed correctly into the appropriate child org. This removes corner cases where students could register on a parent organization site that uses an older custom login page file that bypasses the normal org id check process, leaving the user registered incorrectly.
*   Class - Lab Activities: Resolved an issue that allowed non-basic users to launch otherwise disabled class activities.


## Released October 1 2020

### <span style="color:#0078d7;">Courses – Virtual Meeting Host – Custom Virtual Classroom</span>

We have updated the Custom Virtual Classroom to specify when the “Enter Classroom” launch button is available for Pre and Post Class access. Admins now have more flexibility to specify when Instructors and Students can access/enter class using a Custom Virtual URL. 

### <span style="color:#0078d7;">Enhancements and Fixes</span>
* Publishing Groups: We have added Open and Save options to the Published Organizations tab.  
* Class Details: We have removed Manage Courseware Vouchers from the quick launch menu bar on the Class Details page.
* Notifications: Attach a Calendar Event - We have fixed the .ics file attached to a calendar event from displaying as “Not Supported Calendar Message” within Outlook.

## Released September 17 2020

### <span style="color:#0078d7;">Courses – Class Absolute Maximum Capacity</span>

We have added a Class Absolute Maximum Capacity field on the Basic Information section on a Course Profile.  This will allow an Operations Manager, with the appropriate role to set the Class Absolute Maximum Capacity when creating or editing a course. The lowest value set on either the Class Absolute Maximum Capacity or the Owned Class Maximum Capacity on an organization will supersede, unless the Override Organization Owned Max Capacity is checked. 

When checked, the Override Organization Owned Max Capacity, will override any organization setting regarding the course capacity.

### <span style="color:#0078d7;">Courses - Microsoft Learn Catalog</span>

We have added support for Microsoft Learn with an Activity option on the Activities section of a Course, which will allow an Operations Manager, with the appropriate role to add Microsoft content to courses.
 
### <span style="color:#0078d7;">Accessibility Item</span>

In our continuing effort to improve accessibility for all our students and meet MAS standards,
* Aria-Role has been changed to Role in the Close Maintenance button.

### <span style="color:#0078d7;">Enhancements and Fixes</span>
* Class Details. We have renamed the Expires field to Post Class Lab Expiration Date.  

* Course Profile – Tab Alignment. Tabs on the second row of an entity Edit page now stay properly aligned and do not move over to be underneath the selected tab.  

* Instructor Profile. We have renamed Is Contract Instructor to “Check this box to op-in as a Contract Instructor.”  We added a new link named More Info that will direct a user to more information on What is the Contract Instructor Pool?

* Site Navigation. We have added a new option for single page site navigation and branding removal. 
    *	When entering ?nav=0 to the end of any URL within TMS, the branding and header/footer are removed. For the branding and header/footer to return, the user will need to click Show site navigation. 
    *	When entering ?nav=-1, the branding and header/footer are removed.  The user can either navigate to a different page in TMS or click Show site navigation for the branding and header/footer to return. 

## Released September 3 2020

### <span style="color:#0078d7;">Organization Notification Plan Management</span>
We have made enhancements to our Notification Plan feature to allow ownership of notifications at the Org level.  An Operations Manager, with the appropriate roles, can manage their own notification plans for their organization. This will allow you to create your own automated notifications based on configured trigger actions that occur within the TMS (ex: new class created; course assignment completed etc.). 

In addition, we have added a new Notification user interface that will allow users, when logged in, to view any notification that have been sent to them directly within their user profile. To view notifications, click the Envelope icon to navigate to My Notifications.

![](images/org-note-plan-mang-1.png)

From My Notifications you can view any notification that has been sent to you and mark them as read. 

![](images/org-note-plan-mang-2.png)

### <span style="color:#0078d7;">Multiple Instances of the Same Lab</span>
An organization can now launch multiple instances of the same lab based on their organization limit. The user will be prompted with the option to launch an existing lab instance or launch a new lab instance.  From the screen, they’ll be able to save and cancel previous instances of this lab. 

![](/tms/images/mult instance of same lab.png)

### <span style="color:#0078d7;">Enhancements and Fixes</span>

* Find Material Responsibilities. When a search is saved, it did not filter for organization management. We have fixed the issue to include organization management. 
* API. The documentation for CreateCourseAssignment and UpdateCourseAssignment API methods have had these two parameters updated from Expire and TargetCompletion to Expires and TargetCompletionDate.
* Course – Activities. When a section was added to the Activities, you would need to Save twice before the section would appear on the class page.  We have fixed the issue and the section will appear when saving on the first attempt. 


----------------------------

## Released August 17 2020

### <span style="color:#0078d7;">Class Session Times</span>
We have made the following updates to class Session Times:
* The Session section now automatically displays the Add Multiple Session Times option and the # Sessions defaults based on the Training Days set on the course.
* Add Multiple Session Times has been renamed to Add Session Times
* Add Session Times has been moved to the left displaying as the first option and Add Single Session Time has moved to the right

![](/tms/images/add-multiple-session-times.png)

### <span style="color:#0078d7;">Enhancements and Fixes</span>

Additions to API Method Results:
* CourseSearchResult – We added Created and LastModified to the results that are returned from the SearchCourses API method.
* SearchLabInstances – We have added LastActivityTime as a Parameter to the SearchLabInstances API Method.

Other Enhancements:
* Enrollment Retake - When a student redeems an Event Training Key, it was not being recognized as a retake within the post-class lab availability. It now recognizes the enrollment as a retake.
* Find Classes - On the Course Profile page, clicking on Find Classes used to navigate to the Event Schedule; it now navigates to Find Classes.  Also, clicking on Class Schedule, now lands on the Event Schedule.

----------------------------

## Released July 30 2020

### <span style="color:#0078d7;">Enhancements and Fixes</span>

* Course – Activity Sections: If the first activity within a section is not “Available Instructor-Led,” all other activities within the section that are “Available Instructor-Led” will now be displayed in classes and class enrollments
* Subscriptions - We have fixed the multiple subscription duration from defaulting to 1 year to the duration set on the subscription profile
* Zoom - We have fixed the Zoom API to look for more than 30 users when validating licensed users

Class Launch Button:  The Launch button has been changed from Launch Class to Enter Classroom prior to the class starting
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
