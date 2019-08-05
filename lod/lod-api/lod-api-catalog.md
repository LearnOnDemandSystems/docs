# Catalog

The **Catalog** command will return all lab series, lab profiles, and delivery regions available to your organization. Lab profiles are generally grouped into series. Depending on your organization, you may have multiple physical delivery regions available to you.

## Parameters

|Name|Type|Required|Note
|--- |--- |--- |--- |
|includeAll|int|No|This parameter can usually be ignored. When not included (or passed as any value except 1), labs that are not currently available for launch will not be included in catalog results. If you want to include all lab profiles, regardless of whether they are enabled or are developmentally complete, you can pass includeAll=1.|

## Response

|Name|Type|Required|Note
|--- |--- |--- |--- |
|LabSeries|Array of Lab Series|No|See the LabSeries Type below|
|LabProfiles|Array of Lab Profile|No|See the LabProfile Type below|
|DeliveryRegions|Array of DeliveryRegion|No|See the DeliveryRegion Type below|

## LabSeries

|Name|Type|Required|Note
|--- |--- |--- |--- |
|Id|Int|No|The unique identifier of the lab series|
|Name|String|No|The name of the lab series|
|Description|String|Yes|A brief description of the lab series|
|NumTrainingDays|Int|No|The number of training days expected to complete the series|

## LabProfile

|Name|Type|Required|Note
|--- |--- |--- |--- |
|Id|Int|No|The unique identifier of the lab profile|
|Name|String|No|The name of the lab profile|
|Number|String|Yes|The lab number (usually to identify a lab within a series, e.g. Module 1, Module 2, etc.)|
|PlatformId|Int|No|1 = Virtual Server
||||2 = Hyper-V
||||3 = vSphere|
|CloudPlatformId|Int|Yes|10 = Azure|
|Enabled|Boolean|No|Whether the lab is currently enabled for launch.|
|ReasonDisabled|String|Yes|The reason the lab is disabled. Only supplied when the lab is not enabled.|
|DevelopmentStatusId|Int|No|Indicates the development status of the lab. In general, a lab not marked as Complete should not be launched (though it can be).
||||1 = In Development
||||5 = AwaitingVerification
||||7 = InVerification
||||8 = VerificationFailed
||||10 = Complete|
|Description|String|Yes|A brief description of the lab profile|
|SeriesId|Int|Yes|The unique identifier of the series the lab profile belongs to|
|Objective|String|Yes|Text describing the objective of the lab|
|Scenario|String|Yes|Text describing the scenario of the lab|
|ExpectedDurationMinutes|Int|No|The expected number of minutes a user will take to complete the lab|
|DurationMinutes|Int|No|The maximum number of minutes a lab instance is allowed to run before it expires|
|RAM|Int|No|The amount of RAM in MB used by the lab|
|HasIntegratedContent|Bool|No|Indicates whether the lab has integrated digital lab (IDL) content|
|ContentVersion|Int|No|Indicates the content version (only applicable if HasIntegratedContent = true)|
|IsExam|Bool|No|Indicates whether the lab is scored as an exam|
|PremiumPrice|Decimal|No|The consumption cost of the lab when premium experience features are included.|
|BasicPrice|Decimal|No|The consumption cost of the lab when only basic experience features are included.|
|Tags|Array of String|No|A list of tags associated with the lab profile.|

## DeliveryRegion

|Name|Type|Required|Note
|--- |--- |--- |--- |
|Id|Int|No|The unique identifier of the delivery region|
|Name|String|No|The name of the delivery region|
|Description|String|Yes|A brief description of the delivery region|

## Example Usage

```
https://labondemand.com/api/v3/catalog
```

## Example Response

```linenums
{
    "LabSeries": [
        {
            "Id": 1,
            "Name": "Demo Series 1",
            "Description": "A demo lab series",
            "NumTrainingDays": 5
        },
        {
            "Id": 2,
            "Name": "Demo Series 2",
            "Description": Another demo lab series,
            "NumTrainingDays": 5
        }
    ],
    "LabProfiles": [
        {
            "Id": 1,
            "Name": "Demo Lab 1",
            "Number": " Module 1",
            "PlatformId": 2,
            "CloudPlatform": null,
            "SeriesId": 1,
            "Enabled" : true,
            "ReasonDisabled" : null,
            "DevelopmentStatusId" : 10,
            "Description": "A demo lab",
            "Objective": "This is the HTML-formatted objective of the lab",
            "Scenario":" This is the HTML-formatted scenario of the lab",
            "DurationMinutes": 360,
            "ExpectedDurationMinutes":60,
            "RAM": 8192,
            "HasIntegratedContent": true,
            "ContentVersion": 2,
            "IsExam": false,
            "LabManualUrl" : "http://labondemand.com/LabLabProfile/Manual/1",
            "PremiumPrice" : 10.00,
            "BasicPrice" : 8.00,
            "Tags": [
                "Tag1",
                "Tag2"
            ]
        },
        {
            "Id": 2,
            "Name": "Demo Lab 2",
            "Number": " Module 2",
            "PlatformId": 2,            
            "CloudPlatform": 10,
            "SeriesId": 1,
            "Enabled" : true,
            "ReasonDisabled" : null,
            "DevelopmentStatusId" : 10,
            "Description": "Another demo lab",
            "Objective": "This is the HTML-formatted objective of the lab",
            "Scenario": "This is the HTML-formatted scenario of the lab",
            "DurationMinutes": 360,
            "ExpectedDurationMinutes":60,
            "RAM": 4096,
            "HasIntegratedContent": true,
            "ContentVersion": 2,
            "IsExam": false,
            "LabManualUrl" : "http://labondemand.com/LabLabProfile/Manual/2",
            "PremiumPrice" : 4.00,
            "BasicPrice" : 4.00,
            "Tags": [
                "Tag1",
                "Tag2"
            ]
        }
    ],
    "DeliveryRegions": [
        {
            "Id": 1,
            "Name": "North America",
            "Description": "North American datacenters"
        },
        {
            "Id": 2,
            "Name": "Australia",
            "Description": null 
        }
    ],
    "Status": 1,
    "Error": null
}
```