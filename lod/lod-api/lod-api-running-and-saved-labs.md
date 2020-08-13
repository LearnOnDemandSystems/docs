# RunningAndSavedLabs

The **RunningAndSavedLabs** command retrieves all lab instances launched by this API Consumer that are currently running or saved.

## Parameters

none

## Response

|Property|Type|Nullable|Note
|--- |--- |--- |--- |
|RunningLabs|Array of LabInstance|No|See the LabInstance Type below|
|SavedLabs|Array of LabInstance|No|See the LabInstance Type below|
|Error|String|Yes|In the event of an error, this will contain a detailed error message.|

## LabInstance

|Property|Type|Nullable|Note
|--- |--- |--- |--- |
|Id|Long|No|The unique identifier of the lab instance|
|UserId|String|No|The ID of the user the lab instance belongs to|
|UserFirstName|String|No|The first name of the user the lab instance belongs to|
|UserLastName|String|No|The last name of the user the lab instance belongs to|
|LabProfileId|Int|No|The unique identifier of the lab profile the lab instance is based on|
|LabProfileNumber|String|No|The number/code of the lab profile the lab instance is based on|
|LabProfileName|String|No|The name of the lab profile the lab instance is based on|
|Start|Long|No|When the lab instance was started (in Unix epoch time)|
|Expires|Long|No|When the lab will expire (in Unix epoch time)|
|IsExam|Boolean|No|Indicates whether the lab is considered a scorable exam|

## Example Usage

```
https://labondemand.com/api/v3/runningandsavedlabs
```

## Example Response

```linenums
{
    "RunningLabs": [
        {
            "Id": 3497,
            "UserId": "5843",
            "UserFirstName": "John",
            "UserLastName": "Doe",
            "LabProfileId": 5,
            "LabProfileName": "Demo Lab 1",
            "LabProfileNumber": "LAB001",
            "Start": 1338223121,
            "Expires": 1338244721,
            "IsExam": false
        }
    ],
    "SavedLabs": [
        {
            "Id": 3493,
            "UserId": "5158",
            "UserFirstName": "Sally",
            "UserLastName": "Smith",
            "LabProfileId": 1,
            "LabProfileName": "Demo Lab 2",
            "LabProfileNumber": "LAB002",
            "Start": 1337987655,
            "Expires": 1338592455,
            "IsExam": false
        }
    ],
    "Status": 1,
    "Error": null
}
```
