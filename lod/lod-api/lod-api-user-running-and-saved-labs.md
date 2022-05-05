---
title: "UserRunningAndSavedLabs API Command"
description: "The UserRunningAndSavedLabs command retrieves all labs that are currently running or saved for a particular user account."
isPublished: false
---

# UserRunningAndSavedLabs

The **UserRunningAndSavedLabs** command retrieves all labs that are currently running or saved for a particular user account.

## Parameters

|Name|Type|Required|Note|
|--- |--- |--- |--- |
|userId|String|Yes|The unique identifier used to identify the user in within your organization|

## Response
|Name|Type|Nullable|Note|
|--- |--- |--- |--- |
|RunningLabs|Array of RunningLab|No|See the RunningLab Type below|
|SavedLabs|Array of SavedLab|No|See the SavedLab Type below|
|Status|Integer|No|Indicates the status of the API request
||||0 = Error
||||1 = Success|
|Error|String|Yes|In the event of an error, this will contain a detailed error message.|

### RunningLab
|Name|Type|Nullable|Note|
|--- |--- |--- |--- |
|LabInstanceId|Long|No|The unique identifier of the lab instance|
|LabProfileId|Int|No|The unique identifier of the lab profile the lab instance is based on|
|LabProfileName|String|No|The name of the lab profile the lab instance is based on|
|LabProfileNumber|String|No|The number/code of the lab profile the lab instance is based on|
|Start|Long|No|When the lab instance was started (in Unix epoch time)|
|Expires|Long|No|When the lab will expire (in Unix epoch time)|
|URL|String|No|This response property is deprecated. Unless explicitly allowed by Skillable, this field will always be null. To obtain an access URL, use the [LabAccessUrl](lod-api-lab-access-url.md) command.|
|IsExam|Boolean|No|Indicates whether the lab is considered a scorable exam|

### SavedLab

|Name|Type|Nullable|Note|
|--- |--- |--- |--- |
|LabInstanceId|Long|No|The unique identifier of the lab instance|
|LabProfileId|Integer|No|The unique identifier of the lab profile the lab instance is based on|
|LabProfileName|String|No|The name of the lab profile the lab instance is based on|
|LabProfileNumber|String|No|The number/code of the lab profile the lab instance is based on|
|MinutesRemaining|Integer|No|The number of minutes remaining for the student to complete the lab (when resumed)|
|Saved|Long|No|When the lab was saved (in Unix epoch time)|
|Expires|Long|No|When the saved lab will expire (in Unix epoch time). The student must resume the lab for this date, or the lab will be deleted.|
|SaveInProgress|Boolean|No|True/false indicating whether the lab is currently in the process of being saved|
|IsExam|Boolean|No|Indicates whether the lab is considered a scorable exam|
|SubmittedForGrading|Boolean|No|Indicates whether the lab has been submitted for grading and is in a saved state while awaiting scoring. This will only be true for exams.|

## Example Usage

Imagine… A user has an Id in your system of 555.

```
https://labondemand.com/api/v3/userrunningandsavedlabs?userid=555
```

## Example Response

```linenums
{
    "RunningLabs": [
        {
            "LabInstanceId": 3497,
            "LabProfileId": 5,
            "LabProfileName": "Demo Lab 1",
            "LabProfileNumber": "LAB001",
            "Start": 1338223121,
            "Expires": 1338244721,
            "Url": null,
            "IsExam": false,
        }
    ],
    "SavedLabs": [ 
        {
            "LabInstanceId": 3493,
            "LabProfileId": 1,
            "LabProfileName": "Demo Lab 2",
            "LabProfileNumber": "LAB002",
            "MinutesRemaining": 359,
            "Saved": 1337987655,
            "Expires": 1338592455,
            "SaveInProgress": false,
            "IsExam": false,
            "SubmittedForGrading": false
        }
    ],
    "Status": 1,
    "Error": null
}
```
