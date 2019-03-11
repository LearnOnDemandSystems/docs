<style>
    h1:first-of-type {margin-top:0;}
</style>
 
<div style="float:right; padding-top:5px; font-size:120%;">
   <a href="whats-new.md">What's New</a>
</div>

# OneLearn TMS Help

Welcome to the OneLearn Training Management System platform (TMS) Help!

> [!ALERT] This page provides links to all Help articles. Please be aware that not all functionality covered may be available to you.

## Student

Are you a student needing assistance with your training? Check out the [Frequently Asked Questions (FAQs) for Students](#student-faqs) articles.

## Instructor

Are you an instructor who needs information to teach your classes? The [Instructor Articles](#instructor-articles) are for you.

## Courseware Marketplace Customer

If you purchased Learn on Demand Systems labs through the Arvato Courseware Marketplace, read the [Getting Started](./arvato-marketplace/fulfilling-marketplace-order/getting-started.md) article first, then review the following topics/processes to access and manage your orders:
- [Fulfilling Your Lab Order](#fulfilling-your-lab-order)
- [Managing Your Users](#managing-your-users)
- [FAQs for Courseware Marketplace Orders](#faqs-for-courseware-marketplace-orders)

## API Client

If you access the TMS through the API:

> [!ALERT] Our API is written to allow new response fields we add to be ignored by clients. However, to ensure your API calls consistently work, when building your API client, make sure that your implementation is written in such a way as to ignore any fields you are not using in your code. This will help ensure your implementation remains stable while the API can remain dynamic. To assist with this, we have provided our [client library](https://www.nuget.org/packages/LearnOnDemandSystems.OneLearnTMS.OneLearnTMSAPIClient/), which adheres to these best practices.

## Administrator

If you an Administrator, explore the following topics/processes to help you start using the TMS quickly or learn more about TMS functionality:
- [TMS Fundamentals](#fundamentals)
- Classes
     - [Schedule](#schedule)
     - [Enrollments and Rosters](#enrollments-and-rosters)
     - [Instructors](#instructors)
     - [Training Keys](#training-keys) 
     - [Classrooms and Equipment](#classrooms-and-equipment)
- Users
     - [Student Management](#student-management)
     - [Instructor Management](#instructor-management)
- [Self-Paced Learning and Subscriptions](#self-paced-learning-and-subscriptions)
- [Courses and Their Activities](#courses-and-their-activities)
- [Discussions](#discussions)
- [Miscellaneous](#miscellaneous)


**---------------------------------------------------------------------------**
## Student FAQs

### Basics

- [How do I change my password?](./end-user-student-faqs/basics/change-password.md)
- [How do I access and change my user profile?](./end-user-student-faqs/basics/change-user-profile.md)
- [Important Note for Windows Server Operating Systems Users](./end-user-student-faqs/basics/windows-server-os.md)

### Labs

- [How do I access my labs using a lab code without a user account?](./end-user-student-faqs/lab-access/access-labs-for-class-using-lab-code-without-user-account.md)
- [How do I access my labs for a class using a lab code when I have a user account?](./end-user-student-faqs/lab-access/access-labs-for-class-using-lab-code-with-user-account.md)
- [How do I access my labs for a class without a lab code?](./end-user-student-faqs/lab-access/access-labs-for-class-without-code.md)
- [Why can't I find my completed labs?](./end-user-student-faqs/lab-access/access-completed-labs.md)
- [Why does my lab expire within a week when I am supposed to have access to it for a longer time?](./end-user-student-faqs/lab-access/difference-between-lab-expiration-and-lab-access.md)

### Classes and Self-Paced Learning

- [How do I get into my virtual classroom?](./end-user-student-faqs/class-self-paced/get-into-virtual-classroom.md)
- [How do I participate in a discussion?](./end-user-student-faqs/class-self-paced/discussions.md)
- [How do I print my completion certificate?](./end-user-student-faqs/class-self-paced/print-completion-certificate.md)
- [What is the Access Courseware button and how do I use it?](./end-user-student-faqs/class-self-paced/access-my-courseware.md)

[< Return to top >](#student)

## Instructor Articles

### General

- [What does it mean to be a contract instructor?](./instructors/general/what-is-a-contract-instructor.md)
- [What is the Admin menu and how does it work?](./tms-adminisrators/tms-fundamentals/admin-menu.md)
- [How do I, as an Instructor, reset a student's password?](./instructors/general/reset-student-password.md)

### Preparation and Classes

- [How do I prepare for a course that I am not scheduled to teach?](./instructors/instructor-prep-and-classes/prepare-for-course-not-scheduled-to-teach.md)
- [How do I find classes I am scheduled to teach?](./instructors/instructor-prep-and-classes/find-classes-scheduled-to-teach.md)
- [How do I get to a class I am scheduled to teach?](./instructors/instructor-prep-and-classes/get-to-class-scheduled-to-teach.md)
- [How do my students and I participate in discussions?](./tms-administrators/discussions/participation.md)
- [How can I be notified of activity on a discussion?](./tms-administrators/discussions/admin-follow.md)

### Student Labs

- [How do I assist my students with their labs?](./instructors/student-labs/assist-students.md)
- [How do I share files with students?](./instructors/student-labs/share-files-with-students.md)

### Profile

- [How can I show times when I am unavailable?](./instructors/instructor-profile/show-unavailable-times.md)
- [How can I show what I am qualified to teach?](./instructors/instructor-profile/show-courses-qualified-to-teach.md)

[< Return to top >](#student)

## Arvato Courseware Marketplace Administrator Articles

### Fulfilling Your Lab Order

- [How do I set up a class?](./arvato-marketplace/fulfilling-marketplace-order/set-up-class.md)
- [How do I enroll students in a class?](./arvato-marketplace/fulfilling-marketplace-order/enroll-students-in-class.md)
- [How do I add an instructor to a class?](./arvato-marketplace/fulfilling-marketplace-order/add-instructor-to-class.md)
- [How do I add more students to a class I have already created?](./arvato-marketplace/fulfilling-marketplace-order/add-more-students-to-class.md)

### Managing Your Users

- [How do I create an account for a student?](./arvato-marketplace/user-accounts/create-student-account.md)
- [Why do I receive a message that the email is taken when I try to create a user account?](./arvato-marketplace/user-accounts/email-taken-message.md)
- [How do I create an Instructor account?](./arvato-marketplace/user-accounts/create-instructor-account.md)
- [How do I set up another user to schedule classes?](./arvato-marketplace/user-accounts/create-operations-manager.md)
- [How do I, as an Administrative user, reset a user's password?](./arvato-marketplace/user-accounts/reset-user-password.md)

### FAQs for Courseware Marketplace Orders

- [Do I need to purchase labs for the instructor?](./arvato-marketplace/faq-for-arvato-marketplace/purchase-labs-for-instructor.md)
- [Why are my class vouchers not showing in Manage Class Vouchers?](./arvato-marketplace/faq-for-arvato-marketplace/vouchers-not-showing-in-manage-class-vouchers.md)
- [How and when can students access labs?](./arvato-marketplace/faq-for-arvato-marketplace/students-access-labs.md)
- [What can I do if a student needs to reschedule or cancel a class?](./arvato-marketplace/faq-for-arvato-marketplace/reschedule-cancel-student.md)
- [I don't have a user account or permissions to set up a class, what should I do?](./arvato-marketplace/faq-for-arvato-marketplace/need-account-to-schedule-class.md)
- [What is the difference between launching a lab and saving and resuming a lab?](./arvato-marketplace/faq-for-arvato-marketplace/launching-lab-vs-saving-resuming-lab.md)
- [How can my students access Skillpipe courseware from their class enrollment?](./arvato-marketplace/faq-for-arvato-marketplace/access-skillpipe-courseware.md)

[< Return to top >](#student)

## Administrator Articles

### Fundamentals

- [What is the Admin menu and how does it work?](./tms-administrators/tms-fundamentals/admin-menu.md)
- [How can I reuse search settings or create default settings on search pages?](./tms-administrators/tms-fundamentals/reuse-search-settings-or-create-default-settings-on-search-pages.md)
- [How do I set the defaults for creating users and classes?](./tms-administrators/tms-fundamentals/set-defaults-for-creating-users-and-classes.md)
- [Should I use a Class or a Custom Event or a Course Assignment to schedule training?](./tms-administrators/tms-fundamentals/class-or-custom-event-or-course-assignment-to-schedule-training.md)
- [Why do links disappear?](./tms-administrators/tms-fundamentals/disappearing-links.md)
- [Can I rearrange items on the Site Administration page?](./tms-administrators/tms-fundamentals/rearrange-items-on-site-administration.md)

[< Return to Administrator menu >](#administrator)


### Classes

#### *Schedule*

- [How do I create a class?]    (./tms-administrators/classes/schedule/create-class.md)
- [How can I cancel a class?]   (./tms-administrators/classes/schedule/cancel-class.md)
- [How can I find a class?](./tms-administrators/classes/schedule/find-class.md)
- [How can I find a class that is in session?]  (./tms-administrators/classes/schedule/find-class-in-session.md)
- [How can I see classes in a calendar view?]   (./tms-administrators/classes/schedule/see-classes-in-calendar-view.md)
- [How can an administrator print completion certificates for a class?] (./tms-administrators/classes/schedule/print-completion-certificates-for-class-by-admin.md)

#### *Enrollments and Rosters*

- [How do I change a class enrollment status and which one should I use?](./tms-administrators/classes/enrollments-roster/change-class-enrollment-status-and-which-to-use.md)
- [What information should I send to students when I create their enrollments](./tms-administrators/classes/enrollments-roster/information-to-send-to-students-when-enrollments-created.md)
- [How do I enroll multiple students?](./tms-administrators/classes/enrollments-roster/enroll-multiple-students.md)
- [How can I add an existing class's enrollments to a new event?](./tms-administrators/classes/enrollments-roster/add-existing-class-enrollments-to-new-event.md)
- [How can I check students in for class?](./tms-administrators/classes/enrollments-roster/check-in-students-for-class.md)
- [How do I record student attendance for a multiple day class?](./tms-administrators/classes/enrollments-roster/record-student-attendance-for-multiple-day-class.md)
- [How do I change an enrollment's completion status and which one should I use?](./tms-administrators/classes/enrollments-roster/change-enrollments-completion-status-and-which-to-use.md)
- [How do I report on students' attendance for multiple day classes?](./tms-administrators/classes/enrollments-roster/report-students-attendance-for-multiple-day-classes.md)
- [How do I find a student's upcoming classes?](./tms-administrators/classes/enrollments-roster/find-students-upcoming-classes.md)
- [How do I find a student's completed classes?](./tms-administrators/classes/enrollments-roster/find-students-completed-classes.md)
- [How do I find all the classes a student has ever been registered to take?](./tms-administrators/classes/enrollments-roster/find-all-classes-student-has-been-registered-for.md)

[< Return to Administrator menu >](#administrator) 

#### *Instructors*

- [How do I schedule a class with multiple instructors?](./tms-administrators/classes/instructors/schedule-class-with-multiple-instructors.md)
- [How can I find the classes for a particular instructor?](./tms-administrators/classes/instructors/find-classes-for-particular-instructor.md)

#### *Training Keys*

- [How can I use training keys for students to self-register for a class?](./tms-administrators/classes/training-keys/use-training-keys-for-students-to-self-register-for-class.md)
- [What information should I send to students who are registering for class using training keys?](./tms-administrators/classes/training-keys/information-to-send-to-students-who-are-registering-using-training-keys.md)

#### *Classrooms and Equipment*

- [How can I use my organization’s virtual meeting program in my virtual classes?](./tms-administrators/classes/classrooms-equipment/custom-virtual-classroom.md)
- [How do I create classrooms?](./tms-administrators/classes/classrooms-equipment/create-classrooms.md)
- [How can I create a classroom that is outside my organization's physical location?](./tms-administrators/classes/classrooms-equipment/create-classroom-outside-org.md)
- [How do I use multiple classrooms for a class?](./tms-administrators/classes/classrooms-equipment/use-multiple-classrooms-for-class.md)
- [How can I track laptops being used for classes taught outside my organization?](./tms-administrators/classes/classrooms-equipment/track-laptops-being-used-for-classes-outside-org.md)

[< Return to Administrator menu >](#administrator)


### Users

#### *Student Management*

- [How do I create student user accounts?](./tms-administrators/users/student-management/create-student-user-accounts.md)
- [What do I do if an email address is unavailable when I am creating a user account?](./tms-administrators/users/student-management/email-address-unavailable.md)
- [How can I create multiple user accounts at once?](./tms-administrators/users/student-management/create-multiple-user-accounts-at-once.md)
- [What can I do about duplicate user accounts?](./tms-administrators/users/student-management/duplicate-user-accounts.md)
- [How do I find users?](./tms-administrators/users/student-management/find-users.md)
- [How do I create a temporary user role?](./tms-administrators/users/student-management/create-temporary-user-role.md)
- [How can I create a way to find a group of users?](./tms-administrators/users/student-management/create-way-to-find-group-of-users.md)
- [How can students print completion certificates?](./tms-administrators/users/student-management/students-print-completion-certificates.md)

#### *Instructor Management*

- [What are different ways to set up instructor access?](./tms-administrators/users/instructor-management/different-ways-to-set-up-instructor-access.md)
- [How do I create instructor user accounts?](./tms-administrators/users/instructor-management/create-instructor-user-accounts.md)
- [What is the Contract Instructor Pool?](./tms-administrators/users/instructor-management/what-is-contract-instructor-pool.md)
- [How can my organization be set up to use contract instructors?](./tms-administrators/users/instructor-management/set-up-organization-to-use-contract-instructors.md)
- [How can I find instructors that can teach a specific course?](./tms-administrators/users/instructor-management/find-instructors-that-teach-specific-course.md)

[< Return to Administrator menu >](#administrator)


### Self-Paced Learning and Subscriptions

- [How do I schedule self-paced learning for a student?](./tms-administrators/self-paced-learning-and-subscriptions/schedule-self-paced-learning.md)
- [How can an administrator print completion certificates for self-pace learning?](./tms-administrators/self-paced-learning-and-subscriptions/print-completion-certificates-for-self-pace-learning-by-admin.md)


### Courses and Their Activities

- [How do I see available courses and determine how much I will be charged for a lab in one of them?](./tms-administrators/courses-and-activities/see-available-courses-and-determine-cost-for-lab-in-one.md)
- [How do I create a SCORM Module and make it available to other organizations for their courses?](./tms-administrators/courses-and-activities/create-scorm-module.md)
- [How can I preview a SCORM module belonging to my organization?](./tms-administrators/courses-and-activities/start-scorm-module.md)
- [Where do I find the system requirements for labs?](./tms-administrators/courses-and-activities/find-system-requirements-for-labs.md)
- [How can I find how long a lab will be saved for?](./tms-administrators/courses-and-activities/find-how-long-lab-will-be-saved-for.md)
- [How do I find if or when a student has launched a lab?](./tms-administrators/courses-and-activities/find-if-student-launched-lab.md)
- [How do I view SCORM attempts by my students?](./tms-administrators/courses-and-activities/view-scorm-attempts.md)
- [How can I capture user data for users who access my externally hosted activities from the TMS?](./tms-administrators/courses-and-activities/capture-user-data-for-externally-hosted-activities.md)

[< Return to Administrator menu >](#administrator)


### Discussions

- [What is a discussion and how can I use it to increase student interaction in their learning?](./tms-administrators/discussions/what-is-discussion.md)
- [How do I create a discussion and attach it to a course?](./tms-administrators/discussions/create-discussion.md)
- [How can I control posts on discussions?](./tms-administrators/discussions/add-moderators.md)
- [How can I add a disclaimer to all my discussions?](./tms-administrators/discussions/add-disclaimer.md)
- [How do my students and I participate in discussions?](./tms-administrators/discussions/participation.md)
- [How can I be notified of activity on a discussion?](./tms-administrators/discussions/admin-follow.md)

[< Return to Administrator menu >](#administrator)


### Miscellaneous

- [How do I create completion certificates?](./tms-administrators/miscellaneous/create-completion-certificates.md)
- [How do I ensure my Course Completion Certificates print correctly?](./tms-administrators/miscellaneous/ensure-completion-certificates-print-correctly.md)
- [Do I want to use a survey or an assessment?](./tms-administrators/miscellaneous/use-survey-or-assessment.md)
- [How do surveys work?](./tms-administrators/miscellaneous/surveys.md)
- [How do I export survey responses and analyze them in Excel?](./tms-administrators/miscellaneous/analyze-survey-results.md)
- [How do assessments work?](./tms-administrators/miscellaneous/assessments.md)
- [How can my students access Skillpipe courseware from their class enrollment?](./tms-administrators/miscellaneous/access-moc-courseware.md)
- [How do I create achievements to motivate learners?](./tms-administrators/miscellaneous/create-achievements-to-motivate-learners.md)
- [How do I create a custom event?](./tms-administrators/miscellaneous/create-custom-event.md)

[< Return to top >](#student)
