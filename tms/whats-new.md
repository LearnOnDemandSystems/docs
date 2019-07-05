# What's New in the TMS

<span style="font-size:90%;"> <a href="/whats-new-toc.md">What's New in the other LODS platforms?</a></span>

## Released July 03 2019

### <span style="color:#0078d7;">Achievements for Exams</span>

Your students can now earn achievements when they pass an exam or complete a learning path and if badges are attached to the achievements, they can share the externally hosted badge with others.

You can now build achievements for exams and learning paths. The JSON conditions can be written for passing the exam for a simple achievement or can be more complex including multiple conditions. Here are some examples:

Simple conditions for passing the exam lab with the ID of 12345 – 
[
   {
      Subject:0,
      Count:1,
      Passed:true,
      LabProfileIds:[12345]
    }
]

Complex conditions for completing a learning that is comprises of 2 courses with one regular lab each (IDs 11223 and 11224) and a course with an exam lab (ID 12345) -

[
   {
      Subject:0,
      Count:1,
      Complete:true,
      Distinct:true,
      LabProfileIds: [11223,11224]
   },
   {
      Subject:0,
      Count:1,
      Passed:true,
      LabProfileIds: [12345]
   }
]

### <span style="color:#0078d7;">Keyboard Navigation for some Dropdown Filter Menus</span>

On Search pages that contain the **Organization**, **Program** and/or **Classroom** filters, you can now navigate these filters’ dropdown menus with the keyboard using **TAB**, the **Arrow** keys, and **ENTER. **

When on a search page that has one of these filters applied, 
1. Tab to the dropdown for one of these filters and press **ENTER**. The dropdown menu will open to the list of filter criteria. 
1. Use the arrow keys to navigate up and down the list. 
1. When the arrow next to a “Parent” in the list is highlighted, press **ENTER** to expand its hierarchy to allow the selection of children from the dropdown menu. 
1. When the item you want is highlighted, press **ENTER** again to select and add it to your search filter as the criteria.

### <span style="color:#0078d7;">Event Training Key Redemption</span>

As an administrator, you can now limit the time Event training keys can be used to create enrollments: until the class ends or for a set amount after the class. These two options are on the Create/Edit Class under Allow automatic enrollment using event training key.

![](./images/whats-new/event-key-options.png)

The first option, **Event training key can only be redeemed until event ends**, is the default option and restricts any enrollments being created using the key after the event ends. 

The second option, **Event training key can be redeemed during event or after it ends**, restricts after-class enrollments from being created outside the post-class lab availability window. This timeline is controlled by the Post-class lab availability set on the course. 

### <span style="color:#0078d7;">TMS Updates and Fixes</span>

- A **Roadmap** link now shows in the TMS Default Top Navigation bar. When you click this, you will be taken to our Roadmap page on our website, which has explanations of our latest product updates on both the TMS and LOD. If a TMS site has a custom top navigation bar per the customer's request, this link will not be seen.
- The Recordings link is now accurately hidden for classes with the Event Builder virtual host.

----------------------------

## Released June 13 2019

### <span style="color:#0078d7;">Course Duplication</span>

You can now duplicate an existing course without having to create a new one from scratch. With this you can easily create multiple courses for different customers or uses with slight differences in activities, availability, custom fields, etc.

To duplicate a Course:

1. On the Course profile page, click Edit.

1. Make all changes you wish to be reflected in the new course.

1. Scroll down to the bottom of the page and click Save As. You will be prompted to enter the name for the new course.

1. Click Save. The newly created Course will automatically open in Edit mode to ensure any additional changes can been made.

Note: When you click Save As, if a custom field requiring unique values is present, you will be prompted to change it prior to creation of the new course.

### <span style="color:#0078d7;">Personalized Notifications</span>

You can now personalize notifications to recipients by including the new replacement text fields in the body of the notification:
- RecipientFirstName
- RecipientLastName
- RecipientFullName
- RecipientSiteUrl

When these are used, the email notification will pull the recipient’s information and include it in-place of the fields. For instance, if Amelia Johnston, an instructor, is receiving a notification that a student has cancelled, the notification could be addressed **Dear [RecipientFirstName] [RecipientLastName]**. The email that Amelia would receive would read Dear Amelia Johnston.

### <span style="color:#0078d7;">TMS Updates and Fixes</span>

- The **Find Publishing Group** page now has the **Internal Ids** output option. This output option is included in exported and printed search results.
- You can now include your **External Ids** in the **Class Import** template.
- The **GetClass** and the **SearchClasses** API methods now return:
    - **InstructorId**
    - **InstructorFirstName**
    - **InstructorLastName**
- The **HTML Description** field on the **Course Profile** page is now an accordion section below Activities.
- We now properly filter and show output options for enrollments when the payment type is class enrollment training key. We also store and report in Enrollment History if a class enrollment was created using an event training key.
- On Find Notification Plans, the Received By filter now contains all possible recipient types, including Creator, Class Custom Users, and Editing Delegates.
- On the Organization Profile page, the dependent field, Default Organization Manager Role, is now directly below the Allow Anonymous Organization Registration section instead of after the Account Manager field.

----------------------------

## Released June 3 2019

### <span style="color:#0078d7;">Accessibility Updates</span>

We have made several improvements to student facing pages to ensure they are accessble to all students. These include:

- The **Sign In** dialog choices now have dotted outlines when they are in focus.
- System messages and temporary status messages will now stay open until you close them or leave the page. In addition, if you are using a screen reader, the messages and their **Close** (**X**) button are now read.
- The **Course Image** on the **Course Profile** page now has the **ALT text** attribute.
- Pages available to students have been parsed correctly.
- The **Search** link on the **Course Profile** page has been hidden for students. They should use the **Course Catalog**, if available to search for courses.
- The tabs on the **Simple Course Assignment** page now wrap if the window is zoomed or resized to be smaller. In addition, if you are using a screen reader, the tabs are now read as part of a list including their number in the list and their status at point of focus and selection. The tabs' contents are also read when you enter the tab and give it focus.

### <span style="color:#0078d7;">TMS Update and Fixes</span>

- You can now use the arrow keys and **Enter** to scroll the **Admin menu** search results to select an item from the results.
- Course activities now properly roll-up their prices to the course level, regardless of whether they are in a section or not. This was already in Production as an emergency hotfix in May.

----------------------------

## Released May 9 2019

### <span style="color:#0078d7;">CreateClass and UpdateClass API Methods Simplified and Updated</span>

The **CreateClass** and **UpdateClass** API methods have been simplified for use and updated to allow for setting the time zone and organizational availability. The documentation pages have also been simplified with clearer examples.

![](./images/whats-new/createclass.png)

### <span style="color:#0078d7;">TMS Update</span>

The **GetClass** API call now returns the time zone and organizational availability of the class.

----------------------------

## Released May 2 2019

### <span style="color:#0078d7;">Choose at Org Level whether Course Tags are Included with Export Course Catalog</span>

There is now an option, **Include course tags in simple course catalog export**, on your Organization profile. Use it to set whether tags are included in the export or not.

### <span style="color:#0078d7;">Use API Methods for Class Custom Fields</span>

You can now view what custom fields are on your classes through the API as well as view and update the value of a Class Custom Field for a particular class. We have added the following API methods:
- **GetClassCustomFields** - returns a list of custom fields on yoru organization's classes, including cascading course custom fields.
- **GetClassCustomFieldValue** - returns the value of a Class Custom Field on a particular class.
- **UpdateClassCustomFieldValue** - allows you to update the value of a Class Custom Field. This will return an error if the field is set to require unique values and you attempt to update to one that already exists. It will also return an error if you try to update the field to clear it when the field is required.

### <span style="color:#0078d7;">TMS Update and Fixes</span>

- The **Export** link on the **Class Roster** is now visible based on permissions for searching class enrollments.
- The **Total RAM** output option will now recalculate when a lab's RAM is updated and the TMS has been synced.

----------------------------

## Released April 25 2019

### <span style="color:#0078d7;">TMS Updates and Fixes</span>
- The **Find Users** and **Find Instructors** search pages have a new **Output Option**: **Created By**.
- We now use SAS keys to download files from Class Files, Course Files, and Documents. There was previously a size limit on what could be downloaded without errors.
- During the creation of an enrollment, the Enrollment Status will no longer be retained if the administrator changes the course and they no longer have permission for the status.
- **First Name** and **Last Name** filters now work correctly on **Find Enrollment Training Keys** page.

----------------------------

## Released April 18 2019

### <span style="color:#0078d7;">Add Completion Certificates to Classes</span>

You can now add completion certificates you have created in the TMS directly to classes. This gives you the ability to add your own certificates and still have the certificate(s) associated with the course available for instructors and students. To do this for a class, under the **Certificates** section of the class, choose to inherit the certificates from the course and/or click **Add Certificate** to add your own.

### <span style="color:#0078d7;">TMS Updates</span>

- The TMS has been updated to be more accessible to students using assistive technology.
- The **Starts Exactly** filter has been removed from the **Find Classes** page and **Choose Classes** dialog.
- The Bookmark icon is now correctly positioned in the zoomed view in the Course Catalog.

----------------------------

## Released April 5 2019

### <span style="color:#0078d7;">Drag and Drop Course Tags to Set Order in Course Tag Groups</span>

You can now easily set the order that course tags will appear within their group in the On Demand browser. Drag and drop capability has been added to the **Tags** tab of the **Course Tag Group** profile page to allow you to manually drag a tag to the location in the list you want it to be displayed in the browser. However, at the top of the tag list is a **Sort Tags Alphabetically** checkbox. If this is checked, the order of the tags in the browser will be alphabetically even if you have rearranged them on this tab manually. A screen tip has been added to this field to warn the user of this.

### <span style="color:#0078d7;">TMS Updates</span>
- You will now receive a warning when you add a lab to a course that exceeds your **RAM** allotment.
- The **Find Course Assignments** page now has an output option for **External IDs** that will show a column for each item that has an external Id available.
The API **SearchClasses** method now includes **DeliveryTypeId** and **HTMLDescription** as endpoint properties.

----------------------------
## Released March 21 2019

### <span style="color:#0078d7;">Cascade Course Custom Fields to Classes</span>

You can now set course custom fields to cascade down to the classes that use the course. When a course custom field cascades down to a class, it is like any other class custom field on the class. However, there are a few items to be aware of:
- If the course custom field is set to unique values, a value set in course are compared to other course values and when set in the class, it is compared to other class values.
- If there are user role restrictions set on the field, the same restriction is imposed on the classes.
- If a course is available to another organization, but the course custom field is not, the field will be seen on the course but not on the class by that organization.

### <span style="color:#0078d7;">TMS Updates</span>

- New API endpoint properties for **SearchClasses** were added:
    - **ClassroomAddress1**
    - **ClassroomAddress2**
    - **ClassroomCity**
    - **ClassroomState**
    - **ClassroomCountry**
    - **ClassroomZip**
- The API key is no longer part of the URL in 2.0. It has been moved to the header and all API pages have been updated to document this change. Here is an example of that documentation update: 

> 2.0:

> https://[root-url]/api/2.0/SearchClasses?pageIndex=0&pageSize=10

> 1.0:

> https://[root-url]/api/1.0/1234567890/SearchClasses?pageIndex=0&pageSize=10

----------------------------
## Released March 7 2019

### <span style="color:#0078d7;">ABA Exam Results</span>

You can view the results of an ABA exam on the **Exam Instance** page. The results include the student answer as well as the correct answer. Here is an example.

![](./images/whats-new/aba-results.png)

### <span style="color:#0078d7;">TMS Update</span>

The **Find Courses** page now has an Output Option for **Total RAM**.

----------------------------
## Released February 28 2019

### <span style="color:#0078d7;">TMS Update</span>

A new API endpoint property for **GetCourse** was added: **HTML Description**.

----------------------------
## Released February 21 2019

### <span style="color:#0078d7;">TMS Updates</span>

- Export survey results from the **Survey Response Summary**. Here is more information on [analyzing your results](https://docs.learnondemandsystems.com/tms/tms-administrators/miscellaneous/analyze-survey-results.md?appid=tms)
- New filters and output options.
    - **Internal IDs** output option on **Find Sites** and **Find Organizations**.
    - **Organization** filter and output option on **Find** and **Choose Labs**.

----------------------------
## Released February 14 2019

### <span style="color:#0078d7;">TMS Update</span>

A new API endpoint property for **GetClass** was added: **Organization Name**.

----------------------------
## Released February 8 2019

### <span style="color:#0078d7;">Follow Discussions</span>

You can now follow **Topics** and/or **Posts** on **Discussions** and be notified when there is activity on them. This notification can come through email or as an announcement in the Message Center. Both will provide links back to the Topic and Post. Here is the [Help](https://docs.learnondemandsystems.com/tms/tms-administrators/discussions/admin-follow.md?appid=tms) article.

----------------------------
## Released January 31 2019

### <span style="color:#0078d7;">API Endpoint Properties</span>

The following result endpoints were added to the **SearchClasses** API call:
- **IsPublic**
- **Description**

----------------------------
## Released January 24 2019

### <span style="color:#0078d7;">TMS Update</span>

The **Class Browser** can now be filtered by a **Course Tag** in the URL by adding **?tagId=X** after **Browse**.

----------------------------
## Released January 17 2019

### <span style="color:#0078d7;">API Endpoint Properties</span>

The following result endpoints were added to API calls:
- **Duration** (for course) to the **GetCourse** method.
- **CustomVirtualClassroomURL** to the **GetClass**, **GetClassByClassTrainingKey**, and **GetClassByExternalId** methods.
- **VirtualMeetingHostId**, **VirtualMeetingId**, and **CustomVirtualClassroomUrl** to the **SearchClasses** and **SearchPublicClassSchedule** methods.

----------------------------
## Released January 10 2019

### <span style="color:#0078d7;">CreateClass and UpdateClass API Methods</span>

You can now create and update classes through the API!

![](./images/whats-new/createclass-updateclass-api.png)

### <span style="color:#0078d7;">TMS Updates</span>
- The **Class Browser** now only shows classes with statuses of **Guaranteed to Run** and **Scheduled** by default. You can override this by adding **?showAll=1** between **Browse** and **#** in the URL.

----------------------------
## Released January 04 2019

### <span style="color:#0078d7;">Admin Menu</span>

Now you can access the links on the **Site Administration** page without leaving your current page. We have added an **Admin** menu which is available in all themes that use the standard navigation. When you click on this menu, all the links you see on the Site Administration page are available grouped in the same way. You can choose to view the groups in their default order or in alphabetical order. For a full explanation of this menu, please see [What is the Admin menu and how does it work?](./tms-administrators/tms-fundamentals/admin-menu.md)