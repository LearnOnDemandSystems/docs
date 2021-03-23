---
title: "Cloud Security Standards"
description: "In-Depth analysis of security review risk level and approval criteria."
isPublished: true
---

# Cloud Security Standards

Learn on Demand Systems (LODS) requires that any Cloud Slice labs must be evaluated for risk before external consumption. The LODS Security Review process defines a lab's security as **High**, **Medium**, or **Low** risk. 

While this evalutation determines a lab's risk for cloud resource abuse, even **Low** risk labs still have potential for abuse but are determined to be designed in such a way that the risk is minimal.

The risk levels of **High**, **Medium**, and **Low** are defined below with the requirements for a lab to be classified at that risk level. Each risk level also has a set of conditions under which it may be approved for publishing.

# Access Control Policies (ACP)

Access Control Policies, or ACPs, apply restrictions to the lab user's cloud environment and prevent them from creating resources that are not relevant to the content.

To learn how to find an appropriate ACP for your lab, or how to write your own, check out [How to Create an Access Control Policy](../lod/create-a-restriction-policy.md). 

> [!Knowledge]Some Access Control Policies (ACPs) are pre-approved and made available to lab developers. Labs that only contain pre-approved ACPs do not require a security review. Learn more about pre-approved ACPs [here](../lod/create-a-restriction-policy.md).

## Access Control Policy (ACP) Format
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

### Amazon Web Services (AWS)

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

- Where "**x**" is the statement ID defined by the policy writer. This is used for policy management. Ex: "**VisualEditor0**"
- Where "**y**" is the action that the user can perform. The format is *category:action*. Ex 1: "**ec2:\***" means all **ec2** actions. Ex 2: "**iam:GetRole**" specifies reading IAM roles. 
- Where "**z**" is the resource on which these actions can be performed. Ex: "**\***". 

## Life Cycle Actions (LCA)

If a lab has or inherits a Life Cycle Action that does **any** of the following:
- Creates a new Resource Group
- Modifies user permissions
- Removes or modifies the "LOD Policy Set" on Azure

then it may be considered **High Risk**.

## Background Deployments

Any Access Control Policy that is set to deploy **after** background deployments is disregarded when determining security risk. Only ACPs that deploy **before** the user gains access to the environment are considered when assessing risk. 

# Risk Definitions

## High Risk

Labs with a High risk security status are extremely vulnerable to abuse.

A lab qualifies as **High Risk** if ANY of the following are true:

    Life Cycle Actions:
        • Azure Only - Remove or modify in any way the "LOD Policy Set".
    Access Control Policies:
        • Lab is open to all VMs/containers without limits.
        • Lab is open to VMs/containers of more than 4 sizes and are only limited by SKU.
        • Lab blocks specific VM/container sizes rather than allows specific VM sizes.
        • Azure Only - Lab allows VM/container scalesets without a scaleset size limit.
        • AWS Only - Lab allows autoscaling of non free-tier VMs/containers.

> **As of March 2021**: AWS free-tier VMs include t2.micro and t3.micro for a maximum of 750 hours per month.

## Medium Risk

Medium risk labs have some known vulnerabilities, but block the highest risk vulnerabilities.

A lab is **Medium Risk** if ALL of the following are true:

    Life Cycle Actions:
        • Do not modify user roles or permissions in any way.
        • Azure Only - Do not Remove or modify in any way the "LOD Policy Set".

**and** ANY of the following:

    Access Control Policies:
        • Lab is open to VMs/containers of 1-4 sizes and are only limited by SKU - blocks most other resources.
        • Lab is open to VMs/containers of 1-4 sizes and are only limited by SKU - does not block most or any other resources.
        • Lab blocks virtual machines and containers entirely, but allows most or all other resources.
        • VMs/containers are limited by name utilizing a "match" statement.
        • Lab is open to SQL Servers or Dynamo DB without limits. 
        

## Low Risk

This is the most preferred security status and identifies a lab as having a low vulnerability to abuse. This security status is **required** for any lab consumed on a free and publicly accessible website.

A lab is **Low Risk** if ALL of the following are true

    User Accounts:
        All are set to Reader or none.
    Life Cycle Actions:
            Do not modify user roles or permissions in any way.

**OR** 

ALL of the following:

    Life Cycle Actions:
        Do not modify user roles or permissions in any way.
        Azure Only - Do not Remove or modify in any way the "LOD Policy Set".
    Access Control Policies:
        Lab is limited to only the resources that it requires.
        Azure Only - SQL Servers are completely denied.
        AWS Only - Dynamo DB is completely denied.

**and** ANY of the following:

    Access Control Policies:
        VMs/containers and are completely denied.
        VMs/containers are limited by name utilizing an "equals" or "in" statement.

# Approval Conditions

Risk level tolerance depends on consumption context. This means that *where* and *how* a lab is being used will determine if a lab is approved. These factors can include paywalls, verified emails, public visibility, etc.

## High Risk

High risk labs require an expiration if set to "Approved". A high risk lab will never be permenantly approved unless it has been authorized by both Cloud Security Management at LODS and the Cloud Subscription owner.

High risk labs may be approved under the following conditions:

- If the intended use is for short term testing or some events. In this case, approval will be set to expire.

- If your Organization's Cloud Security Technical Contact has approved it to be released, acknowledging all identified vulnerabilities. 

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

To learn how to find a secure ACP for your lab, or how to write your own, check out [How to Create an Access Control Policy](../lod/create-a-restriction-policy.md).

Or go back to [Cloud Security Home](../lod/cloud-security/cloud-security-home.md).

[Back to top.](#cloud-security-standards)