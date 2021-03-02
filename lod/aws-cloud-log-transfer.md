---
title: "AWS Cloud Trail Log Transfer"
description: "AWS Cloud Trail logging enables the ability to audit all cloud logs in a user session and store those logs in a storage location."
isPublished: true
---

# Amazon Web Services Cloud Trail Log Transfer 

- [Enable Cloud Log Transfer for Your Organization](#enable-cloud-log-transfer-for-your-organization)
* [Create AWS Cloud Trail](#create-aws-cloud-trail)
  + [Choose Trail Attributes](#choose-trail-attributes)
    - [General Details](#general-details)
    - [CloudWatch Logs](#cloudwatch-logs)
  + [Choose Log Events](#choose-log-events)
    - [Events](#events)
    - [Management Events](#management-events)
  + [Review and Create](#review-and-create)
* [Create S3 Bucket](#create-s3-bucket)
    - [General configuration](#general-configuration)
    - [Block Public Access Settings for Bucket](#block-public-access-settings-for-bucket)
    - [Bucket Versioning](#bucket-versioning)
    - [Tags - optional](#tags---optional)
    - [Default Encryption](#default-encryption)
* [Confirm CloudTrail and CloudWatch are configured correctly](#confirm-cloudtrail-and-cloudwatch-are-configured-correctly)
* [Gather Information and Configure LOD](#gather-information-and-configure-lod)
  + [LOD Subscription Pool](#lod-subscription-pool)
  + [AWS](#aws)
	- [Cloud Watch Log Group](#--cloud-watch-log-group--)
    - [Cloud Log Staging](#--cloud-log-staging--)
* [Reviewing Logs](#reviewing-logs)

Amazon Web Services (AWS) Cloud Trail logging enables the ability to audit all cloud logs in a user session and store those logs in a storage location. After logs are captured, they are transferred to AWS CloudWatch, then to an S3 storage bucket and then finally to an SFTP storage location.

The client is responsible for providing the SFTP location. 

To Configure the organization to use an SFTP, the following information must be provided. 
- Configure Site
- Configure Directory
- Configure Username
- Configure Password

AWS Cloud Trail logging requires configuration in AWS and in Lab on Demand (LOD).

- Enable _Allow Cloud Log Transfer_ for your organization in LOD
- Create an AWS Cloud Trail
- Create an S3 bucket in AWS
- Enable CloudWatch Logs in AWS
- Configure Cloud Log Transfer settings in an LOD subscription pool


## Enable Cloud Log Transfer for Your Organization 

To use Cloud Log Transfer, your organization must have the feature enabled. To enable the feature for your organization, please contact our [customer support team](http://www.learnondemandsystems.com/customer-support/). 


## Create AWS Cloud Trail

1. Log in to the AWS management portal. 
1. Go to the **CloudTrail service page**. 
1. Once you are on the CloudTrail service page, click **Dashboard** on the left side of the page.
1. Click **Create Trail**.

### Choose Trail Attributes

#### General Details 

1. **Trail Name**: enter a display name for your trail.
1. Click the checkbox next to **Enable for all accounts in my organization**. If this is not enabled, some user logs may not be captured.
1. Select the option **Create new S3 bucket**.
1. The Trail log bucket and folder name will be entered automatically. If you would like to rename your folder prefix or S3 bucket name, you may do so. The S3 bucket name must be globally unique. 
1. **Log file SSE-KMS encryption**: this option is enabled by default, leave this option enabled. 
1. **AWS KMS customer managed CMK**: ensure that _New_ is selected. 
	- Enter a KMS alias.
1. **Log File validation** is enabled by default, leave this option enabled. 
1. **SNS notification delivery** is disabled by default. If you have SNS configured already, you can enable this and enter your SNS configuration information. 

#### CloudWatch Logs 

1. **CloudWatch Logs**: Check the box to **enable CloudWatch Logs**.
1. **Log Group**: select **New**. 
1. **Log group name** will be entered automatically. 
1. **IAM Role**: select **New**. 
1. **Role name**: Enter a Role name. AWS suggests using this format: `CloudTrailRoleForCloudWatchLogs_trail-name`
1. Click **Next**.

### Choose Log Events

#### Events

1. **Event Type**: Management Events is enabled by default. This will allow capture of management operations performed on your AWS resources. 

#### Management Events

1. **API activity**: Read and Write are enabled by default. These options need to be enabled.
1. Click **Next**.

### Review and Create

1. Review the CloudTrail configuration. If any changes need to be made, make the changes before clicking Create Trail.
1. Click **Create Trail**.

Next, we need to create an S3 bucket. 

## Create S3 Bucket

1. From the AWS Management Console, go to the **S3 service page**. 
1. Click **Create Bucket**.

#### General configuration 

1. **Bucket name**: enter a unique Bucket name.
1. **Select the region** where the S3 bucket will be created. The region must be the same region as the Home Region where the CloudTrail was created. The CloudTrail will be located in the region selected in the AWS Management Console during creation.

#### Block Public Access Settings for Bucket

1. Block All public access is enabled by default. If this is not set to block all public access, public users may access be able to access logs. 

#### Bucket Versioning

1. Bucket versioning is disabled by default. 

#### Tags - optional

1. configure tabs if you wish. Tags are not necessary to enable this feature. 

#### Default Encryption

1. Server-side encryption is disabled by default.

Click **Create Bucket**.

## Confirm CloudTrail and CloudWatch are configured correctly

1. In AWS, go to the **CloudWatch service page**.
1. Click **Log Groups** on the left side of the page. 
1. Select your Log Group.
1. Click the **Log stream name** at the bottom of the page.
1. You should see events on this page. 
	- If see events, CloudTrail and CloudWatch are configured correctly in AWS. 
	- If you do not see events, review all previous steps and ensure a step was not missed or misconfigured.

## Gather Information and Configure LOD

Next, we need to gather some information in AWS and use it to configure the subscription pool in LOD. In this section you should have your LOD subscription pool open, as well as the AWS Management Console. 

### LOD Subscription Pool

1. Navigate to your LOD subscription Pool and click **Edit**. 
1. Go to the **Cloud Log Transfer** tab. 
1. Check the box next to **Enable Cloud Log Transfer**.
1. Continue to the next step in AWS. 

### AWS

1. In a separate browser tab or window, navigate to the AWS portal, and ensure you are logged into the same account as previous steps. 
1. Gather the required information below and configure in the LOD subscription pool.

	#### **Cloud Watch Log Group**

	1. In AWS, go to the **CloudTrail service page**. 
	1. Click **Trails** on the left side of the page. 
	1. Note the Home Region where your Trail is created. 
	1. Click the name of the Trail that you created. 
	1. Copy the value for the Log group under CloudWatch Logs.
	1. In the LOD subscription pool, enter the Log Group name into the **Cloud Watch Log Group** field. 
	1. In the LOD subscription pool, **select the region** that matches the home region of your CloudTrail. 

	#### **Cloud Log Staging**

	1. In AWS, go to the **S3 service page**.
	1. Click the name of the S3 bucket you created.
	1. Copy bucket name at the top of the page. 
	1. In the LOD subscription pool, enter the S3 bucket name in the **Cloud Log Staging** field. 

In the LOD subscription pool, SFTP settings can be overridden if needed. If SFTP settings are overridden the pool will not use the SFTP settings that are configured on the organization profile, and SFTP settings will need to be entered into the subscription pool. 

Save the LOD subscription pool. Cloud Trail Log Transfer is now configured and logs will be captured for all lab launches that use the subscription pool.  

## Reviewing Logs

Logs are transferred to the SFTP storage within 4 hours after they are captured.

To view logs: 

1. Log into the SFTP storage location. 
1. logs will separated by lab instance ID in JSON files. 
1. Logs will display events in the order that they occurred. 