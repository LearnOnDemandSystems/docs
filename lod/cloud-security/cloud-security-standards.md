---
title: "Cloud Security Standards"
description: "In-Depth analysis of security review risk level and approval criteria."
isPublished: true
---

This document explains the nature of the risk associated with Cloud Slice labs and the Cloud Security Standards Skillable uses to help customers mitigate that risk.

# Introduction

All Cloud Slice labs have a level of risk associated with them. The impacts arising from an abuse of a Cloud Slice lab can range from small to extremely expensive. The threat that has the most risk associated with it is the theft of CPU cycles for cryptocurrency mining operations. In a wide-open cloud slice environment with no controls in place to mitigate the threat, crypto miners can potentially provision many expensive Azure VMs or EC2 instances to perform crypto mining operations. Other threats include user error or malicious behavior to use expensive services, such as very large, high-performance databases. 

Skillable takes these risks seriously and uses a number of technical and procedural controls to minimize the risk when you integrate your cloud subscriptions with the Skillable platform to develop Cloud Slice labs. The technical controls include Access Control Policies (ACPs) that limit what a lab user can deploy or access in a lab environment. The procedural controls include a security review process of Cloud Slice labs that identifies the level of risk. The level of risk that is assigned to a lab during the review process determines whether it can be published and other possible constraints. 

> [!Alert]The security review process is a best effort to help minimize customer risk. However, given the rapidly evolving threat environment and other unknown factors, Skillable can make no warranties regarding the elimination or mitigation of risk. Even labs that have been assigned a category of low risk can be potentially abused. Skillable customers who integrate their subscriptions with the lab platfrom and wish to publish labs are responsible making the final determination whether the risk level is acceptable.

## Table of Contents 

- [Cloud Security Standards and Review Process](#cloud-security-standards-and-review-process)
- [Access Control Policies (ACP)](#access-control-policies)
  - [Access Control Policy (ACP) Format](#access-control-policy-format)
    - [Azure](#azure)
    - [Amazon Web Services (AWS)](#amazon-web-services)
  - [Life Cycle Actions (LCA)](#life-cycle-actions)
  - [Background Deployments](#background-deployments)
- [Risk Definitions](#risk-definitions)
  - [High Risk](#high-risk)
  - [Medium Risk](#medium-risk)
  - [Low Risk](#low-risk)
- [Approval Conditions](#approval-conditions)
  - [High Risk](#high-risk-1)
  - [Medium Risk](#medium-risk-1)
  - [Low Risk](#low-risk-1)
- [Additional Information](#additional-information)


# Cloud Security Standards and Review Process

Skillable requires that any Cloud Slice labs must be reviewed and evaluated for risk before external consumption (publication). The Skillable Security Review process defines a lab's security as **High**, **Medium**, or **Low** risk. 

The security review process evaluates a number of objects and configurations to determine the lab's risk level. The evaluation will consider the resources allowed by the ACP, the effects of Life Cycle Actions (LCAs), and various settings, such as lab duration and whether lab saves are permitted. A lab that achieves a **Low** risk designation is one that is designed and configured in such a way as to minimize risk. 

While this evaluation determines a lab's risk for cloud resource abuse, even labs designated **Low** risk still have potential for abuse. In this context, the **Low** risk designation means that the lab design minimizes risk according to a number of criteria and requirements that are defined below, along with the criteria and requirments for designating labs **Medium** and **High** risk. Each risk level also has a set of conditions under which it may be approved for publishing.

# Access Control Policies 

All Cloud Slice labs must have an Access Control Policies (ACPs). ACPs apply restrictions to the lab user's cloud environment and prevent them from creating resources that are not relevant to the content. ACPs are an effective control to ensure the principle of least privilege for your lab users. An effective ACP will limit the lab user to only the resources they require to complete the lab. For example, if a lab user does not need to create an Azure VM or AWS EC2 instance during a lab, the ACP should block the user from performing those actions. 

To learn how to find an appropriate ACP for your lab, or how to write your own, check out [How to Create an Access Control Policy](../create-a-restriction-policy.md). 

> [!Knowledge]Some Access Control Policies (ACPs) are pre-approved and made available to lab developers. Labs that only contain pre-approved ACPs do not require a security review. Learn more about pre-approved ACPs [here](../create-a-restriction-policy.md).

## Access Control Policy Format
### Azure

Azure allows all resources by default. Because of this, Azure ACPs must be designed to deny everything, making exceptions for specified resources. Azure labs should use the following whitelist syntax:
   
```
{
    "if": {
        "not": {
            "anyOf": [
                {
                    Resource 1
                },
                {
                    Resource 2
                },
            ]
        }
    },
    "then": {
        "effect": "deny"
    }
}
```
Where "**Resource #**" is a defined Azure resource. This ensures only the specified resources are allowed while everything else is denied.

### Amazon Web Services

AWS denies all resources by default. AWS ACPs can be designed to only allow specified resources. AWS labs should use the following whitelist syntax:

```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "x",
            "Effect": "Allow",
            "Action": "y:*",
            "Resource": "z"
        }
    ]
}
```

- Where "x" is the optional statement ID (SID) and can be used for policy management. For example, the value for the SID can include a short description of the policy.
- Where "y" is the action that the user can perform. The format is *category:action*. Ex 1: "ec2:*" means all ec2 actions. Ex 2: "iam:GetRole" specifies reading IAM roles. 
- Where "z" is the resource on which these actions can be performed. Ex: "**\***". 

## Life Cycle Actions

If a lab has or inherits a Life Cycle Action that does **any** of the following:
- Creates a new Resource Group
- Modifies user permissions
- Removes or modifies the "Skillable Studio Policy Set" on Azure

then it may be considered **High Risk**.

## Background Deployments

Cloud Slice labs provide the ability to deploy resources using template files. These deployments can be configured to deploy in the background. When configured to deploy in the background, the lab client is displayed to the user before the deployment is complete. In this case, the ACP must allow the resources in the deployment template. However, if the resources are deployed before the lab client is displayed to the user (foreground deployment), the ACP needs to allow only those resources that the lab requires the user to create. This means that foreground deployments can use ACPs that are more restrictive. For example, if you deploy an EC2 instances by using a template, it may not be necessary to allow the creation of EC2 instances in your ACP.

The security review may take into account whether a deployment occurs in the background or foreground and make recommendations for the ACP based on this configuration.

## Other Lab Settings

If a lab has an excessive duration or allows the saving of the lab environment, it may be considered **Medium** or even **High** risk, regardless of the other
controls that are in place. The reason for the designation in this case is to alert the lab developer to the potential for high billing impacts. 

# Risk Definitions

The following definitions provide general guidance only and do not provide complete criteria for determining the risk classification of a particular lab. A number of other factors not listed here may also inform decision to classify a lab into a particular risk category. 

> [!Note] Vulnerabilites may be present in any lab, regardless of its risk classification. The risk classification provides only a best-effort estimate of the probability of exploit occuring against a particular lab configuration.   

## High Risk

Labs with a High risk security status are extremely vulnerable to abuse.

A lab qualifies as **High Risk** if ANY of the following are true:

    Life Cycle Actions:
        • Modify the user roles or permissions to escalate privilege beyond the default permissions or permissions boundary.
        • Azure Only - Remove or modify in any way the "Skillable Studio Policy Set".
    Access Control Policies:    
    
        • Lab allows all resources.
        • Lab allows any compute resources (VMs, containers) without limits.
        • Lab allows compute resources that use large, expensive SKUs with or without other constraints.
        • Lab allows more than 4 inexpensive SKUs of compute resources and are limited only by SKU.
        • Lab blocks specific VM/container sizes rather than only allows specific VM sizes.
        • Lab allows large, expensive resources.
        • Azure Only - Lab allows VM/container scalesets without a scaleset size limit.
        • AWS Only - Lab allows autoscaling of non free-tier VMs/containers.

> **As of March 2021**: AWS free-tier VMs include t2.micro and t3.micro for a maximum of 750 hours per month.

## Medium Risk

Medium risk labs have some known vulnerabilities, but block the highest risk vulnerabilities.

A lab is **Medium Risk** if ALL of the following are true:

    Life Cycle Actions:
        • Do NOT modify the user roles or permissions to escalate privilege beyond the default permissions or permissions boundary.        
        • Azure Only - Do not Remove or modify in any way the "Skillable Studio Policy Set".

**and** ANY of the following:

    Access Control Policies:
    
        • Lab allows only the resources required for the lab but limits compute resources only by 1 - 4 inexpensive SKUs.        
        • Lab blocks virtual machines and containers entirely, but allows other potentially expensive resources.
        • Lab does not limit compute or database resources by name or number of instances.
        • Lab limits compute resources by using a "match" statement for the name.
        • Web apps (Azure) are not limited by SKU or name.
        • Lab is open to SQL Servers or Dynamo DB without limits. 
        

## Low Risk

This is the most preferred security status and identifies a lab as having a low vulnerability to abuse. This security status is **required** for any lab consumed on a free and publicly accessible website.

A lab is **Low Risk** if ALL of the following are true

    User Accounts:
        • All are set to Reader or none.
    Life Cycle Actions:
        • Do not modify user roles or permissions in any way.

**OR** 

ALL of the following:

    Life Cycle Actions:
       • Do not modify user roles or permissions in any way or modify them only in benign and restrictive way.
       • Azure Only - Do not Remove or modify in any way the "Skillable Studio Policy Set".
    Access Control Policies:
       •  Lab is limited to only the resources that it requires.
       •  Web apps(Azure) are limited by sku and name.
       •  Azure Only - SQL Servers are completely denied or are restricted by low-cost SKU, SQL Server name, and database name.
       •  AWS Only - Dynamo DB or other DBS are completely denied or are limited by low-cost size and instance number.
    Lab profile settings:
      • Lab does not allow excessive durations.
        

**and** ANY of the following:

    Access Control Policies:
        • Compute resources and are completely denied.
        • Compute resources are limited by name (Azure) and instance count (AWS).
        • Scalesets are limited by name and low instance count.

# Approval Conditions

Risk level tolerance depends on consumption context. This means that *where* and *how* a lab is being used will determine if a lab is approved. These factors can include paywalls, verified emails, public visibility, etc.

## High Risk

High risk labs require an expiration if set to "Approved". A high risk lab will never be permanently approved unless it has been authorized by both Cloud Security Management at Skillable and the Cloud Subscription owner.

High risk labs may be approved under the following conditions:

- If the intended use is for short term testing or some events. In this case, approval will be set to expire.

- If your Organization's Cloud Security Technical Contact has approved it to be released, acknowledging all identified vulnerabilities.

- If, in the Security Review request, you specify ALL of the following:
  - you require a temporary approval 
  - you acknowledge the high risk nature of the profile
  - you agree to accept all liabilities and damages arising from high-risk nature of the profile.

- If your organization has signed a contract addendum to allow for the approval of high-risk lab profiles on an ongoing basis.  

> [!Note]When seeking approval from the Organization Cloud Security Technical Contact, suggestions on how that lab could be made more secure will be included. Most labs can have their security risk downgraded with just a few changes. A lower security risk is **always** preferred over approving high risk. 

## Medium Risk

Medium risk labs may be approved if ALL of the following are true:

- The lab is **not** made freely available.
- The lab requires unique user accounts to launch.

> Instructor-lead classes and other paid-access consumption methods usually meet these conditions. 

## Low Risk

This security status is **required** for any lab consumed on a free and publicly accessible website.

Low risk labs may be approved for any intended use.

# Additional Information

> [!Note]Cloud security is an ever-changing landscape, and these standards are subject to change to ensure labs align with up-to-date security practices. 

To learn how to find a secure ACP for your lab, or how to write your own, check out [How to Create an Access Control Policy](../create-a-restriction-policy.md).

Or go back to [Cloud Security Home](./cloud-security-home.md).

[Back to top.](#cloud-security-standards)
