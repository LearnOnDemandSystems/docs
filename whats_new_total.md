# What's New in the LODS Platforms

Welcome to the What's New release notes for the LODS Platforms. Each platform is in its own section:
- [LOD](#lod)
- [TMS](#tms)

----

## **LOD**

### <span style="color:#0078d7;">**Released May 3, 2019 in LOD**</span>

**Lab Series - Max instances per lab user** 

- Lab series now have a new option on the Limits tab. Lab retakes can be set to unlimited or a specified number of launches. This affects the number of launches per user, per lab, when launched via API. Lab Series Assignments will reset the number of retakes allow. I.E if a user has launched a lab and reached the number of launches allowed, assigning a lab series assignment allows them to launch the lab again, up to the limit of launches specified on the lab series. 

    ![](/lod/images/retakes.png)

**Bug Fixes and Improvements**

- Updated the text on the authentication tab when creating or editing a cloud subscription pool, and choosing AWS as the cloud platform for the cloud subscription pool. 
- Fixed a bug that would cause IDLx instructions to be checked out after editing. This was caused by a change in Google Chrome. 
- The magnification control slider in IDLx labs now shows a label when hovering over it with the mouse cursor. 

----------------------------

## **Released April 12, 2019 in LOD**

**Move Cloud Credentials**
- LOD now allows moving cloud credentials between pools. Individual or multiple credentials can be moved at a time. 

**External Pool Sync**
- When creating or editing a cloud credential pool, there is a new option to sync with an external stockpile. Once this is enabled, you can give the stockpile a name and enter additional payload text.

**Access Control List (ACL) Improvements**
- ACL details pages now show child ACLs, as well as a Find Lab Profiles link that will show all lab profiles associated with the ACL. 

**Bug Fixes**
- Fixed a bug that prevented users from viewing the Organizations tile or Find Organizations link when they had the proper permissions to view. 
- Fixed a bug that prevented the Edit Parameters button from displaying on cloud resource templates after saving the lab profile. 

---

## **Released March 8, 2019 in LOD**

### **Linux Scoring via SSH**
It is now possible to use Activity Based Assessments in Linux labs that connect using a terminal or ssh. Linux ABA scripts are written in Bash. 
Syntax includes: 
- **set_lab_variable** "firstname" "John": sets a variable that can be used with an @lab replacement token
- **send_lab_notification** "Hello from a script": send a notification to the lab
- **set_activity_result** 1 "good job!": Instead of using echo true/false to indicate the result of the script, you can use set_activity_result to perform more complex actions such as customized scoring and user messaging.

### **Bash in Life Cycle Actions for Linux VMs via SSH**
- It is now possible to use Bash in Life Cycle actions to target a Linux VM via SSH for scoring purposes. 

### **Custom Text for On-Demand Activity Based Assessments**
- Lab authors can now change the text for on-demand activities from check/score to any other text, up to 100 characters. 

    ![](/lod/images/custom-activity-text.png)

### **Simplified Chinese and Japanese Language Options**
- Lab authors now have the option to author labs in Simplified Chinese and Japanese languages. This only changes language in the lab client, and does not change the language of the lab instructions. 

---

## **Released March 1, 2019 in LOD**

### **Custom Access Control Lists**

- Custom Access Control lists (ACL) are used to restrict and allow domains that can be access by the VM broswer in the lab. This is accomplished using blacklists and whitelists. Domains added to the blacklist will not be resolvable, and domains added to the whitelist will resolve. You can also allow or deny domains based on  expressions. 

- Access Control Lists are created by clicking the Access Control Lists link on  the Virtual Machine tab in LOD. ACL can be configured to a lab by editing the lab profile, and adding the ACL on the Network tab. ACLs are only available on Web Access (NAT) network types.

![](images/blacklist-and-whitelist-fields.png)

### **Performance and Reliability Improvements for Azure and AWS Cloud Slice**

- Various improvements have been made to increase performance and reliability of Azure and AWS Cloud Slice labs. 

---

## **Released February 8, 2019 in LOD**

### **Open VMs in a separate window**

- VMs can now be opened in a separate window from the main lab window. Each VM in the lab can be displayed in its own window. From the Reources tab, clicking _Open in new window_ will open the VM in a new window. Clicking _Close window_ will close the VM window and put the VM back in the main lab window.

![](/lod/images/open-in-new-window.png) 

_VM is in main lab window_

![](/lod/images/close-vm-window.png)

_VM is in separate window_

### **IDLx Audio Syntax**

- New syntax to use mp3 audio clips in IDLx lab instructions. The new syntax will embed an audio player, or a link to the audio. 

![](/lod/images/audio-player.png)

_embedded audio player_

![](/lod/images/audio-link.png)

_audio as a link_

### **Other**

- When a student extends the lab timer, a note is added to the lab instance. 

### **Bug Fixes**

- Fixed a bug that caused the lab timer to be hidden when set to display, in Cloud Slice labs. 
- Fixed a bug that prevented IDLx images from being resized properly due to case sensitivity in the syntax.
- Fixed a bug that caused GitHub integration to fail. 
- Fixed a bug that prevented images from opening in a dialog when IDLx windows are split.

---

## **Released January 18, 2019 in LOD**

### **Show Scoring Result Upon Completion** 
- Allows lab authors to specify if the lab will display pass/fail and the number of correct when submitting a lab for grading. If the lab author chooses to not display pass/fail and the score, the message simply says the lab has been submitted for grading. 

This can be set in the Activities menu in the IDLx instruction editor.

![](/lod/images/enable-show-score.png)

![](/lod/images/you-passed.png)

_Show scoring result enabled_

![](/lod/images/submitted-for-grading.png)

_Show scoring result disabled_

### **AWS Login Rework**
- Allows a lab user to launch a lab and go directly into the AWS portal, without the need to enter AWS credentials. 

### **IDLx intuitive monitoring**
- Zoom level is now stored on the server.
- Zoom level is automatically restored when a student reconnects/reloads  -or save/resumes. 
- Monitor will see zoom level changes in real-time with no need t - refresh.
- Scroll position within the instructions tab is now stored on the server.
- Scroll position is automatically restored when a studen -reconnects/reloads, or save/resumes.
- Monitor will be scrolled to match the student's page location i -real-time with no need to refresh.

**Bugfix**
- We now prevent SCSI adapters from conflicting with SCSI disks in VMware based labs - VMware VMs shouldn't allow SCSI adapter and Disk to use same Device ID. Device ID 7 has been removed from availability. 

---

## **Released November 16, 2018**

### **Shared Labs Scalability Improvements**

- **Shared labs can now span across our entire datacenter fabric, including cross-platform deliveries.**

    - Shared environments can be an order of magnitude larger than before.
    - Scheduling/planning requirements have been dramatically reduced.
    - VMs can be hosted on Hyper-V and ESX servers within the same shared environment.

### **Lab Client Multi-Language Support**

- **Support for Spanish, German, French, and Portuguese in the lab client**

Set the lab to the language of choice, and our lab client will run in that language. The lab must be authored in the target language, if you would like the lab instructions to be displayed in the target language. 

### **Activity Based Assessment Script Editor**

- **Full Screen**

The activity script editor can now be viewed in full screen, allowing the lab author to see more of the script, without needing to scroll. 

- **Code Highlighting**

Code is now highlighted in the script editor, making it easier to identify script syntax, as well as @lab replacement tokens. 

![](/lod/images/code-highlighting.png)

- **@lab Token Completion**

Replacement tokens are not auto-completed for your convenience, making it easier to include @lab replacement tokens in lab instructions. 

- **@lab Variables**

Variables can now be set in lab activities, using the below syntax. Variables can be used by a second script in the activity, or a later activity in the lab. Variables set in a lab activity can even be referenced in lab instructions.

```Set-LabVariable -Name NameHere -Value ValueHere``` 

- **Real-Time Activity Script Editing**

This allows the lab author to keep the script editor open, while making live edits and executing inside the target environment. This dramatically speeds up script authoring and debugging. 

Automatic Special Character Conversion
When pasting into ABA script editors from rich editing applications such as Microsoft Word and OneNote,  characters such as emdashes, curly quotes, and non-breaking space characters are automatically converted into script-friendly alternatives. This can save hours of frustration when authoring scripts because bad characters typically look fine to the author, but cause scripts to fail to execute.

### **Hyper-V Activity Based Assessment Enhancements**

- **No Login Required to Run Scripts**

Automated Activity scripts can now be executed against a Hyper-V VM, without needing to log in to the VM. This allows hidden Scoring Bots to be inserted into labs. 

- **Lab Notifications from Activity Scripts**

Automated activity scripts can send a popup notification to the students lab, by using the below syntax. @lab replacement tokens can be used in notifications, to make the message more personalized for the student. @lab variables can also be used in lab notifications. 

```Send-LabNotification -Message "Hello @lab.User.FirstName!"```

- **Partial Scoring**

An automated activity can contain multiple scripts. A score value can now be given to each script in an activity, and when executed successfully will give the student that score value. This allows students to receive partial score for completing tasks within a single automated activity. This also allows the student to receive different amounts of points for each script, rewarding them more for difficult tasks. 

![](/lod/images/activities-partial-scoring.png)

### **Organization Custom Support HTML**

- **Custom Support Information**

Organizations in LOD now have the ability to provide custom support information within the lab client. This can be configured on the organization profile in Lab on Demand (LOD). 

### New IDLx Syntax

- **Copyable TypeText**

Copyable/TypeText syntax: placing four + symbols on each side of any text, will make the text type into a VM, as well as copy to the clipboard when clicked. 

```++++enter text here to type into the VM and copy to the clipboard++++```

The **.NET Framework** was updated to **4.7.1**.

---

## **Released October 19, 2018 in LOD**

### **VMware Improvements**

- **VMware Windows VM Automated Activity Support**

This feature allows lab authors to use PowerShell and shell scripts in IDLx automated activities to target Windows virtual machines running on VMware. These scripts can be triggered in the lab, by a lab user clicking a button on the Activity in the lab instructions. 

![](/lod/images/ps-script-in-activity-image1.png)

- **Ability to Target VMware with Life Cycle Action Scripts**

This feature allows lab authors to target virtual machines running on VMware with PowerShell scripts, using a Life Cycle Action. A script can be configured to run at a specific event during the life cycle of the lab. For example, a script could be written in a life cycle action to create a text file once the lab is running, and then another script in a separate life cycle action to print the IP address of the VM to the text file once the IP address is assigned. These scripts can even be configured to trigger in the background with no UI. 

![](/lod/images/add-life-cycle-action-screen-image-2.png)

### **IDLx Activities**

- **Automated activities Can Now Use @lab Variable Replacements in Scripts**

This allows lab authors to use @lab variables in automated activity scripts. For example, a script could be written to create a file with the lab users first name by placing @lab.User.FirstName as the file name. 

![](images/create-text-file-with-lab-replacement-token-image3.png)

- **Automated Activities Can Now Send Notifications and Set Lab Variables**

This allows lab authors to set a variable in an automated activity script using PowerShell, and then use that variable later in the script, or in another automated activity script, to target VMware, AWS, and Azure.

![](/lod/images/variable-script-image4.png)

- **Automated Activity Output**

We now optionally store automated activity output separately from a script message. This allows an author to say one thing in the lab instructions, yet leave more detailed evidence for reporting/remediation. Detailed evidence is store on the lab instance page. In the below script, the student will only see "you got it!" in the lab, while the list of VM services are captured on the lab instance details page. 

![](images/evidence-script-image5.png)

_view from the lab_

![](/lod/images/evidence-in-the-lab-image6.png)

_view from the lab instance details page_

![](/lod/images/evidence-lab-instance-view-image7.png)


### **Life Cycle Action Improvements**
 
- **Life Cycle Actions Can Now Use @lab variable Replacements**

Life Cycle Actions can now use @lab replacement tokens in PowerShell and shell scripts. The script will not be triggered until the event that is configured in the Life Cycle Action. Life Cycle Actions can also use @lab replacement tokens in notifications.

- **Life Cycle Action Blocking**

This allows you to block further execution of the lab life cycle until the action completes. You can use this to sequence actions that depend on each other. 

In the image below, the first Life Cycle Action (LCA) sets the variable and is blocking. The second LCA uses the variable set in the first LCA to send a notification to the lab, and uses an @lab replacement token to show the student's first name. Setting the first LCA to block, allows the variable to be set before the second LCA attempts to use the variable. 

![](/lod/images/lca-image8.png)

---------
---------

# TMS

## Released May 2 2019 in the TMS

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

## Released April 25 2019 in the TMS

### <span style="color:#0078d7;">TMS Updates and Fixes</span>
- The **Find Users** and **Find Instructors** search pages have a new **Output Option**: **Created By**.
- We now use SAS keys to download files from Class Files, Course Files, and Documents. There was previously a size limit on what could be downloaded without errors.
- During the creation of an enrollment, the Enrollment Status will no longer be retained if the administrator changes the course and they no longer have permission for the status.
- **First Name** and **Last Name** filters now work correctly on **Find Enrollment Training Keys** page.

## Released April 18 2019 in the TMS

### <span style="color:#0078d7;">Add Completion Certificates to Classes</span>

You can now add completion certificates you have created in the TMS directly to classes. This gives you the ability to add your own certificates and still have the certificate(s) associated with the course available for instructors and students. To do this for a class, under the **Certificates** section of the class, choose to inherit the certificates from the course and/or click **Add Certificate** to add your own.

### <span style="color:#0078d7;">TMS Updates</span>

- The TMS has been updated to be more accessible to students using assistive technology.
- The **Starts Exactly** filter has been removed from the **Find Classes** page and **Choose Classes** dialog.
- The Bookmark icon is now correctly positioned in the zoomed view in the Course Catalog.

----------------------------

## Released April 5 2019 in the TMS

### <span style="color:#0078d7;">Drag and Drop Course Tags to Set Order in Course Tag Groups</span>

You can now easily set the order that course tags will appear within their group in the On Demand browser. Drag and drop capability has been added to the **Tags** tab of the **Course Tag Group** profile page to allow you to manually drag a tag to the location in the list you want it to be displayed in the browser. However, at the top of the tag list is a **Sort Tags Alphabetically** checkbox. If this is checked, the order of the tags in the browser will be alphabetically even if you have rearranged them on this tab manually. A screen tip has been added to this field to warn the user of this.

### <span style="color:#0078d7;">TMS Updates</span>
- You will now receive a warning when you add a lab to a course that exceeds your **RAM** allotment.
- The **Find Course Assignments** page now has an output option for **External IDs** that will show a column for each item that has an external Id available.
The API **SearchClasses** method now includes **DeliveryTypeId** and **HTMLDescription** as endpoint properties.

----------------------------

## Released March 21 2019 in the TMS

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

## Released March 7 2019 in the TMS

### <span style="color:#0078d7;">ABA Exam Results</span>

You can view the results of an ABA exam on the **Exam Instance** page. The results include the student answer as well as the correct answer. Here is an example.

![](/tms/images/whats-new/aba-results.png)

### <span style="color:#0078d7;">TMS Update</span>

The **Find Courses** page now has an Output Option for **Total RAM**.

----------------------------

## Released February 28 2019 in the TMS

### <span style="color:#0078d7;">TMS Update</span>

A new API endpoint property for **GetCourse** was added: **HTML Description**.

----------------------------

## Released February 21 2019 in the TMS

### <span style="color:#0078d7;">TMS Updates</span>

- Export survey results from the **Survey Response Summary**. Here is more information on [analyzing your results](https://docs.learnondemandsystems.com/tms/tms-administrators/miscellaneous/analyze-survey-results.md?appid=tms)
- New filters and output options.
    - **Internal IDs** output option on **Find Sites** and **Find Organizations**.
    - **Organization** filter and output option on **Find** and **Choose Labs**.

----------------------------

## Released February 14 2019 in the TMS

### <span style="color:#0078d7;">TMS Update</span>

A new API endpoint property for **GetClass** was added: **Organization Name**.

----------------------------

## Released February 8 2019 in the TMS

### <span style="color:#0078d7;">Follow Discussions</span>

You can now follow **Topics** and/or **Posts** on **Discussions** and be notified when there is activity on them. This notification can come through email or as an announcement in the Message Center. Both will provide links back to the Topic and Post. Here is the [Help](https://docs.learnondemandsystems.com/tms/tms-administrators/discussions/admin-follow.md?appid=tms) article.

----------------------------

## Released January 31 2019 in the TMS

### <span style="color:#0078d7;">API Endpoint Properties</span>

The following result endpoints were added to the **SearchClasses** API call:
- **IsPublic**
- **Description**

----------------------------
## Released January 24 2019 in the TMS

### <span style="color:#0078d7;">TMS Update</span>

The **Class Browser** can now be filtered by a **Course Tag** in the URL by adding **?tagId=X** after **Browse**.

----------------------------

## Released January 17 2019 in the TMS

### <span style="color:#0078d7;">API Endpoint Properties</span>

The following result endpoints were added to API calls:
- **Duration** (for course) to the **GetCourse** method.
- **CustomVirtualClassroomURL** to the **GetClass**, **GetClassByClassTrainingKey**, and **GetClassByExternalId** methods.
- **VirtualMeetingHostId**, **VirtualMeetingId**, and **CustomVirtualClassroomUrl** to the **SearchClasses** and **SearchPublicClassSchedule** methods.

----------------------------

## Released January 10 2019 in the TMS

### <span style="color:#0078d7;">CreateClass and UpdateClass API Methods</span>

You can now create and update classes through the API!

![](/tms/images/whats-new/createclass-updateclass-api.png)

### <span style="color:#0078d7;">TMS Updates</span>
- The **Class Browser** now only shows classes with statuses of **Guaranteed to Run** and **Scheduled** by default. You can override this by adding **?showAll=1** between **Browse** and **#** in the URL.

----------------------------

## Released January 04 2019 in the TMS

### <span style="color:#0078d7;">Admin Menu</span>

Now you can access the links on the **Site Administration** page without leaving your current page. We have added an **Admin** menu which is available in all themes that use the standard navigation. When you click on this menu, all the links you see on the Site Administration page are available grouped in the same way. You can choose to view the groups in their default order or in alphabetical order. For a full explanation of this menu, please see [What is the Admin menu and how does it work?](./tms-administrators/tms-fundamentals/admin-menu.md)

----------------------------

## Released December 14 2018 in the TMS

### <span style="color:#0078d7;">Survey Availability Messages</span>

Your students can now easily see when they are able to take their class survey. The Survey activity on their Class Enrollment page will have a message detailing when the survey will become available. This message disappears when the Launch button appears.

![](/tms/images/whats-new/survey-timer-msg.png)

### <span style="color:#0078d7;">TMS Updates</span>
- In the **Learning Path** browser, the tiles now display the **Audience** level of the path in the lower right corner of the image and the **number** of **courses** and **duration** are at the very bottom of the tile.
- You may receive an error message when saving a course after adding labs activities to it if the lab activities exceed the maximum RAM set for courses for your organization. 

> Message: Sorry, you are not able to add labs with over XX MB of RAM. Please contact **support@learnondemandsystems.com**.

- The CSV file for the exported course catalog has been changed to have separate columns for each course tag allowing you to filter the data by the individual tags.
- You can now easily summarize and analyze survey responses in Excel or other analytical tools. The exported survey results have been revamped so that each answer of a multi-answer question is exported to its own individual row. See the [How do I export survey responses and analyze them in Excel?](./tms-administrators/miscellaneous/analyze-survey-results.md) article for assistance with Excel.

----------------------------

## Released November 2018 in the TMS

### <span style="color:#0078d7;">Manage Your Own SCORM Modules</span>

Want to manage your own SCORM content? With the proper permissions, you can create your own SCORM modules, upload your content to them, and add the modules to course profiles. You can preview your SCORM content by launching it from the SCORM module, and you can search for all SCORM attempts started by your students. Please submit a Support ticket at [**https://lod.one/help**](https://lod.one/help) if you need to manage SCORM content for your organization. The following articles will help you to create SCORM modules, start SCORM content, and view all SCORM attempts by your students:

- [How do I create a SCORM Module and make it available to other orgs for their courses?](./tms-administrators/courses-and-activities/create-scorm-module.md)
- [How can I preview a SCORM module belonging to my organization?](./tms-administrators/courses-and-activities/start-scorm-module.md)
- [How do I view all SCORM attempts by my students?](./tms-administrators/courses-and-activities/view-scorm-attempts.md)

### <span style="color:#0078d7;">Set Your Course Achievements to be Available to Outside Organizations</span>

Want to have consistent recognition to all students who take your courses, regardless of whether they are in your organization or not? You can now enable achievements for outside organizations on a **Course** profile’s **Basic Information** tab. If an achievement has the course identified in its conditions, any student who completes the course, either through a course assignment or class enrollment, will earn the achievement, providing the student participates in achievements and their organization has achievements enabled.

### <span style="color:#0078d7;">Create Achievements for Your Subscriptions</span>

Recognize your organization’s students for their accomplishments in your subscriptions. You can create achievements that tie directly to your subscriptions. Your organization’s students earn achievements by completing course assignments or class enrollments specifically associated with the subscription in the achievement’s conditions. Here is an example of a condition statement for a subscription achievement:
> [{"Subject": 30,"Count": 1,"ClubIds": [551], "Complete": true}]

This achievement condition requires the user to complete **1 course** through the subscription whose ID is **551**.

For a course assignment or class enrollment to earn subscription achievements, one of the following must be met (in addition to the participation requirement of the organization and the student):

1. The student has a current subscription matching the achievement conditions AND completes a course assignment that was started from the subscription’s **On-Demand browser**.
1. The student completes a course assignment that was created outside the browser AND has the subscription listed as the **Payment Type** on its **Payment** tab.
1. The student has been marked **Enrolled/Complete** on a class enrollment AND it lists the subscription as the **Payment Type** on its **Payment** tab.

> [!KNOWLEDGE] Achievements can be earned on past activities depending on how the conditions of the subscription are written. For instance, when a participating student completes an item (lab, course assignment, class enrollment, etc.) that could be included in *ANY* achievement, the student's transcript and records are evaluated against *ALL* achievements the student might be eligible for. Therefore, the student could earn the above achievement today if they have an old class enrollment or course assignment that meet the conditions. To avoid achievements being earned on expired subscriptions and old class assignments and course assignments, the conditions can be written to ignore expired subscriptions and/or to set a timeline for items qualifying for the achievement in JSON.

> [!ALERT] Currently, if a subscription contains courses from multiple orgs (i.e. Org A and Org B), has an achievement attached to it, and is available to another organization (Org c), users from that organization will only earn the achievement for courses in the subscription that are in the same org as the achievement and only if those courses allow outside orgs to earn the achievement.

### <span style="color:#0078d7;">Add HTML Footers to Your Learning Paths</span>

Encourage more engagement with your users by adding customizable HTML footers on your learning paths. This is great place to provide users with additional information, suggestions, links, etc. related to the learning path .

![Example of an HTML footer](/tms/images/lp-html-footer-tab.png)

![And how it looks on the learning path to the student](/tms/images/lp-html-footer-view.png)

### <span style="color:#0078d7;">Control Default Maximum Class Size on the Course</span>

You can control the default **Maximum Capacity** for classes directly on the **Course** profile. This provides you more granular control so you can have different student attendance capacities for different courses. One use of this might be you could have courses designed to be used in webinars and these could have a higher default capacity than your standard courses. The default on the Course profile will override the organization’s default Maximum Capacity for classes but can be overridden on the class itself.

### <span style="color:#0078d7;">TMS Updates</span>
- New **Filter** and new **Output Option** on **Find Labs**: 
    - You can filter by **Course** - This will find all lab activities in the specified course. 
    There is also a new **ExternalId** output option.
- New **API** method: You can add several roles to a user at once through the API using the new **AddUserToRoles** method.
- Removed **Filter** and **Output Option** on **Find/Choose SCORM Modules**: Content Provider is no longer related to SCORM modules. Therefore, the **Content Provider** filter and output option on the **Find SCORM Modules** page and **Choose SCORM Module** dialog have been removed.
- The **.NET Framework** was updated to **4.7.1**.

----------------------------

## Released October 2018 in the TMS

### <span style="color:#0078d7;">Display of Course Ratings</span>

You can share the quality of your course offerings by displaying ratings on browser tiles. These ratings derive from the simple feedback given by actual users and are displayed as percentages on the tiles. When a user zooms a tile, the number of reviews are included. The following browsers will display the ratings based on criteria you set:
- On-Demand
- Course Catalog
- Learning Paths
- Class

> [!KNOWLEDGE] Like subscription profiles, Learning Path tiles show a cumulative rating of the included courses. Individual Learning Path pages show the rating for each course.

You, as an organization, control when ratings are displayed for your courses based on the number of ratings and an optional minimum rating percentage. There may be times when subscriptions or learning paths contain courses from various organizations. Since these are cumulative ratings from the underlying courses, the owning organization of the subscription or learning path controls whether the rating is displayed. The individual courses display ratings based on their owning organization’s criteria regardless of where they are seen.

Examples of the display:
- Browser tile

![](/tms/images/course-rating-browser-tile.png)
- Zoomed tile

![](/tms/images/course-rating-zoomed-tile.png)
- Learning path page

![](/tms/images/learning-path-individual-course-rating.png)

### <span style="color:#0078d7;">Completion Certificate Organizational Ownership/Availability</span>

With permissions, you are now able to manage your own course completion certificates. Your certificates are only available to other organizations to use in their courses if you specify them in the certificate template’s profile. This allows you to keep your certificate templates private while still providing the flexibility to share with other organizations as needed.

The Organization output option and filter have been added to the Find Course Certificate Templates page. You can also filter by the organizations that can use the certificate.

![](/tms/images/find-course-certificate-templates.png)

![](/tms/images/certificate-search-filters.png)

### <span style="color:#0078d7;">TMS Updates</span>

- The Class Browser page can now be loaded prefiltered for classes on a specific course by appending the course ID to the end of the URL. 
> Example: https://lms.learnondemand.net/Class/Browse?courseId=9672 would load all classes for the 10135B Configuring, Managing and Troubleshooting Microsoft Exchange Server 2010 Service Pack 2 course.

- The On-Demand Browser page can now be loaded prefiltered to display
    - Only bookmarked courses by appending the bookmarks ID to the end of the URL. Example: https://lms.learnondemand.net/Course/BrowseOnDemand?bookmarks=1.
    - Only courses with a specific course tag. Example: https://lms.learnondemand.net/Course/BrowseOnDemand?coursetagId=X with X being the ID number of the course tag
- The Coming Soon icon is now visible next to courses who meet the criteria on Find Courses. There is also a new Coming Soon filter to narrow the results to just those courses.

![](/tms/images/coming-soon-on-search-page.png)

