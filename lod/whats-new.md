<style>
    h1:first-of-type {margin-top:0;}
</style>
 
<div style="float:right; padding-top:5px; font-size:120%;">
   <a href="https://lods.one/updates">Subscribe to Receive Email Notifications about Platform and Service Updates</a>
</div>

# What's New in Lab On Demand
<span style="font-size:100%;"> <a href="/whats-new-toc.md">What's New in the other LODS platforms?</a></span>

## **Released November 20, 2020**

**AWS v2 Lab Host**
- AWS lab fabric support has been updated with changes that will improve stability, efficiency and scalability. 

**Access Control Policy Search Filter Added**
- A new filter has been added to Access Control Policies (ACP) search, to filter results based on the JSON content. This will provide the ability to quickly locate ACPs in Lab on Demand that use specific resources.
 
**Detailed Scoring Results**
- When a lab uses Activity Based Assessments (ABA) that are scored, it is now possible to show detailed score results to the lab user when the lab is scored. This option is configured in the Activity editor within the lab profile. 
 
**Activity Based Assessment Script Order**
- It is now possible to change the order of scripts when an Activity Based Assessment (ABA) has multiple scripts. Changing the order of the scripts in the UI also changes the order that the scripts will be executed. 
 
 
**Shared Lab Improvements**
- When a Shared Environment lab is cancelled, a warning is now displayed to notify the user that all participant labs will be cancelled. 
- When setting a lab to be a Shared Class Environment, the setting to save/cancel labs when the Last Activity threshold is exceeded, is now unchecked. This will prevent participant labs from being cancelled when the Shared Environment is cancelled due to inactivity. 
 
 
**LOD Improvements and Fixes**
- Added a new IDLx replacement token that shows the region where a cloud resource group is deployed.
- Activity Task Lists now list results in lab instance details page.
- Fixed a bug that prevented the Override Client Landing Page from displaying when a cloud platform or virtualization platform was not configured on the lab profile. 
- Fixed a bug that prevented a scored lab created via the save as function from properly inheriting scoring information.
- Fixed a bug causing errors when viewing, modifying, or exporting lab manuals after exporting and importing an AWS lab series.
- Fixed a bug that prevented the Enable Navigation Warning setting from working in some lab configurations. 

## **Released November 6, 2020**

**Support Chat**
- Lab on Demand now has a support chat option on the Admin site, as well as in the lab client. Users can initiate a chat session with our Support Team. This feature is enabled by default for all organizations, but it can be disabled if needed from the organization profile. Chat transcripts are stored in a support ticket, and a copy is emailed to the user.

**Lab on Demand legacy Flash and Silverlight Machine Remote Controllers Removed**

Lab on Demand legacy Flash and Silverlight machine remote controllers have been removed. 

- Any students still using Flash or Silverlight machine remote controller are encouraged to migrate to the HTML5 machine remote controller. Connectivity requirements for the HTML5 controller are available in our [Connectivity Requirements documentation](https://docs.learnondemandsystems.com/tms/connectivity-requires.md).

**Disk Inspection Permission Adjusted**

The permissions required to inspect disks in Lab on Demand have been adjusted. 
- Inspection of a disk on a datacenter is now based on viewing rights on the datacenter.
- Inspection of a disk on a file share is now based on viewing rights on the file share.
- Inspection of a disk on a lab host is now based on viewing rights on the lab host.

**API Consumer Configuration**
- A new API Consumer configuration option has been added on API Consumer profiles for exams.

**LOD Improvements and Fixes**
- Mouse cursors in Hyper-V based labs will now dynamically change when resizing windows, while hovering over a text field, and selecting anchor points. 
- More flexible API configurations by allowing presets to be adjusted.
- Virtual machines can now be renamed when saving a new lab profile from a running lab instance.
- Improved Task Tracking behavior when using in conjunction with Includes.
- Updated verification message when deleting cloud subscriptions pools.
- Fixed a bug that improperly appended title information to container labs.
- Fixed a bug preventing ABA scripts from appearing in lab profiles created from the template gallery.

## **Released October 16, 2020**

**Cloud Watchdog**

The Cloud Health Monitor Service has been improved and given a new name. The service is now called Cloud Watchdog. It now performs better and more efficiently than the Cloud Health Monitor Service.  The service works in multiple stages:
- Stage 1 - Find service: Finds issues and logs them.
- Stage 2 - Remediation: Resolve issues found in stage 1, delete resources that failed to tear down if needed.
- Stage 3 - Report: Report issues in Health Check emails if necessary, and update cloud subscription pool Health Check UI
    - Features include:
        - Health Checks now apply to CSS labs, the same way they applied to CSR. 
        - Health Checks have two functions; checks for orphaned resources are a frequent rate, and checks for subscription configuration issues such as invalid credentials or expiration, at a longer interval. 
        - Health Check intervals have been updated to check every hour/day/week.
        - If an issue is detected, the subscription owner listed on the subscription pool will receive an email with a list of the issues found, as well as a link to the associated pool. 
	
**Life Cycle Action Inheritance**

Life Cycle Actions (LCA) can now be inherited on child lab profiles. Child lab profiles can also use different LCAs than the parent lab profile, by disabling LCA inheritance on the child lab profile. Child lab profiles have a checkbox on the LCA tab to enable inheritance on the LCAs from the parent lab profile.

**Multiple API Keys for API Consumers**
- API consumers now support creating, disabling, expiring, and revoking API keys.
- Manual key rotation available, add a new key and mark the old one to expire after a set period of time.
- Keys can be named to describe intended purpose.
- Keys can be copied to clipboard with the click of a button without exposing the key.

**LOD Improvements and Fixes**

- New lab profile search filter "Allow Multiple Active Instances per User" allows you to filter on if a user can launch more than one instance of a lab. 
- Clients and internal staff will now see the price of labs and series after acquiring the Price viewing (by organization) permission.
- The Launch API call email parameter now how a 256 character limit (previously 50).
- The "Let's open a lab window" page won't be available after the lab has been completed, cancelled, or timed out.
- When choosing a particular cloud subscription to launch a cloud lab, only subscriptions in the pool configured on the lab profile will be shown. 
- Updates to virtual machines, including differencing disks, will be blocked when a snapshot is detected on the VM due to incompatibility. If needed, the snapshots may be removed to restore differencing functionality. 

## **Released October 2, 2020**

**Enhanced Lab Saving**

- As part of the New Lab Developer Experience, a new save dialog window has been introduced into the Lab on Demand Lab Client. Lab Developers will be able to update and create new lab profiles by selecting _Save_ from the hamburger menu.
 
    - Update the number of processors and RAM on virtual machines right from the lab instance, no need to relaunch.
    - Improved workflow when capturing differencing disks and committing container  changes. 
    - Easily create new lab profiles by specifying the RAM, Processor count, Number, Name, Description, Organization, Expected and Maximum Duration.
    - Dynamically create new lab series or select existing ones for assignment when saving  a new lab profile.
    - Save current lab instance with no more clicks than before.
 
**Cloud Subscription Name Replacement Token**
- A new lab token has been added for Azure CSS labs to show the cloud subscription name. This can be used in lab instructions, Activity Based Assessments or Life Cycle Actions.
 
**LOD Improvements and Fixes**
- Updated translation on the _Next_ and _Previous_ buttons when using German in the lab-client.
- Fixed a bug that caused the number of credential pools to be inaccurate on lab profile details pages.
- Fixed a bug that prevented some fields from being displayed during a lab profile import. 
- Fixed a bug that allowed configuring multiple virtualization platforms in a lab profile while editing or creating a lab profile. 
- Fixed a bug that prevented adding a second script in an automated activity. 

## **Released September 3, 2020**

**Lab Profile Save As**
- When using _Save As_ on a lab profile, to create a new lab profile or a child lab profile, there are now options to change the organization and lab series in the prompt. This only affects the new lab profile and does not change the parent lab profile's lab series or organization.
- When a new lab profile is created using _Save As_, if the user performing the task does not have permissions to interact with different network types, the networks on the lab profile will be downgraded to a private network and a note will be left on the lab profile to specify which networks were downgraded. Users must have permissions for Public IP networks, as well as Web Access (NAT) networks in order to clone them into a new lab profile. 
 
**Instructions Modified By**
- When a lab profile's instructions are edited, a timestamp is added to the lab profile at the bottom of the page for Instructions Modified.  This notes the date/time, as well as who modified the instructions last. 
 
**Inline Virtual Machine and Container Terminals**
- It is now possible to display a Virtual Machine or Container Terminal inline with the lab instructions. This allows the lab to launch in a single window, showing the VMs and terminals only where the lab author specifies in the lab instructions. You can enable inline VMs/terminals by marking them as hidden from the student on the lab profile virtual machines tab, and then inserting them into lab instructions using @lab tokens. 
 
**LOD Improvements and Fixes**
 
- Updated VM OS identifier list to include _Red Hat Enterprise Linux 8 (64 bit)_ and _Windows Server 2016 or later (64 bit)_.
- Updated translation when using German in the lab-client.
- When searching Lab Series Assignment, more refined Max RAM and Total Ram output options based on lab completion status are displayed. Only labs marked Complete will impact these values.
- When saving a lab profile that previously required a security review, but no longer needs one, we will no longer leave a security review invalidation note on the lab.
- The VM import options will no longer appear on the Lab Profile Details page for users without Lab host viewing permissions.
- Fixed a bug preventing the creation of AWS pools in select configurations. 
- Fixed a bug that prevented Evaluations from displaying on scored labs. 
- Fixed a bug that prevented ABA groups from displaying in a standalone lab manual. 
- Fixed a bug that prevented _Blocks page navigation_ until evaluated from working properly in automated activities.

## **Released September 3, 2020**

**Activity Based Assessments(ABA) Activity Groups**

ABA Activity Groups allow question and automated activities to be grouped together so that they may be managed as one unit. Some of the benefits of this approach include:
- Activities can easily be sorted into groups and the order chosen by the lab author. A group is then inserted into the instructions using one @lab replacement token.
- Drop a group into your instructions and allow the platform to handle displaying individual activities. As new activities are added to the group, there is no need to update the IDLx markdown.
- Activities can be randomized when displayed to a student with the click of a button.
- The number of activities to display from each group can be specified by the lab author. This allows the author to create a pool of activities to draw from, further randomizing the assessment between students. Scoring will be normalized to a value specified in the group when this option is enabled.
- A new option to consolidate evaluation buttons has been added. Instead of displaying an individual "Check" or "Evaluate" button for every single activity within a group, a single button that will perform on-demand evaluation for the entire group may be displayed.
- Additionally, the answers to multiple choice questions can be displayed in a random order in both activity groups and standalone activities.

**Un-assign Cloud Credentials**
- A new button is now shown in the lab client next to the cloud credentials to un-assign the credential from the user it was assigned to when the lab launched. This button is only visible to users with permissions to edit the cloud credential pool. When the credential is unassigned, it is immediately available to subsequent lab launches for labs that use the credential pool.
 
**LTI 1.3 Improvements**
- Select LTI 1.3 claims are now available as replacement tokens in labs. The list of available claims and tokens include (case sensitive):
    - context_id = @lab.Variable(LtiContextId)
    - context_label = @lab.Variable(LtiContextLabel)
    - context_title = @lab.Variable(LtiContextTitle)
    - roles = @lab.Variable(LtiRoles)
- Fixed a bug resulting in an invalid launch when a global custom claim is provided in the Canvas developer key.
- Upgraded to Httpclientfactory library when launching labs and accessing deep links.

**LOD Improvements and Fixes**
- Whitespace is trimmed when configuring credentials for Cloud Subscriptions and Cloud Subscription Pools.
- Cloud fabric VMs will automatically target a resource group when added to a lab profile.
- Storage fields removed from subscription page when not applicable.
- Removed erroneous label on "Choose File" dialog when adding resources.
- Removed external class link from class monitoring page when accessed through the API.
- Fixed a bug that caused a cloud subscription to display on a lab profile details page after the cloud platform was set to none. 
- Fixed a bug preventing a cloud lab from launching after adding a non-cloud lab parent and inheriting environment.
- Fixed a bug where the target of an automated activity was lost upon export/import of a lab profile.
- Fixed a bug that would cause images to disappear in a lab that had been exported/imported.


## **Released August 22, 2020**

**Multi-Instance Labs**
Labs can now be configured to allow users to launch and access multiple instances of the same lab profile at any given time. Upon launching the same lab twice using a specially configured API consumer, users will be presented with the option to open an existing lab instance or create a new lab instance. From this screen, they will also be able to save and cancel previous instances of this lab.
 
**Azure Virtualization**
Several optimizations and improvements have been made for Azure virtual machines (VM). 
- Azure hosted VM labs show a connection quality (latency) indicator in the lab client. 
- Shadow monitoring is available for Azure hosted VMs.
 
**Lab Profile Scheduled Disablement**
Lab profiles now have an option on the Advanced tab to schedule a date and time for the lab profile to be disabled. Once it is disabled, it cannot be launched until the lab is manually enabled. 
 
**External Instruction Source**
External instruction source has been updated with performance enhancements for the following scenarios
- When a repository is synced with multiple lab profiles. 
- When multiple commits are made to the content file in the external repository rapidly.
- When a repository is very large and synced with multiple lab profiles and the repository is updated rapidly.
 
**LOD Improvements and Fixes**
- When launching a lab using the Launch API call, MaxActiveLabs and MaxSavedLabs parameters will default to the maximum allowed by the API consumer when the values specified are greater than is allowed. (Out of range values were previously ignored) 
- Get/Update Lab instructions API calls will now work with child organizations of the organization listed on the API consumer.
- Updated Lab Manual link on the instance details page.
- VM profiles can now properly be sorted by number of vCPU (output option)
- ABA on demand feedback styling has been updated when displaying correct or incorrect answers. 
- The lab client no longer produces an erroneous error on the first attempt to save a lab.
- Short answer exact match questions will now ignore leading and trailing spaces when scoring the given answer.
- When a lab is disabled, it no longer displays in the Deep link modal dialog. 
- Fixed a bug that occurred when saving non-cloud labs from saving when edited by a user without cloud permissions.


## **Released August 7, 2020**

**External Instruction Source**
- When an error occurs between the lab profile and the external instruction source, the error message is now displayed on the lab profile details page. A note will be displayed at the top of the page to indicate that there is an error. 
- External instruction source configuration messaging has been updated to not mention any specific external instruction sources. 
- When configuring a lab to use external instructions, a warning will now be displayed if the repository exceeds the maximum repo size limit (500mb) or if the repo is getting close to the limit.

**Search Filters and Output Options**
- Search filters have been added for _Was Launched_ and _Was Not Launched_ to the following search pages:
    - Find Cloud Credential Pools
    - Find Subscription Pools
    - Find Organizations
    - Find Lab Series
    - Find Lab Profiles
- A new output option has been added to the Find Lab Profiles search page. 
    - number (#) networks is now available as a filter and output option.
- A new output option has been added to the Find Organizations search page. 
    - _Parent_ is now available as an output option.

**Additional API Options**
- We have two new API commands. A parameter of id can be used to specify the lab profile.
    - _GetLabInstructions_: returns the IDL-MD instructions of a lab profile as a string. 
    - _GetLabInstructionsPackage_: allows you to download the IDL-MD instructions of a lab as a binary file.
- We have added two parameters to the Catalog API Call.
    - _LabSeriesID_: will limit results to the Lab Series specified.
    - _organizationID_: will limit results to the Organization specified The Organization ID is the integer at the end of URL when visiting the organization page in LOD. For example, https://labondemand.com/Organization/3 , the organization ID would be 3.

**Cloud Slice Geolocation**
- Cloud Slice labs can now be geolocated to launch in the cloud region that is physically closest to the lab user. 
- In addition to IPv4 geolocation services, LOD can now process IPv6 IP addresses during the lab launch process. 
 
**Upgraded Instructor Monitoring for Hyper-V Labs** 
- The instructor monitoring experience has been upgraded with the following features:
    - Better screen refresh rates provide a smoother view of what is happening in the lab.
    - Works with Enhanced Session Mode.
    - Allows instructors to see the mouse cursor of the student.
    - When taking control, students and instructors will see each other’s initials next to their respective cursors in real time.

**LOD Improvements and Fixes**
- The _My Labs_ link in LOD has been replaced with _Dashboard_. When logging into Lab on Demand, lab developers will be directed to Dashboard instead of the Admin page.
- Cloud Resource Templates no longer display the description in the Resources tab of the lab client for Cloud Slice labs. 
- The sort order of resources configured on the Advanced tab of a lab profile are now reflected in the lab client. Subsequent changes to the sort order are reflected in the lab after the lab has been reloaded.
- Updated vSphere Activity Based Assessment logic to be more resilient when scoring.
- LTI 1.3 can now provide a status of complete/incomplete for labs that do not have any scoring. 
- Updated localization on virtualization set up screen to localize all text displayed.  
- Class monitor pages now default the layout to display lab instances in small tiles, instead of a list view.
- Updated logic when detecting windows for cloud slice split view results in greater accuracy when determining whether an interstitial page should be shown.
- Added the ability to remove an expiration date on a cloud subscription in a Subscription Pool. 
- Fixed a bug that caused an application error when a lab tag is deleted while a lab profile that uses the lab tag is being saved.
- Fixed an issue that caused an application error when viewing a lab instance details page, from a lab profile where the cloud tab was edited while there were active lab instances. 
- Fixed an issue that prevented saving some child labs that use a CSS subscription pool.
- Fixed a bug that hid the _Allow Setting Expiration Time_ drop-down menu when creating new lab profiles.
- Fixed a bug that prevented lab developers from adding VM profiles to a lab profile when the number of vCPUs did not exceed the limit.
- Fixed a bug that resulted in some extraneous text displayed next to the Force Check In link in the instruction editor.

## **Released July 10, 2020**

**Multi-fabric Sequencing**
Lab profiles have a new option on the Advanced tab, to configure lab fabric build sequence. This allows labs that contain multiple fabrics to control which fabric is built first or if building can occur simultaneously. Lab fabrics can be built virtualization then cloud, cloud then virtualization or parallel to each other. 
 
**Shared Labs**
Lab authors can now choose whether a shared lab environment will automatically launch when a participant lab is launched or if an instructor will first need to launch the shared environment before participants are allowed access. Automatic launching is enabled by selecting the checkbox next to the shared environment role on the advanced tab of a lab profile.
 
**LOD Improvements and Fixes**
- Variable output and text replacements will be rendered in the lab client immediately upon any creation or update.
- A read only copy of the instructions is now available via the edit instructions link in lab profiles with externally managed instructions. This allows authors to utilize the recently released Replacements feature as well as manage replacement tokens and activities.
- The connection quality indicators in LabonDemand and the lab client have been updated with new values to better align with the recently implemented changes in how latency is calculated. 
- Total score, passing score, and passed results are now displayed on the lab instance details page of scored labs.
- LTI 1.3 Deep Linking is now available for Moodle.
- Fixed a bug causing select browsers/OS combinations to loop through the launch process for cloud labs.
- Fixed a bug that prevented the close button from appearing in modal dialog windows.
- Fixed a bug that prevented the lab client from tracking progress when selecting tasks list configured in Git Integration and includes.

## **Released July 6, 2020**

- The Docs app has been updated with a search function in the top menu bar. This will search document titles, as well as the contents of available LOD and TMS documentation, and list any documentation that matches your search term(s).

## **Released June 26, 2020**

**Lab Latency**
- Lab instance average latency now filters out outliers that could skew the overall average of the latency value displayed in the lab client, as well as lab instance details pages. 
- Lab instance and lab instance connection history pages now show the latency deviation for that lab instance. Lab instance deviation is the standard deviation of all recorded latency values for the lab instance. A high standard of deviation indicates an inconsistent and potentially unstable network connection. 

**Azure CSS Improvements**
-  Lab instance details pages now show the cloud subscription instance that the lab used. Additional details are available for the subscription, including subscription state, pool, cloud subscription ID, enrollment account, state last changed, created and Azure management group. This will assist with management and administrative tasks.
- CSS Subscription pools Now have search buttons to view lab instances and Cloud Subscription Instances that are associated to the subscription pool.

**LTI 1.3 Deep Linking**
- Deep linking is now generally available for use with Canvas and Blackboard. Speak with your Account Executive to help determine if your LMS is LTI 1.3 compatible.

**LOD Improvements and Fixes**
- Cloud Slice labs will now launch an interstitial page to help with resizing and relocation if opened in a window or tab that cannot readily be resized or moved. 
- You can now search for API Consumers by specifying which lab series are available to them using the Available Lab Series and Available Lab Series Name filters.
- A note is now placed on the lab instance details page when the instance is canceled using the API cancel call.
- Fixed a bug that prevented enhanced users from saving a differencing disk to their organization storage.
- Fixed a bug that prevented a user with the proper permissions from being able to view lab tags that they have added to lab profiles. 
- Fixed a bug that caused an improper title to appear in the Network drop-down selector in the lab client.
- Fixed a bug that prevented a user with proper permissions from deleting a cloud resource template.
- Fixed a bug that prevented a lab instance from closing when using the split windows view.
- Fixed a bug that caused a VMware lab to fail to launch when ESX creates a folder that already exists.

## **Released June 12, 2020**

**IDLx Replacements**
- There is a new option in the IDLx @lab menu for Replacements. Replacements allow for text or regex find and replace. Replacements can be used to cleanup or extend existing instructions sources, potentially eliminating  the need for lab errata. 

**Azure CSS Improvements**
- Azure CSS Resource Group names have been simplified to be read more user friendly.
- Removed the Name field from Azure Enrollment Accounts. Only the Principal Name is displayed.
 
**LOD Improvements and Fixes**

- Per hour pricing is now displayed on lab profile details pages and returned in a LabProfile and Catalog API calls. 
- When a cloud based lab inherits the environment from another lab, the virtualization and cloud platforms are now disabled.
- Users can now choose to cancel a lab instance directly from a running lab when saving their current lab would otherwise exceed the number of allowed saved labs configured on their account.
- When starting a virtual machine in a running lab instance, the message "There is not enough available memory to start this Virtual Machine. Please try again later." will appear when their isn't enough RAM on the host.
- The DeepLink URL is now displayed on API Consumer page.
- Dark theme updated so that autofill fields match other text fields. 
- Updated outgoing TS1 notification to include the reason and user org when an API launch fails.
- Search filters are now shown in alphabetical order when selecting from the add filter drop-down menu.
- Cloud hosted VMs no longer take Datacenter availability into account.
- Themes applied to the lab will now render when viewing the instructions through the Lab Manual view.
- When lab instructions contain a non-breaking space, it will no longer be parsed and displayed in lab instructions or in IDLx syntax such as code blocks.
- Additional logging of API errors has been added to the API Error Console to provide more information about the error that occurred. 
- Fixed a bug that prevented IDLx sections with variable dependencies from showing/hiding in a Lab Manual. 
- Fixed a bug resulting in an error when a description is provided through an LTI 1.3 launch.
- Fixed a bug that prevented ACP enforcement on a lab profile with specific user permission configuration.
- Fixed a bug that caused an application error when viewing a lab instance for a lab profile where the cloud platform is changed on a lab profile while there are running lab instances. 
- Fixed a bug that would populate CSS settings on the Cloud tab when a lab was configured for CSS, changed to CSR and then back to CSS. 
- Fixed a bug that prevented Expected Cloud Cost to be displayed when printing or exporting lab profile search results. 
- Fixed a bug that prevented labs from displaying when the lab profile is configured for French language.


## **Released May 29, 2020**

**Lab Instance Transfer**

- When permitted, students, instructors, and lab developers can transfer their lab instance to one another using email. This setting can be turned on at the organization level. LOD administrators will also be able to swap lab instances between users using a Transfer console available through the lab instance details page.

**Lab Instance Time Extension** 

- When permitted, students and/or instructors can be allowed to extend their lab instance via the pencil icon next to the lab timer. When the icon is selected, they will be presented with a calendar to set the new expiration date for their lab. The maximum amount of time that the lab can be extended is configured on the Organization that owns the lab profile. Once a maximum extension time is set, a drop-down menu in the lab profile will have three options to select who can extend their lab. 

    The options consist of:
    - Not Allowed
    - Allow only instructors to extend lab expiration
    - Allow users to extend lab expiration (includes instructors)

**Activity Based Assessment (ABA)**

- There is a new ABA option for both Question and Automated activities that allows  page navigation to be blocked until the student answers or completes the activity correctly. This feature will be very beneficial for challenge based lab scenarios.

- Fixed a bug that prevented multiple answer ABA activities from displaying properly in a task list. 

**Evaluations**

- When creating or editing an Evaluation, there is now a setting labeled Allow Skipping. By default, Evaluations will allow skipping, but it is now possible to disable the option to skip an evaluation, by unchecking the Allow Skipping setting.

**Improved Error Messaging** 

- We have updated error messaging to better indicate why a lab cannot be launched. The new messages include:
    - All available hosts have hit a launch throttle limit.
    - A host with sufficient RAM could not be found.
    - A host with access to all required virtual disk files could not be found.
    - A host with sufficient local storage could not be found.
    - A public IP address is not currently available.
    - A host with an available external container port is not currently available.

**API Error Console**

- A new console for tracking API launch errors is now available under the Lab Instances tile. This will allow LOD and organization admin to quickly identify the following issues that students may encounter when trying to launch a lab through the LOD API. Note the values in parentheses are only placeholders and will likely be different depending on the resources requested during the launch.
    - A host with sufficient local storage could not be found.
    - This lab is not currently available for launch via API. It is awaiting security review.
    - Sorry, you have taken this lab the maximum number of (3) times.
    - User has too many active labs (2).
    - Student is already using too much RAM to launch this lab (max 100 GB).
    - External API integration has reached the maximum number of concurrent lab instances (1000).
    - API consumer is using the maximum amount of allowed RAM (1000 GB).
    - The maximum number of current labs for this lab profile are currently running (10).
    - The user's organization currently has the maximum allowed active labs (300).
    - The user's organization is currently using the maximum allowed amount of RAM (800 GB).
    - The maximum amount of RAM for labs belonging to ABC Learning Co. is currently in use (1200 GB).
    - The maximum number of labs that belong to ABC Learning Co. are currently running (800).
    - The maximum number of current labs for this lab series are currently running (30).
    - The user's organization is currently using the maximum allowed amount of RAM (1200 GB).
    - Class has reached the maximum number of concurrent lab instances (30).

**Improvements and Fixes**

- Updated markdown to HTML parser. This update allows better integration with Github flavored markdown.
- The number of results displayed on an event's homepage can now be set when configuring the event.
- The number of concurrent instances allowed per user can now be set with the API parameter maxActiveLabs.
- Added Win Shortcut key to the commands menu (lightning bolt)
- Activities and LCAs are now saved into new lab profiles created from a running lab instance.
- When configuring a lab profile that uses Azure or AWS as the virtualization platform, the tabs are re-ordered in a more intuitive order so that a lab developer can configure the lab one tab at a time, from left to right.
- Validation has been added to VM profiles to ensure that a network adapter is added, when creating a new Azure VM profile or editing an existing profile.
- Corrected typo in lab instance sharing tool tip and also Container port unavailable error message.
- When creating or editing a VM profile that uses AWS as the platform, unsupported checkbox options have been removed from the bottom of the Basic Information tab. Removed options include: Host Integration Enabled, Use Enhanced Session Mode, and Enabled Dynamic Screen Resizing.
- When creating or editing a VM profile that uses vSphere, AWS, or Azure as the platform, unsupported checkbox Use Enhanced Session Mode has been removed.
- VMware VM display names are now limited to 64 characters.
- The Zoom slider will move above the tab labels in the lab client when long custom tabs are configured on the lab profile or the slider would otherwise overlap the tabs.
- Added a loading screen to lab profiles that have a hidden VM and no Cloud landing page.
- Improved resilience during the Differencing Disk process when capturing very large virtual machines.
- In addition to standard PKCS#1 keys, LTI 1.3 now supports PKCS#8 keys provided by Blackboard for launching and scoring labs.
- Fixed a bug resulting in an error when searching for Lab Profiles by Expected Cloud Cost.
- Fixed a bug that allowed a user to continue using expired permissions so long as they used AAD to sign in.
- Fixed a bug that prevented the instructions from being carried over when saving a running lab as a new lab profile.
- Fixed a bug that caused an application error when force checking in lab instructions.
- Fixed a bug that prevented some applications from honoring line breaks when using Type Text.
- Fixed a bug that prevented Cloud Resource Templates from being saved, cloned, or deleted.
- Fixed a bug that allowed a lab to be pre-instanced from a disabled Lab Series.



## **Released May 15, 2020**

**Life Cycle Action**
- A new Life Cycle Action hook has been added to Lab on Demand. A script can now be run against a VM or Container when the lab is Tearing Down and the Blocking option enabled. This combination will allow the script to complete before tearing down the resources required by the script.

**Lab Instance Sharing**
- Lab instance Sharing is now available for Cloud Slice Labs.
- Fixed a bug preventing the validation of an email address when the character-case didn't match the value returned by the authentication provider.

**Lab Instance Monitoring**
- The Class monitoring page has been upgraded to include a grid layout that displays currently running labs. There are three different sizes of thumbnail to choose from and the layout can be toggled to the legacy layout when desired.

**Azure CSS and CSR Improvements**
- When a CSS lab profile is exported and imported, the subscription level settings (ACP and user permissions) are now preserved during the export/import.
- The subscription prefix setting on enrollment accounts has been moved to the CSS subscription pool, so that the prefix will be applied to all enrollment accounts in the pool.
- Reworked CSS resource provisioning so that resources deployed via Resource Templates are not blocked by the Access Control Policies configured in the lab profile. 
- Azure CSS labs are now subject to Cloud Security Review based on Access Control Policies. 
- Improved the way that Access Control Policies are applied in CSS labs to scope subscription and resource group ACPs appropriately. 
- Updated the naming convention on the LOD Policy Set in Azure, to include identifiers for the platform and type of Azure lab. A script will be ran to update any references to this in Life Cycle Actions and Activity Based Assessments. 

**Accessibility**
- Star rating evaluations are now announced by a screen reader and are keyboard navigable. 
- Added and corrected labels used by assistive technologies.

**Improvements and Fixes**
- Updated Snapshot feature to use an improved process for transferring files.
- In Azure and AWS labs the User Account name prefix is pre-populated with the text, User1-.
- LTI 1.3 Error messages are now properly presented in HTML instead of text.
- Updated logic in LTI 1.3 service to respect enabled/disabled status of an API consumer when it is set to integration testing status.
- Removed dialog that would be improperly displayed  when assigning an AWS user to a region when saving a new lab profile.
- Removed references to deleted lab profiles on Shared Environment Lab Profile pages.
- Fixed a bug that prevented the VLAN ID set in a VM profile from initializing on a lab host.
- Fixed a bug that caused some vSphere VM profiles to display the wrong OS version on the details page.
- Fixed a bug preventing variables from populating in the Intellisense menu while editing lab instructions in a running lab. 
- Fixed a bug preventing labs utilizing German language option from launching.

---

## **Released April 24, 2020**

**We are now LTI Advantage Complete Certified**

- LTI allows administrators to easily integrate labs into their existing LTI 1.3 compliant learning management systems.
In addition to more granular scoring and grading, LTI offers enhanced security utilizing OAuth 2 tokens and an improved authentication flow.

**Azure Cloud Slice Subscription (CSS)**

- There are now two variants of Azure Cloud Slice; Cloud Slice Subscription (CSS) and Cloud Slice Resource Group (CSR). CSS allows full access to an Azure subscription, to allow Azure training at the subscription level, rather than at the resource group level. This solution will be a functional replacement for Azure Passes for MOC courses. Cloud Slice Resource Group (CSR) has had no changes in functionality. For more information about CSS, read Enabling Azure Learning in the Post Azure Pass Era.

**Accessibility Enhancements**

Many accessibility improvements have been made to the lab client resulting in an improved experience for those utilizing assistive technology. Some of these enhancements include the following.
- Menu buttons are now 100% accessible using keyboard commands.
- Notifications, text fields, and status messages can now be announced by screen readers in real time.
- The colors used in Lab on Demand lab client  themes have been adjusted so that text is easier to read and differentiate from the background. All themes now meet WCAG AA guidelines.
	
**Lab Client Localization API Parameter** 

- Platform generated Dialogs, tabs, and menu items in the lab client can now be localized using the lang parameter during API launches. The available options include Chinese, English, French, Japanese, Korean, Portuguese, and Spanish.

**Lab Instance Sharing**

- Lab instances can now be shared from the hamburger menu in the lab. This allows those with permissions to share their lab instance with another individual. When sharing, an email will automatically be sent out to the email address provided. Optional features may be extended from the original user's account such as saving differencing disks and editing instructions. The share can optionally be set to expire at a specified time and date. Additionally, the lab instance share can be protected by an established authentication provider.

**Virtual Machine (VM) Profile Improvements**
- VM profiles now display the hard disk capacity on the details page. 
- Lab developers can now create VM disks up to 2TB in capacity, this was previously limited to 256GB.

**Improvements and Fixes**
- When exporting a lab profile that uses a vSphere VM with EFI enabled, that setting will now persist when the lab is exported.
- Increased security for authenticated launch links and introduced optional per user retake logic.
- Fixed a bug in the lab client that could prevent a lab from syncing with the server when the lab is configured for virtualization but does not contain any VMs.
- Fixed a bug in the lab edit page that prevented the minimum show time on Content URLs from being removed.
- Removed the validation warning when saving an Azure CSS lab without a Resource Group configured.
- Improved logic to require an Access Control Policy in Azure CSS labs when a user is given Contributor or Subscription Permissions.
- Updated tool tip in Cloud Subscription Pool Automation Settings.
- A column has been added to Lab Series details pages to identify the cloud platform that is being used in each lab profile. 

## **Released March 27, 2020**

**Lab Instruction Improvements**

- Lab instruction authoring has been improved to allow a function to show/hide lab instructions and lab instruction elements. Instructions and elements in Sections and code blocks can be shown or hidden based on the lab variable set via Life Cycle Actions, Activity Based Assessments, an IDLx textbox or an IDLx drop-down menu.
	 
- This can also work in conjunction with labs that use instructions stored in GitHub and displayed in the lab via a Markdown include. This allows the lab instructions to be displayed dynamically based on the variable set in the lab. For example, you could configure the drop-down menu to have 2 language options; en and fr. Then in GitHub where the lab instructions are stored you could create 2 copies of the lab instructions; one in English and one in French, with the lab variable value at the end of the file name. The lab user could then select en or fr in the drop-down menu in their launched lab, and the corresponding lab instruction file from GitHub would be displayed in the lab.

- Additionally, the variable can be selected with an API launch. This allows the lab to display a specific Section when the lab launches.

    - **Sections**: Sections are used to group lab instructions and elements together so they may be called up on and manipulated as one. This is done by assigning a lab variable that has been set via LCA, ABA, an IDLx textbox  or an IDLx drop-down menu.

    	> :::sectionName(variableName-variabelValue)

    	> section text or markdown elements

    	> :::

    - **IDLx Drop-down**: there is a new @lab token to add a drop-down menu to lab instructions, and assign multiple values to the drop-down menu. The values added to the drop-down become variables in the lab and can be assigned to IDLx sections as a way to show/hide lab instructions. The @lab token can be found in the @lab button when editing lab instructions or by using the syntax below.

    - **Dynamic Includes**: IDLx already supports displaying lab instructions stored in GitHub via a Markdown Include. That functionality has been expanded to use variables set in the lab to display lab instructions based on the drop-down menu selection. This requires the file names of the content in GitHub to have the variable value at the end of the file name, and a Section created in the lab instructions with a variable that has been set via LCA, ABA, an IDLx textbox or an IDLx drop-down menu.

        > **External repository file name**: 
        > 
        > `sample1-en.md`.
        >
        >**Include syntax with variable in file name**: 
        > 
        > `!instructions[(https://raw.githubusercontent.com/user1/sample1-@lab. Variable (language).md)`
        > 
        > In this example, the variable value is `en` and the variable name is      `language`. 
    
    These are not limited to language selections. Lab variables, Sections and code blocks can be used to show/hide content based on the lab variable. Another use case for this could be Choose your difficulty, where there are multiple versions of the lab instructions with varying difficulty levels and the lab user selects their preference and lab instructions are displayed accordingly.

**Improvements and Fixes**
- Updated Instructions Import Page Title to reflect general usage of IDLx.
- The background color and foreground color in the lab client now meets the minimum contrast ratio of 4.5:1. 
- Language now declared in HTML of Lab Client.
- Deprecated QR code for lab launches.
- Resource Template parameters are now preserved when cloning a lab using Save As or when a child lab inherits the cloud environment from a parent lab profile.
- Disabled API consumers will now be hidden on the lab series publish page.
- Tabs in the lab client now have an underline to show which tab is in focus.
- When launching a lab by clicking launch on subscription or launch on subscription pool, the correct dialog is now displayed.

## **Released February 28, 2020**

**Alt+Tab Shortcut Available in Commands Menu**
- The Alt+Tab keyboard combination is now available as a shortcut under the Commands Menu. This allows students to swiftly switch between two full screen applications in their lab instance. When switching between three or more applications, the shift key may be held while selecting the Alt+Tab shortcut to cycle through all open applications on Windows and select Linux virtual machines.

**Cloud Security Review**
- A Cloud Security Last Reviewed filter is now available when searching for lab profiles. The output will display the date and time that the last Cloud Security Review was completed.
- Access Control Policies can now be sorted by Requires Security Review.
- Never has been added to the list of available options in the Cloud Security Review Approval Expires filter when searching for lab profiles.

**Lab Variables Now Configurable by Lab Authors**
- Lab authors can now initialize lab variables from the very start of the lab. These can be used in Life Cycle Actions(LCA) as well as Activity Based Assessments(ABA). These variables are available in IDLx using @lab.Variable(name).

**Improvements and Fixes**
- Access Control Policies can now be sorted by Requires Security Review.
- Tooltips have been added to the Advanced tab of API consumer profiles, to describe the available options.
- Two new filters, Is parent of and Is child of, are now available when searching for organizations on Labondemand.com.
- Updated the root file path of resources on the Lab profile details page.
- Lab Tags are now returned when the LabProfile API method is called.
- Fixed a bug allowing students to launch an additional lab when they should have been limited by the number of retakes configured on the lab series.
- Fixed a bug preventing labs from launching when URL reserved characters are passed to the lab host as cloud passwords.
- Fixed a bug that prevented Last Activity and Last Console Sync from periodically 

---
<!--
## **Released February 14, 2020**

**Save As for Access Control Policies and Resource Templates**
- It is now possible to create a copy of an Access Control Policy (ACP) or Resource Template (RT) from an existing ACP or RT, by clicking Save As. This behaves similar to Save As on a lab profile. This will provide the creation of policies and templates in a timely manner without having to manually enter the same settings. 
 
**Cloud Security Review**
- Lab profiles that use cloud orchestration are subject to a cloud security review. Until a review is completed, the lab cannot be launched via TMS, API, LTI, or other outside Learning Management Systems. The cloud components that are used in lab profile must be reviewed for any security issues, such as: Access Control Policies, Resource Templates. Additionally, any changes made to the lab profile's Cloud tab will cause the lab to undergo a security review again before the lab can be launched. 
 
**Events**
- Start and End times can now be defined for an Event. Labs are available to launch only during this time period.
This will allow us to exercise greater control over cloud and virtualization resources.
 
**Improvements and Fixes**
- Architectural improvements have been made to increase throughput, stability, and resiliency in the LOD Platform.
- Lab Profile RAM is now calculated to include overhead from NAT network after adding or removing RAM from a VM profile belonging to the lab profile.
- The network required for Linux ABA scoring is now properly created when launching lab profiles that inherit content.
- Lab Profile ID is now an Output Option when searching for Lab Instances.
- Client Landing Page URL now accepts up to 512 characters, previously this limit was 256 characters.
- Cloud Credentials are now issued to lab instances according to expiration date, and then by creation date.
- There are two new result codes that can be returned when launching a lab via API. Result code 100 is returned when a user has launched the maximum number of instances for the lab profile. The was previously displayed as an result code of 0. Result code 110 is returned when a lab profile requires a security review.
- Select cookies for Labondemand will now be set to Secure with SameSite policy explicitly set to none.
- Added new logic to handle scoring and tear down of multiple labs when scoring stalls on a particular lab instance.
- Bug report, Tag, Theme, and Display Delay fields now included when exporting lab profile.
- The LabClient service has been updated to .Net Core 3.1.
- Fixed a bug where the browser would open a very small window when launching container labs.
- Fixed a bug that resulted in the Display Delay being shown while resuming labs. Display delay messages are no longer displayed when resuming a saved lab.
- Hyper-V Virtual Switches are now removed when the lab instance that spawned them is no longer running.
- Fixed a bug that prevented searching for child lab profiles using Access Control Policies.
- Fixed a bug that prevented Sign in History from displaying after modifying user's account.
- Updated missing fields in various Print and Export reports.
- Fixed a bug that prevented lab instances from going to the correct state when a lab is cancelled during the save operation.
- Fixed a bug that prevented a lab from being submitted for grading, when on-demand evaluation was enabled and then later disabled during lab authoring.
- Fixed a bug that prevented a lab developer from being able to create and find virtual machine profiles, if they didn't belong to an organization but they did have management over an organization.
- Fixed a bug that caused _Edit Instructions_ to show in a launched lab that uses GitHub or Azure DevOps as an external instruction source.

---

## **Released December 13, 2019**

**Improvements and Fixes**
- When making the Details API call, the EstimatedReadySeconds property is now the sum of the time it takes to launch the lab and the Display Delay configured in the Advanced tab of the lab profile.
- Fixed a bug that prevented a lab instance search from returning results when the lab profile contains special characters in the lab profile name. 
- Fixed a bug that prevented a lab from honoring the default selection on VMs when a new lab was created during differencing disk capture, or when creating a new lab using Save As and choosing the option to create new VM profiles.
- Fixed an issue that prevented lab series assignments from being retaken when the lab failed to launch. Labs that fail to launch no longer contribute to the users maximum allowed retakes. 

---

## **Released November 22, 2019**

**Evaluation Star Rating Scale**
- A new option has been added to Evaluations, to allow the use of a star rating scale. 

**Theme Options**
- Lab on Demand has been updated with a universal theming engine. Instead of having separate theme settings for the lab client, authoring tools, and admin tools, one theme setting now applies to all areas of the platform. No matter where you set the theme, it will apply across the entire platform. This also means that all the themes previously only available in the lab client are now available in the LOD admin site.

**Improvements and Fixes**
- Cloud subscription details pages now have a Find Lab Instances link to search for all lab instances associated with the cloud subscription. 
- When a resource is added to a lab profile on the Advanced tab and the Lab Manual box is checked, and there are no IDLx instructions, the lab will default to the instructions tab.
- Fixed an issue that prevented folders from appearing in alphabetical order in the storage browser when there is leading or trailing white space in the folder name. The white space is now omitted from the name when it is saved. 
- Fixed a bug that prevented a parent lab profile from being deleted, when the child profile is deleted. 

---

## **Released November 8, 2019**

**VMware SATA Disk Support**

- It is now possible to use a SATA disk controller in VMware based labs.

**Improvements and Fixes**

- _My Labs_ page now displays the virtualization platform and cloud platform used for lab profiles in the _Favorites_ section.
- Special characters can now be added to cloud credential pools when adding credentials to a pool.
- Special characters can now be used in a password when creating or editing a user profile.
- When a lab profile uses a theme with custom CSS, it is applied to the lab instruction editor as well as the lab.
- When the portal window is closed on a Cloud Slice lab, portal links in the lab instructions will now reopen the portal window and direct it to the URL in the Portal link.
- When a user logs out of the AWS portal or closes the portal window, clicking the Portal link on the Resources tab of the lab instructions will now reopen the portal window and sign the lab user back in.
- VM thumbnail images are now a larger size to allow a better output on high dpi screens (4k/5k). Please note that the size on screen will not change, but will be scaled to display better on high resolution displays.
- Fixed a bug that prevented Imported From links on a lab profile or lab series note section from navigating to the profile/series that it was imported from.

---

## **Released October 25, 2019**

**Fixes and Improvements**
- It is now possible to add a virtual machine to a lab belonging to a different series. Previously, the VM chooser dialog was permanently filtered against the lab’s series. Now, this filter can be removed if desired. 
- Files and folders within storage management pages are now always sorted in alphabetical order.
- Life Cycle Actions now indicate if they are disabled without the need to edit the LCA.
- Fixed a bug that prevented search pages from functioning when using Internet Explorer.

---

## **Released October 18, 2019**

**Alphabetical Output Options**

- A sort button has been added to sort output options alphabetically. Clicking the sort button changes to alphabetical, and clicking again changes it back to the by relevance sort order. This does not change the sequence that the fields are display in search results. This only makes it easier to find options when enabling or disabling output options.

**Improvements and Fixes**

- Fixed a bug that prevented PowerShell from being available for ABA scripts in cloud/container hybrid labs.
- Fixed a bug that prevented a user profile image from displaying on the _My Labs_ page.
- Fixed a bug that prevented the cloud subscription pool name from displaying when launching a lab using the _Launch on Subscription_ button.

---

## **Released October 11, 2019**

**Enable Disk UUID**
- It is now possible to enable Disk UUID on vSphere VMs. There is a checkbox on the VM profile to enable this feature. 

**Disconnect from Labs**
- Lab profiles now have an option on the advanced tab to allow lab users to disconnect from the lab and keep the lab running. The disconnected lab will still count towards the user's active lab instances. 

**Improvements and Fixes**
- Updated text on lab profile details page to reflect external instructions, rather than Git Integration.
- Fixed typos on instruction source selection page.
- Fixed a bug that prevented some users with proper permissions from deleting files in cold storage.
- When using a filter for Key in a lab instance search, an error message is now displayed if you are searching with an invalid value (non-GUID). Enter a valid GUID allows the search to perform as expected and return search results. 
- Fixed a bug that prevented a virtual machine from being reverted, in a shared lab environment. 
- Disabling a lab series now disables labs that belong to that lab series from being launched. Labs that are disabled this way will not be included in the Catalog API call response. 
- Fixed a bug that prevented a theme from being applied to event room pages.

---

## **Released September 27, 2019**

**IDL Legacy Retirement**
- IDL legacy is no longer available to use in new labs. The option to use IDL (legacy) for lab instructions has been removed from LOD. IDL legacy labs that have not yet been converted to IDLx will be automatically upgraded on October 1.

**IDLx Page Titles**
- The next page button in lab instructions now displays the first header on the next page for all header sizes (H1-H6), instead of only using H1 headers on the next page button.

**Instruction Source from Azure DevOps (ADO)**
- It is now possible to use an ADO repository to sync instructions to a lab profile. Syncing instructions with an ADO repository allows lab authors to utilize version control in ADO, multi-author support, as well as centralized management of lab instructions in ADO. 

**Improvements and Fixes**
- Fixed an issue that prevented custom CSS from displaying correctly on some event pages. 
- Fixed a bug that prevented exam settings from being inherited in child lab profiles. 
- When editing cloud templates, validation logic has been updated to ensure that changes won’t break any labs that use the template. Safe changes are allowed, changes that would break labs are blocked, and changes that might impact labs require confirmation.
- VMware VMs can now be built using hardware version 14. 
- Fixed a bug that prevented lab profiles with containers from being imported. 
- Fixed a bug that prevented a network from being visible in the lab when it isn't connected to a VM.

---

## **Released September 13, 2019**

**Container Registry Accounts**

- Add any number of external registry accounts to LOD. This is useful if you have containers in a registry such as Docker Hub, and have multiple organizational accounts for managing your container images.
 
**Improvements and Fixes**

- Fixed a bug that caused an error to occur during lab launch, when the option in subscriptions to override subscription pool settings is disabled and use the subscription pool authentication settings instead. 
- Fixed a bug that could cause manually evaluated activities to be scored more than once. This issue did not impact automated ABA/PBT. 
- Fixed an issue that prevented some pages from being able to choose an organization when the organization profile had Assignable to Users enabled. 
- Fixed a bug that caused an application error when editing lab instructions of an AWS lab profile that does not have an AWS region configured.


---

## **Released August 30, 2019**

**Persist Container Changes**

- Containers can now persist changes, similar to how differencing disks work for VMs. Changes can be persisted to a new container image, new lab and container image or the current container images in the lab can be updated. This allows lab authors to configure the container image and save it, so that the configuration will be present on future lab launches that use that container image.

**Container Registries**

- LOD now supports creating custom container registries that are linked to an external registry, such as a private Docker Hub repository. When persisting changes to a container image, you can choose to save the changes to the custom container registry. This allows you to use containers defined in any registry you have access to in your labs.

**Improvements and Fixes**

- Fixed a bug that prevented networks from being saved to a new lab, when cloning a lab and reusing containers.
- Fixed a typo on cloud subscription authentication tab.
- Fixed a bug that prevented roles from being removed that were created by a lab user in a lab.
- Fixed a bug that would prevent resource deployment errors from being logged to a lab instance.
- Fixed a bug that caused hybrid AWS and Hyper-V labs to be stuck loading during launch.

---

## **Released August 23, 2019**

**Lab Client Improvement**
- The Lab client has been updated with memory optimizations for general stability and performance improvements.

**Active Lab Instances Search**
- A filter has been added to filter active lab instances by cloud platform.

**Fixes and Improvements**
- Fixed a typo on the tooltip for Introduction Content URL, on the Advanced tab of lab profiles. 
- Fixed a bug that caused an error to occur when printing search results from a container image search or a cloud subscription pool search. 
- Fixed a bug that prevented some fields from printing or exporting, on cloud credential pool search results. 

---

## **Released August 16, 2019**

**Lab with No Menu Options**
- When no menu items appear in the Lab Client’s main menu, the menu button will no longer be visible. This can happen when the lab doesn’t allow Cancel, or Save.

**AWS Improvements**
- AWS Amazon Simple Notification Service (SNS) service is now available to use in AWS labs. 
- AWS lab user account names will include a lab specific unique identifier. This will enable better auditing of activity in AWS labs, particularly in exam scenarios.
- Support for Amazon CloudWatch Events and Logs in AWS Cloud Slice labs.


**Improvements and Fixes**
- Fixed a bug that prevented concurrent ABA to perform in AWS labs. 
- Fixed a bug that would cause the number of available cloud credentials to display incorrectly.
- Fixed a bug that prevented low availability emails from being sent when a cloud credential pool meets the low availability threshold.
- A bug has been fixed that prevented launching a lab as a non-administrator from an internal Lab Series Assignment.



## **Released August 2, 2019**

**Find Lab Series Assignment Output and Filter**

- There is a new filter and output option for Lab Series Organization.

**Enabled Bug Reporting Filter**

- When performing a lab profile search, there is a new filter to display labs that have bug reporting enabled.

**Cloud Subscription ID Filter and Output**
- There is a new filter and output to display the subscription ID in search results for lab instances and/or cloud subscriptions. This was done to help identify where a subscription is used in LOD. 

**In-Lab Notifications**

- Long notifications now allow scrolling. This was done to prevent the close button from being hidden when a long notification was displayed in a lab.

**Token Aliases**

The following items in LOD are now referenced by an alias instead of an ID, in replacement tokens. This was done to make items in LOD more flexible and import/export without errors.

- IDLx activities 
- Cloud Resource Groups
- Cloud Templates
- Cloud Credentials
- Cloud Portal Credentials

**Credential Pool Import/Export**
- When importing a lab that has a credential pool associated, the  pool will now be preserved on the new lab profile during import. 


**Cloud Resource Groups Selected by Default**
- When creating a child lab profile, cloud resource groups from the parent profile will now be selected by default on the child lab profile. 

**Improvements and Fixes**

- Fixed a bug that prevented filing a bug report from a launched lab.
- Fixed a bug that would cause importing to fail when importing a lab profile from an older version of LOD.
- Fixed a bug that would cause importing to fail when the lab contained replacement tokens. 
- Fixed a bug that would prevent blocking web request LCAs to replace tokens when sent in a post/put body.


## **Released July 19, 2019**

**Private Networking in Container Labs**

- Docker containers are now able to communicate with other containers in the same lab instance using a private network. A container network is configured the same way as a VM in LOD -- add a network from the Networks tab and make it available to the container on the Containers tab. 
 
**Deleting Lab Profiles**

- It is now possible to delete a lab profile that has lab instances associated with it. Preventing the lab from being deleted in this scenario isn't necessary, now that lab profiles aren't deleted from the database. 

**API Consumer Configuration**

- Configuration templates have been updated to allow Default Max Lab Instances to be modified on a non-custom API consumer configurations (Per Instance, Per Series Assignment, and Concurrent Usage).

**Azure Resource Deployment Output Data**

- Azure resource templates can now be configured to output data from Azure, back to LOD in the lab instance data. This data can be displayed in the lab via @lab replacement tokens. This is helpful in scenarios when a student needs to RDP or SSH into a VM in Azure, or when information is needed about a deployed resource such as a storage account.  

**Improvements and Fixes**
- Fixed a bug that prevented the lab extension timer from being extended by the configured amount.
- Fixed an issue that could cause a lab to not reflect recent changes made. This issue affected a very small number of lab authors. 
- Fixed a bug that prevented Azure cloud slice labs from deploying resources in the background and allowing the lab to display before resources were deployed. 


## **Released July 12, 2019**

**Docker as a Lab Fabric**

LOD is adding a new fabric, to run labs in containers. Currently data centers have lab hosts to run virtual machines, but we will soon be adding lab hosts to run containers. This release of Docker containers is for internal use only and will be enabled for the public at a later date.

- Docker will be configurable on lab profiles, in the same drop-down where you would select Hyper-V or vSphere. 
- The user experience will be similar to Linux SSH labs, where there is no desktop UI for the student to interact with. 
- Running labs in containers results in labs that can be launched much quicker than a traditional VM-based lab. 
- Running labs in a Docker container will be particularly exciting for Linux labs. Linux environments will be ready for student use in a matter of seconds, instead of minutes. This is because each Linux sub-system does not need to be loaded per lab instance, as most of the files needed for the lab are already running on the Docker lab host. 
- Containers enable Linux labs to perform similar to a Windows-based VM with improved mouse support. 

- Docker fabric v1 will include support for:
    - Load balancing across hosts
    - Lab save/resume support
    - Multiple containers
    - Split window support 
    - Activity based assessments (ABA). 
    - Life Cycle Actions (LCA)
    - ABA and LCA in containers use Bash for scripting and scoring. Refer to the [Activities documentation](https://docs.learnondemandsystems.com/lod/activities.md) for more information about Bash scripts.

**Exposed Ports in Docker Labs**
- Lab authors will now have the ability to reference host and/or port values independently of the overall address. Many applications reference addresses differently than the standard host:port syntax, so making the components available independently will allow maximum flexibility.
    - @lab.Container(alias).ExposedPort(exposedPortValue).Address 
    - @lab.Container(alias).ExposedPort(exposedPortValue).HostPort 
    - @lab.Container(alias).ExposedPort(exposedPortValue).HostName 

**Docker Resume Message**
- When a docker container lab is saved and resumed, the resume message now says  This shouldn't take long.

**Lab Display Delay and Custom Message**
- Lab profiles can now be configured with a time delay and a custom message, while the lab is loading. You can configured these options on the Advanced tab of a lab profile. This feature is available on all lab types in LOD (Hyper-V, VMware, Azure, AWS, Docker). This was done to provide a more seamless lab experience in labs when additional services are deployed when the lab is launched and are needed to be ready and displayed when the lab launches.

**Azure Lab Host Management Service Improvements**
- The Azure lab host management services has been updated with some improvements that will help improve performance, resilience, scalability and long-term maintainability. 
- Updated all API interactions to help cope with transient Azure service issues. 
- Moved to an Azure app service for better resilience, reliability and scalability. 
- Rebuilt on .NET Core, which will improve performance and maintainability. 

**AWS Improvements**
- AWS cloud subscription names now have a default prefix of Prefix-Platform Instance ID-Subscription ID. If a prefix is defined in the automation settings of a cloud subscription, the prefix will be appended to the default prefix. This was done to make subscription names more human readable, as well as helping to determine which account in AWS is associated with which cloud subscription in LOD.

**AWS Services**

- Support for additional AWS services have been enabled in LOD. These services can be used in labs that use AWS services.
    - AWS OpsWorks
    - AWS OpsWorks Configuration Management
    - AWS Secrets Manager
    - Amazon Athena
    - Amazon Cognito User Pools
    - Amazon Kinesis
    - Amazon Kinesis Analytics
    - Amazon Kinesis Firehose
    - Amazon Kinesis Video Streams
    - Amazon Route 53
    - AWS Step Functions
    - Auto Scaling Plans

**IDL (legacy) Exam Tab**
- The Exam tab has been removed from the lab profile editor. All legacy exams have been migrated to IDLx.

**Azure Cloud Subscription Improvements**
- Azure cloud subscriptions now have an option to enable billing reporting when editing an existing subscription or creating a new subscription.

**Improvements and Fixes**
- Cloud subscription pages now have a link to find lab instances for the subscription. This is helpful for determining the use of a specific cloud subscription within LOD. 
- Fixed a bug that would prevent a non-super user from being able to select Docker from the available virtualization platforms when creating a lab profile.
- Fixed a bug that prevented VMs from being cloned using Save As from a VM profile.

## **Released July 5, 2019**

**IDLx Improvements**

- Code Blocks have received minor changes. Clicking on the copy or type text icons trigger the expected behavior and clicking the code block itself will no longer copy or type text.

## **Released June 28, 2019**

**Improvements and Fixes**

- VMs that are not visible to the student but have the option for _Make lab instance data available inside virtual machine_ selected will no longer inject the username and password into the VM. This was done to prevent a hidden VM from being tampered with by the student. 

    ![](images/make-lab-instance-data-available-in-lab-highlighted.png)

- When a lab profile is deleted, it is now archived instead of purged from our platform entirely. This will preserve usage data, as well as speed up the deletion process. 

- Improved our host health check procedures to reduce the amount of time a student is stuck on the _connection lost_ screen after recovering from a network-related failure.

---

## **Released June 21, 2019**

**IDLx Improvements**

- Code blocks that contain multi line commands will now wrap to the next line, by adding `-wrap` when declaring the code block language. For instance `PowerShell-wrap`.

- Line numbers can now be added to code blocks, by adding `-linenums` when declaring the code block language. For instance `PowerShell-linenums`.

**Improvements and Fixes**

- Fixed a bug that caused @lab replacement tokens not to render in a lab when they were added to the lab instructions using a Markdown include from a GitHub RAW file. 

- Fixed a bug that caused users to be unable to be able to view subscription pool pages, unless they had a permission to view credential pool pages. 

- Fixed an issue that would cause some characters in a cloud credential to render as HTML. 

- Fixed a bug that would cause some developer files uploads to fail.

---

## **Released June 7, 2019**

**Improvements and Fixes**

- Fixed a bug that would prevent files from being deleted from a class after the instructor deleted the file from the Share Files section of the Monitor Labs page.

- Fixed a bug that caused the AWS region selection drop-down menu to display incorrectly on the virtual machine tab of a lab profiles, when using Internet Explorer. 

---

-->
