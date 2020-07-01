---
title: "How do I create an achievement?"
isPublished: true
---

# How do I create an achievement?

> [!Alert] Please be aware that not all functionality covered in this and linked articles may be available to you.

You can create achievements that your students earn automatically through their TMS activities. Achievements can be used to motivate your students, especially if associated with external badges. Users can choose to participate in achievements from their profile.

There are several terms (fields) you will need to know before you start to create achievements:

- **Points** - the point value you set based on the achievement's value compared to other achievements you have for your organization. This number is completely up to you. You can create achievements that are earned based on the number of points a student has earned from other achievements.
- **Frequency** – the number of times an achievement may be earned.
- **Frequency Type** – qualifies the frequency. You can select from one of the following options:
     - **Per User** - each student can earn the achievement up to the **Frequency** number set;
     - **Per Day** - only one student can earn the achievement within the **Frequency** number of days;
     - **Per Achievement** - the achievement can only be earned the **Frequency** number of times total.
- **Conditions** - the conditions for earning the achievement. They are written in JSON.

To create an achievement:
1. On the **Admin** menu, click **Achievements** in the **Organization** group.
1. On the **Find Achievements** page, click **Create Achievement** on the upper right side.
1. On the **Create Achievement** page, complete the **Basic Information** tab:
     1. **Name**
     1. **Description**
     1. **Organization**
     1. **Points**
     1. **Frequency**
     1. **Frequency Type**
1. (Optional) Next to **Badge**, click **Choose** to open the **Choose Badge** dialog if the achievement will earn the student a badge from the outside Badge Provider.
1. Search for and select the badge and click **OK**.
1. Click the **Conditions** tab and enter the JSON conditions for earning the achievement (see [Achievements JSON Help and Examples](tms-achievement-conditions.md).)
1. Click **Save**.

Once you have created achievements and have your students set to participate in them, you can track the achievements they are earning from either a user's Profile or from the Find Achievements page. To access the achievements of a student: 
1. On the **User Profile** page, click **Achievements** in the toolbar. This opens a page displaying all achievements the user has earned. This link is only available if your organization has achievements AND the user is participating.

To track who has earned a specific achievement, use the **Find Users** search page. On this page:
1. From the **Add filter** dropdown, add the **Achievement** filter.
1. In the **Choose Achievement** dialog, select the achievement you want and click **OK**. All of your users who have earned the achievement will be listed in the results.

The following settings must be in place for the user to earn an achievement:

1. Your organization must have the **Enable Achievements** field checked on the Preferences tab. This enables your users to earn achievements.
1. A user must have the **Participate in Achievements** field checked on the **Basic Information** tab of their profile.
1. The achievement must belong to the organization the user belongs to OR the course must have the **Enable achievements for outside organizations** checked.

## Related Article

For information on badging, please see:

- [What is involved in creating external badges?](badge-process.md)
