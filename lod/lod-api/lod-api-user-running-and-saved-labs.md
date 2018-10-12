# UserRunningAndSavedLabs

The **UserRunningAndSavedLabs** command retrieves all labs that are currently running or saved for a particular user account.

## Parameters

|Name|Type|Required|Note|
|--- |--- |--- |--- |
|userId|String|Yes|The unique identifier used to identify the user in within your organization|

## Response
|Name|Type|Required|Note|
|--- |--- |--- |--- |
|RunningLabs|Array of RunningLab|No|See the RunningLab Type below|
|SavedLabs|Array of SavedLab|No|See the SavedLab Type below|

## RunningLab
|Name|Type|Required|Note|
|--- |--- |--- |--- |
|LabInstanceId|Long|No|The unique identifier of the lab instance|
|LaProfileId|Int|No|The unique identifier of the lab profile the lab instance is based on|
|LabProfileName|String|No|The name of the lab profile the lab instance is based on|
|LabProfileNumber|String|No|The number/code of the lab profile the lab instance is based on|
|Start|Long|No|When the lab instance was started (in Unix epoch time)|
|Expires|Long|No|When the lab will expire (in Unix epoch time)|
|Url|String|No|A URL where the lab can be viewed by the user|
|IsExam|Boolean|No|Indicates whether the lab is considered a scorable exam|

## SavedLab

|Name|Type|Required|Note|
|--- |--- |--- |--- |
|LabInstanceId|Long|No|The unique identifier of the lab instance|
|LabProfileId|Int|No|The unique identifier of the lab profile the lab instance is based on|
|LabProfileName|String|No|The name of the lab profile the lab instance is based on|
|LabProfileNumber|String|No|The number/code of the lab profile the lab instance is based on|
|MinutesRemaining|Int|No|The number of minutes remaining for the student to complete the lab (when resumed)|
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

```
{
    "RunningLabs": [
        {
            "LabInstanceId": 3497,
            "LabProfileId": 5,
            "LabProfileName": "Demo Lab 1",
            "LabProfileNumber": "LAB001",
            "Start": 1338223121,
            "Expires": 1338244721,
            "Url": https://labondemand.com/console/setup/7fdf8e48-6d66-435d-8069-04e540db9b74,
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
