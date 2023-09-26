---
title: "How do I create a custom field?"
isPublished: true
---

# How do I create a custom field?

> Please be aware that not all functionality covered in this and the linked articles may be available to you.

Custom fields are very useful when you need to track data that is not part of the standard Skillable TMS. The fields can be created for the following entities: courses, classes, users, subscription profiles, and class enrollments. 

> :small_blue_diamond: Because of the complexity and flexibility of custom fields, it is HIGHLY recommended that before you create any custom field in the production Skillable TMS environment, you test them with all affected roles to ensure they work as expected and do not block creation or editing of entities.

### Article contents
* [Create a custom field](#create-a-custom-field)
* [Set custom field Availability](#set-custom-field-availability)
* [Set User Role Restrictions](#set-user-role-restrictions)
* [Text Box Specific Options](#text-box-specific-options)
* [Dropdown List Specific Options](#dropdown-list-specific-options)
* [Number Specific Option](#number-specific-option)
* [User Selector](#user-selector)

## Create a custom field
To begin to create any custom field:
1. On the **Admin** menu in the appropriate entity's group, for example, for the Class entity, click **Class Custom Fields**. 
1. On the **Find Custom Fields** page, click **Create Custom Field**.

The **Basic Information** tab has the main options that control the field. There are common options that every field has and there are some options that will only appear depending on the type of field chosen. These are explained in sections for the appropriate types.

To complete the common options:
1. **Name** - the field's, this will be used as it's label.
1. **Description** - optional field, a description can be used as a filter to search for a custom field on the search page, can be seen under the name of the custom field when the Description output option is selected, and will be displayed on the custom field's profile page.
1. **Tool Tip** - optional field, content of this field is visible to a user when they hover over the question mark next to the custom field on the entity's Create or Edit page. The tool tip is limited to 800 characters.
1. **Organization** - automatically filled in using your organization. Click **Choose** to change to another organization you manage, if needed.
1. **Entity** - defaults to the entity from which you accessed the Create Custom Field page. Click the dropdown to select one of the other entities, if needed.
    1. If you selected **Class** as the **Entity**, set whether the data in the field for a class will be included if the class is cloned. 
1. **Type** - a dropdown menu to select the type of data the field will hold. 
1. **Display Group** -  a dropdown menu, select where the field will be visible on the entity. The choices on the dropdown will change depending on the entity for which the field is being built.
    1. If you choose **Other**, type a name. This will create a new tab or group with that name on the entity.
1. **Sort Order** - this determines the order the custom fields are displayed within their groups. All custom fields displayed on standard tabs or groups will be displayed after the standard fields on that tab or group.
1. **Enabled** - setting is used to enable or disable the field.
1. **Required** - blocks saving the entity if the field is empty. This option is not available for Class enrollment custom fields or for Checkbox or Checkbox List field types.

## Set custom field Availability
The **Availability** tab sets the organizations that can use the field. Your organization is added by default. Click **Add Organizations** to add other organizations you manage to allow them to use the field. 

## Set User Role Restrictions
The **User Role Restrictions** tab allows you to restrict who can view and/or edit the field. You select the roles for user types you want to grant access. When user roles are added, users who have roles that are listed will be able to view and/or edit the field. **Warning** If you set user role restrictions on a field and mark the field required, users without the restricted roles, who otherwise may be able to create or edit the entity, will be blocked from saving the entity if they are unable to edit the field.

1. To restrict who can see the field on the entity, 
    1. Check **Restrict visibility to specific user roles**,
    1. Click **Add User Roles**,
    1. From the **Choose User Role** dialog, select the role(s).
1. To restrict who can edit the field on the entity, check **Restrict editing to specific user roles** and follow the steps above.


## Text Box Specific Options

A Text Box field contains plain text. To set the options specific to this field,
1. In **Max Character**, set the number of characters the user can type in the field.
1. Check **Require Unique Values** if the field must have a different value for every entity item. For instance, if it is a class custom field, each class must have a unique value in the field.

## Dropdown List Specific Options
A Dropdown List field has a dropdown of choices in it from which the user can select. It has a Choices tab where you set the choices that will appear on the dropdown.
1. On the **Choices** tab, click **Add Choice**.
1. Type a choice. Dependencies are covered in [How can I show certain choices on a dropdown based on the answer to another dropdown?]().
1. Repeat for each item you want on the dropdown.
1. If you want to move a choice, click and hold to the right of it and drag it to its new location. 

This field type can require unique values. However, if set, only one entity item is allowed to have each dropdown choice. For instance, if it is a class custom field, only one class could have the first choice, only one class could have the 2nd choice, etc.

## Number Specific Option
A Number field contains a whole number. The only type-specific option for this field is **Require Unique Values**. However, if that is selected, only one entity item can have a specific number in it. For instance, if it is a class custom field, only one class would be able to have the number 1 in the field.

## User Selector
A User Selector field contains the name of and link to a user in the Skillable TMS. This field has a Choose User dialog attached to set the user. You can pre-filter this Choose User dialog by a user role with the Filter User Role option. 

This field type can require unique values. However, if set, only one entity item can have a specific user. For instance, if it is a class custom field, only one class could have John Doe, only one class could have Jane Doe, etc.

## Related Articles
For more information regarding custom fields, please see:
- [What are custom fields?](custom-fields.md)
- [How can I show certain choices on a dropdown based on the answer to another dropdown?](dependent-dropdown-custom.md)
- [How can I make a course custom field available to classes that use the course?](../courses-and-activities/overall/cascade-custom-fields.md)
