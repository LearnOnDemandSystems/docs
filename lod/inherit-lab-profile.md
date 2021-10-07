---
title: "Lab Profile Inheritance"
description: "Configure a lab profile to inherit the environment and content from another lab profile."
isPublished: true
---

# Lab Profile Inheritance

A lab can optionally inherit some properties from another lab profile. When a lab profile inherits from another lab profile, this is known as a parent lab profile and child lab profile. 

The virtual environment (virtual machines, virtual networks, etc) can be inherited, as well as resources and content (manuals, scenarios, activities, etc). 

>[!alert] Any changes made to the parent lab profile will impact all lab profiles that inherit the virtual environment or content from the parent. 

- [Configuring Inheritance](#configuring-inheritance)
- [Best Practices](#best-practices)
    - [When To Use the Parent Feature](#when-to-use-parent-feature)
    - [When To Not Use the Parent Feature](#when-to-not-use-the-parent-feature)

## Configuring Inheritance

1. **Navigate to the lab profile** that you intend to make a child lab profile, that will inherit from another lab profile. 

1. Select **edit** in the upper-right corner of the lab profile.

1. On the **Basic Information** tab, select **choose** next to the **Parent** field. 

1. In the dialog that appears, search for the lab profile that will be the parent to this lab profile. 

1. Select the parent **lab profile** and click **OK**. 

1. After selecting the parent lab profile, select inheritance options for the child lab profile. 

    - **Inherit Environment**: selecting this will allow the child lab profile to inherit virtual machines, virtual networks, removeable media, etc. 

    - **Inherit Content**: selecting this will allow the child lab profile to inherit all content from the parent lab profile such as manuals, instructions, scenarios, question and automated activities, and activity groups.  

1. Select **Save**, to save the changes. 

After saving the lab profile, you will notice a banner on the lab profile details page that specifies that the lab profile is a child, with a link to the parent lab profile. 

>[!knowledge] After configuring inheritance, there is no need to make any changes to any TMS courses that use this lab profile. 

## Best Practices 

### When To Use the Parent Feature

Inheritance is recommended for lab profiles that need regular updates to the content, certifications or licenses. Inheritance allows for updates to be made to a parent lab profile, to safely update all child lab profiles that inherit from the parent. 

### When To Not Use the Parent Feature

It is not recommended to use the parent feature if the lab profile uses a public IP or shared lab network configuration setup. When a parent lab profile that uses a public IP is configured on a child lab profile, it may prevent the network configuration from functioning correctly. 