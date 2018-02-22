# TMS Achievement Conditions

Achievement Conditions are structured using JSON format. 

JSON is configured using two structures:

- A collection of {name:value}. The **name** is an event or action and the **value** is given based on the outcome of the event or action. This is known as an **Object**. 

    - An **Object** begins with { (left brace) and ends with } (right brace). Each name is followed by : (colon) and the name/value are separated by , (comma).

- An ordered **collection of values**, known as an **Array**. 

    - An **Array** begins with [ (left square bracket) and ends with ] (right square bracket). Values are separated by , (comma). 

For example, completing one lab will result in earning an Achievement when using the following JSON Condition: ```[{"Subject":0,"Count":1}]```.

In this Condition, ```"Subject":0``` is referring to completing a lab, and ```"Count":1``` is referring to how many times the lab must be completed, to earn the achievement. Subject and Count are the {name:value}, and they are wrapped in square brackets to make it an Array. It is neccessary to make the condition an Array, omitting the square brackets will result in the Achievement not functioning as intended. 

>Conditions can have more than two items inside of the object and do not have to be an even number. 

For example, to earn an Achievement for ```[{"Subject":0,"Count":3,"SingleDay":true}]```, the user must complete three labs in one day.

In this Condition, ```"Subject":0``` is referring to completing a lab, and ```"Count":3``` is referring to how many times the lab must be completed, and ```"SingleDay":true``` is referring to when the labs need to be completed, to earn the Achievement. 

## The following can be used to configure JSON Conditions in TMS. 

-If a **Value** is left blank on a **name** item, TMS will default to 0. 

-If a **Value** is left blank on a **conditional item** (defined with either true or false), TMS will default to false. 

- **Subject**
    - This is an int to specify what the target of this achievement is:
        - Lab = 0 (default)
        - Course = 10
        - Course Tag = 20
        - User Achievement = 40

- **LabProfileIds**
    - These are the Ids (found in the url bar of the lab profile in the TMS) of the lab profiles that this achievement specifies.  If blank any lab profile will qualify. This field is only applicable to achievements of subject 0 (Lab).

- **CourseIds**
    - These are the Ids (found in the url bar of the course profile in the TMS) of the course profiles that this achievement specifies.  If blank any course will qualify. This field is only applicable to achievements of subject 10 (Course).

- **CourseTagIds**
    - These are the Ids (found in the url bar of the course tag profile in the TMS) of the course tag profiles that this achievement specifies.  If blank any course will qualify. This field is only applicable to achievements of subject 20 (Course Tag)

- **AchievementIds**
    - These are the Ids (found in the url bar of the achievement profile in the TMS) of the achievement profiles that this achievement specifies.  If blank any achievement will qualify. This field is only applicable to achievements of subject 40 (User Achievement).

- **Count**    
    - How many times this subject/id combo must be achieved to qualify.  For example: [“Subject”:0,”Count”:1] will trigger when someone launches a single lab whereas ```[“Subject”:0,”Count”:2]``` will require 2 lab launches to qualify.

- **Points**
    - This field is only applicable to achievements of type 40.  This defines how many points must be achieved by other achievements before this will be achieved. For example, to create an achievement for when someone earned 100 achievement points, the following could be used: ```[“Subject”:40,”Points”:100]```.

- **Distinct**
    - This sets whether or not it takes separate profiles to trigger a multiple count achievement.  The above “Count” description definition with the Count set to 2 would trigger even if the user launched the same lab 2 times, if we add the “Distinct” field, it would make that achievement require the user launch 2 different labs: ```[“Subject”:0,”Count”:2,”Distinct”:true]```. 

- **Complete**
    - This sets whether or not the user must complete the subject item to gain the achievement.  When false (the default) simply launching a lab, or getting a course assignment or class enrollment is enough to get the achievement.  When set to true, the user must actually complete the subject in order to qualify.








    

    






