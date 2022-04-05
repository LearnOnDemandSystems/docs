---
title: "Course Profile Explanation"
description: "Description of every tab and field on a course profile."
isPublished: true
---

# Course Profile Explanation 

Courses are the building blocks of most training in the TMS. For example, they are used in classes, course assignments, subscriptions, and learning paths to deliver the learning content. Creating a course may be complex depending on the permission set within your roles and the activities and attributes you want to include. 

## Table of Contents

- [Basic Information](#basic-information)
- [HTML Description](#html-description)
- [Activities](#activities)
- [Availability](#availability)
- [Prerequisites](#prerequisites)
- [Tags](#tags)
- [Completion Certificates](#completion-certificates)
- [Subscription Profiles](#subscription-profiles)
- [Presenters](#presenters)
- [Advanced](#advanced)

## Basic Information 

1. **Name**: The display name of the course. 
1. **Short Name**: An abbreviation or shorter name for your course. 
1. **Version**: Set the version for this course and track any revisions. 
1. **Description**: The description of the course, such as activities and labs included or the scope of the course. The description field is limited to 800 characters.
1. **Search Keywords**: Add keywords you want to use to search for the course in Find Courses. 
1. **Profile Image URL**: This is the URL location that the courses profile image is stored. The image should be in a large 16x9 format. 
1. **Organization**: Select the organization that owns the course. 
1. **Program**: Allows an organization to control course management and user access based on program assignment.
1. **Duration**: Enter the expected duration of the course.
1. **Training Days**: Enter the expected number of training days needed to complete the course. 
1. **Content Provider**: Content providers allow you to categorize your courses. 
1. **Discussion**: Add a chat board for anyone taking the course through a class or course assignment.
1. **Archived**: Select this to archive the course. This retires a course from allowing assignment to training while leaving any scheduled training active.
    - **Archive Date**: Enter a date for the course to be 
    automatically archived. 
1. **Available Instructor-Led**: Allows the course to be used in an instructor-led class. If both _Available Instructor-Led_ and _Available Self-Paced are disabled, the course will be marked as _Coming Soon_. 
1. **Available Self-Paced**: Allows the course to be used in self-paced course assignments. If both _Available Instructor-Led_ and _Available Self-Paced are disabled, the course will be marked as _Coming Soon_. 
1. **Show on Course Catalog**: The course catalog, if enabled for your organization, is available via a link at the top of any pages for authenticated users. It may also be enabled for unauthenticated users from the login page. The _Show on Course Catalog_ feature adds this course to the course catalog but does not add it to _On Demand_ subscription profiles. 
1. **Featured**: Adds a "Featured" icon on the course on the Find Courses page, your Course Catalog, and in subscriptions. It also moves those courses to the beginning of catalogs. 
1. **Enable simple course feedback**: Enables user feedback in Classes and Course Assignments.
1. **Enable Achievements for outside organizations**: Allows users from other organizations who are participating in achievements to earn achievements associated with this course.
1. **Allow activity disablement within classes**: This allows instructors to disable class activities for students during classes. 
1. **Allow activities to be auto enabled after a class ends**: Re-enables any disabled activities when the class ends.

## HTML Description 

HTML Description can be used to add a description longer than 800 characters to a course profile. This can also include links, images, and or videos using HTML.

This can also be used to provide supplementary course information, such as a syllabus or links to supplemental course materials.

## Activities

1. **Add Section**: Adds a section to the courses activities. Sections can house SCORM modules, labs, videos, documents, external links, assessments, LTI Resource Links and Microsoft Learn Activities. 
1. **Add SCORM Module**: Add a SCORM module as an available activity in the course. 
1. **Add Lab**: Add a lab from Lab on Demand as an available activity in the course. 
1. **Add Video**: Add a video as an available activity in the course.
1. **Add Document**: Add a document as an available activity in the course.
1. **Add External Link**: Add an external link as an available activity in the course.
1. **Add Assessment**: Add an assessment as an available activity in the course.
1. **Add LTI Resource Link**: Add an LTI resource link as an available activity in the course.
1. **Add Microsoft Learn Activity**: Add a Microsoft Learn activity as an available activity in the course.
1. **Post-class SCORM module availability**: This sets the amount of time students have to access SCORM module activities after the class ends.

## Availability

1. **Add Publishing Groups**: Add this course to a Publishing Group. A Publishing Group is a set of courses that you grant access to other organizations, for them to use for their classes and course assignments. If a course is not added to a publishing group, it will not be available to be scheduled in a class. 

## Prerequisites 

1. **Add Prerequisite**: Add a prerequisite course. 
    1. After a course is added, select the **Status Requirement**; enrolled, started, completed, completed or credit. 
    1. Add a **Blocked Action** to designate the action that is blocked until the prerequisite course status requirement is met. 
Please note, you can choose to have prerequisites enforced or not within a [subscription](/tms/tms-administrators/self-paced-learning-and-subscriptions/subscription-create-subscription.md). 

## Tags

Course tags are used to search for courses, or add filters to a course catalog or subscription catalog. Course Tags will be displayed on the details page of the course. 

1. **Add Tags**: Add tags to the course. 

## Completion Certificates

Certificates are available to instructions and admins as a PDF or an editable Word document, to be printed for the successful completion of a course. Students may have a PDF version available to print when a course is completed through a class or a course assignment. 

1. **Add Certification Template**: Add Completion Certificates that will be students will receive upon completing a course assignment or class that uses this course. 

## Subscription Profiles

1. **Add Subscription Profile**: Add the course to a Subscription Profile. 

## Presenters

1. **Add Presenter**: Add a presenter to the course.    
    1. **Presenter Label**: Add a label for the presenter. 

## Advanced

1. **Calendar Color**: Customize the display color of this course on platform calendars.
1. **External ID**: Input an ID from your systems to identify this course. 
1. **Student Survey**: A survey can be added from surveys you have created in the Training Management System for students to take for a class. 
1. **Instructor Survey**: A survey can be added from surveys you have created in the Training Management System for instructors to take for a class. 
1. **Organization Survey**: A survey can be added from surveys you have created in the Training Management System for operation managers to take for a class. 
1. **Allow Class Self-Enrollment**: Sets any class using this course to default to allowing self-enrollment for anyone with the self-enrollment role. 
1. **Allow Self-paced Self-assignment**: Sets this course to allow users with a self-assignment role to create their own course assignment. 
1. **Allow recordings**: This allows you to enable or disable recordings from being saved and accessible to students for classes that are scheduled using the course. This applies to organizations using an integrated virtual meeting host such as Adobe Connect or Zoom. By default this option is enabled.
    1. **Post-class recording availability**: This sets the amount of time students have to access recordings after the class ends.
1. **Allow supplemental recording access**: Allows recordings access to users that are not part of the class. After this option is enabled, recordings can be shared from the class page by clicking _Recordings_ at the top of the page and then selecting recording availability; enrolled students, anyone from delivery organization, any authenticated user, or anyone (public).
1. **Course assignment requires valid subscription**: Prevents a course assignment creation unless the user has a valid subscription. 
1. **Allow Anonymous Access to Course Details Page**: Allows sharing of the course URL for users to view the course without logging in. 
