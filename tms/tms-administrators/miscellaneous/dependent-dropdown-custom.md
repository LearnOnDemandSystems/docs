# How can I show certain choices on a dropdown based on the answer to another dropdown?

When using custom fields, you can choose to have an answer in one field trigger a new field to display with additional information for the user to select. Dropdown List custom field choices can be set to only be available if certain values/choices were made in another custom field. That field is called the parent. A simple use case could be if you had a Region dropdown list and wanted the Country dropdown list options to only be visible if a specific choice was made for the Region (parent) field. For instance France may only appear for the Country dropdown if Europe was selected in the Region.

> [!KNOWLEDGE] Best Practices: 
1. Only have one parent custom field per dependent dropdown list custom field. 
1. Ensure the parent custom field is displayed above the dependent field in the same display group.
1. The value set for the parent in the dependency must match a choice of the parent exactly. Therefore, have the parent open in Edit mode to be able to copy its values to the dependent choices.

To make a dropdown list's choices be dependent:
1. Fill in the Choice and click **Dependencies (0)** next to it.
1. Under **Dependencies**, click **Add Dependency on Parent**.
1. In the **Choose Custom Fields** dialog, search for and select the parent field and click **OK**.
1. Next to the parent field, type (or paste) in the value that the parent must have to make this choice visible. This must be the EXACT value.
1. Repeat steps 1 thru 6 for each choice as needed.

> [!ALERT] Because of the complexity and flexibility of custom fields, it is HIGHLY recommended that before you create any custom field in the production TMS environment, you test them with all affected roles in our TMS ACC environment to ensure they work as expected and do not block creation or editing of entities. To be set up in our ACC environment, please submit a support ticket from our [Customer Support](https://www.learnondemandsystems.com/customer-support/) page.

## Related Articles
For more information regarding custom fields, please see:
- [What are custom fields?](custom-fields.md)
- [How do I create a custom field?](create-custom-fields.md)
- [How do I make the custom fields on my courses available on my classes?](../course-and-activities/cascade-custom-fields.md)