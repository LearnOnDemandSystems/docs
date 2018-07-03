# Class

The **Class** command returns information about a class.

## Parameters

|Name|Type|Required|Note
|--- |--- |--- |--- |
|id|string|Yes|The unique identifier of the class, as represented in your organization|

## Response

|Name|Type|Required|Note
|--- |--- |--- |--- |
|Id|String|No|The unique identifier of the class, as represented in your organization|
|Name|String|No|The name of the class|
|Start|Long|No|When the class starts (in Unix epoch time)|
|End|Long|No|When the class ends (in Unix epoch time)|
|Expires|Long|No|When labs can no longer be associated with the class (in Unix epoch time)|
|Instructor|Instructor|Yes|The class instructor. See the Instructor Type below.|
|Url|String|No|A URL where the class can be viewed|

## Instructor
|Name|Type|Required|Note
|--- |--- |--- |--- |
|Id|String|No|The unique identifier of the instructor, as represented in your external system|
|FirstName|String|No|The instructor's first name|
|LastName|String|No|The instructor's last name|

## Example Usage

Imagine… Your organization has a key of 1234567890. You have a class within your system with an ID = 4449999 that already exists in Lab on Demand.

```
https://labondemand.com/api/v3/1234567890/class/?id=4449999
```

## Example Response

```
{
    "Id": "4449999",
    "Name": "Sample Class",
    "Start": 1333267200,
    "End": 1333299600,
    "Expires": 1335978000,
    "InstructorFirstName": "Demo",
    "InstructorLastName": "Instructor",
    "Url": https://labondemand.com/class/5bbca218-2cbe-47ab-bd37-bd9b5b623dea,
    "Status": 1,
    "Error": null
}
```