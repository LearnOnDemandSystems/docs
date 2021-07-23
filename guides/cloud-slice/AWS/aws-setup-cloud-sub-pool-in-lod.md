---
title: "Setup your AWS cloud subscription in OneLearn Lab on Demand"
description: "Configure a subscription pool in Lab on Demand, for use with AWS cloud slice."
isPublished: true
---

# Setup your AWS cloud subscription in OneLearn Lab on Demand

[Return to Cloud Slice Guide](../cloud-slice.md)

To add a Cloud Subscription Pool to OneLearn Lab on Demand (LOD), perform the following steps:

1. Navigate to the <a href="https://labondemand.com" target="_blank">OneLearn Lab on Demand portal</a> and sign in.

1. Open the **Subscription Pools** section on the Cloud Services tile.

1. Click **Create Cloud Subscription Pool** to create a new cloud subscription pool in LOD.

1. Select **AWS** from the **Cloud Platform** drop-down menu. 

1. Select **Automated** from the **Pool Type** drop-down menu. 

1. Select **Dedicated** from the **Subscription Mode** drop-down menu. 

1. Assign values to **Name**, **Organization**, and any optional fields you want to use. 

   |Field Name|Description|
   |----|----|
   |Name&nbsp;(required)|The name of the Cloud Subscription Pool being created.|
   |Description|The Description should describe the capabilities or the intent of the Subscription Pool.|
   |Organization&nbsp;(required)|The organization in LOD where the managed Cloud Subscription pool will be used.|
   |Enabled|This checkbox determines if the Cloud Subscription Pool is enabled or disabled.|
   |Custom&nbsp;subscription&nbsp;unavailable&nbsp;message|This message will be presented to users if they try to launch a lab and a subscription is unavailable. If this field is blank, the default message will be used.|
   |Enable&nbsp;Health&nbsp;Checks&nbsp;|Enable health checks across all subscriptions in this pool. LOD will periodically check the subscription for configuration errors and other potential problems.|
   |Health&nbsp;Check&nbsp;Interval&nbsp;|Health check frequency. The health checks for each subscription will be completed at the specified interval.|
   |Enabled&nbsp;|Enables the subscription pool for use. Unchecking this box will disable the subscription pool.|

1. On the **Authentication Tab**, assign values to **Tenant Name**, **Application ID**, and **Application Secret**. 

   |Field Name|Description|
   |----|----|
   |**Catch&nbsp;All&nbsp;Domain**|When AWS accounts are created for cloud slice, the root users will use this domain in the email address. It is best practice to have a catch all email inbox for all emails from AWS supposrt for password reset requests if access is required to one of the root user accoutns. If you choose to close an account, this will be required to gain access to the root user account. |
   |**Access&nbsp;Key&nbsp;Id**|Security Credential Access key secret for a user with Programmatic access in IAM. This is generated from the user settings Security Credentials in IAM.|
   |**Access&nbsp;Key&nbsp;Secret**|Security Credential Access key ID for a user with Programmatic access in IAM. This is generated from the user settings Security Credentials tab in IAM.|

   

1. On the **Automation Tab**, assign values to **Number of Subscriptions** and **Subscription Name Prefix**.

   |Field Name|Description|
   |----|----|
   |**Number&nbsp;Of&nbsp;Subscriptions**|For dedicated pools, subscriptions will be automatically created ahead of time. When this hapens, LOD will create up to the number of subscriptions specified here. Please ensure that all limits on your account or subscription (set by the cloud host provider) are greater than or equal to the number entered here. For example, if your subscription limit or account limit is 20, you should not enter more than 20 in this field. |
   |**Subscription&nbsp;Name&nbsp;Prefix**|When subscriptions are created, the name of the subscription or account will start with this text.|

10. Click **Save** to create the Cloud Subscription Pool.

11. At this point you will need to submit a support ticket with our helpdesk including the number of accounts that will be needed. If you expect 20 lab users, you will need 20 accounts. It is a good idea to increase this amount to allow more accounts than needed, to ensure future events will be supported, or if more lab users join the event. A new ticket with AWS will need to be created each time this needs increased. 

** Our Support link https://www.learnondemandsystems.com/customer-support/

[Back to top](#setup-your-aws-cloud-subscription-in-onelearn-lab-on-demand)
