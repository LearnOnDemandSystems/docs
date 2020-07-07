---
title: "How do I create filters for a catalog?"
isPublished: true
---

#   How do I create filters for a catalog?

You can add custom filters to your organization’s Course catalog and On-Demand Subscription catalog to assist your users in locating courses that interest them. Both catalogs use the same style of filters and the setup is very similar. 

![](/tms/images/course-catalog.png)
 
*Filters used in a Course catalog*

A Course catalog is an optional feature you may have on your TMS site. This catalog displays any courses available to your organization set to show on the course catalog. The catalog is accessed from a navigation link available from the login page, or once users have logged in. If you are interested in adding a Course catalog to your site, please contact our [LODS Support Team](https://docs.learnondemandsystems.com/tms/home.md?appid=tms). 

A Subscription On-Demand catalog is a feature available when using subscriptions and is enabled on the Subscription profile. This catalog displays any courses available within subscription(s) to the assigned user. [Click here](/tms/tms-administrators/self-paced-learning-and-subscriptions/subscription-description.md) for more information on subscriptions.

Once you have a Course catalog and/or a Subscription profile set up, you can create course tag groups and course tags to use as headings and item filters. 

## Course tag groups and Course tags

Course tag groups and course tags are used to create filters in catalogs. Course tag groups create the filter headings which are added to the organization profile to automatically add the tag group and tags to all courses created by your organization and set the filters for the Course catalog. If you are using filters in an On-Demand Subscription catalog, Course tag groups are added to the subscription profile.  

Course tags must be selected on courses to associate the filter to the course and are the filters under the heading. Tags must belong to a tag group to display in a catalog, and tags and tag groups can be created in any order and then associated with each other. 

![](/tms/images/catalog-filters.png)

Course tags can be dependent on other course tags to create child filters in your catalog. When a tag is dependent on another tag, it only displays when the parent tag is selected. You can add multiple dependent tags to a parent, as well as any number of parent-dependent relationships.

![](/tms/images/filter-dependencies.png)
*Example of course tag/filter dependencies.*

### Course tags

Follow these steps to create catalog filters through course tags:
1.	From the Site Administration page on the **Courses** tile, select **Course Tags** to open the Course Tags page.
1.	Select the **Course Tags** link, this opens the Find Course Tags page.
1.	Select the **Create Course Tag** link, to access the Create Course Tag page.

**Basic Information tab**

1. Input a **Name** for your tag, this appears on the catalog as the filter.
1. Revise **Organization** as needed.
1. Leave **Enabled** checked for the tag to be used.

**Groups tab**

1. Select the **Add Course Tag Group** to open the Course Tag Group chooser and select an existing tag group(s) to associate with your tag.
1. Search for and select the all the **tag groups** to connect with your tag, then click **OK**.

**Dependencies tab**

If you wish to have other course tags display when this tag is selected, then add course tags here.
1. Select the **Add Course Tags** link to open the Course Tag chooser.
1. Search for and select the all the parent **tags** to connect with your tag, then click **OK**.
1.	**Save**.

### Course tag groups

Follow these steps to create catalog filter headings through course tag groups:
1.	From the Site Administration page on the **Courses** tile, select **Course Tags** to open the Course Tags page.
1.	Select the **Course Tag Groups** link, this opens the Find Course Tag Groups page.
1.	Select the **Create Course Tag Group** link, to access the Create Course Tag Group page.

**Basic Information tab**

1. Input a **Name** for your tag group, this appears on the catalog for the filter heading.
1. Revise **Organization** as needed.
1. Leave **Enabled** checked for the tag group to be used.
1. **Expanded** can be selected to show the filters under the heading when a subscriber opens the catalog or uncheck it to collapse the group, only showing the course tag group name.
1. Select **Mutually Exclusive** to only allow one filter in the group to be selected at a time, leave it unchecked to allow multiple filters to be selected together. If you are using course tag dependencies, then leave this unchecked since users must select the parent and child tags together.

**Tags tab**

1. Select the **Add Course Tags** to open the Course Tag chooser and select an existing tag(s) to associate with your group.
1. Search for and select the all the **tag groups** to connect with your tag, then click **OK**.
1. You may either have tags appear in alphabetical order or set the order you choose. **Sort Tags Alphabetically** is selected by default, uncheck this to drag and drop tags in the order you want them to appear. Keep in mind, if you are using course tag dependencies, you may want to arrange the child tags under the parent.

**Subscription Profiles tab**

Add any subscription you would like to use this course tag group for filters. Any course tag group added to a subscription will display even if none of its filters are associated with courses in the catalog.
1. Select the **Add Subscription Profile** link to open the Subscription Profile chooser.
1. Search for and select the all the **subscription** to connect with your group, then click **OK**.
1.	**Save**.

## Subscription profile

Course tag groups must be associated with the subscription in order to display in the On-Demand Subscription catalog. This can be accomplished from the Course Tag Group or the Subscription Profile. Any tag group added to a subscription will display even if none of the group’s filters are associated with courses in the catalog.

Follow these steps to add course tag groups to a subscription profile:
1.	From the Site Administration page on the **Subscriptions** tile, select **Subscription Profiles** to open the Find Subscription Profiles page.
1.	Search for and select the edit link for the **subscription** you wish to connect with your group, this opens the selected subscription profile.
1.	Select the **Course Tag Groups** tab, 
1. Select the **Add Course Tag Group** to open the Course Tag Group chooser and select an existing tag group(s) to associate with your tag.
1. Search for and select the all the **tag groups** to connect with your tag, then click **OK**.
1.	**Save**. 

## Organization profile

Adding course tag groups to your organization profile applies the selected tag groups to all courses created in your organization giving a listing of all tag groups and their associated tags. Once the tag groups are listed on the course, you can select which tags are used to filter for the course. All tag groups added to the organization display in the Course catalog even if none of group’s filters are associated with courses in the catalog.

Follow these steps to add course tag groups to your organization:
1.	From the Site Administration page on the **Organizations** tile, select **My Organizations** to open the My Organizations page.
1.	Select the link to the **organization** where the tag groups will be added, this opens the selected organization profile.
1.	Click **Edit**.
1.	Open the **Default Course Tag Groups** tab.
1. Select the **Add Course Tag Group** to open the Course Tag Group chooser and select an existing tag group(s) to associate with your tag.
1. Search for and select the all the **tag groups** to connect with your tag, then click **OK**.
1.	**Save**.

## Courses

For courses to appear in search results in a catalog, they must be associated with a tag. Course tag(s) are enabled on a course to set its catalog filter(s). 

Follow these steps to enable course tags on your courses:

1.	From the Site Administration page on the **Courses** tile, select **Find Courses** to open the Find Courses page.
1.	Search for and select the edit link for the **course** you wish, this opens the selected course profile.
1.	Click **Edit**.
1.	Open the **Tags** tab.
1. Each course tag group added to your organization displays with the group’s tags listed under it.
1. Check boxes for any tag to use as a filter for this course.
1.	**Save**.

You can find courses assigned a course tag from Find Courses by adding the filter for Course Tags. The Additional Tags can be used to add course tags to filter by in Find Courses, however, tags added there will not show on a catalog.

Take look at your Course catalog or assign yourself a subscription assignment to view the On-Demand Subscription catalog to review your filters.

## Additional Resources
- [What is a subscription?](/tms/tms-administrators/self-paced-learning-and-subscriptions/subscription-description.md)
- [How do I create a subscription?](/tms/tms-administrators/self-paced-learning-and-subscriptions/create-subscription.md)
- [How do I create learning paths?](/tms/tms-administrators/self-paced-learning-and-subscriptions/create-learning-path.md)
- [How do I assign a subscription to a user?](/tms/tms-administrators/self-paced-learning-and-subscriptions/subscription-assignment-single.md)
- [How do I assign one or more subscriptions to one or more users?](/tms/tms-administrators/self-paced-learning-and-subscriptions/subscription-assignment-multiple.md)
- [How do I use subscription training keys for self-paced learning?](/tms/tms-administrators/self-paced-learning-and-subscriptions/subscription-training-keys.md)
