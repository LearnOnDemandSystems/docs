## Lab Profile Settings

1. [Basic Information](#basic-information)
1. [Networks](#networks)
1. [Virtual Machines](#virtual-machines)
1. [Removable Media](#removable-media)
1. [Cloud](#cloud)
1. [Resources](#resources)
1. [Errata](#errata)
1. [Exam](#exam)
1. [Life Cycle](#life-cycle)
1. [Storage](#storage)
1. [Tags](#tags)
1. [Advanced](#advanced)

### The following sections walk through each of the tabs located at the top of the Create Lab Profile page.

---

## Basic Information 

1. **Number:** Numbers are used in the title of the lab profile. 
1. **Name:** This will be the display name of the lab profile.
1. **Series:** Select the lab series that the lab profile will be associated with.
1. **Organization:** Select the organization that will own the lab profile and be responsible for maintaining the profile. 
1. **Virtualization Platform:** Select the virtualization platform that the lab profile will use. (Hyper-V, vSphere or none.) Selecting _None_ will cause the lab profile to use the Cloud Client. 
1. **Parent:** A lab can optionally inherit some properties from a parent lab profile. Both the virtual environment (virtual machines, virtual networks, etc) can be inherited, as well as resources and content (manuals, scenario, objective, exercises, tasks, etc). Changes to the parent lab profile will be reflected in instances of this lab.
1. **Development Status:** Used to show lab profile development status. (In Development, Awaiting Verification, In Verification, Verification Failed, Complete.) Lab profiles in _Complete_ Development Status will be available for use, other development status' will only be available to registered lab developers. 
1. **Expected Duration:** The expected amount of time it will take a user to complete the lab.
1. **Maximum Duration:** The maximum amount of time that a user can spend in the lab.
1. **Language:** The language that the lab UI will be displayed in. This will not change the language displayed in the OS of any virtual machines used unless the virtual machine was configured to display a specific language.
1. **Level:** Sets the Level for the lab; this can be 100, 200, 300, or 400. 
1. **Evaluation:** Click to add an Evaluation to the lab profile. The Evaluation must already be created to add it to the lab profile using this button.

1. **Advertising Campaign:** Used to show introductory content while the lab is loading. This can be a video, PowerPoint presentation or anything accessible by a URL. 

1. **Description:** Used to provide more information about the lab profile. 

<!--
1. **Introduction Content URL:** The content at this URL will be displayed in a dialog when the lab interface first opens. The content can either be an HTML page or an MP4 video file. The URL must use HTTPS.

1. **Objective:** Used to provide specific information about the lab. It should include a summary of the lab instructions and a list of specific goals that the lab is intended to meet.

1. **Scenario:** Used to establish the context in which the lab tasks are performed or to provide more general background information.
-->

1. **Instructions:** Select to enable lab instructions. Checking the box for _Use Legacy Format_ will cause the lab to use IDL (legacy) instead of IDLx (not recommended)
.
1. **Enabled:** Used to enable or disable the lab profile for use. If the lab is disabled, it will only be accessible to lab developers. 

1. **Enable Bug Reporting:** Allows bug reporting on the lab profile. Bug reports are collected on the lab profile details page by selecting **Edit** in the upper-right corner of the lab profile page. 

1. **Owner Name:** The name of the owner of the lab profile. 

1. **Owner E-mail:** The e-mail address of the owner of the lab profile. 

## Networks

To use network features, such as external internet access or communication between virtual machines, lab profiles must have a network created or inherit networks from a Parent lab profile. 

1. **Name:** Display name of the network.

1. **Description:** Used to provide more information about the network

1. **Type of network:** The type of network to be used by the lab profile. There are four options:

   - Private: private network (no internet access), typically used for communication between virtual machines. 

   - Web Access (NAT): internet accessible with NAT (network address translation)

        - Enable DHCP: check to enable DHCP (dynamic configuration host protocol).

        - DHCP Start Range: enter the starting value of the IP range that will be available in the lab.

        - DHCP End Range: enter the ending value of the IP range that will be available in the lab.

   - Web Access (Public IP): internet accessible network with a public IP address

   - Preconfigured on lab host: internet accessible network with access provided by the lab host that the lab instance is launched on

1. **Access Control List:** user to control how students use the web within a virtual machine. 

1. **Visible to Student:** Designates if the network is visible to users with student access, within the lab environment.

1. **Development Only:** Used to make the network available to lab profile that are currently in development. 

## Virtual Machines

1. **Add Virtual machine:** Click the add a virtual machine to the lab profile. The virtual machine must already be created to add it to the lab profile using this button. 

1. **Create Virtual Machine Profile:** Click to create a virtual machine. This will create a virtual machine, in which the lab author can specify hardware preferences.

1. **Has Virtual machine Pool:** A pool of unique virtual machine profiles can be created, to be issued to individual users. A single pool member will never be used by two different users simultaneously. This is useful for to ensure that a machine or set of machines is unique in the world at any given point in time. **If your virtual machine will be identical for all users, you do not need a pool.** It is important to note that you can only have as many concurrent users as you have pool members. This can greatly reduce the scalability of the lab, so ensure you create a sufficient pool depth to accommodate the peak number of anticipated concurrent users.

1. After a virtual machine profile has been added, the following options are available:

    - **Visible to Student**: Allows the student to view and select the virtual machine from the resources tab.

    - **Default Selection**: Sets the VM to be the default VM selected in the lab. This is the VM that will display when the lab is launched. 

    - **Connect to terminal**: Hides the desktop UI and allows the VM to be connected to via a terminal. For more information, read [Terminal Access](/lod/terminal-access.md).

    - **Start Automatically**: Enables the VM to start automatically when the lab is launched. 

        - **Startup Delay**: Enter that amount of delay for the VM to start, measured in seconds. 

    - **Wait for heartbeat before displaying to user**: When this is enabled, the lab client will not display the lab to the user until the virtual machine reports a heartbeat to the virtualization platform. This is useful if you want to prevent the user from accessing the lab before critical machines are up and running. 
    
        >[!knowledge] this feature requires the VM to have Hyper-V integration services installed on Hyper-V VMs, and VMware Tools installed on a vSphere VM. Windows operating systems starting with Windows 10 and Server 2016 have Hyper-V integration services installed by default. Other operating systems require them to be installed. Additionally, on vSphere VMs, you must ensure that the user credentials in the virtual machine profile are correct (they are used to initiate the file creation in the VM).
        >
        >- For more information Hyper-V Integration Services, please see the [Hyper-V Integration Services Documentation](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/reference/integration-services).
        >
        >- For more information about VMware Tools, please see the [VMware Tools Documentation](https://docs.vmware.com/en/VMware-Tools/).

    - **Synchronize system time with host**: synchronizes the VM system time with the time on the host that the VM is running on. 

    - **Set initial system time** (available on vSphere only): Allows you to set the date and time that the VM will launch at. This can be used in conjunction with _Synchronize system time with host_ to freeze the date and time.

    - **Allow user to revert to initial state**: Allows the user to revert to the initial state that the lab was launched at. The user can roll back the VM no matter what has been done in the lab instance. This option is found in the Commands menu (lightning bolt icon) in the lab. 

    - **Make lab instance data available inside virtual machine**: When this option is enabled, lab instance data will be available in the virtual machine. The location varies depending on the platform used (Hyper-v or vSphere):

        - Hyper-V: 
        
            On Windows registry: `HKLM\SOFTWARE\Microsoft\Virtual Machine\External`.

        - vSphere: 
        
            On Windows-based systems: `C:\Users\Public\Documents\LabInstance.txt`.

            On Unix-based systems: `/tmp/labinstance`.

        All @lab token names and values will be included, as well as the following legacy items:

        - Lab Instance ID

        - Lab Profile ID

        - Virtual Machine Profile ID

        - User ID

        - External User ID (if launched via API)

        - Username

        - E-mail

        - First Name

        - Last Name

        - Tag (an optional value that can be passed in via the Launch API)

        >[!knowledge] If the VM is hidden from the student, the lab instance data will have the username and password for the VM removed, when viewing lab instance data from other VMs in the lab. This prevents a hidden VM from being tampered with by the student. 

    - **Resume Order**: Used when resuming from save and launching from a start state.

    - **Resume Delay**: the amount of delay for the VM to start, after resuming a saved lab. 

    - **Floppy Drive**: If removeable media is added to the lab profile, select floppy media in the drop-down to have that media loaded when the VM starts. 

    - **DVD Drive**: If removeable media is added to the lab profile, select DVD media in the drop-down to have that media loaded when the VM starts.

    - **Network Adapter**: If a network has been configured in the Networks tab of the lab profile, select the network that will be available to the VM in the lab. 

        - **Visible to student**: Checking this box allows the network to be visible to the student. If this box is not checked, the network will not be visible to the student in the lab. 

## Removable Media

1. **Add Removable Media:** Click to add removable Media to the lab profile. The removable media must already be created to add it to the lab profile using this button.

1. **Create Removable Media:** Click to create removable media. This will create removable media that can be used in the lab. Removable media types include Floppy and Optical.

    > [!ALERT] When removable media is created, you must choose a platform that the removable media will be used on; Hyper-V or vSphere. The removable media is tagged in LOD with the platform. The media can only be used with the chosen platform. 

## Cloud

1. **Add Cloud Credential Pool:** Click to add a Cloud Credential Pool to the lab profile. The pool must already be created to add it to the lab profile using this button.
1. **Cloud Platform:** Select the cloud platform to be used by the lab profile. Selecting a Cloud Platform will allow the lab profile to use the IDLx Cloud Client.
1. **Cloud Portal URL:** Enter the URL that the portal window will display. This is used in IDLx Cloud Client. Leave this field blank if no Cloud Platform is selected in the previous step. 
1. **Append Lab Date:** When this is enabled, the following lab data will be appended to the URL as URL parameters in _name=value_ format. 
   - labProfileId
   - labInstanceId
   - globalLabInstanceId
   - userId
   - userExternalId (if the lab is launched via API)
   - email
   - firstName
   - lastName
   - tag (if included when launched via API)

1. **Subscription Pool:** select the subscription pool that the lab will use. 

1. **Deployment Failure:** Select the deployment failure action.

    - **No Action**: no action will be taken if resources fail to deploy.

    - **Terminate Lab:** the lab will be terminated if resources fail to deploy.

    - **Send User Notification:** a notification will be sent to the user in the lab if resources fail to deploy and the lab will still launch. 

1. **Add User Account:** Add a portal user account. Enabling this will allow the lab to display credentials to log in to the cloud portal. 

    - **Name Prefix:** prefix that will be used to display the portal username. 

    - **Replacement Token Alias:** alias that will be used in replacement tokens to reference the portal username and password. 

1. **Add Resource Group:** Add a resource group that houses resources, access control policies and permissions for the lab. 

    - **Name Prefix:** prefix that will be used to display the name of the resource group. 

    - **Replacement Token Alias:** alias that will be used in replacement tokens to reference the resource group.

    - **Region**: the region of the cloud platform that the lab will deploy to.

1. **Add Permissions:** select the user from the previous steps to add permissions to. 

    - **Reader**: has read access only to the cloud subscription. 

    - **Contributor** has read access and limited write access to the cloud subscription.

    - **Owner** has read and write access to the cloud subscription. 

1. **Resource Templates**: templates used to deploy resources in a cloud platform. 

    - **Add Resource Template:** add a resource template that is already created in LOD. 

    - **Create Template:** create a new resource template in LOD. 

## Resources

1. **Add Resource:** Click to add resource. 

1. **Name:** This will be the display name of the resource.

1. **Type:** Select the type of resource to add. Types of resources include:
   - External link
   - PDF document
   - Word document
   - XPS document
   - HTML document
   - Image
   - Video
   - Other

1. **URL:** Enter the URL of the external link or browse to the file that you wish to upload as a resource for use in the lab.

1. **Display:** Select where the resource will be available for users to access.

1. **Description:** Used to provide more detail about the resource.

1. **Lab Manual:** Check this box to include a link to the lab manual on the Lab Profile page. 

<!--
## Errata

The Errata is used to give a message to users working in the lab. The Errata appears in the lab environment, after the lab is launched. The Errata is displayed in a window, over the lab UI and virtual machines. This can be used to notify users of known issues in the lab, helpful tips or it can be used to provide any other information that the lab author wishes to provide. The Errata can be referenced by users at any time during the lab by clicking the Errata link.

## Exam

Exams are used in IDL (legacy) labs only. Exams in IDLx are executed by activity based assessments. For more information about IDLx Activities, read [IDLx Activities](/lod/activities.md)
1. **Has Exam:** Checking this box enables options 2-5. If the box is unchecked, these options are not applicable. 

1. **Scoring Type:** Select the type of scoring that the lab profile will use. Types of scoring include:
   - Assessment
   - Automated
   - Manual

1. **Passing Score:** Enter the minimum score that users need to achieve to pass the exam.

1. **Show Result:** Check this box if you wish to show exam results.

1. **Report Detail Level:** Select how the exam report details will be generated. Report details include:

   - None

   - Summary

   - Detailed
1. **Add Page:** Click to add a page to the exam. Pages contain questions for the user to select answers.

1. **Name:** Provide a name for the page (optional).

1. **Text:** Enter the text of the question.

1. **Format:** Select the format of the question. Format types include:

   - Multiple choice, only one answer
   - Multiple choice, multiple answers
   - Text response, exact match
   - Text response, regex match

1. **Add Answer:** Enter the answer(s) to the question. Multiple answers should be entered. Select the checkbox next to the correct answer or select multiple boxes if there are multiple correct answers to the question. 

1. **Score Value:** Enter the value that the user should receive for selecting the correct answer. 

1. **Explanation:** Provide an explanation of the answer to the question. 

1. **Reference URL:** Provide a URL that users can reference to better understand the explanation of the answer to the question. 

-->

## Storage

This section specifies where the files for the lab profile should be stored. 

1. **Inherit storage settings from organization:** Checking this box enables the lab profile to inherit storage settings from the organization specified on the Basic Information section.

Unchecking **Inherit storage settings from organization** box will enable additional options.

1. **Storage Loading Priority:** This will set the priority level of loading files into storage. There are multiple levels of priority; *Low, Normal and High*. If there is no priority preference, select _Disabled_. 
1. **Datacenter Availability:** Select the datacenter(s) that the lab profile will be available to launch from. Labs can be launched from the following datacenters:
   - AU East - located in Eastern Australia
   - External - files are stored in an external system and are used by labs that require the IDLx Cloud Client.
   - US Central - located in Central United States
   - US East - located in Eastern United States

## Life Cycle

**Life Cycle Actions:** Actions can be defined to occur at certain points in the lab life cycle. For instance, an external service could be called when the lab builds, or send a notification to the user when the lab is resumed.  

Actions include:

- **Send a web request:** sends a web request to the URL specified. The URL can optionally contain placeholders that will be replaced by live data, with @lab replacement tokens.
- **Send a notification to the user:**  sends a notification to the user during the specified event.
- **Send an email to the user:** sends an email to the user during the specified event.
- **Execute Script in Virtual Machine:** sends a PowerShell or Shell command to a virtual machine.
- **Execute Script in Container:** sends a Bash command to a container.
- **Execute Script in Cloud Platform:** sends a PowerShell command to the cloud platform.

Events include:

- **Pre-Build**: the lab components are being deployed, as well as any cloud resources.
- **Post-Build**: the lab environment has been built, but components like virtual machines may still be starting. 
- **First Displayable**: all components of the lab are now running and the user can now interact with the lab.
- **IP Addresses Assigned**: if the lab has public IP addresses, this event will wire when all public IP addresses have been verified to be assigned to the lab's virtual machine(s).
- **Saving**: the lab is in the process of being saved.
- **Saved**: the lab is in a saved state and no longer active. 
- **Resuming**: the lab is resuming from a saved state.
- **Resumed**: the lab has been resumed from a saved state and the user can interact with the lab again. 
- **Tearing Down**: the lab environment is being torn down. 
- **Torn Down**: the lab environment is fully torn down.
- **Building**: the lab environment is being built.

There are additional settings that can **optionally** be configured:

- **Blocking**: this allows you to block further execution of the lab life cycle until the action completes. You can use this to sequence actions that depend on each other. 

- **Delay**: allows you to introduce a delay between the moment the life cycle event occurs and the action is executed. 

- **Error Action**: controls how Lab on Demand will handle errors that occur when executing this action. All errors are logged against the lab instance by default. You can also choose to notify the user about the error or to end the lab. To prevent users from losing their work, only events early in the lifecycle (buld, bulding, running, etc) allow you to end the lab when an error occurs. 


For more information about Action and Event types, please see our [guide](/lod/life-cycle-actions.md)
   
## Tags

1. **Add Tag:** Click to add a tag to the lab profile. The Tag must already be created to add it to the lab profile. 

1. **Lab Host tags:** Lab host tags are used to specify which Lab Host(s) the lab profile will use when users launch the lab. The Lab Host tag must already be created to add it to the lab profile using this button.

## Advanced

1. **Theme:** Themes allow you to use custom styles and scripts across multiple lab profiles. Themes are usually set at the series or organization level. Set a theme here only if this lab requires customization that differs from other labs in this series and organization.  

1. **Display Delay:** When set, the lab will not be displayed to the user until the delay time has transpired. You can use this to allow a lab to _cook_ a bit before giving your users access to it. For instance if a critical service with in the lab takes time to spin up and you don't want the user to immediately interact with it. 

1. **Display Delay Message:** A message that will display on the lab loading screen after the lab is running, but the  display delay is in effect. For instance, if you are delaying display in order for critical services to start, you might set this message to _Starting critical services_.

1. **Introduction Content URL:** The content at this URL will be displayed in a dialog when the lab client interfaces first opens. The content can either be an HTML page or an MP4 file. The URL must use HTTPS.

1. **End Redirect URL:** If this value is set, users will be redirected to the specified URL when the lab ends. This feature isn't used often, but can help a lab fit into an external workflow. 

1. **Max Active Instance:** This sets the amount of concurrent labs that can be launched at a time. Setting to _Unlimited_ allows an unlimited amount of launches of this lab profile at a time. Entering a number limits the amount of concurrent labs to the number specified. Any labs that are attempted to be launched after the limit has been met, will be given an error message and will not be able to launch the lab until the number of labs launched is below the maximum amount.

1. **Show Timer:** Checking this box will enable the lab to display a countdown timer, showing the user how much time they have left to complete the lab. 

1. **Enable Navigation Warning:** A warning will be displayed if the user navigates away from the lab client before the lab is complete.

1. **Show Navigation Bar:** Enables the navigation bar to be displayed.

1. **Navigation Bar Width:** This sets the width of the navigation bar in the lab UI. 

1. **Show Instructions Tab:** Show the instructions tab of the lab. If this isn't enabled, the instructions tab will not be displayed. 

1. **Show Resources Tab:** Show the resources tab of the lab. If this isn't enabled, the resources tab will not be displayed. 

1. **Show Help Tab:** Show the help tab of the lab. If this isn't enabled, the help tab will not be displayed. 

1. **Custom Instructions Tab Label:** Specify a custom label to display on the instructions tab.

1. **Custom Resources Tab label:** Specify a custom label to display on the resources tab.

1. **Custom Help Tab Label:** Specify a custom lab to display on the help tab.

1. **Enable Type Text:** Enables the lab to use Type Text. Type Text is used to input information into the lab environment with one click.

1. **Show Virtual machine Power Options:** Checking this box enables virtual machine power options to be available to users.

1. **Require Hyper-V Enhanced Controller:** Checking this box requires the user to use the Hyper-V Enhanced controller to work in the lab. If this box is checked, users will not be able to use any other machine remote controllers. Note that the Hyper-V enhanced controller only allows one user to access the lab at a time. 

1. **Enable Instance Link Sharing:** When enabled, the lab instance URLs can be shared between users. If a user copies the URL from their browser's URL bar, they can send it to another user, or open it in a different browser. Note that most virtual machines only allow one user to access them at a time. This settings does not bypass the connection limitation of virtual machines. 

1. **Shared Class Environment:** Shared class environments allow multiple lab instances to be bound together with one or more shared networks and resources. A shared class environment consists of at least two different lab profiles, each serving a particular role. 

    - **Shared Environment:** One lab is configured to serve as the shared environment. Exactly one instance of this lab will run per class. 
    - **Participant:** This is the lab that end-users will launch. There can potentially be more than one lab in this role per class, but they will all connect to the same shared environment instance. 

    Networks within the shared environment lab can be made available to participant labs, making it possible for participants to connect to each other and/or to virtual machines within the shared environment. To enable Shared Class Environment for this lab profile, select one of the options from the drop-down menu; _Shared Environment_ or _Participant_. 

1. **Save/Cancel Options:** 
    - **Allow User to Cancel Labs:** allows the user to cancel the lab at any point
    - **Allow user to Save labs:** allows the user to save the lab in it's current state and return at a later time. Note that saved labs are only saved for 48 hours. Users can extend the saved lab expiration by resuming the lab and saving again. Each save sets the timer back to 48 hours. After 48 hours has passed, the lab progress and components are discarded and cannot be recovered. 
    - **Allow User to Extend Time Remaining:** Allows the user to extend the time remaining in the lab environment. 
    - **Auto-Save incomplete Labs:** Enables the lab to automatically save incomplete labs after a specified amount of time has passed. 

    - **Save/Cancel Labs When Last Console Sync Exceeds:** Amount of time given between console syncs, before the lab will automatically cancel or save. 

    - **Save/Cancel labs when last Activity Exceeds:** Amount of time given of inactivity before the lab will automatically cancel or save.

    - **Activity Required to Enable Auto-Save:** Amount of active time in the lab given before the lab will automatically save.

    - **Minimum Time Given to Saved Labs:** Minimum amount of time that students will have on the lab timer, when they resume a lab. 

    - **Maximum Allowed Snapshots:** Maximum amount of [snapshots](/lod/snapshots.md) that are allowed

1. **GitHub Integration:** Allows you to integrate a GitHub repository into a lab and use that repository as the source of IDLx content for that lab. For more information, read [GitHub Integration](/guides/github-integration/github-integration.md).

1. **Launch URLs**: **LTI** (Learning Tools Interoperability) is a standard defined by the IMS Global Learning Consortium that allows learning systems to consume content provided by external tools or services. This standard enables rich integration between different learning services and platforms, combining their strengths to offer more value to students of those learning systems. For more information on Lab on Demand LTI integration, see our guide here: [LTI Guide](/guides/lti/lod-lti.md).

    - **LTI Launch URL:** the URL to launch the lab via LTI.
    - **Scoring Policy:** Select the type of Scoring Policy. Types of Scoring Policy include: _Time Spent_ and _Tasks Complete_.
    - **Scoring Format:** Select the Scoring Format. Types of Scoring Format include: _% Complete_ and _Pass/Fail_.
    - **Time:** Define the amount of time that the Scoring Policy should use.
 
 <!--
 1. Allow Anonymous Launch
 
    - **Allow Anonymous Launches:** Check this box to allow this lab profile to be launched by anonymous users. 
    - **Add Authenticated Launch URL:** Click this to add an Authenticated Launch URL to the lab profile. The URL must already be created to add it to the lab profile. 
    - **Anonymouse Launch Expires:**
    - **Allow Anonymous Save:**
-->


[Back to top](#lab-profile-settings)
