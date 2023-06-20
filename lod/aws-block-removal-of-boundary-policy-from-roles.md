---
title: "AWS: Block Removal of Boundary Policy from Roles"
description: "Prevents users from removing boundary policies from roles in the AWS subscription, and ensuring that lab users do not have escalated permission roles."
isPublished: true
---

# AWS: Block Removal of Boundary Policy from Roles

## Table of Contents

*   [Overview](#overview)

*   [Secondary Resource Protection (Protect Roles Policy)](#secondary-resource-protection-protect-roles-policy)

*   [LabSecureAccess Policy](#labsecureaccess-policy)

*   [Enhanced Policy Logic](#enhanced-policy-logic)

*   [Lab Developer Policy Protection](#lab-developer-policy-protection)

## Overview

This feature strengthens the security of your lab environment. With this update, we have implemented a feature that prevents the removal of boundary policies from roles within your AWS subscription. This ensures that lab users cannot inadvertently remove critical policies and end up with escalated permission roles.


##  Secondary Resource Protection (Protect Roles Policy) 

We have introduced a secondary resource protection mechanism that safeguards roles and policies from being modified by lab users. This protection mechanism is designed to prevent the removal of boundary policies from roles.

## LabSecureAccess Policy 

As part of the secondary resource protection, we have added the LabSecureAccess policy as an item on the protected resource list. This policy ensures that the boundary policy of a role remains intact, preserving the intended permission boundaries and preventing unauthorized elevation of privileges.

## Enhanced Policy Logic 

The implementation of this feature involves modifying the policy logic to identify and block any attempts to remove boundary policies from roles. This ensures that the security and access controls defined within your AWS subscription remain intact and enforceable.

## Lab Developer Policy Protection 

In addition to protecting boundary policies, we have also extended the resource protection mechanism to safeguard the Lab Developer policy. This policy, which grants lab authors specific permissions, cannot be removed by lab users, ensuring the stability and integrity of your lab environment.

We believe that these enhancements will significantly strengthen the security of your lab infrastructure by preventing accidental removal of critical policies. By maintaining the integrity of the permission boundaries, you can have peace of mind that your lab users will not have elevated permissions beyond what is intended.

Please note that these enhancements are designed to work seamlessly within your existing lab environment. No additional configuration or action is required on your part. Our goal is to provide you with a secure and reliable lab platform, and we are committed to continuously improving our services to meet your needs.

If you have any questions, concerns, or feedback regarding this update, please don't hesitate to reach out to our support team. We value your input and are dedicated to providing you with the best possible experience.
