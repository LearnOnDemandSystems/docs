<style>
    h1:first-of-type {margin-top:0;}
</style>
 
<div style="float:right; padding-top:5px; font-size:120%;">
   <a href="https://lods.one/updates">Subscribe to Receive Email Notifications about Platform and Service Updates</a>
</div>

# What's New in Lab On Demand

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

<!--
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