# How do I create a basic course?

> [!Alert] Please be aware that not all functionality covered in this and linked articles may be available to you. 

Courses are the building blocks of most training in the TMS. For example, they are used in classes, course assignments, subscriptions, and learning paths to deliver the learning content. Creating a course may be complex depending on the permission set within your roles and the activities and attributes you want to include. This article will cover how to build a basic course with no content; adding activities and setting other attributes will be covered in other articles.

To create a course, click **Create Course** in the **Courses** group on the **Admin** menu. This opens the Create Course page.

## Required Fields

The Basic Information tab contains many properties for the course. Only a few are required. To create a basic course use these fields:
1. In **Name**, enter the name for the course. This will be used for course assignments and will be the default name for classes.
1. Next to **Content Provider**, click **Choose**.
1. In the **Choose Content Provider** dialog, search for and select the **Content Provider** to assign to the course and click **OK**. This sets content ownership and may be used by LODS to set availability of contracted content, e.g. distribution of MOC courses.
1. Click **Save**.

You have now created a basic course that can be used for scheduling training.

## Optional or Default Value Fields

Many fields have default values and/or are optional.  Below is an explanation of the main fields and their default values, if present:
- **Description** - visible in course assignments, the Course Catalogs, the On-Demand browser, and other places where you can search for the course.
- **Keywords** - helps students find your course in the Course Catalog. Keywords are separated by commas.
- **Profile Image URL** - sets the URL of an image to appear on the Course Profile page as well as other browser locations. The image should be in a large format like 16X9. <!-- Please read **How can I control how a course looks and is found on the On-Demand browser and Course Catalog pages?** (coming soon) for more information on these fields. -->
- **Organization** - identifies the organization that owns the course. It defaults to your organization.
- **Program** - determines a range of permissions around classes and course assignments for users. The standard default program is Training. 
- **Duration** - is a billing field. It defaults to 5.

>[!ALERT] This field impacts how classes that use it will be billed. Make sure it accurately reflects the duration of the course activities and instruction. 

- **Training Days** - sets the default number of sessions when a new class is created from the course. It defaults to 5, therefore, classes created from it would be 5 sessions, by default. You can change the number here or it can be overridden at the class level.
- **Discussion** - assigns a discussion to the course. See [What is a discussion and how can I use it to increase student interaction in their learning?](/tms/tms-administrators/discussions/what-is-discussion.md) for more information on discussions.
- **Archived** - sets the course to be unavailable for anyone to schedule future classes or course assignments. 
- **Available Instructor-Led** – makes the course available for scheduling classes. It will also default the activities to be visible in classes.
- **Available Self-Paced** – makes the course available for creating course assignments. It will also default the activities to be visible in course assignments.
- **Show on Course Catalog** – adds the course to your organization’s Course Catalog if the catalog is turned on.
- **Featured** – adds a **Featured** flag to the course on Find Courses, Course Catalog, and in subscriptions to help attract attention to it.

![](/tms/images/featured-course.png)

- **Enable simple course feedback** – includes a feedback form for users in their class enrollment or course assignment pages.

![](/tms/images/course-feedback.png)

- **Enable achievements for outside organizations** – allows students from outside organizations to earn any achievements tied to the course if they and their organization participate in achievements. For more on achievements, please read [How do I create achievements to motivate learners?](../miscellaneous/create-achievements-to-motivate-learners.md).

## Related Articles

There are many options such as different types of activities that you may want to add. The following articles will help you with those options:

**Activities**
1. [How do I add labs to my course?](../labs/add-labs.md)
1. [How do I add SCORM modules to my course?](../other-activities/add-scorm.md)
1. [How do I add videos to my course?](../other-activities/add-video.md)
1. [How do I add documents and external links to my course?](../other-activities/add-docs-urls.md)
1. [How do I add an assessment to a course?](../other-activities/add-assessment.md)
1. How do I add an LTI Resource link to my course?] (Coming soon) <!-- (../other-activities/add-lti-resource-link.md)-->

**Other Options** – (Coming Soon)
<!--
1. [How do I set prerequisites to a course?]()
1. [How can I add a course to a subscription profile?]()
1. [How can I control how a course looks and is found on the On-Demand browser and Course Catalog pages?]()
1. [What is the Advanced tab on a course profile?]()
-->
