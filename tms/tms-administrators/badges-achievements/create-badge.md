---
title: "How do I create a badge?"
isPublished: true
---

# How do I create a badge?

> [!Alert] Please be aware that not all functionality covered in this and linked articles may be available to you.

After creating the Badge Provider entity, the next step is to set up your badges. Badges in the TMS attach to achievements and use the badge template IDs in the external badge provider (currently Credly) to ensure the correct badge is issued when the achievement is earned. 

To create a **Badge**:
1. In the **Admin** menu, in the **Badges** group, click **Create Badge**. This will open the Create Badge page.
1. On the **Basic Information** tab, set the **Name** for the badge. Best practice is to have the name match the name of the badge template in the external provider.
1. Add a **Description** that describes what it takes to earn the badge. This field is optional but is useful to help distinguish between badges with similar names.
1. Ensure **Organization** is set to the organization that will manage the badge. This defaults to your organization.
1. Next to **Badge Provider**, click **Choose**.
1. Search for and select the appropriate **Badge Provider** entity and click **OK**.
1. In the **Badge Provider Template Id** field, enter the **Badge Template ID** from the external provider (Credly). When the badge is earned in the TMS, it sends this template ID to them to issue the correct external badge to the user. 
1. On the **Availability** tab, add your child organizations that can associate this badge with their achievements.
1. Click **Save**.

![](/tms/images/create-badge-image.png)


## Related Articles

For more information on badging and achievements, please see:

- [What is involved in creating external badges?](badge-process.md)
- [How do I create a Badge Provider in the TMS?](create-badge-provider.md)
- [How do I associate a badge with an achievement?](associate-badge.md)
- [How do I create achievements?](create-achievements-to-motivate-learners.md)
