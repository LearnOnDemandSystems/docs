# Achievements JSON Help and Examples

Achievement Conditions are structured using JSON format. 

Achievement Conditions are structured using JSON format. The following will help you with building these conditions for your achievements.

JSON conditions begin with a square left bracket, [, and end with a right square bracket, ]. They are configured using two structures:

- **Object** - A collection of name:value pairs. The **name** is an item,event or action and the **value** is the ID of the item(s) or the outcome of the event or action. An **Object** begins with a left brace, {, and ends with a right brace, }. Each name is followed by a colon and the name:value are separated by a comma.
    - **Example**: [{Subject:0, Count:1}] where “Subject:0” is one name:value pair and “Count:1” is another.

- **Array** - An ordered **collection of values**. An **Array** is used when a **name** represents an item with an ID. An array begins with a left square bracket, [, and ends with a right square bracket, ]. The values within the brackets are separated by a comma.
    -  **Example**: [{Subject:0, Count:2, LabProfileIds:[12345,23456], Distinct:True}]. In this example, [12345,23456] is the array of IDs for the LabProfileIds name. An array can contain only one value.

In the first example, **Subject:0** is referring to launching a lab, and **Count:1** is referring to how many times a lab must be launched to earn the achievement. This condition does not specify which lab must be launched. Therefore, any lab that is launched by a user will earn the achievement.

In the second example, **LabProfileIds:[12345,23456]** identifies the labs that the user must launch to earn the achievement. **Count:2** refers to how many labs must be launched, and **Distinct:True** means each lab has to be launched to reach the Count:2. Therefore, the user would have to launch Lab 12345 AND Lab 23456 to earn the achievement.

JSON conditions in the TMS should start with the Subject name:value pair, **Subject:X**, where **X** is an integer that specifies what the TMS entity type is for earning this achievement:
- Lab = **0** (default)
- Course = **10**
- Course Tag = **20**
- User Achievement = **40**

## Examples
Here are some example achievements and their conditions to earn the achievement:

**Example 1**: Specific lab completion achievement, such as a user needs to complete the “Configure SQL Server” lab with an ID of 98765 once:
> [{Subject:0, LabProfileIds:[98765], Count:1, Complete:True}]

**Example 2**: Specified course completion achievement, such as a user needs to complete the “Security Fundamentals Bootcamp” course with an ID of 2345:
> [{Subject:10, CourseIds:[2345], Complete:True}]

**Example 3**: Specified course type with multiple completions achievement, such as a user needs to complete 3 courses tagged with the “Database” course tag has an ID of 59:
> [{Subject:20, Count:3, CourseTagIds:[59], Complete:True}]

**Example 4**: Specified Learning Path completion with passed exam at the end, such as a user needs to complete all 4 courses in the “Cloud Technologies Expert” learning path (CourseIds of 1583, 1584, 1585, and 1586) and pass the final exam lab in it (ID 54671):

> [
    {Subject:20, Count:4, CourseIds:[ 1583,1584,1585,1586], Complete:True},
    {Subject:0, LabProfileIds:[54671], Count:1, Passed:True}
]

## Name:Value Pairs
The following name:value pairs are some that can be used to configure JSON Conditions in TMS. IDs can be found in the URL for the entity in the TMS.

- **LabProfileIds:[X]**
    - X = the Ids of the lab profiles when specific labs are required for the achievement. If blank, any lab profile will qualify. This name:value pair is only applicable when subject = 0 (Subject:0) indicating labs.

- **CourseIds:[X]**
    - X = the Ids of the course profiles when specific courses are required for the achievement. If blank, any course will qualify. This name:value pair is only applicable when subject = 10 (Subject:10) indicating courses.

- **CourseTagIds:[X]**
    - X = the Ids of the course tag profiles when specific course tags are required on courses for the achievement.  If blank, any course will qualify. This name:value pair is only applicable when subject = 20 (Subject:20) indicating course tags.

- **AchievementIds:[X]**
    - X = the Ids of the achievement profiles required to be earned for this achievement. If blank, any achievement will qualify. This name:value pair is only applicable when subject = 40 (Subject:40)indicating user achievements.

- **Count:X**    
    - X = how many times the subject/id combo must be achieved to qualify for the achievement. For example: **[{Subject:0,Count:1}]** will trigger when someone launches a single lab. Whereas, **[{Subject:0,Count:2}]** will require 2 lab launches to qualify.

- **Points:X**
    - X = the number of points that must be achieved by other achievements to earn this achievement. For example, to create an achievement for when someone earned 100 achievement points, the following would be used: **[{Subject:40,Points:100}]. This name:value pair is only applicable when subject = 40 (Subject:40) indicating achievements.  

- **Distinct:X**
    - X = **True** or **False** regarding whether it takes separate profiles to trigger a multiple count achievement. For example, in the  **Count:X** example above, the achievement would be earned even if the user launched the same lab 2 times. However, if the conditions contained **Distinct:true**, the achievement would require the user to launch 2 different labs: **[{Subject:0,Count:2,Distinct:true}]**. 

 - **MinMinutesSpent:X**
     - X = how long a user must spend in the subject item. This is used with labs maily to make sure the user does not earn the achievement by just launching the lab.

- **SingleDay:X**
    - X = **True** or **False** regarding the whether the user has to meet the other conditions in a single day. For instance, the user has to launch 3 labs in a single day: **[{Subject:0,Count:3,SingleDay:True}]**

- **Complete:X**
    - X = **True** or **False** regarding whether the user must complete the subject item to earn the achievement. When **False**, simply launching a lab, or getting a course assignment or class enrollment is enough to earn the achievement. When set to **True**, the user must actually complete the subject to earn the achievement: **[{Subject:0,LabProfileIds:[12345],Complete:True}]**

- **Passed:X**
    - X= **True** or **False** regarding whether the user must pass the exam lab to earn the achievement. When **False**, simply taking the exam lab will earn the achievement. When set to **True**, the user must actually pass the exam to earn the achievement: **[{Subject:0,LabProfileIds:[13578],Passed:True}]**

> [!NOTE] If a value is left blank on a ID or event item, it will default to 0. If a value is left blank on a True or False item, it will default to false.








    

    






