---
title: "Cloud Fabric Explanation"
description: "Characteristics and Differences of Supported Cloud Fabrics. "
isPublished: true
---

# Cloud Fabric Explanation 

## Table of Contents 

- [Overview](#overview)
- [Access Control](#access-control)
- [Amazon Web Services](#amazon-web-services)
- [Microsoft Azure](#microsoft-azure)
- [Related Topics](#related-topics)

## Overview

With Cloud Slice, you can provide individual subscriptions (Azure) or accounts (AWS) that may contain one or more cloud resources (virtual machines, networks, databases, websites, etc.). Each student will have access to the cloud subscription or account that is provided to them, along with the resources contained within that subscription/account, for the duration of the lab. The combination of one of these subscriptions/accounts, along with the resources contained within it, is collectively referred to as a Cloud Slice. 

With our Cloud Slice feature, you can also use your Azure subscription or Amazon Web Services (AWS) account to create temporary subscription/account credentials for your lab users that will grant them access to delegated, circumscribed and tightly controlled administrative functions of the subscription or account.

Additionally, Lab on Demand (LOD) offers cloud virtualization for both Azure and AWS. Using either option you can deploy a virtual machine (VM) in the cloud environment, and access the VM in the lab, or access it in the cloud environment directly.

## Access Control 

Both AWS and Azure use Access Control Policies (ACP) to control resource provisioning to limit access in the subscription/account used in the lab. 

- **Azure** uses ACPs to limit what the user can do. By default, Azure allows every resource to be provisioned. It is up to the lab author to define in the ACP what the lab user is explicitly allowed to provision in the lab. Followig best practices, the lab author does this by creating an ACP that denies all resources except those that are explicitly permitted by the ACP.

- **AWS** uses ACPs to specify what the user can do. By default, AWS disallows every resource from being provisioned, and it is up to the lab author to define what the user can explicitly provision in the lab. 

**The key takeaway is the AWS and Azure use very different permissions models**. 

> [!knowledge] To mitigate risk, before a lab with any cloud configuration for Azure or AWS can be published in Lab on Demand, the lab must be evaluated for risk of abuse using the Skillable Cloud Security standards review. For more information about security reviews, read our [Cloud Security Review](/lod/cloud-security/cloud-security-review.md) documentation. Labs that are in development do not require a cloud security review.

## Amazon Web Services

Amazon Web Services is another cloud provider Lab on Demand supports as a lab fabric. Using Cloud Slice you can build lab profiles similar Azure. Using stack deployments, you can customize the environment and the level of access your users have.

For AWS cloud slice, we define a permissions boundary (AWS policy) that determines the maximum permissions that could potentially be granted to a lab user. We allow AWS lab users to create users. However, they have to be created by using the predefined AWS `labsecureaccess` policy, which limits the permissions that created user can have.
 
In AWS, no resources are permitted to be provisioned, unless a lab user has an ACP assigned that explicitly permits provisioning the specific resource, and a policy in the permission boundary that allows the lab user to access the resource in AWS.                     

For example, to allow a user to create an EC2 instance (virtual machine), we have to explicitly permit it by policy in the ACP on the lab profile and by policy in the permissions boundary in AWS. 

## Microsoft Azure

Microsoft Azure is one of the cloud providers Lab on Demand supports as a lab fabric. Using Cloud Slice you can build labs that either do or do not contain a virtual machine (VM) and you can use resource templates known as ARM templates to potentially pre-provision resources. Then you can use policies known as ACP’s to limit what users may have access to in your subscription. 

For Azure cloud slice we define roles; Owner, Contributor, and Reader, to determine what permissions a lab user has over the resource group in the case of Cloud Slice Resource (CSR), or over the subscription in the case of Cloud Slice Subscription (CSS). These roles are subsets of similarly named built-in Azure roles. When you use the lab platform to create a lab user, you must assign the user one of these 3 roles in the lab profile Cloud settings.

In Azure, all resources are permitted to be provisioned, based on lab user's role permissions unless it is explicitly denied in an Access Control Policy (ACP). 

For example, if you have an ACP that allows all resources to be provisioned and you have an account that has Owner or Contributor role, you can create almost any kind of resource. The only limitations are those defined by your Azure subscription and Resource Group limits set by Microsoft. To mitigate risk, you will need to author and configure on the lab profile an ACP that denies access to all resources except those resoures that are explictly permitted by the ACP. 

## Related Topics

- [AWS Permission Boundaries](/lod/aws-permission-boundary.md) 
- [AWS Virtualization](/lod/aws-virtualization.md)    
- [Azure virtualization](/lod/azure-virtualization.md)
- [Cloud Security Review](/lod/cloud-security/cloud-security-review.md)
    - [Cloud Security Standards](/lod/cloud-security/cloud-security-standards.md)
- [Create an Access Control Policy](lod/create-a-restriction-policy.md)
