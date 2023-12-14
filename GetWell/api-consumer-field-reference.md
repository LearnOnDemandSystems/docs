 The API Consumer is a very important object in the Studio environment. It is used to secure Lab Launches, authenticate APIs, configure LTI integrations and much more. This document will provide a clear explanation for each of the fields available when displaying an API Consumer. 

## In This Article 

- [Required Permissions](#required-permissions)
- [Best Practices](#best-practices)
- [API Consumer field reference](#api-consumer-field-reference)
    - [Basic Information](#basic-information)
    - [Keys and SCORM API Keys](#keys-and-scorm-keys)
    - [LTI](#lti)
    - [Webhooks](#webhooks)
        - [Available Events](#available-events)
        - [Headers Usage](#headers-usage)
        - [Content Body Example](#content-body-example)
    - [Roles](#roles)
    - [Advanced](#advanced)
- [Reference Materials](#reference-materials)

## Required Permissions

Because API Consumers are integral to so many sensitive scenarios, Skillable maintains a restricted approach to them and only grants permissions to edit API Consumers to specific internal Skillable resources. This document is intended to provide a reference to the fields shown on the API Consumer when in display mode, highlighting their potential capabilities.

Except for Studio Webhooks, users should not require special permissions to view the fields of an API Consumer. If you are unable to view API Consumers or access the Webhooks feature, you may not have the proper permissions, please reach out to our [customer support team](http://www.skillable.com/customer-support/) for assistance. 

## Best Practices

API Consumers are a restricted area of the Skillable Studio environment. The fields available to users when viewing an API Consumer describe the functionality that the API Consumer has been configured for. It is suggested that, unless required for a specific use case, API Consumers follow these best practices to maintain consistent functionality.

**Basic Information**
- **Maximum RAM Usage** is configured to protect the performance of your Labs. Only request increases if you are certain it is required.
- **Active Lab Usage** similarly protects the performance of you labs. It also helps ensure that enough resources are available for all users at any given time. Request increases to these values after careful consideration.
- **Lab Instance Save details** maintain the state of the lab for the maximum number of days indicated. After the maximum has been reached the lab will be ended by the system and all lab resources will be removed. The lab will not be able to be resumed after this time.
- **Maximum Lab Duration** indicates the target maximum length of time for a user to complete the lab. This can be increased by the user up to 1.5 times the maximum duration.<br>**Note**: Once the lab timer has reached 5 minutes to the end of the lab users will no longer have the ability to extend the lab duration.

**Keys & SCORM API Keys**
- **A Single Active Key and SCORM API Key** is recommended for any API Consumer unless rolling over to a new API key.
- **API Key & SCORM API Key Expiry Date** should always be configured for increased security.<br>**Note**: When setting an expiry date on an API Key it is important to roll over to a new API Key before the targeted date to ensure that there is no interruption of availability to the features enabled by the API Key.

**Note**: SCORM API Keys are only applicable to the SCORM Packaged Lab Launch function available on Lab Profiles.

**LTI**
- **Only LTI 1.3 is fully supported** by the Skillable Studio platform. LTI 1.1 and 1.2 are partially supported.  Consult with your Skillable representative if you require LTI 1.1 or 1.2 integrations.
- **LTI 1.3 integrations** are dependent on the LMS platform that is being integrated. If you are encountering issues with your integration contact our [customer support team](http://www.skillable.com/customer-support/) for assistance.

**Webhooks**
- **Webhooks trigger on Events** so it is important to ensure that you have selected the appropriate event when defining a webhook.
- **The POST URL** defines the receiver location for the webhook payload. This URL must be available to the Skillable platform. If you secure your sites with a firewall or other technology contact your skillable representative to ensure that the correct exception rules have been defined to allow connectivity.
- **The Lab Content** allows either a subset of the details API endpoint or a mix of static and @Lab variables. If you require custom data to be returned by the webhook contact your skillable representative for help configuring the content payload.

**Roles**
- **Roles are used to override** or grant extra permissions when using the API Consumer. To ensure that the appropriate functionality is enabled contact your Skillable representative.

**Advanced**
- **Advanced API Consumer Features** are defined for specific situations. If you do not require these functions it is recommended that they not be configured.

## API Consumer Field Reference

Lab Developers, API administrators and LMS administrators all make use of API Consumers on a regular basis. This article will help explain each of the fields displayed on an API Consumer and provide a description for its use.

### Basic Information

| Field | Description |
|:---|:---|
| **Default Organization** | The default organization that uses the API consumer. |
| **Enable Launch Failure Notifications** | Indication if launch failure notifications are enabled. |
| **Expires** | Displays the expiration date of the API consumer profile if an expiration is configured. |
| **Configuration** | API usage configuration. |
| **Consuming Platform** | The name of the platform that will use the API consumer. |
| **Consuming Platform Version** | The version of the consuming platform. |
| **Max RAM Usage** | the maximum concurrent RAM usage by labs that are launched by this API consumer. |
| **Max Active Lab Instance** | The maximum number of concurrent active lab instances that can be running, from labs launched by this API consumer. |
| **Default Active Lab Instances Per User** | The default number of active labs a user will be allowed to have. This value will be applied to the user account when the API consumer doesn't specify it. |
| **Max Active Lab Instances Per User** | This controls the maximum value an API consumer is allowed to use when specifying the number of active labs a user can have. If the API consumer specifies a higher value, this value will be used instead. |
| **Default Saved labs Per user** | The default number of saved labs a user will be allowed to have. This value will be applied to user accounts when the API consumer doesn't specify it. |
| **Max Saved labs Per user** | This controls the maximum value an API consumer is allowed to use when specifying the number of saved labs a user can have. If the API consumer specifies a higher value, it will be ignored. |
| **Defaults Lab Instance Save Days** | The default number of days saved lab instances will be kept before being deleted. this value will be applied to lab instances when the API consumer doesn't specify it. |
| **Max Lab instance Save Days** | This controls the maximum value an API consumer is allowed to use when specifying the number of days a lab instance can be saved for. If the API consumer specifies a higher value, this value will be used instead. |
| **Maximum Lab Duration** | This controls the maximum duration in minutes that a lab launched by this API consumer will be allowed to have. If the lab profile has a longer duration, this value will override it. |
| **Minimum Lab Duration for Billing** | Establishes how long a lab instance launched by this API consumer must run before it is considered billable. If the lab ends in less time, it will not be billed. |
| **Lab Launch Capability** | Labs that are capable of being launched by this API consumer. There are three options to choose from:<br>&nbsp;&nbsp;• **Labs Available to this API Consumer** - The API Consumer will only be able to launch labs that are explicitly available to it. This should be used in most API Integration scenarios.<br>&nbsp;&nbsp;• **None** - The API Consumer can't launch labs at all. This is generally used for reporting scenarios.<br>&nbsp;&nbsp;• **All Labs** - Allows the API Consumer to launch any lab in the system, regardless of availability settings on the lab and lab series. This should only be enabled in very specialized scenarios (example: internal testing of new content and infrastructure) |
| **Lab Instance Visibility** | Lab instances that are visible by this API consumer. There are three options to choose from:<br>&nbsp;&nbsp;• **Lab Launched by this API Consumer** - the API consumer will only be able to view and interact with lab instances that it launches directly.<br>&nbsp;&nbsp;• **Labs Available to this API Consumer** - The API consumer will be able to see and interact with all lab instances whose lab profiles are published to the API consumer. The lab instances can have been launched in any way, from an event page, an authenticated link, another API consumer, or anonymously. This could include lab instances belonging to users in any organization.<br>&nbsp;&nbsp;• **All Labs** - Allows the API Consumer to view and interact with all lab instances in the system. This should only be enabled under special circumstances (example: for use by an interanl service that coordinates data for multiple customers) |
| **Can Launch Developmentally-Incomplete Labs** | This allows the API consumer to launch lab profiles that have their Development Status set to Incomplete. |
| **Can Launch on Specified Infrastructure** | Allows the API Consumer to specify a Skillable Lab Host ID and/or a File Share ID when launching a lab instance. This should only be enabled under special circumstances (example: Internal testing of new infrastructure) |
| **Require Assignments for Lab Launches** | This requires that all labs be launched as part of a lab series assignment. Only labs that are part of a series will be eligible for launch. |
| **Automatically Create Assignments for Lab Launches** | When a lab is launched by this API provider and an active Lab Series Assignment cannot be found for the given user, a new Lab Series Assignment will be created automatically. |
| **Default Assignment Duration Days** | The number of days that an automatically created Lab Series assignment will be active for. |
| **Enable Portal Integration** | Provides integration with Skillable Insights |

### Keys and SCORM API Keys

API Consumer Keys and SCORM API Keys that have been configured for an API Consumer will be displayed in the **Keys** and **SCORM API Keys** sections respectively and consist of the following:

**Note**: SCORM API Keys only enable SCORM Packaged labs and do not provide any other functionality.

| Field | Description |
|:---|:---|
| **Key** | the API key that is used to integrate with your platform. This API key is hidden by default. Selecting Show will expose the API key and selecting Copy will copy the API key to your clipboard. |
| **Description** | The description of the API key. |
| **Enabled** | Indicates if the API consumer is enabled or disabled. |
| **Expires** | If the API consumer has an expiration date configured, the date will be displayed. |
| **Created** | The date and time that the API consumer was created. |

### LTI

The **LTI** section displays the core LTI definition. If no LTI 1.3 configuration is included on the API Consumer then only the **LTI 1.2 Key** and **LTI 1.2 Secret** fields are displayed. The full list of LTI fields includes the following:

| Field | Description |
|:---|:---|
| **LTI 1.2 Key** | (always displayed) The LTI 1.2 Key that is used for integrating with an LTI provider. |
| **LTI 1.2 Secret** | (always displayed) The LTI 1.2 Secret that is used for integrating with an LTI provider. |
| **LTI 1.3 Login/Connect URL** | The LTI 1.3 Login/Connect URL that is used for integrating with an LTI provider.
| **LTI 1.3 Launch URL** | The LTI 1.3 Launch URL that is used for integrating with an LTI provider.
| **LTI 1.3 JWKS URL** | The LTI 1.3 JWKS URL that is used for integrating with an LTI provider.
| **LTI 1.3 DeepLink URL** | The LTI 1.3 DeepLink URL that is used for integrating with an LTI provider.
| **LTI 1.3 Issuer** | The LTI 1.3 Issuer that is used for integrating with an LTI provider.
| **LTI 1.3 Access token URL** | The LTI 1.3 Access Token that is used for integrating with an LTI provider.
| **LTI 1.3 Authorize URL** | The LTI 1.3 Authorize URL that is used for integrating with an LTI provider.
| **LTI 1.3 Managed Auth Token** | The LTI 1.3 Managed Auth that is used for integrating with an LTI provider.
| **LTI 1.3 JWK Set URL** | The LTI 1.3 JWK Set URL that is used for integrating with an LTI provider.
| **LTI 1.3 Public Key** | The LTI 1.3 Public Key that is used for integrating with an LTI provider.
| **LTI 1.3 Client ID** | The LTI 1.3 Client ID that is used for integrating with an LTI provider.

### Webhooks

Webhooks enable a payload of data to be sent to a specific HTTP URL location when a Lab lifecycle event has occurred. Multiple Webhooks may be configured for one or more events within a single API Consumer. With the proper permissions Webhooks can be added, and updated, and deleted directly from the Display page of an API Consumer without having to edit the API Consumer. The following are a list of the fields available when configuring a Webhook.

**Note**: If this section is not available to you, please open a support ticket to get additional permissions added to your user account, to be able to configure webhooks.

Select **+Add Webhook** to add a new webhook to an API consumer.

| Field | Description |
|:---|:---|
| **Name** | The name of the webhook. |
| **Event** | The webhook will be called when an event occurs during the life cycle of the lab. (See **[Available Events](#available-events)**) |
| **Verb** | • **GET**: use the GET verb to obtain data.<br>• **POST**: use the POST verb to add new data.<br>• **DELETE**: use the DELETE verb to delete data.<br>• **PUT**: use the PUT verb to modify data |
| **URL** | A webhook URL that will be used to send the Webhook response to when the configured platform event occurs. Any lab replacement token can also be added to the URL surrounded by `{}`. For example:The lab instance ID will be injected into URL using the replacement value `{id}`.<br>`https://myexternalsite.com/labinstance/changed/{id}.` |
| **Headers** | (See **[Headers Usage](#headers-usage)**) |
| **Send Lab Details as Content Body** | The content body will contain JSON-formatted information about the lab instance. This option and the **Content** field are mutually exculsive.<br>(See **[Content Body Example](#content-body-example)**) | 
| **Content** | The optional content body of the webhook request. This field is not available if the **Send Lab Details as Content Body** is selected. |
| **Enabled** | This selects whether the webhook is enabled or not. |
| **Blocking** | This allows you to block further triggering of events and other webhooks until this webhook execution completes. If a webhook fails and is set to blocking, the next event in the life cycle will not begin until the webhook succeeds or fails. If the webhook has retries enabled, Skillable Studio will retry up to 5 times before moving onto the next life cycle event. |
| **Delay** | An optional delay before the webhook is triggered. |
| **Timeout** | The amount of time to wait for the webhook request to complete, before timing out. |
| **Retries** | The maximum number of times the webhook will be called in the event of an error response. The time between retries is 1 second for the 1st retry, 2 seconds for the 2nd retry, 3 seconds for the 3rd retry, 4 seconds for the 4th retry, and 5 seconds for the 5th retry. Skillable Studio will only retry 5 times. |
| **Error Action** | The action to take in the event that a webhook returns an error response.<br>&nbsp;&nbsp;• **Log**: Logs the error on the user's lab instance details page.<br>&nbsp;&nbsp;• **Send Notification to User**: Sends a notification to the user's lab instance.<br>&nbsp;&nbsp;• **End Lab**: Ends the user's lab instance. |

#### Available Events
The following is a list of the events available to Webhooks.

| Event | Description |
|:---|:---|
| **Pre-Build** | The lab components are being deployed, as well as any cloud resources.
| **Post-Build** | The lab environment has been built, but components like virtual machines may still be starting. |
| **First Displayable** | All components of the lab are now running and the user can now interact with the lab. |
| **Saving** | The lab is in the process of being saved. |
| **Saved** | The lab is in a saved state and no longer active. |
| **Resuming** | The lab is resuming from a saved state. |
| **Resumed** | The lab has been resumed from a saved state and the user can interact with the lab again. |
| **Scoring** | The lab has begun the process of scoring. This triggers immediately when scoring is initiated in the lab, before platform scoring is performed. If the action is blocking, this will allow the action to complete before platform scoring occurs. |
| **Scored** | The lab has been scored. This triggers immediately after platform scoring completes. If the action is blocking, this will allow the action to complete before the lab is torn down or returned to a running state. |
| **Tearing Down** | The lab environment is being torn down. |
| **Torn Down** | The lab environment is fully torn down. |
| **Transfer to User** | The lab instance is transferred to another user from the lab instance. |
| **Deferred Launch (New)** | A new lab has been launched via a deferred launch page, as opposed to a direct Launch API. |
| **Deferred Launch (Existing)** | An existing lab has been launched via a deferred launch page, as opposed to a direct Launch API. |
| **Deferred Resume** | A lab has been resumed via a deferred launch page, as opposed to a direct Launch API. |
| **Lab Assignment Created** | A lab profile has been assigned to a user. |
| **Lab Profile Changed** | A lab profile has been changed. For example, a content edit or configuration change has been performed. |

#### Headers Usage
It is recommended to add an authorization header in order to secure your webhook. Headers should be entered in **name=value** format, with each header on a new line. 

If Basic Authentication is required for the webhook in the header field enter `Authorization=Basic <Base64 URL Safe version of the Username:Password>`. Assuming a username of **Webhookuser** and a password of **webhookpassword** the Base64 URL Safe string of **Webhookuser:webhookpassword** is **V2ViaG9va3VzZXI6d2ViaG9va3Bhc3N3b3Jk**. In the header field the full entry would be `Authorization=Basic V2ViaG9va3VzZXI6d2ViaG9va3Bhc3N3b3Jk`. To help with converting the username and password there are many available tools including Cyber Chef.

#### Content Body Example
The following is a sample of the return payload when selecting the **Send Lab Details as Content Body** option.

```
JSON{
    "Id": 998592321,
    "UserId": 5023932,
    "UserExternalId": "Example.User",
    "UserFirstName": "Example",
    "UserLastName": "User",
    "LabProfileId": 19376,
    "LabProfileName": "Example Lab",
    "LabProfileNumber": "ABC",
    "LabSeriesId": 10296,
    "LabSeriesName": "Example Series",
    "ClassId": null,
    "ClassExternalId": null,
    "ClassName": null,
    "Start": 1671565852,
    "End": null,
    "Expires": 1671587452,
    "LastActivity": null,
    "LastSave": null,
    "State": 20,
    "CompletionStatus": 2,
    "CustomData": null,
    "ExamPassed": null,
    "ExamScore": null,
    "ExamMaxPossibleScore": 10,
    "ExamPassingScore": 7
}
```

### Roles

Roles are generally created to grant extra functionality by overriding permissions on the API Consumer. Multiple Roles can be defined for different scenarios in an API Consumer. Only Roles and the permissions that have been defined for an API Consumer will be displayed. The following is a list of the permissions that can be assigned to any Role.
	
- Edit lab profile data
- Save differencing/delta disks into a new lab profile
- Save differencing/delta disks in the current lab profile
- Capture virtualization start states
- Bypass leaving notes when updating lab environment
- Edit lab instructions
- Edit lab activities
- Install LOD virtualization integration services
- Show UI while virtual machines are starting
- View deployment errors
- Load developer files into virtual machines
- External lab profile assignment creation
- Secure network access
- Edit virtual machine instance RAM/vCPU
- Map to LTI role
    - membership#Administrator
    - membership#ContentDeveloper
    - membership#Instructor
    - membership#Learner
    - membership#Mentor
    - membership#Manager
    - membership#Member
    - membership#Officer
    - person#Administrator
    - person#Faculty
    - person#Gues
    - person#None
    - person#Other
    - person#Staff
    - person#Student
    - person#Alumni
    - person#Instructor
    - person#Learner
    - person#Member
    - person#Mentor
    - person#Observer
    - person#ProspectiveStudent

### Advanced
 Advanced options provide extra functionality that is not normally required in an API Consumer.  The following is a list of the fields available when configuring Advance options for an API Consumer.

 | Field | Description |
 |:---|:---|
 | **User URL Format** | This property allows Skillable Studio to create user account links to another platform. The external user ID will be injected into the URL using the replacement value **{id}**. For example, **https://myexternalsite.com/user/`{id}`**.
| **Class URL Format** | This property allows Skillable Studio to create class links to another platform. The external class ID will be injected into the URL using the replacement value **{id}**. For example, **https://myexternalsite.com/class/`{id}`**.
| **Lab Instance Sync URL** | This property allows Skillable Studio to notify an external platform if recent lab instance date has been significantly altered in a non-standard way and the external platform should re-synchronize lab instance data that it may have stored locally. For instance, if lab instances are moved between users.
| **User Max Active Labs Behavior** | How the API will respond to a launch request when the user account has reached the maximum number of allowed active lab instances. The default behavior is to return a simple error response. Alternatively, the API can create a deferred launch token and return a specialized response containing a URL where the user can manage their existing lab instances before continuing to launch a new lab instance.
| **Multi-instance Lab Launch Behavior** | How the API will respond when a lab profile that has multiple instances per user enabled and the user has an existing active instance of the lab. The default behavior is to launch the existing instance. Alternatively, the API can create a deferred launch token and return a specialized response containing a URL where the user can launch into an existing instance or launch a new instance.
| **User Retake Exemptions** | Labs launched using an email in this exceptions list will bypass retakes enforcement. Each email should be on a separate line. Emails are not case sensitive. |

### Available Lab Series

All Lab Series that are published to this API Consumer will be displayed here as links. Lab Series will be displayed with the name of the Lab Series as well as the organization that owns the Lab Series.

### Related Topics

**Suggestions**:
- This is a self-contained document so "Next Steps" should not be needed
- Link to a document describing using API Keys for authorizing APIs
- Link to a document for using SCORM Packaged Lab Launches
- Link to a document for integrating LMS's using LTI 1.3
- Link to a document spelling out exactly how/why to use Webhooks
