---
title: "Cloud Security Review"
description: "Information Regarding the Cloud Security Review Process"
isPublished: true
---

# Cloud Security Review
Labs that use cloud orchestration are require a **Cloud Security Review** before they are available outside Lab On Demand. Until this review is completed, cloud labs cannot be launched via the Training Management System (TMS), API, LTI, or any other methods outside of the Lab On Demand interface.

## Which Labs Require a Security Review?

If a Lab Profile...
1. Has a Cloud Platform selected (in the Orchestration section of the Cloud tab on Lab Profile),  
**and**
2. Creates a Cloud Resource Group (also on the Cloud Tab of the Lab Profile)  
   **and**
3. Has a non-exempt Access Control Policy ([Click here](../lod/create-a-restriction-policy.md) to find out which policies are exempt.)

...then LOD will automatically flag that Lab Profile for Security Review. 

## What is a Security Review?

Security reviews evaluate numerous components of cloud slice labs (such as Access Control Policies, Life Cycle Actions, and user permissions) to determine its risk level for unwanted use of cloud subscriptions. The risk level is then weighed against a lab's consumption context.

> [!Knowledge]Consumption context refers to where and how a lab is being used. These factors can include paywalls, verified emails, public visibility, etc.

These reviews are designed to rate a lab on its vulnerability to potential abuse from malicious users and to ensure lab owners are aware of these vulnerabilities. Reviews also often provide suggestions on how to improve a lab's security.

A lab owner will always be notified of the evaluated risk level, whether or not the lab is approved for external consumption, and the reasons behind the result.

## How can I ensure that my lab will pass a security review?

Evaluations are based on our [Cloud Security Standards](../lod/cloud-security/cloud-security-standards.md) which outline criteria for various risk levels. 

Some Access Control Policies (ACPs) are pre-approved and made available to lab developers. Labs that only contain pre-approved ACPs do not require a security review. Learn more about pre-approved ACPs on our [Create an Access Control Policy](../lod/create-a-restriction-policy.md) documentation.

> [!Note]Cloud security is an ever-changing landscape, and these standards are subject to change to ensure labs align with up-to-date security practices. 

## How to Request a Security Review

Upon saving changes or adding cloud orchestration to a lab, the Lab Profile will display a notice, showing that the lab requires a Cloud Security Review.

![Pending Status](../lod/images/required-security-review.png)

If the lab development status is marked as "Complete", a security review request will automatically be sent. You can also manually request a review before marking the lab as Complete by selecting "Request Security Review".

![Request Initial Security Review](../lod/images/initial-security-review-request.png)

Once the review has been completed, the lab profile will show either "Approved" or "Denied", a risk level, and a note describing the reason for its status. 
Once approved, the lab may published and launched externally. 

If the lab profile is published before the security review is requested, a security review request will be entered automatically, but the lab will continue to be unavailable until the review is completed and approved.

![Approved Status](../lod/images/cloud-security-approved.png)

Labs may be denied or only approved temporarily. You may request an additional Cloud Security Review using the link next to the envelope icon in the security review area. This link will appear when the status is Pending, Expired, or Denied. A security review may be requested for all child Lab Profiles by requesting the review from the parent Lab Profile and selecting the "Include Children" check box. 

![Request Security Review](../lod/images/request-security-review.png)

## Security Review Management and Revocation

A Cloud Security Review may be invalidated by the following:
1. Expiration
2. Changes to the Cloud Subscription Pool
3. Changes to Cloud Resource Groups
4. Changes to Cloud Resource Templates
5. Changes to users and/or permissions
6. Changes to the Access Control Policy
7. Changes to Life Cycle Actions

When invalidated, a notification email will be sent to the owner's email address if configured on the Lab Profile. When making a change that will impact the Security Review status of one or more Lab Profiles, the following message will be displayed:

![Changes to Lab Profile](../lod/images/cloud-security-review.png)

## Additional Information
Learn more about what is used to determine's a lab's security review status on our [Cloud Security Standards](../lod/cloud-security/cloud-security-standards.md).

Or go back to [Cloud Security Home](../lod/cloud-security/cloud-security-home.md).

[Back to top.](#cloud-security-review)