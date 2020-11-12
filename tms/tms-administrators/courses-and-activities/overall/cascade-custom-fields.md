---
title: "How do I make the custom fields on my courses available on my classes?"
isPublished: true
---

# How do I make the custom fields on my courses available on my classes?

> :small_blue_diamond: Please be aware that functionality covered in this and linked articles may not be available to you.

You can set course custom fields to cascade down to the classes that use the course. When a course custom field is enabled to cascade down to a class, it creates a new class custom field. This new field is like any other class custom field on a class. However, there are a few items to be aware of:
- If the course custom field is set to unique values, the value set in course is compared to other course values and, if a value is set set in the class, it is compared to other class values.
- If there are user role restrictions set on the field, the same restriction is imposed on the classes.
- If a course is available to an organization, but the course custom field is not, the field will be seen on the course but not on the class.

To set a course custom field to cascade, check **Cascade To Class** on the **Basic Information** tab of the field. This checkbox is at the bottom of the Basic Information tab of the custom field when the Entity is set as Course.

When the field cascades to the class, it will display in the same display group. If the display group tab does not exist on classes, it will be created as a custom tab.

> :small_blue_diamond: Because of the complexity and flexibility of custom fields, it is HIGHLY recommended that you test immediately test the field with all affected roles to ensure they work as expected and do not block creation or editing of entities.

## Related Articles
For more information regarding custom fields, please see:
- [What are custom fields?](/tms/tms-administrators/miscellaneous/custom-fields.md)
- [How do I create a custom field?](/tms/tms-administrators/miscellaneous/create-custom-fields.md)
- [How can I show certain choices on a dropdown based on the answer to another dropdown?](/tms/tms-administrators/miscellaneous/dependent-dropdown-custom.md)
