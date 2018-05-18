# Contributing to the LOD repository - under construction

Welcome to the LOD repository. 
This guide will help you find/create cards and issues and view progress in projects. Its guidelines are not rules. Use your best judgment, and feel free to propose changes to this document.

### Table of Contents

* [Definitions](#definitions)
* [Finding issues (bugs and tasks)](#finding-issues)
* [Submitting bugs](#submitting-bugs)
* [Submitting enhancements](#submitting-enhancements)
* [Labeling issues](#labeling-issues)
* [Viewing projects](#viewing-projects)
* [Adding cards to projects](#adding-cards-to-projects)

### Definitions
* **Cards** – Cards are created and used in projects like sticky notes. Their purpose is to keep track of suggestions while a feature enhancement is in the planning/discussion phase. Cards allow a limited number of characters, do not have a template and can belong to only one project. However they can be referenced in another project’s cards and can be turned into issues.
* **Issues** – Issues are the main items that guide development. Both bugs and enhancements are submitted using issues. They provide the information the developer needs to fix the bug or create the enhancement. Issues are either open or closed and cannot be deleted. They can have labels, be assigned to one or more developers, belong to one or more projects, and can be assigned to one milestone.
* **Labels** - Labels are attached to issues. Their purpose it visible category tags issues for easy identification and filtering. 
* **Projects** - Projects track progress on related issues around a major feature or focus area. They contain cards for items in planning for the project and swim lanes to show the status of issues. You can look at a project and see at a glance what progress has been made.

[Back to ToC](#table-of-contents)

### Finding issues

This section guides you through finding (filtering) issues on the Issues tab. Before submitting a bug or an enhancement you should always check to see if an issue, either open or closed, already exists for it in the repository. There are three main ways to filter for issues: use the filter/search area, apply column filters, or select icons.

**Filter/search area:**

This area is directly below the Issues tab.
* Default filters - To use the built-in, default filters, in the Filters area, click the Filters dropdown
(need screenshot of filter dropdown w/choices
* Custom filters - To use custom filters, define your criteria in the search bar. This Help article details how to use some criteria: [Using search to filter issues and pull requests](https://help.github.com/articles/using-search-to-filter-issues-and-pull-requests/)

**Column filters and icons:**

The column are the actual column headers. The icons are the visible tags next to issues.
* **Author** - To filter by who created them, either click the Author dropdown and select the person. 
(need screenshot of Author dropdown)
* **Labels** - To filter by a specific label, click the Labels dropdown and select the label or click on the label next to an issue. Another method is to click the Labels button. Here is a Help article for this third method: [Filtering issues and pull requests by labels](https://help.github.com/articles/filtering-issues-and-pull-requests-by-labels/)
* **Projects** - To filter by a project, click the Projects dropdown and select the project.
* **Milestones** - To filter by a milestone, click the Milestones dropdown and select the milestone or click the milestone next to an issue. Another method is to click the Milestones button. Here is a Help article for this third method: [Filtering issues and pull requests by milestone](https://help.github.com/articles/filtering-issues-and-pull-requests-by-milestone/)
* **Assignee** - To filter by a developer, click the Assignee dropdown and select the developer or click the picture of the developer in the Assignee column.
* **Sort** - To choose a different sort order, click the Sort dropdown.
(need screenshot of Sort dropdown)

Issues can be filtered by more than one column but only one filter value per column. For further reading, check out this Help article: [Finding information in a repository](https://help.github.com/articles/finding-information-in-a-repository/)

To remove filters, click the **X - Clear current search query, filters, and sorts** message below the search area.

[Back to ToC](#table-of-contents)

### Submitting bugs
Before submitting a bug, check the Issues tab to see if it has already been reported. Use the [Finding issues](#finding-issues) section to assist with this. Make sure to check both Open and Closed issues. If the bug is causing major disruption in Production, notify the development team and the Product Manager immediately before logging into GitHub. 

To submit a bug , click the New Issue button. The Issue template will appear with guidelines on how to fill out the issue. Follow these guidelines as close as possible to help the team understand your bug and minimize need for clarification. You will not need to complete every section every time; it depends on the bug. Here are best practices to keep in mind:
* Start the Title with "Bug: ", and keep it clear and descriptive without unnecessary words like "a", "the", "is", etc.
* Be concise in the Description, but include specifics such as names of pages, error messages, or results.
* Describe how the bug impacts one or more of our strategic goals in a negative manner, if known. This section helps with triage and is optional.
* Detail how customers are impacted and list customers, if known. This section helps with triage and is optional.
* Describe the exact steps which reproduce the problem in as many details as possible. For example, start by noting which user you were using. When listing steps, provide specific examples to demonstrate them. Include in the Helpful links section any links to users and pages which you use in those examples. 
* If possible, include details on what the correct results of the steps above should be. For example, "On Find Lab Profiles, with the Expected Duration filter set to "Is Less than 60 minutes", the results should be 193 with only the labs whose durations are less than 60, not less than or equal to 60 appearing.
* Describe the behavior you observed after following the steps and point out what exactly is the problem with that behavior. For example, "This page and filter return 300 results and include labs whose duration are exactly 60 minutes, not just less than 60 minutes." 
* If the problem wasn't triggered by a specific action, describe what you were doing before the problem happened and share more information using the guidelines below.

Provide more context by answering these questions:

1. Can you reproduce the problem in a different browser and in ACC?
2. Did the problem start happening recently (e.g. after the last push to Production) or was this always a problem?
3. Can you reliably reproduce the issue? If not, provide details about how often the problem happens and under which conditions it normally happens.

Include details about your configuration and environment, if applicable:
* Which browser with version are you using?
* What's the name and version of the OS you're using?

**Example**
(placeholder for example)

Once you have completed the Write tab, before clicking **Submit new issue**, click the gear symbol next to **Labels** on the right side and click **Bug** to add the label. For all other labels, please refer to  [Labeling issues](#labelling-issues).

> **Note:** If you find a **Closed** issue that seems like it is the same thing that you're experiencing, open a new issue and include a link to the original issue in the body of your new one.

[Back to ToC](#table-of-contents)

### Submitting enhancements
Before creating an enhancement suggestion, check the Issues to see if it has already been requested. Use the [Finding issues](#finding-issues) section to assist with this. Make sure to check both Open and Closed issues. 

To submit an enhancement, click the New Issue button and the Issue template will appear. Follow its guidelines as close as possible to help the team understand your enhancement and minimize need for clarification. You will not need to complete every section every time; it depends on the enhancement. Here are best practices to keep in mind:
* Use a clear and descriptive title for the issue to identify the enhancement. Omit unnecessary words like "a", "the", "is", etc.
* Provide a step-by-step description of the suggested enhancement in as many details as possible. Use the following format to make checkable steps: a dash followed by a space then an open square bracket, another space, and closed square bracket.
* Describe how the enhancement aligns with one or more of our strategic goals, if known. This section helps with triage and is highly recommended.
* Explain why this enhancement would be useful to most LOD users and list customers, if known. This section helps with triage and is optional. 
* Include a "Need by" date, if applicable, and explain why this date is important. For example, XXX 
* If possible, explain the behavior you expect to see when the enhancement is implemented and why. For example, XXX
* Attach a mockup file whenever possible by dragging and dropping the file in the area at the bottom of the issue

**Example**
(placeholder for example)

Once you have completed the Write tab, before clicking **Submit new issue**, click the gear symbol next to **Labels** on the right side and click **Enhancement** to add the label. For all other labels, please refer to  [Labeling issues](#labelling-issues).

[Back to ToC](#table-of-contents)

### Labeling issues
There are several labels that can be attached to issues for identification and categorization. They are available by clicking the **Labels** button on the Issues tab. Before attaching any label, except **bug**, **enhancement**, and **needs est hrs**, to an issue, review the labels and their descriptions to understand how they are used. These labels will normally be attached to the issues after discussions and priority meetings. However, if you know the issue is customer-facing, relates to the Reports app, or is easily tied to a goal, you may attach them. 

To attach labels, there are two methods: one issue at a time or multiple issues at a time.
* For individual issues, open the issue and on the right side, click the Labels gear symbol and click the labels you want to add or remove.
* For multiple issues at onec, check the checkbox next to the issues you want to label, click the Label column header, and click each label you want to add to the selected issues.

[Back to ToC](#table-of-contents)

### Viewing projects
xx

[Back to ToC](#table-of-contents)

### Adding cards to projects
xx

[Back to ToC](#table-of-contents)
