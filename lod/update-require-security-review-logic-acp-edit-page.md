---
title: "Modify ACP to Read Only (Blessed)"
description: "Provides functionality for lab admins with the Security Review permission to make an ACP blessed."
isPublished: true
---

# Update "Require Security Review" Logic on ACP Edit Page

## Overview

This documentation provides instructions on how the "Require Security Review" logic on the ACP (Access Control Policy) edit page has been updated. As a lab admin with the Security Review permission, you now have the ability to make an ACP "blessed" by unchecking the "Requires Security Review" checkbox on the ACP edit page. This change ensures that the ACP becomes read-only and cannot be modified. Read on to understand the new behavior and its impact on regular lab developers.

## Table of Contents

- [Introduction](#introduction)
- [Making an ACP Read-Only](#making-an-acp-read-only)
- [Access to ACP Edit Page for Regular Lab Developers](#access-to-acp-edit-page-for-regular-lab-developers)
- [Cloning an ACP for Another Lab](#cloning-an-acp-for-another-lab)
- [ACP Edit Page on the Search Page](#acp-edit-page-on-the-search-page)
- [Read-Only Mode for Unchecked Checkbox](#read-only-mode-for-unchecked-checkbox)

## Introduction

Lab admins with the Security Review permission now have an updated "Require Security Review" logic on the ACP edit page. By unchecking the checkbox, you can make an ACP "blessed" and ensure it becomes read-only, preventing any modifications. This documentation explains how this new logic works and its implications for regular lab developers.

## Making an ACP Read-Only

To make an ACP read-only, follow these steps:

1.  Log in to your lab admin account.
1.  Navigate to the ACP management section or dashboard.
1.  Locate the ACP that you want to modify.
1.  Click on the ACP's name or an associated "Edit" button to open the ACP edit page.
1.  On the ACP edit page, find the "Requires Security Review" checkbox.
1.  If you uncheck the checkbox, the ACP will become read-only and cannot be modified.
1.  Save the changes by clicking the "Save" or "Update" button on the page. 

## Access to ACP Edit Page for Regular Lab Developers

When the "Requires Security Review" checkbox is unchecked and the ACP is in read-only mode, regular lab developers may wonder about their access to the ACP edit page. Here's what you need to know:

*   Regular lab developers will still be able to view the ACP edit page.
*   However, all fields on the edit page will be locked and not editable.
*   Regular lab developers can review the ACP's configuration and details but cannot make any changes.

Please note that the availability of the ACP edit page for regular lab developers may vary based on your lab's specific configuration and permissions.

## Cloning an ACP for Another Lab

If regular lab developers need to clone an ACP for use in another lab, they can still do so using the "Save As" feature. Follow these steps to clone an ACP:

1.  Access the ACP edit page following the instructions provided in section 3.
1.  Locate the "Save As" or "Clone" button on the ACP edit page.
1.  Click on the button to initiate the cloning process.
1.  Provide a new name and any necessary details for the cloned ACP.
1.  Save the changes to create the cloned ACP.

After cloning, regular lab developers will have a separate copy of the ACP that they can modify and customize for their specific needs.

## ACP Edit Page on the Search Page

If the "Requires Security Review" checkbox is unchecked, the ACP edit page may still be accessible on the search page. However, all fields on the page will be locked and not editable. This allows regular lab developers to view the ACP's configuration and details without the ability to make changes.

To access the ACP edit page on the search page:

1.  Navigate to the search page in your lab environment.
1.  Search for the desired ACP by name or any relevant filters.
1.  Locate the ACP in the search results and click on it to open the ACP edit page.
1.  On the edit page, all fields will be locked, and modifications will not be possible.

Please note that the search page access and the read-only behavior may depend on your lab's specific settings and permissions.

## Read-Only Mode for Unchecked Checkbox

When the "Requires Security Review" checkbox is unchecked, the ACP enters read-only mode. In this mode:

1.  The ACP becomes read-only and cannot be modified.
1.  All fields on the ACP edit page are locked and not editable.
1.  Lab admins can view the ACP's configuration but cannot make any changes.
1.  Regular lab developers can access the ACP edit page but cannot modify any fields.

By implementing this read-only mode, the "Require Security Review" logic ensures the integrity and stability of blessed ACPs.

If you have any further questions or require assistance, please reach out to your lab administrator or support team.
