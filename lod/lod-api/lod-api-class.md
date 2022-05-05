---
title: "Class API Command"
description: "The Class command returns information about a class."
isPublished: false
---

# Class

The **Class** command returns information about a class.

## Parameters

|Name|Type|Required|Note
|--- |--- |--- |--- |
|id|string|Yes|The unique identifier of the class, as represented in your organization|

## Response

|Name|Type|Nullable|Note
|--- |--- |--- |--- |
|Id|String|No|The unique identifier of the class, as represented in your organization|
|Name|String|No|The name of the class|
|Start|Long|No|When the class starts (in Unix epoch time)|
|End|Long|No|When the class ends (in Unix epoch time)|
|Expires|Long|No|When labs can no longer be associated with the class (in Unix epoch time)|
|Instructor|Instructor|Yes|The class instructor. See the Instructor Type below.|
|URL|String|No|This response property is deprecated. Unless explicitly allowed by Skillable, this field will always be null. To obtain a class URL, use the [ClassAccessUrl API](lod-api-classaccessurl.md). |
|Status|Integer|No|Indicates the status of the API request
||||0 = Error
||||1 = Success|
|Error|String|Yes|In the event of an error, this will contain a detailed error message.|

### Instructor
|Name|Type|Nullable|Note
|--- |--- |--- |--- |
|Id|String|No|The unique identifier of the instructor, as represented in your external system|
|FirstName|String|No|The instructor's first name|
|LastName|String|No|The instructor's last name|

## Example Usage

Imagine… You have a class within your system with an ID = 4449999 that already exists in Lab on Demand.

```
https://labondemand.com/api/v3/class/?id=4449999
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
    "Url": null,
    "Status": 1,
    "Error": null
}
```
