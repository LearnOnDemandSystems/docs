---
title: "Script Library"
description: "The Script Library is a hub for script templates used in Activity Based Assessments (ABA) and Life Cycle Actions (LCA), facilitating script creation and maintenance across multiple labs."
isPublished: true
---

The Script Library is a hub for script templates used in Activity Based Assessments (ABA) and Life Cycle Actions (LCA), facilitating script creation and maintenance across multiple labs. It standardizes the scripting process, reduces overhead, and fosters collaboration by enabling script sharing. The library's templates can be utilized as-is or as a foundation for creating ABA and LCA scripts.

## Overview of Script Library
The Script Library is a repository of script templates that can be used in Activity Based Assessments (ABA) or Life Cycle Actions (LCA). These scripts can be used as they are, or they can serve as a starting point to expedite the creation of ABA and LCA scripts.  The Script Library is the best place to store scripts as templates that you can tag with metadata to be easily searched for and used in other ABA or LCA scripts.  Gone are the days of copy and paste between Lab profiles.  The most challenging was to try and remember where a certain script was used and in which Lab profile, making the effort more tiresome and not able to scale well.  Now with Script Library this is entirely eliminated with a way to centralize the scripts into a Library of Templates that can be referenced easily.

## Best Practices
* Always make sure that you provide meaningful Script Template Names and utilize Keywords to allow easier searching of related Script Templates.
* Remember to leverage the Markdown formatting when writing the **How to Use this Script** as this will provide the necessary detail for successful adoption and utilization of Script Templates.
* It is best that Script Template Names are unique to make it more recognizable when searching.
* The best way for an Organization to keep the Script Library organized is to have the Lab Administrator be the one responsible for managing the templates, with the permissions to Create/Edit/Delete script templates.  All Lab Developers will have read access to the Script Library to be able choose a script template from the Script Library to insert into their lab LCA or ABAs.

## Required Permissions
This Script Library feature requires the following permissions. If you do not have these permissions, please reach out to our [customer support team](http://www.skillable.com/customer-support/) for assistance. 

| Permission | Description |
| --- | --- |
| Viewing (by organization)   | Allows a Lab Developer or Lab Administrator to view library scripts that belong to organizations they manage. |
| Creating (by organization) | Allows a Lab Administrator to create library scripts within organizations they manage. |
| Editing (by organization) | Allows a Lab Administrator to edit library scripts for organizations they manage. |
|Deleting (by organization) | Allows a Lab Administrator to delete library scripts belonging to organizations they manage. |

## Accessing the Script Library
Script Library can be accessed from within ABA, LCA or from the Admin page.  If the user has the appropriate viewing permissions then a **Choose from Script Library** will be visible within the ABA, LCA script panel.  On the **Admin** page the user will see the **Script Library** tile.  Once the user selects one of these buttons they will be presented with the **Choose a Script Template** list view where they can then filter and choose the appropriate Script Template to use.


### Using Script Library in Activity Based Assessments
Scripts from the Script Library can be added to an existing or new ABA.

#### Add script to existing Activity Based Assessment
1. Navigate to the Lab Profile you wish to add a script to an Activity Based Assessment.
2. Select **Edit Instructions** in the upper-right corner.
3. Select the appropriate Instruction Set.
4. Select the Activities menu.
5. Select **Edit** next to the Automated Activity you wish to add a script to.
6. Select **New Script**.
7. Select **Choose from Script Library**.
   :::(Info) (Script Template auto filter)
   When choosing a Script Template from within an ABA the Script Library Template list will be auto filtered with the use of **Scoring**.
   :::
8. Select the row of the script template you wish to add.
9. Select **OK**. The script you selected should be inserted into the ABA script section.

#### Add script to new Activity Based Assessment
1. Navigate to the Lab Profile you wish to add a script to an Activity Based Assessment.
2. Select **Edit Instructions** in the upper-right corner.
3. Select the appropriate Instruction Set.
4. Select the Activities menu.
5. Select **New Automated Activity**.
6. Select **Choose from Script Library**.
7. Select the row of the script template you wish to add.
8. Select **OK**. The script you selected should be inserted into the ABA script editor.

### Using Script Library with Life Cycle Actions
Scripts from the Script Library can be added to Life Cycle Actions.

1. Navigate to the Lab Profile you wish to add a script to an LCA.
2. Select **Edit Profile** in the upper-right corner.
3. Navigate to the **Life Cycle** tab.
4. Select **+Add Life Cycle Action**.
5. Ensure that the Action drop-down menu is set to Execute Script in Virtual Machine, Execute Script in Container, Execute Script in Cloud Platform, or Execute Custom Script. (the option that will be selected will depend on the resources available in your lab profile.)
6. Select **Choose from Script Library**.
   :::(Info) (Script Library Template list)
   When choosing a Script Template from within a LCA the Script Library Template list will be  based available on the following:
   - **Life Cycle Action (Creation/Configuration)**
      - Event is one of (Pre-Build, Post-Build, First Displayable, Saving, Saved, Resuming, Resumed)
   - **Life Cycle Action (Teardown/Cleanup)**
      - Event is one of (Scoring, Scored, Tearing Down, Torn Down)
   :::
7. Select the row of the script template you wish to add.
8. Select **OK**. The script you selected should be inserted into the LCA script editor.

## Managing Script Templates in Script Library
Managing scripts templates in the Script Library depends on your user account having the appropriate permissions. You will only be able to manage script templates that belong to organizations that you manage in Skillable Studio.

### Editing a Script Template
1. Navigate to the Admin page of Skillable Studio.
2. Select **Find Script Template**.
3. Enter any search criteria to locate the script template you wish to manage, or search without any search criteria to return a list of scripts that are available to the organizations that you manage.
4. Select any script template to open the Edit Script Template form.
5. Edit the Name, Description, Primary use, Keyboards, Target, Language, Language version, Script content and How to Use this Script.
   :::(Info) (How to Use this Script)
   This field supports Markdown and it is best to utilize this field to put properly formatted information to instruct Lab Builders how to use this script properly.
   :::
6. Once all editing is complete select **SAVE SCRIPT TEMPLATE**.

### Creating a Script Template
1. Navigate to the Admin page of Skillable Studio.
2. Select **Create Script Template**.
3. Edit the Name, Description, Primary use, Keyboards, Target, Language, Language version, Script content and How to Use this Script.
   :::(Info) (Organization field)
   The Organization field will be auto populated with the users default managed organization.  If the user manages multiple organizations then the drop down will present all of the available managed organizations the user has access to.
   :::
5. Once all editing is complete select **CREATE SCRIPT TEMPLATE**.
    :::(Warning) (Enabling Script Templates)
    There may be times where a Script Template may need to be disabled.  This is done by selecting the  Enabled slider.  Be careful, once the Script Template is disabled it will no longer be a candidate to be    added to an ABA or LCA until this Script Template is re-enabled.
    :::

## Publishing a script created from scratch to the Script Template
If the user has the appropriate permissions they are able to publish a saved script within an ABA Automated Activity or LCA to the Script Library as a Template.  This script in one that would have been created from scratch.

### Publish script from an Activity Based Assessment
1. Navigate to the Lab Profile you wish to publish a script to the Script Library from an Activity Based Assessment.
2. Select **Edit Instructions** in the upper-right corner.
3. Select the appropriate Instruction Set.
4. Select the Activities menu.
5. Select **Edit** next to the Automated Activity you wish to publish a script from.
6. Select the **Publish** icon.
7. Edit the Name, Description, Primary use, Keyboards, Target, Language, Language version, Script content and How to Use this Script.
   :::(Info) (How to Use this Script)
   This field supports Markdown and it is best to utilize this field to put properly formatted information to instruct Lab Builders how to use this script properly.
   :::
8. Once all editing is complete select **CREATE SCRIPT TEMPLATE**.
    :::(Info) (How to Cancel saving a Script Template)
    If you are on the **Create Script Template** form, closing the Tab will cancel the save action and      no Script Template will be saved.
    :::

### Publish script from a Life Cycle Action
1. Navigate to the Lab Profile you wish to publish a script to the Script Library from a Life Cycle Action.
2. Select **Edit Profile** in the upper-right corner.
3. Navigate to the **Life Cycle** tab.
4. Select **Edit** icon on the appropriate LCA scoring script that is to be published.
5. Select the **Publish** icon.
6. Edit the Name, Description, Primary use, Keyboards, Target, Language, Language version, Script content and How to Use this Script.
7. Once all editing is complete select **CREATE SCRIPT TEMPLATE**.

## Reference Materials
* [Life Cycle Actions](https://docs.skillable.com/lod/life-cycle-actions.md): Life Cycle Actions allow Studio to execute actions when specific events occur during the lab instance life cycle.
* [Activity Based Assessments](https://docs.skillable.com/lod/activities.md): Activity Based Assessments are in lab instructions, and allow a lab user to assess their knowledge or action in a lab by completing or selecting an activity.
