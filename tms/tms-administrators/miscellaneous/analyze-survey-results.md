---
title: "How do I export survey responses and analyze them in Excel?"
isPublished: true
---

# How do I export survey responses and analyze them in Excel?

> Please be aware that not all functionality covered in this article may be available to you.

When you need to analyze the responses to a survey you have attached to a course or classes, you can export the responses to a CSV file for analysis in Excel or other programs. 

There are 2 locations to export responses:
1. Navigate to the **Survey Profile** page.
1. In the quick links bar, click **Export Survey Responses** or **Export Anonymous Survey Responses**. Note: The anonymous export will not contain any information identifying the respondent.  **-OR-**
1. Navigate to the **Response Summary** page for the survey.
1. Click **Search**. The Export link will appear next to Search.
1. Click **Export**.
1. Save the file where needed.

You can open this file in any program that reads a .csv file format and then analyze or format the results as needed in that program. The file for a student survey will contain the following items:
- Survey Id
- Course Id
- Class Id
- Class
- Class Start Time
- Class End Time
- Instructor
- Instructor Email
- User (unless exported using Anonymous Survey Responses)
- User Email (unless exported using Anonymous Survey Responses)
- Question
- Label
- Response

Each row will contain one answer to one question in the survey. If a question is a matrix-type question (i.e. Rate the following on a scale of 1 to 10), each label will be considered its own question and thus have its own row. 

The following are two ways to analyze the results in Excel: [using filters](#using-filters) and [using PivotTables](#using-pivottables). Start by opening the file in Excel and widening the columns as necessary. Highlight and bold the top row, if desired.

## Using Filters
Filters can be used if you would like to collapse the data based on different data points such as only looking at responses to a specific question or for a specific instructor. Filters can be applied to more than one column at a time. A row must match every filter to appear in the results.

To use the **Filter** functionality:
1. Ensure the active cell is anywhere in the data.
1. On the **Home** ribbon tab, click **Sort & Filter > Filter**. A dropdown arrow will appear in each column’s header cell.

Here are two examples of how you might want to use these filters:

*Show me the responses for question X*
1. To narrow the results for a specific question, click the dropdown arrow next to **Question**.
1. From the list, ensure only the question(s) you want to see responses for are checked and click **OK**.

When a filter is applied to a column, you will notice a Funnel icon added to the dropdown arrow in the column header, the row indicators change color, and the Status bar at the bottom will display **X of Y records found** indicating the number of filtered results. 

*Show me the responses for X course(s) taught by Y instructor(s)*
1. To narrow the results for a specific instructor, click the dropdown arrow next to **Instructor**.
1. From the list, ensure only the instructor(s) you want to see responses for are checked and click **OK**.
1. To narrow the search even further to only certain course(s), click the dropdown arrow next to **Course Id**.
1. From the list, ensure only the course(s) you want to see responses for are checked and click **OK**.

Filters can be applied and removed from columns in any order. To remove or change a single column filter, click its dropdown and either make changes to the selections or click **Clear filter from …**.

![](/tms/images/survey-excel-filter-responses.png)

## Using PivotTables
PivotTables can be used to do a higher level of analyzing. You may need to practice with the PivotTable to get the analysis you want but it is highly flexible. This article will only touch on the basics with one scenario to help you get started: *What is the average rating for each instructor on the Instructor’s Knowledge question*.

To add a **PivotTable**:
1. Start with the active cell inside of the data. This allows Excel to recognize the range of cells for the data.
1. From the **Insert** ribbon tab, in the **Tables** group, click **PivotTable**.
1. In the **Create PivotTable** dialog, keep the defaults and click **OK**. A new tab will be added to your file.

![](/tms/images/survey-insert-pivottable.png)

> [!NOTE] The following steps may differ depending on your needs and the way your questions are configured in your survey.

1. In the **PivotTable Fields** menu box, check and drag **Instructor** to the **Columns** area at the bottom of the menu box.
1. Check and drag **Question** to the **Filters** (or **Rows**) area.
1. Check and drag **Label** to the **Rows** area (if **Question** is already there, drop **Label** below it).
1. Check and drag **Response** to the **Values** area.
Click the dropdown on **Count of Responses** and select **Value Field Settings**.
1. In the **Value Field Settings** dialog, select **Average** in the **Summarize value field by** list.
1. Click **Number Format** and in **Format Cells** dialog, select the format you want the average responses to be in (in rating scale questions, it is best to go with **Number** and your choice of decimal places) and click **OK**.
1. Click **OK** again to close the **Value Field Settings** dialog.
1. In the table, click the filter dropdown next to **Question**, and select the knowledge question and click **OK**.

> [!NOTE] When using the Average summary for the Values, all data must be numerical. When a data point is not numerical, its value is ignored. If all data points are text, you will receive a #DIV/0! Error in that cell as can be seen in the screenshot for Andy Barkl. In this case, the Response scale has numbers except for 1 and 10, which are “1 Not effective” and “10 Effective”. Andy received all “10 Effective” responses to a couple of items and thus you see the error.  

![](/tms/images/survey-results-pivottable.png)

This article is not an indepth explanation of Excel’s filters and PivotTables. It just provides some simple examples of how you might get started in analyzing your survey responses.
