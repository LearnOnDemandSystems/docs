---
title: "How do I set up LTI activities to be used in courses?"
ispublished: true
--- 

# How do I set up LTI activities to be used in courses?

> :small_blue_diamond: Please be aware that functionality covered in this and linked articles may not be available to you.

Learning Tools Interoperability (LTI) enables our TMS to communicate with external systems. LTI is used to integrate course content provided by a third party into the TMS, without the student realizing that they’re using another tool.

The TMS supports LTI versions 1.1 and 1.3. The TMS is LTI Consumer where students access content; the external tool or service being integrated into our TMS is the LTI Provider.

To integrate content from an LTI Provider into the TMS, the following information is required from the provider:
**LTI Client Key** – The account identifier for the LTI Provider which allows the TMS to identify the account needed to access the provider’s content. 
**LTI Client Secret** – The password/passcode used to authenticate to the LTI Provider account. 
**Resource Link URL** – The URL exposing the content to be integrated into the TMS.

Once you have the information, you can create an LTI provider, create an LTI resource link and then the LTI resource link can be added to a Course as an activity. Courses are used to hold content being offered in instructor led classes and in self-paced training. Students access the course through a class enrollment or a self-paced course assignment.
 
![](/tms/images/lti-process.png)

*Overview of the process to create and deliver LTI content.*

## Create an LTI Provider
The LTI Provider holds the integration information and the availability of which organizations can use it in the TMS.

Follow these steps to create an LTI Provider.
1. From Site Administration on the LTI tile, select **Create LTI Provider**. This opens the Create LTI Provider page.
1. In the **Name** field, input a title for your LTI Provider.
1. Verify the **Organization** is correct; it can be changed by clicking Choose and selecting another organization you manage.
1. In the **LTI Key** field, input your third party’s LTI Client Key.
1. In the **LTI Secret** field, enter the LTI Client Secret.
1. The **Custom Parameters** field allows you the option to add customizations. Custom parameters should start with “custom_” and should be in snake case. For example, custom_value_1=some value with 1 custom parameter/value combination per line.
1. Open the **Availability** tab.
1. Verify the organizations added should have access to the LTI Provider. Click **Add Organizations** to find and add organizations you manage.
1. **Save**.

## Create an LTI Resource Link
After creating an LTI Provider you can create LTI Resource Links for all the third party content you want to integrate.

Do the following to add an LTI Resource Link.
1. From Site Administration on the LTI tile, select **Create LTI Resource Link**. This opens the Create LTI Resource Link page.
1. In the **Name** field, input a title for your LTI resource.
1. Verify the **Organization** is correct; it can be changed by clicking Choose and selecting another organization you manage.
1. For **LTI Provider** click **Choose** search for and select your **LTI Provider**. Then click **OK** to add it to the LTI Provider field.
1. In the **Resource Link Url** field, enter the Resource link URL.
1. The **Custom Parameters** field allows you the option to add customizations. Custom parameters should start with “custom_” and should be in snake case. For example, custom_value_1=some value with 1 custom parameter/value combination per line.
1. Check the **This resource requires a score for completion** if applicable.
1. Open the **Availability** tab.
1. Verify the organizations added should have access to the LTI Provider. Click **Add Organizations** to find and add organizations you manage.
1. **Save**.

Your LTI Resource Link can now be added to a Course as a course activity.



