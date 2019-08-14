# ReplacementTokens

The **ReplacementTokens** command retrieves all @lab replacement tokens available for a particular lab instance.

## Parameters

|Name|Type|Required|Note|
|--- |--- |--- |--- |
| Id | Integer (64-bit) | No | The ID of the lab instance|

## Response

|Property|Type|Nullable|Note
|--- |--- |--- |--- |
|ReplacementTokens|Array of ReplacementTokens|No|See the ReplacementTokens Type below|

## ReplacementTokens

|Property|Type|Nullable|Note
|--- |--- |--- |--- |
|Token|String|No|The token name|
|Replacement|String|No|The replacement value for the token|

## Example Usage

```
https://labondemand.com/api/v3/replacementtokens/38922211
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
