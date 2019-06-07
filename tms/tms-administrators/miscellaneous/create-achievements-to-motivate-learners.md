# How do I create achievements to motivate learners?

You can create achievements for your organization that your students earn automatically through their TMS activities. Achievements can be used to motivate your students. You will set the value of an achievement and how often it can be earned. You can view earned achievements on each user's profile. Users can chooose to participate in achievement from their profile (article coming soon)

There are several terms (fields) you will need to know before you start to create achievements:

- **Points** - the point value you set based on the achievement's value compared to other achievements you have for your organization. This number is completely up to you but can be used to create other achievements based on the number of points a person has earned from their achievements.
- **Frequency** – the number of times an achievement may be earned.
- **Frequency Type** – qualifies the frequency. You can select from one of the following options:
     - **Per User** - each student can earn the achievement up to the **Frequency** number set;
     - **Per Day** - only one student can earn the achievement within the **Frequency** number of days;
     - **Per Achievement** - the achievement can only be earned **Frequency** number of times total.
- **Conditions** - the conditions the for earning the achievement. They are written in JSON ([Help with JSON conditions](tms-achievement-conditions.md)).

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
1. Click the **Conditions** tab and enter the JSON conditions for earning the achievement.
1. Click **Save**.

Once you have created achievements and have your students set to participate in them, you can track the achievements they are earning from either a user's Profile or from the Find Achievements page. To access the achievements of a student: 
1. On the **User Profile** page, click **Achievements** in the toolbar. This opens a page displaying all achievements the user has earned. This link is only available if your organization has achievements AND the user is participating.

To track who has earned a specific achievement, use the **Find Users** search page. On this page:
1. From the **Add filter** dropdown, add the **Achievement** filter.
1. In the **Choose Achievement** dialog, select the achievement you want and click **OK**. All of your users who have earned the achievement will be listed in the results.

Permissions for managing achievements are in the Operations Manager role. Contact our help desk if this is needed for other users.
