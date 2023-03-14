---
title: "Managed Metadata Tags"
description: "Tags are used to organize and filter Lab Profiles and Lab Series, to assist with reporting and delivery."
isPublished: true
---

# Managed Metadata Tags

## Overview

Tags are used to organize and filter Lab Profiles and Lab Series, to assist with reporting and delivery. Tags can be used in Skillable Studio directly or by using the [Skillable Lab API](https://connect.skillable.com/lab/overview/). 

To use tags, they must first be created in Studio and then they can be added to a Lab Profile. 

>[!knowledge] Creating tags requires specific permissions in Skillable Studio. Managed Metadata Tags require the Template Gallery Management permission. If you are unable to view Tags, please reach out to your Account Executive, or Customer Service Manager to get the permission assigned to your account. For more information, read our [Lab Developer Roles documentation](https://docs.skillable.com/lod/lod-lab-developers/org-lab-dev-roles.md).

## Table of Contents
- [Tag Format](#tag-format)
- [Create a Tag](#create-a-tag)
- [Using Tags](#using-tags)
  - [API](#api)
  - [Tags in Lab Profiles](#tags-in-lab-profiles)
  - [Organization Tags](#organization-tags)
  - [Template Gallery](#template-gallery)
- [Lab Tag Reporting](#lab-tag-reporting)
  - [Skillable Studio Reporting](#skillable-studio-reporting)
  - [API Reporting](#api-reporting)


## Tag Format 

Tags use the `name:value` format to display Tags in Skillable Studio. The Name of the Tag should be descriptive, and the value should reflect the description.

As an example, the Name could be Operating System and the value could be Windows 10. The tag would be displayed as `Operating System:Windows 10`. 

## Create a Tag 

To use tags, they must first be created in Studio and then they can be added to a Lab Profile. 

1. Select **Tags** from the Lab Profile tile: 

1. **Name**: Enter a **Name** for the tag. This will be the Name in the `name:value` format that tags use. 

1. **Organization**: Select the **Organization** that will manage the tag. 

    >[!note] The tag may still be used by other organizations. The organization selected during this step is the organization that has the ability to manage the tag. 

1. **Display Type**: Select the **Display Type**. 

    - **Single Value**: This should be used when the name of a tag only has one value. 
        - Example: a tag is configured with Operating system as the name, and Windows 10 as the value. The tag would display as: `Operating System: Microsoft Windows 10`.

    - **Multiple Value**: This should be used then the Name of a tag has multiple values. When a tag with multiple values is used, two tags are added, with the same name but different values. 
        - Example: a tag is configured with Operating system as the name, and Windows 10 and Windows 11 as the values. The tags would be displayed as: `Operating System:Windows 10` and  `Operating System:Windows 11`

1. **Enabled**: select this to enable the tag to be used in Skillable Studio.

1. **Publish to Public Template Gallery**: select this to publish to the public Template Gallery. This will allow anyone that uses Skillable Studio, to use this tag. 

1. **Publish to Organization Template Gallery**: select this to publish to a specific organizations Template Gallery. This will allow only users that belong to that organization, to use this tag. 

1. **Values**: enter that value(s) that will be paired with the tag. This will be the Value in the `name:value` format that tags use. 

## Using Tags 
 
Tags are used in Skillable Studio, in the following areas: 

 - API 
 - Lab Profiles
 - Organizations 
 - Template Gallery

### API

Tags can be used via API to launch labs with specific tags, or to collect information for Lab Profiles and Lab Series that use Tags.

Tag parameters are appended to an API call. For more information about using the Skillable Lab API, visit [Skillable Connect](https://connect.skillable.com/lab/overview/).

### Tags in Lab Profiles

Tags are added to lab profiles by editing the lab profile. 

1. Navigate to the Lab Profile you wish to add tags to. 

1. Select **Edit** in the upper-right corner of the page. 

1. Select the **Tags** tab. 

1. Select **+ Add Tag**. 

1. Enter the **Name** and/or **Value** of the tag(s) you wish to add and select **Search**. 

1. Select the **Tag(s)** and then select **OK**.  

1. **Save** the Lab Profile. 

### Organization Tags

Organizations can have default tags configured, called Quick Tags. Quick Tags allow a tag or set of tags to be displayed on the Tags tab of a Lab Profile, when editing or creating lab profiles that belong to the organization. 

Quick Tags can be optionally configured to be a required selection when editing or creating lab profiles that belong to the organization. W

### Template Gallery 

When using the Template Gallery to create a Lab Profile, Tags are displayed on the left side of the page. 

Tags on this page are used to filter the available Lab Profile templates. Selecting Tags on this page, will remove all Lab Profile templates that do not have that Tag added. 

When creating Tags, the options to publish to the Template Gallery will control if they appear on this page or not. 

## Lab Tag Reporting

Lab tags are used for reporting purposes. Reports can be generated using Skillable Studio or the [Catalog API command](https://connect.skillable.com/lab/operation/Catalog/).

### Skillable Studio Reporting 

Reports can be generated in Skillable Studio for Lab Profiles, based on tags that are added to a Lab Profile. 

From the Studio Admin page:

1. Select **Find Lab Profiles** on the Lab Profiles tile. 

1. Select **Add Filter**. 

1. Choose the **Tag filter**

1. Enter the **Name** or **Value** of the tag you wish to report on. 

1. (Optional) Add another tag filter, if you wish to include other tags in the report. 

1. Select the **Search** button. 

1. A list of Lab Profiles will be displayed that have the chosen tag added to them. 

1. Select **Print** or **Export** to save the report. 
    - Print allows you to print to PDF or print out on paper. 
    - Export will generates and download a .CSV spreadsheet. 

### API Reporting 

The [Catalog API command](https://connect.skillable.com/lab/operation/Catalog/) can be used to generate a list of Lab Profiles that use a specific tag or tags. 

1. Using the following example below, replace `mytag` with the **Tag Name** of the tab you wish to report on.

    >`https://labondemand.com/api/v3/catalog?tag=mytag`

1. The API response will contain a list of Lab Profiles that have that tag added to them. Lab Profiles are generally group into series. 
