# GetOrCreateClass

The **GetOrCreateClass** command returns information about a class. If the class doesn’t exist, it is created.

## Parameters

|Name|Type|Required|Note
|--- |--- |--- |--- |
|id|string|Yes|The unique identifier of the class, as represented in your organization|
|name|String|Yes|The name of the class|
|start|Long|Yes|When the class starts (in Unix epoch time)|
|end|Long|Yes|When the class ends (in Unix epoch time)|
|expires|Long|Yes|When labs can no longer be associated with the class (in Unix epoch time)|
|instructorId|String|No|The ID you use to identify the class instructor in your external system.|
|instructorFirstName|String|No|The first name of the class instructor|
|instructorLastName|String|No|The last name of the class instructor|
|maxActiveLabInstances|Integer|No|The maximum number of active lab instances than can exist concurrently within this class context. This is optional in most situations. However, it is required for classes that host shared environments. If a shared lab is launched against a class that doesn't have this value set, the launch will fail.|
|availableLabs|Integer Array|No|An optional array of lab profile IDs. When provided, Lab on Demand will know that these labs are available within the class. You do not need to set this value in order to launch labs against the class. This is useful when using Lab on Demand to display a class attendance page, or when consuming shared class environments and you want the shared environment launch link to appear on the class monitor page.
|Error|String|Yes|In the event of an error, this will contain a detailed error message.|


## Response

|Name|Type|Nullable|Note
|--- |--- |--- |--- |
|Id|String|No|The unique identifier of the class, as represented in your organization|
|Name|String|No|The name of the class|
|Start|Long|No|When the class starts (in Unix epoch time)|
|End|Long|No|When the class ends (in Unix epoch time)|
|Expires|Long|No|When labs can no longer be associated with the class (in Unix epoch time)|
|Instructor|Instructor|Yes|The class instructor. See the Instructor Type below.|
|Url|String|No|A URL where the class can be viewed, including real-time monitoring of labs launched within it|
|maxActiveLabInstances|Integer|Yes|The maximum number of active lab instances than can exist concurrently within this class context.|
|availableLabs|Integer Array|Yes|The IDs of labs available for launch within the class when using the class attendance UI directly in Lab on Demand (generally not used for class deliveries managed outside of Lab on Demand).

## Instructor

|Name|Type|Nullable|Note|
|--- |--- |--- |--- |
|Id|String|No|The unique identifier of the instructor, as represented in your external system|
|FirstName|String|No|The instructor's first name|
|LastName|String|No|The instructor's last name|

## Example Usage

Imagine… A class must be created with the following data:

- ID (in your system): 4449999
- Name: "Sample Class"
- Instructor First Name: "Demo"
- Instructor Last Name: "Instructor"
- Start: April 1, 2012 8AM UTC
- End: April 1, 2012 5PM UTC
- Expires May 2 2012 5PM UTC

```
https://labondemand.com/api/v3/GetOrCreateClass/?id=4449999&name=Sample+Class&instructorFirstName=Demo&instructorLastName=Instructor&start=1333267200&end=1333299600&expires=1335978000
```

## Example Response

```linenums
{
    "Id": "4449999",
    "Name": "Sample Class",
    "Start": 1333267200,
    "End": 1333299600,
    "Expires": 1335978000,
    "InstructorFirstName": "Demo",
    "InstructorLastName": "Instructor",
    "Url": https://labondemand.com/class/5bbca218-2cbe-47ab-bd37-bd9b5b623dea,
    "MaxActiveLabInstances": null,
    "AvailableLabs":[],
    "Status": 1,
    "Error": null
}
```
