---
title: "API Consumer Profile "
description: "API Consumer profile creation, and explanation of API consumer configuration."
isPublished: true
---

# API Consumer Profile 

## Table of Contents 
- [Basic Information](#basic-information)
- [Keys](#keys)
- [LTI](#lti)
- [Webhooks](#webhooks)
- [Roles](#roles)
- [Advanced](#advanced)
- [Available Lab Series](#available-lab-series)


## Basic Information 

- **Default Organization**: the default organization that uses the API consumer. 
- **Enable Launch Failure Notifications**: indication if launch failure notifications are enabled. 
- **Expires**: displays the expiration date of the API consumer profile if an expiration is configured.
- **Configuration**: API usage configuration.
- **Consuming Platform**: the name of the platform that will use the API consumer.
- **Consuming Platform Version**: the version of the consuming platform.
- **Max RAM Usage**: the maximum concurrent RAM usage by labs that are launched by this API consumer. 
- **Max Active Lab Instance**: The maximum number of concurrent active lab instances that can be running, from labs launched by this API consumer.
- **Default Active Lab Instances Per User**: the default number of active labs a user will be allowed to have. This value will be applied to the user account when the API consumer doesn't specify it. 
- **Max Active Lab Instances Per User**: this controls the maximum value an API consumer is allowed to use when specifying the number of active labs a user can have. If the API consumer specifies a higher value, this value will be used instead.
- **Default Saved labs Per user**: the default number of saved labs a user will be allowed to have. This value will be applied to user accounts when the API consumer doesn't specify it.
- **Max Saved labs Per user**: this controls the maximum value an API consumer is allowed to use when specifying the number of saved labs a user can have. If the API consumer specifies a higher value, it will be ignored. 
- **Defaults Lab Instance Save Days**: the default number of days saved lab instances will be kept before being deleted. this value will be applied to lab instances when the API consumer doesn't specify it.
- **Max Lab instance Save Days**: this controls the maximum value an API consumer is allowed to use when specifying the number of days a lab instance can be saved for. If the API consumer specifies a higher value, this value will be used instead.
- **Maximum Lab Duration**: this controls the maximum duration in minutes that a lab launched by this API consumer will be allowed to have. If the lab profile has a longer duration, this value will override it.
- **Minimum Lab Duration for Billing**: establishes how long a lab instance launched by this API consumer must run before it is considered billable. If the lab ends in less time, it will not be billed.
- **Lab Launch Capability**: labs that are capable of being launched by this API consumer.
- **Lab Instance Visibility**: lab instances that are visible by this API consumer. There are two options to choose from:
    - **Lab Launched by this API Consumer**: the API consumer will only be able to view and interact with lab instances that it launches directly.
    - **Labs Available to this API consumer**: The API consumer will be able to see and interact with all lab instances whose lab profiles are published to the API consumer. The lab instances can have been launched in any way, from an event page, a link, another API consumer, or lab profiles that are not associated with the API consumer.
- **Can Launch Developmentally-Incomplete Labs**: this allows the API consumer to launch lab profiles that have their Development Status set to Incomplete.
- **Require Assignments for Lab Launches**: this requires that all labs be launched as part of a lab series assignment. Only labs that are part of a series will be eligible for launch.
- **Automatically Create Assignments for Lab Launches**: when a lab is launched by this API provider and an active Lab Series Assignment cannot be found for the given user, a new Lab Series Assignment will be created automatically.
- **Default Assignment Duration Days**: the number of days that an automatically created Lab Series assignment will be active for.

## Keys

API keys for this API Consumer will be displayed here. 

- **Key**: the API key that is used to integrate with your platform. This API key is hidden by default. Selecting _Show_ will expose the API key and selecting _Copy_ will copy the API key to your clipboard.
- **Description**: the description of the API key.
- **Enabled**:  indication if the API consumer is enabled or disabled.
- **Expires**: if the API consumer has an expiration date configured, the date will be displayed.
- **Created**: the date and time that the API consumer was created. 

## LTI

- **LTI 1.2 Key**: the LTI 1.2 Key that is used for integrating with an LTI provider.
- **LTI 1.2 Secret**: the LTI 1.2 Secret that is used for integrating with an LTI provider.
- **LTI 1.3 Login/Connect URL**: the LTI 1.3 Login/Connect URL that is used for integrating with an LTI provider.
- **LTI 1.3 Launch URL**: the LTI 1.3 Launch URL that is used for integrating with an LTI provider.
- **LTI 1.3 JWKS URL**: the LTI 1.3 JWKS URL that is used for integrating with an LTI provider.
- **LTI 1.3 DeepLink URL**: the LTI 1.3 DeepLink URL that is used for integrating with an LTI provider.
- **LTI 1.3 Issuer**: the LTI 1.3 Issuer that is used for integrating with an LTI provider.
- **LTI 1.3 Access token URL**: the LTI 1.3 Access Token that is used for integrating with an LTI provider.
- **LTI 1.3 Authorize URL**: the LTI 1.3 Authorize URL that is used for integrating with an LTI provider.
- **LTI 1.3 Managed Auth Token**: the LTI 1.3 Managed Auth that is used for integrating with an LTI provider.
- **LTI 1.3 JWK Set URL**: the LTI 1.3 JWK Set URL that is used for integrating with an LTI provider.
- **LTI 1.3 Public Key**: the LTI 1.3 Public Key that is used for integrating with an LTI provider.
- **LTI 1.3 Client ID**: the LTI 1.3 Client ID that is used for integrating with an LTI provider.

## Webhooks

**+Add Webhook**: select this to add a webhook to this API consumer.  

>[!knowledge] If this section is not available to you, please open a support ticket to get additional permissions added to your user account, to be able to configure webhooks.

- **Name**: the name of the webhook.
- **Event**: the webhook will be called when an event occurs during the life cycle of the lab. Available events include: 
    - **Pre-Build**: the lab components are being deployed, as well as any cloud    resources.
    - **Post-Build**: the lab environment has been built, but components like   virtual machines may still be starting. 
    - **First Displayable**: all components of the lab are now running and the  user can now interact with the lab.
    - **Saving**: the lab is in the process of being saved.
    - **Saved**: the lab is in a saved state and no longer active. 
    - **Resuming**: the lab is resuming from a saved state.
    - **Resumed**: the lab has been resumed from a saved state and the user can interact with the lab again. 
    - **Scoring**: the lab has begun the process of scoring. This triggers immediately when scoring is initiated in the lab, before platform scoring is performed. If the action is blocking, this will allow the action to complete before platform scoring occurs.
    - **Scored**: the lab has been scored. This triggers immediately after platform scoring completes. If the action is blocking, this will allow the action to complete before the lab is torn down or returned to a running state.
    - **Tearing Down**: the lab environment is being torn down. 
    - **Torn Down**: the lab environment is fully torn down.
    - **Transfer to User**: the lab instance is transferred to another user from the lab instance.
    - **Deferred Launch (New)**: a new lab has been launched via a deferred launch page, as opposed to a direct Launch API.
    - **Deferred Launch (Existing)**: an existing lab has been launched via a deferred launch page, as opposed to a direct Launch API. 
    - **Deferred Resume**: a lab has been resumed via a deferred launch page, as opposed to a direct Launch API.
    - **Lab Assignment Created**: a lab profile has been assigned to a user. 
    - **Lab Profile Changed**: a lab profile has been changed. For example, a content edit or configuration change has been performed. 
- **Verb**: 
    - **GET**: use the GET verb to obtain data.
    - **POST**: use the POST verb to add new data.
    - **DELETE**: use the DELETE verb to delete data.
    - **PUT**: use the PUT verb to modify data
- **URL**: A webhook URL that will be used to send the Webhook response to when the configured platform event occurs.  Any lab [replacement token](../lod/feature-focus/cloud-resource-templates/replacement-tokens.md) can also be added to the URL surrounded by `{}`. For example:The lab instance ID will be injected into URL using the replacement value `{id}`. `https://myexternalsite.com/labinstance/changed/{id}`.
- **Headers**: headers should be entered in `name=value` format, with each header on a new line. It is recommended to add an authorization header in order to secure your webhook. If Basic Authentication is required for the webhook in the header field enter `Authorization=Basic <Base64 URL Safe version of the Username:Password>`.  Assuming a username of `Webhookuser` and a password of `webhookpassword` the Base64 URL Safe string of `Webhookuser:webhookpassword` is `V2ViaG9va3VzZXI6d2ViaG9va3Bhc3N3b3Jk`.  In the header field the full entry would be `Authorization=Basic V2ViaG9va3VzZXI6d2ViaG9va3Bhc3N3b3Jk`.  To help with converting the username and password there are many available tools including [Cyber Chef](https://cyberchef.org/ "Link to Cyber Chef for performing the Base64 conversion")
    - **Send Lab Details as Content Body**: the content body will contain JSON-formatted information about the lab instance. Example:
    
 ```JSON{
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
- **Content**: the optional content body of the webhook request.
- **Blocking**: this allows you to block further triggering of events and other webhooks until this webhook execution completes. If a webhook fails and is set to blocking, the next event in the life cycle will not begin until the webhook succeeds or fails. If the webhook has retries enabled, Skillable Studio will retry up to 5 times before moving onto the next life cycle event.
- **Delay**: an optional delay before the webhook is triggered.
- **Timeout**: the amount of time to wait for the webhook request to complete, before timing out.
- **Retries**: the maximum number of times the webhook will be called in the event of an error response. The time between retries is 1 second for the 1st retry, 2 seconds for the 2nd retry, 3 seconds for the 3rd retry, 4 seconds for the 4th retry, and 5 seconds for the 5th retry. Skillable Studio will only retry 5 times.
- **Error Action**: the action to take in the event that a webhook returns an error response.
    - **Log**: logs the error on the user's lab instance details page.
    - **Send Notification to User**: sends a notification to the user's lab instance.
    - **End Lab**: ends the user's lab instance.

## Roles

API Roles that are configured for this API consumer will be displayed here. 

## Advanced

- **User URL Format**: this property allows Skillable Studio to create user account links to another platform. The external user ID will be injected into the URL using the replacement value `{id}`. For example, `https://myexternalsite.com/user/{id}`.
- **Class URL Format**: this property allows Skillable Studio to create class links to another platform. The external class ID will be injected into the URL using the replacement value `{id}`. For example, `https://myexternalsite.com/class/{id}`.
- **Lab Instance Sync URL**: this property allows Skillable Studio to notify an external platform if recent lab instance date has been significantly altered in a non-standard way and the external platform should re-synchronize lab instance data that it may have stored locally. For instance, if lab instances are moved between users.
- **User Max Active Labs Behavior**: how the API will respond to a launch request when the user account has reached the maximum number of allowed active lab instances. The default behavior is to return a simple error response. Alternatively, the API can create a deferred launch token and return a specialized response containing a URL where the user can manage their existing lab instances before continuing to launch a new lab instance.
- **Multi-instance Lab Launch Behavior**: how the API will respond when a lab profile that has multiple instances per user enabled and the user has an existing active instance of the lab. The default behavior is to launch the existing instance. Alternatively, the API can create a deferred launch token and return a specialized response containing a URL where the user can launch into an existing instance or launch a new instance.
- **User Retake Exemptions**: labs launched using an email in this exceptions list will bypass retakes enforcement. Each email should be on a separate line. Emails are not case sensitive. 

## Available Lab Series 

All Lab Series that are published to this API Consumer will be displayed here. Lab Series will be displayed with the name of the Lab Series and the organization that owns the Lab Series. 
