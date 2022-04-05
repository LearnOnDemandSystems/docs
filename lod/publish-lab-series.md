---
title: "Publishing a Lab Series to Production"
description: "This document describes the process of moving labs from Development to Production in Lab on Demand."
isPublished: true
---

# Publishing a Lab Series 

This document describes the process of publishing labs from Development to Production in Lab on Demand. This procedure should be used anytime a new course is being published to Production.  

## Table of Contents
- [Publishing a Lab Series](#publishing-a-lab-series)
  * [Saving a New Lab Series](#saving-a-new-lab-series)
  * [Launch Lab Profiles and Set Development Status](#launch-lab-profiles-and-set-development-status)
  * [Publishing the Lab Series to Production](#publishing-the-lab-series-to-production)


>[!knowledge] If a Lab Profile in production is linked to a course and the course needs to be updated with content from a Lab Profile that is in development, it is recommended to use Lab Profile Inheritance, so that the course will not need to be recreated. For more information, please read our [Lab Profile Inheritance documentation](lab-profile-inheritance.md). 

## Saving a New Lab Series

After you have finished development on a lab series in Lab on Demand, complete the following steps to publish to production. 

1. **Navigate** to the **Lab Series** that you want to publish to production. 

1. **Select Edit** in the upper-right corner of the page. 

1. Scroll to the bottom of the page and **Select Save As**. 

1. In the **Save As dialog**, specify the following: 

    1. Enter a **name** for the new Lab Series.
    1. Next to the **Organization** field, **select** the **Choose** button, then select the production organization that will own the Lab Series. 
    1. **Select** the **Lab Profiles** that will be saved to the new production Lab Series. This can be any combination of Lab Profiles in the list, or you may choose **Select All** to add all Lab Profiles in the list to the new production Lab Series. 

### Launch Lab Profiles and Set Development Status

Next, you must launch each Lab Profile one time to confirm that they launch and function as expected, and then set the Development Status to _Complete_. 

1. Navigate to the first Lab Profile in the new Lab Series. 

1. Launch the lab and confirm it launches and functions as expected. Once it is launched and you have confirmed it works as expected, end the lab. 

1. **Edit** the Lab profile, and **select** the drop-down menu next to the **Development Status** field. 

1. Change this to **Complete**. 

1. **Save** the Lab Profile. 

1. Repeat these steps for each Lab Profile in the Lab Series. 

## Publishing the Lab Series to Production

Once you have launched each Lab Profile in the Lab Series, and set the development status to _Complete_, you may publish the Lab series to an API Consumer. 

1. **Navigate** to the **new Lab Series**

1. **Select Edit** in the upper-right corner of the page. 

1. **Select** the **Publish** tab of the Lab Series. 

1. Select **Add API Consumer**. 

    1. Search for the API Consumer for your organization
    1. If you are publishing to the Training Management System (TMS), search for _Training Management System_ and add that API Consumer. 

1. Click **Save** on the **Lab Series**.

1. Add a note about publishing the Lab Series. It is recommended to list the API Consumers that the Lab Series was published to during this step. 

You will now be able to launch the new production Lab Profile(s) via the API Consumers that the Lab Series was published to. You can find the new Lab Profile ID(s) under the new Lab Series, to configure in your API calls. 

>[!knowledge] If you are using the Skillable Training Management System(TMS), and the lab(s) in the Lab Series are not inheriting the environment from a parent lab profile, the lab(s) will need to be added to a course profile as an activity, before they can be launched from the TMS. For more information on creating courses, see our [Course Creation Documentation](../tms/tms-administrators/courses-and-activities/overall/create-course.md)

