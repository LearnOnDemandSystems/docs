---
title: "What are custom fields?"
isPublished: true
---

# What are custom fields?

> [!Alert] Please be aware that not all functionality covered in this and the linked articles may be available to you.

Custom fields are fields that you create just for your organization to track data that is not a standard part of the TMS. There are 6 different types of fields and they can be created for each of the following entities:
- Courses
- Classes
- Users
- Subscription Profiles
- Tracks

A unique relationship can be enabled between a custom field on a course and a class. You can set course custom fields to cascade down to be used on the classes using the course. The field cascades but not the data. This explained fully in the [How do I cascade a course custom field to classes?]() article.

Class custom fields take cloned classes into consideration. You can set the data from a class custom field to be included in the new class when the original class is cloned. This option can be a filter and/or output option on the Find Custom Fields page. In addition, class custom fields are displayed as columns on the Class History page if they have data in them.

Permissions are required to create, view, and edit these fields. Once they are created, they are visible on the Create and Edit pages of the entities.


The 6 types of custom fields are:
- **Text Box** – plain text. You set the maximum character limit.
- **Dropdown List** – choices you set displayed in a dropdown.
- **Checkbox** - a yes/no choice. 
- **Number** – whole number.
- **User Selector** – a user selected from a Choose User dialog. This dialog can be pre-filtered by a user role.
- **Checkbox List** - a group of yes/no choices where the user can select more than one. 

Here are some examples of how you might use each type:
- **Text Box** – a specific identifier used by your organization that contains more than numbers; a purchase order number; retail data such as a SKU or retail price; a URL resource; birthdays; etc.
- **Dropdown List** – specific classification groups used by your organization; regions; primary language; etc.
- **Checkbox** – a possible requirement; a designator; a qualification; etc.
- **Number** – a specific whole number identifier used by your organization.
- **User Selector** - the SME for the course; the sales rep responsible for the class; a mentor; etc.
- **Checkbox List** – related yes/no items such as possible characteristics, eligible user groups, main languages spoken/read, etc.

> [!ALERT] Because of the complexity and flexibility of custom fields, it is HIGHLY recommended that before you create any custom field in the production TMS environment, you test them with all affected roles in our TMS ACC environment to ensure they work as expected and do not block creation or editing of entities. To be set up in our ACC environment, please submit a support ticket from our [Customer Support](https://www.learnondemandsystems.com/customer-support/) page.

## Related Articles
For more information regarding custom fields, please see:
- [How do I create a custom field?](create-custom-fields.md)
- [How can I show certain choices on a dropdown based on the answer to another dropdown?](dependent-dropdown-custom.md)
- [How can I make a course custom field available to classes that use the course?](../courses-and-activities/overall/cascade-custom-fields.md)
