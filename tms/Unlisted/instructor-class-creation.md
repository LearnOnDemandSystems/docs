# Instructor Class Creation

## Table of Contents


- [Overview](#overview)
- [Create a Class](#create-a-class)
  - [Basic Information](#basic-information)
  - [Session Times](#session-times)
    - [Add Single Session Times](#add-single-session-times)
    - [Add Multiple Session Times](#add-multiple-session-times)
  - [Instructors](#instructors)

## Overview

SSG Instructors can create classes themselves via the _SSG Workshop Scheduler_ role that is applied to your account. Below is a step by step guide that will walk you through this process so you can create classes.

>![note] Any fields on the _Create Class_ page that are not addressed in this tutorial can safely be left blank. 

## Create a Class

1. Sign into Microsoft Learning Campus.
1. Click the _Admin_ menu and then select _Create Class_.

    ![Click Admin then select Create Class](images/admin-create-class.png)

1. Next to the **Course** field, select **Choose**. 

    ![Choose Course](images/choose-course.png)

    This is where you will search for the workshop that the class is going to deliver. 
1. For these instructions, _**WorkshopPLUS - Data AI: Azure SQL Database Essentials**_ will be used as an example.
1. When searching for a course, it is recommended to **remove existing search filters** and **add the following filter and conditions**:
    - Name: Does: Contain
   
   This makes it so that an exact match is not required for the search and will make it easier to find the course you are looking for. 

   ![Add Name Does Contain filter](images/filter-name-does-contain.png) 

1. Enter `WorkshopPLUS - Data AI: Azure SQL Database Essentials` in the **Name field** and then click **Search**. 
1. When the search returns the course for _WorkshopPLUS - Data AI: Azure SQL Database Essentials_, **select the course** and then click **OK**. 

    ![Couse Search Results](images/course-search-results.png)

    >[!Knowledge] If you are having trouble finding the workshop using this search, try to search part of the name, such as `Azure SQL Database Essentials` or `WorkshopPLUS`. This will allow you to view more related search results. There may be several results, so narrowing down the search with keywords is helpful. 
    >
    > ![Several courses found in search results](images/several-courses-found.png)

### Basic Information 

In the basic information tab, you will need to provide details for the class. Any fields that are not specified in this document can be safely left blank. 

1. Complete the following fields: 
    - **Time Zone - UTC +/-**
    - **Country**
    - **Request Tracking # (RMOS/ROSS ID)**
    - **Minimum Students**
    - **Maximum Students**

    >[!note] When creating a class, the maximum number of students for the class should not exceed 20. Any request to change the number of students after the class has been created will need to be submitted to the Support Team. If the maximum number of students needs to be increased, [contact our Support Team](http://www.skillable.com/customer-support/) and include either the RMOS/ROSS ID and the Event Training Key. Providing these details will help expedite the process. 

1. Select the checkbox to **Allow automatic enrollment using event training key**. 
    >[!knowledge] The Event Training Key is used to enroll students in the class. The Event Training Key is generated automatically and should not be changed once it is generated and distributed to students.

### Session Times

In the Session Times tab, you will enter dates and times for the delivery of the class. Labs in the class will not be available to students until the start time of the first session, based on the Time Zone set in previous steps.

Sessions can be entered as a single session time, or multiple session times. 

#### Add Single Session Times

Adding single session times allow a single session to span across multiple days, and the start and end times are the same for each day. Class activities are available at the start time of the first day of the delivery and are available for students to access throughout the entire duration of the class, even after the session ends for the day. 

To add a single session time, complete the following steps: 

1. Select the Session Times tab. 
1. Click **+Add Single Session Time**.
1. Select the **date and time for the Start**.
1. Select the **date and time for the End**. 
1. Click **OK** to add the session. 

    ![Add single sessions](images/single-session-time.png)

#### Add Multiple Session Times 

Adding multiple session times allow adding multiple days of sessions, where the lab activities are inaccessible after the end time of that day of delivery. Class activities become available again at the start time of the next day of delivery.

To add multiple session times, complete the following steps: 

1. Select the **Session Times tab**. 
1. Click **+Add Session Times**. 
1. Enter the number of sessions for the delivery. 
1. Select the days that the class will be delivered on. 
1. Select the **First Day** of the class. 
1. Select the **Start Time** of the class. 
1. Select the **End Time** of the class. 
1. Click **OK** to add the session times.

    ![Add multiple session times](images/multiple-session-times.png)

### Instructors

Instructor(s) are added to a class. To add an instructor, complete the following steps: 

1. Select the **Instructors tab**.
1. Click **+Add Instructor**. 

    This is where you will search for the instructor that is going to deliver the class. 

1. Remove the **Does not have schedule conflict** filter. 

    Some PFEs may have multiple classes on their schedule, that may intersect with one another. Removing this filter will allow you to return them in search results easier. 

1. When searching for an instructor, it is recommended to **add the Email filter**. The easiest way to search for a PFE is via email. 

    ![Choose instructor](images/choose-instructor.png)

    >[!knowledge] Sometimes the alias that is on file is not the one attached to their Skillable TMS account. If you are having trouble finding the person you are looking for via an email search, it is recommended to **remove existing search filters** and **add the following filter and condition**:
    >    - First Name: Does: Contain
    >    - Last Name: Does: Contain
    >
    > This will broaden the search, making it easier to find the instructor you are looking for.
    
1. Scroll to the bottom of the page and click **Save**. 
1. A prompt may appear saying _You haven't assigned any classrooms. Are you sure want to continue?_. Click **OK**, and the saving progress will begin. 

    The saving process for an SSG class may take up to 2 minutes to create and save the class. **During this time do not refresh your browser or close the window**. 

1. Once the class is saved, a message will be displayed under the _Save_ button saying _Successfully Created_, with a link to the class. 

    ![Class link](images/class-link.png)

If you have any questions with this process, please [contact our Skillable Platform Support Team](http://www.skillable.com/customer-support/). The support team is available 24/7. 


