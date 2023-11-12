API Consumers are used for multiple purposes including publishing labs for production consumption, integrating with external Learning Management Systems (LMS), authorizing Skillable LOD API commands and more. This article will show a Lab Developer how to create and configure a basic API Consumer for use in publishing Lab Series to.

## In This Article 

- [Required Permissions](#topic-a)
- [Best Practices](#topic-b)
- [Basic Configuration](#topic-one)
- [Publishing Lab Series](#topic-three)
- [Next Steps](#topic-four)
    
This article will help you understand and configure the basic settings used to create an API Consumer. You will also learn about publishing Lab Series with an API Consumer, a primary purpose of an API Consumer. Finally, the next steps in configuring an API Consumer will be discussed.

### Required Permissions

Administration of API Consumers requires the following permissions. If you do not have these permissions, please reach out to our [customer support team](http://www.skillable.com/customer-support/) for assistance. 

>| Level | Role | Permission(s) |
>|:---|:---|:---|
>| Organization | Organization API Management | • API Consumer Viewing<br>• Webhook Managment |

NOTE: The following role(s) may only be given to internal Skillable users.
>| Level | Role | Permission(s) |
>|:---|:---|:---|
>| Global | LOD Internal - API Administrator | • Api Consumer Management Create<br>• Api Consumer Management Delete<br>• Api Consumer Management Edit<br>• Api Consumer Management View |

## Best Practices

Describe the best way to use this feature, or the best way to configure this feature. These best practices should help the reader decide which sections below are important for what they are trying to accomplish. 

When creating or configuration an API Consumer you should follow these common Best Practices as a general guide:

- Know what you need the API Consumer to accomplish and only complete the sections required to satisfy your needs.
- Develop a naming convention for API Consumers to ensure they are easily identifiable.
- Add a detailed description in the Description field to fully describe the purpose of the API Consumer.
- Launch Failure Notifications should always be enabled to quickly identify issues on lab launch. Only disable this setting if there is a strong reason to do so.
- When using an API Consumer for development, testing, demonstrations or other limited time functions always set an appropriate expiry date.
- Production API Consumers may be long lived and not require an expiry date. Evaluate this carefully to minimize risk.
- When an API Consumer is no longer required, disable it. If possible, delete it.

## Basic Configuration

Whether you are creating or editing an API Consumer the **Basic Information** tab allows the configuration of the most common features. This tab determines the primary use that the API Consumer is required for. 

Populate the most common fields by completing the following directions to define the purpose of the API Consumer.

1. Enter a short, but descriptive, name for the API Consumer in the required **Name** field.

1. A Detailed description can provide clarity for the API Consumer. Optionally add a description in the **Description** field.

1. To help to limit the scope in which the API Consumer can be used select **Choose** and pick the appropriate **Default Organization** for the API Consumer.

1. In order to use the API Consumer the **Enabled** field must be selected.

1. In most cases it is advisable to select the **Enable Launch Failure Notifications** to be informed of lab launch issue. You may, however, disable this field if you choose.

1. It is generally advisable to enable and set the **Expires** date and time fields. However, in some production scenarios it may be advisable to disable these values.

1. The **Configuration** field, combined with the **Consuming Platform** field, will predefine the default settings for the Lab Instance Environment fields (see table below for a description of these fields and their use).

1. Optionally provide the value of the originating LMS/LXP or other application in the **Consuming Platform Version** field.
    >
    >  **Lab Instance Environment**
    >
    >| Field | Description |
    >|:---|:---|
    >| **Max RAM Usage** | The maximum concurrent RAM usage by labs that are launched allowed by  this API consumer. |
    >| **Max Active Lab Instances** | The maximum number of concurrent active lab instances that can be running, from labs launched by this API consumer. |
    >| **Default Active Lab Instances Per User** | The default number of active labs a user will be allowed to have. This value will be applied to the user account when the API consumer doesn't specify it. |
    >| **Max Active Lab Instances Per User** | This controls the maximum value an API consumer is allowed to use when specifying the number of active labs a user can have. If the API consumer specifies a higher value, this value will be used instead. |
    >| **Default Saved Labs Per User** | The default number of saved labs a user will be allowed to have. This value will be applied to user accounts when the API consumer doesn't specify it. |
    >| **Max Saved Labs Per User** | This controls the maximum value an API consumer is allowed to use when specifying the number of saved labs a user can have. If the API consumer specifies a higher value, it will be ignored. |
    >| **Maximum Lab Duration** | This controls the maximum duration in minutes that a lab launched by this API consumer will be allowed to have. If the lab profile has a longer duration, this value will override it. |
    >| **Maximum Lab Duration for Billing** | Establishes how long a lab instance launched by this API consumer must run before it is considered billable. If the lab ends in less time, it will not be billed. |
    >| **Lab Launch Capability** | Labs that are capable of being launched by this API consumer. There are three options to choose from:<br>&nbsp;&nbsp;&nbsp;&nbsp;• **Labs available to this API consumer**: The API Consumer will only be able to launch labs  that are directly available to it .<br>&nbsp;&nbsp;&nbsp;&nbsp;• **None**: Prevents the API Consumer from launching any labs.<br>&nbsp;&nbsp;&nbsp;&nbsp;• **All labs**: ???*Allows the API Consumer to launch any Lab Profile available to the system*??? |
    >| **Lab Instance Visibility** | Lab instances that are visible by this API consumer. There are three options to choose from:<br>&nbsp;&nbsp;&nbsp;&nbsp;• **Labs launched by this API consumer**: The API Consumer will only be able to view and interact with lab instances that it launches directly.<br>&nbsp;&nbsp;&nbsp;&nbsp;• **Labs available to this API Consumer**: The API consumer will be able to see and interact with all lab instances whose lab profiles are published to the API consumer. The lab instances can have been launched in any way, from an event page, a link, another API consumer, or lab profiles that are not associated with the API consumer.<br>&nbsp;&nbsp;&nbsp;&nbsp;• **All labs**: Allows the API Consumer to view and interact with all lab instances in the system. This should only be anabled under special circumstances (example: for use by an internal service that coordinates data for multiple customers) |
    >| **Can Launch Developmentally-Incomplete Labs** | This allows the API consumer to launch lab profiles that have their Development Status set to Incomplete. |
    >| **Can Launch on Specified Infrastructure** | Allows the API consumer to specify a lab host ID and/or a file share ID when launching a lab instance. This should only be enabled under special circumstances (example: internal testing of new infrastructure) |
    >| **Require Assignments for Lab Launches** | This requires that all labs be launched as part of a lab series assignment. Only labs that are part of a series will be eligible for launch. |
    >| **Automatically Create Assignments for Lab Launches** | When a lab is launched by this API provider and an active Lab Series Assignment cannot be found for the given user, a new Lab Series Assignment will be created automatically. |
    >| **Default Assignment Duration Days** | The number of days that an automatically created Lab Series assignment will be active for. |
    >| **Enable Portal Integration** | This creates a connection between the API consumer and the Skillable Insights portal. |

9. When you are satisfied with the basic configuration of your API Consumer select the **Save** button to store the settings.

## Publishing Lab Series

API Consumers are key components to launching labs in a production environment. To do this, the Lab Series that the Lab Profile belongs to must be attached to a properly configured API Consumer. The following simple steps will guide you through this process.

1. Edit an API Consumer that has been configured appropriately (see **Basic Configuration** above), and select the **Publish** tab.

1. To include the Lab Series that will be used to publish Lab Profiles with select the **+ Add Lab Series** link above the **Save** button.

1. To search for a Lab Series by name, ensure that the filter values are set to **Does** and **Contain** and then enter part, or all, of the Lab Series name in the **Name** field and select the **Search** button.

    > **NOTE**: You can also select another filter from the **Filter** drop-down box to search by other characteristics of a Lab Series.

4. You can select one or more Lab Series from the list by selecting the check-box to the left of the Lab Series name and then selecting the **OK** button.

1. When you are satisfied with the Lab Series that you have included on the Publish tab, select the **Save** button to keep your selections.

    >**NOTE**: Lab Profiles must have a development status of **Complete** for them to be properly published to an API Consumer and launched in a Production environment.


## Next Steps

There are many more options and capabilities available on an API Consumer.  Select one of the following articles to discover more.

- [Configure an API Consumer Profile with API and SCORM Keys](URL "Configure an API Consumer Profile with API and SCORM Keys")
- [Configure an API Consumer Profile for LTI 1.3 Integrations](URL "Configure an API Consumer Profile for LTI 1.3 Integrations")
- [Configure an API Consumer Profile with Roles](URL "Configure an API Consumer Profile with Roles")
- [Configure an API Consumer Profile with Advanced Options](URL "Configure an API Consumer Profile with Advanced Options")

### Reference Materials

