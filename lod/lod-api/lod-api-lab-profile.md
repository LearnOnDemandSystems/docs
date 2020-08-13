# Lab Profile

The **LabProfile** command will return information about a specific lab profile.

## Parameters

|Name|Type|Required|Note
|--- |--- |--- |--- 
|Id|Integer|Yes|The unique identifier of the lab profile.|

## Response

|Name|Type|Nullable|Note
|--- |--- |--- |--- 
|Id|Integer|No|The unique identifier of the lab profile|
|Name|String|No|The name of the lab profile|
|Number|String|Yes|The lab number (usually to identify a lab within a series, e.g. Module 1, Module 2, etc.)|
|PlatformId|Integer|No|The virtualization platform the lab is run on.|
||||-1 = None|
||||2 = Hyper-V|
||||3 = vSphere|
||||10 = Azure|
||||11 = AWS|
||||20 = Docker|
|CloudPlatformId|Integer|Yes|The cloud platform the lab is run on.
||||null = None|
||||10 = Azure|
||||11 = AWS|
|SeriesId|Integer|Yes|The unique identifier of the series the lab profile belongs to|
|Enabled|Boolean|No|Whether the lab is currently enabled for launch.|
|ReasonDisabled|String|Yes|The reason the lab is disabled. Only supplied when the lab is not enabled.|
|DevelopmentStatusId|Integer|No|Indicates the development status of the lab. In general, a lab not marked as Complete should not be launched (though it can be).
||||1 = In Development
||||5 = AwaitingVerification
||||7 = InVerification
||||8 = VerificationFailed
||||10 = Complete|
|Description|String|Yes|A brief description of the lab profile|
|Objective|String|Yes|Text describing the objective of the lab|
|Scenario|String|Yes|Text describing the scenario of the lab|
|ExpectedDurationMinutes|Integer|No|The expected number of minutes a user will take to complete the lab|
|DurationMinutes|Integer|No|The maximum number of minutes a lab instance is allowed to run before it expires|
|RAM|Integer|No|The amount of RAM in MB used by the lab|
|HasIntegratedContent|Bool|No|Indicates whether the lab has integrated digital lab (IDL) content|
|ContentVersion|Integer|No|Indicates the content version (only applicable if HasIntegratedContent = true)|
|IsExam|Bool|No|Indicates whether the lab is scored as an exam|
|PremiumPrice|Decimal|No|The consumption cost of the lab when premium experience features are included.|
|BasicPrice|Decimal|No|The consumption cost of the lab when only basic experience features are included.|
|Tags|Array of String|No|A list of tags associated with the lab profile.
|SharedClassEnvironmentRoleId|Integer|Yes|Indicates the role the lab plays in a shared environment|
||||0 = None. This lab has no shared environment involvement at all. Most labs work this way.)|
||||10 = Shared Environment. This lab provides the shared infrastructure that participant labs will connect into. Typically launched and maintained by an administrator or instructor.|
||||20 = Participant. This lab will connect into shared environments and act as a participant. Typically launched by students.|

## Example Usage

```
https://labondemand.com/api/v3/labprofile?id=1
```

## Example Response

```linenums
{
    "Id": 1,
    "Name": "Demo Lab 1",
    "Number": " Module 1",
    "PlatformId": 2,
    "CloudPlatformId": null,
    "SeriesId": 1,
    "Enabled" : true,
    "ReasonDisabled" : null,
    "DevelopmentStatusId" : 10,
    "Description": "A demo lab",
    "Objective": "This is the HTML-formatted objective of the lab",
    "Scenario":" This is the HTML-formatted scenario of the lab",
    "DurationMinutes": 360,
    "ExpectedDurationMinutes":60,
    "RAM": 512,
    "HasIntegratedContent": true,
    "ContentVersion": 2,
    "IsExam": false,
    "PremiumPrice" : 10.00,
    "BasicPrice" : 8.00,
    "SharedClassEnvironmentRoleId": 0,
    "Status": 1,
    "Error": null,    
    "Tags": [
        "Tag1",
        "Tag2"
    ]
}
```
