---
title: "Add Tenant ID Text to Subscription Pool"
description: "This enhancement enables lab admins to utilize an updated script for scoring labs effectively."
isPublished: true
---

# Add Tenant ID Text to Subscription Pool

This feature allows lab admins to store their Azure tenant ID in the subscription pool, enabling the usage of an updated script to score labs and run scripts using the updated PowerShell module. This comprehensive guide will walk you through the process of adding your Azure tenant ID to the subscription pool and utilizing it for authentication purposes.

## Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Adding Tenant ID to Subscription Pool](#adding-tenant-id-to-subscription-pool)
- [Utilizing the Tenant ID](#utilizing-the-tenant-id)
- [Troubleshooting](#troubleshooting)
- [Conclusion](#conclusion)

## Overview

The "Add Tenant ID Text Entry to Subscription Pool" feature enables lab admins to store their Azure tenant ID in the subscription pool database. This allows the script execution service (SES) to utilize the stored authentication data for script execution in Azure. By storing the tenant ID, lab admins can leverage the updated PowerShell module and execute scripts in their labs seamlessly.

## Prerequisites

Before proceeding with adding your Azure tenant ID to the subscription pool, ensure the following prerequisites are met:

*   You have a lab admin account for Skillable Studio.
*   You have the necessary permissions to access and modify subscription pool settings.

## Adding Tenant ID to Subscription Pool

To add your Azure tenant ID to the subscription pool, follow these steps:

1.  Sign in to your lab admin account in Skillable Studio.
1.  Navigate to the Subscription Pool section, where you manage your subscription pools.
1.  Locate the specific Subscription Pool to which you want to add the tenant ID.
1.  Click on the Subscription Pool to access its details and configuration settings.
1.  In the Subscription Pool details page, you will find a new field labeled "Tenant ID."
1.  Enter your Azure tenant ID in the provided text entry field.

    Note: The Azure tenant ID is a unique identifier for your Azure Active Directory tenant. If you are unsure about your tenant ID, you can find it in the Azure portal or consult your Azure administrator.

1.  After entering the tenant ID, click "Save" or "Update" to store the tenant ID in the Subscription Pool database.
1.  The tenant ID will now be associated with the respective Subscription Pool.

## Utilizing the Tenant ID

Once the tenant ID is successfully stored in the Subscription Pool, you can utilize it for authentication purposes. Here's how to use the tenant ID with the updated PowerShell module:

1.  In your script or PowerShell session, utilize the "Connect-AzAccount" cmdlet from the Az.Accounts module.
1.  When using the "Connect-AzAccount" cmdlet, include the "TenantId" parameter.
1.  Provide the stored tenant ID as the value for the "TenantId" parameter.

    Note: In older versions of Az, you could pass either the tenant name or the tenant ID as the value for the "TenantId" parameter. However, in the latest version of Az, supplying the tenant name results in an error. Therefore, it is essential to use the tenant ID for seamless authentication.

By providing the tenant ID during script execution, the script language containers within the script execution service (SES) will authenticate successfully with Azure, allowing your scripts to execute against the cloud slice subscription for your lab instance.

## Troubleshooting

If you encounter any issues or have questions related to the "Add Tenant ID Text Entry to Subscription Pool" feature, consider the following:

*   Ensure that you have entered the correct Azure tenant ID in the Subscription Pool settings.
*   Double-check that you are using the updated PowerShell module with the "Connect-AzAccount" cmdlet.
*   If you still face difficulties, please reach out to our support team for assistance. They will be happy to help you resolve any problems or provide further guidance.

## Conclusion

Congratulations! You have successfully learned how to add your Azure tenant ID to the subscription pool and utilize it for script execution in your lab. By leveraging the "Add Tenant ID Text Entry to Subscription Pool" feature, you can seamlessly use the updated PowerShell module and execute scripts, improving the efficiency of your lab management.

If you have any further questions or require additional support, feel free to contact our support team, who are available to assist you.
