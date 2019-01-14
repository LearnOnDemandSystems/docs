# How do I create achievements to motivate learners?

You can create achievements for your organization that your users earn automatically through their TMS activities. Achievements can be used to motivate your learners. You will set the value of an achievement and how often it can be earned. You can view earned achievements on each user's profile. Users can chooose to participate in achievement from their profile (article coming soon)

There are several terms (fields) you will need to know before you start to create achievements:

- **Points** - the point value you set based on the achievement's value compared to other achievements you have for your organization. This number is completely up to you but can be used to create other achievements based on the number of points a person has earned from their achievements.
- **Frequency** – the number of times an achievement may be earned.
- **Frequency Type** – limits the frequency of how the achievement is earned. You can select from
     - **Per User** - if **Frequency** is set to** 1 **, a user can only earn the achievement once;
     - **Per Day** - if **Frequency** is set to **1**, the achievement can only be earned once within a 24 hour period regardless of user;
     - **Per Achievement** - if **Frequency** is set to **1**, the achievement can only be earned once regardless of user.
- **Conditions** - the conditions for earning the achievement. They are written in JSON (Help with JSON conditions).

To create an achievement:
1. On the **Site Admin** page, click **Achievements** in the Organization tile.
1. On the **Find Achievements** page, click **Create Achievement** on the upper right side.
1. On the **Create Achievement** page, complete the **Basic Information** tab:
     1. **Name**
     1. **Description** - displayed under the name on the **Achievements** page as well as on **Find Achievements**.
     1. **Organization** 
     1. **Points**
     1. **Frequency**
     1. **Frequency Type**
1. Click the **Conditions** tab and enter the JSON conditions for earning the achievement.
1. Click **Save**.

Once you have created achievements and have your users set to participate in them, you can track the achievements they are earning from either a user's profile or from the Find Achievements page. To access the achievements of a user: 
1. On the user’s profile page, click **Achievements** in the toolbar. This opens a page displaying all achievements the user has earned. This link is only available if your organization has achievements AND the user is participating.

To track who has earned a specific achievement, use the **Find Users** search page. On this page:
1. On the **Add filter** dropdown, add the **Achievement** filter.
1. In the **Choose Achievement** dialog, select the achievement you want and click **OK**.
All of your users who have earned the achievement will be listed in the results.

Permissions for managing achievements are in the Operations Manager role. Contact our help desk if this is needed for other users.
