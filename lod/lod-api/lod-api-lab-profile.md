# Lab Profile

The **LabProfile** command will return information about a specific lab profile.

## Parameters

|Name|Type|Required|Note
|--- |--- |--- |--- 
|Id|Int|Yes|The unique identifier of the lab profile.|

## Response

|Name|Type|Required|Note
|--- |--- |--- |--- 
|Id|Int|No|The unique identifier of the lab profile|
|Name|String|No|The name of the lab profile|
|Number|String|Yes|The lab number (usually to identify a lab within a series, e.g. Module 1, Module 2, etc.)|
|PlatformId|Int|No|1 = Virtual Server
||||2 = Hyper-V
||||3 = vSphere|
|CloudPlatformId|Int|Yes|10 = Azure|
|SeriesId|Int|Yes|The unique identifier of the series the lab profile belongs to|
|Enabled|Boolean|No|Whether the lab is currently enabled for launch.|
|ReasonDisabled|String|Yes|The reason the lab is disabled. Only supplied when the lab is not enabled.|
|DevelopmentStatusId|Int|No|Indicates the development status of the lab. In general, a lab not marked as Complete should not be launched (though it can be).
||||1 = In Development
||||5 = AwaitingVerification
||||7 = InVerification
||||8 = VerificationFailed
||||10 = Complete|
|Description|String|Yes|A brief description of the lab profile|
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
|Exam Pages|Array of ExamPages|No|An array of pages containing exam questions and answers|
|Tags|Array of String|No|A list of tags associated with the lab profile.
[SharedClassEnvironmentRoleId]Integer|Yes|Indicates the role the lab plays in a shared environment|
||||0 = None (no shared environment involvement at all, most labs work this way)|
||||10 = Shared Environment - this lab provides the shared infrastructure/environment that participant labs will connect into. This is typically launched and maintained by an administrator or instructor|
||||7 = Participant - this lab will connect into shared environments and act as a participant. This is typically used by students.|

## ExamPage

|Name|Type|Required|Note
|--- |--- |--- |--- 
|Id|Long|No|Id of the ExamPage.|
|Name|String|No|Name of the Exam page displayed during the exam.|
|SortIndex|Integer|No|Sort order for this page in the pages collection.|
|Questions|Array of ExamQuestion|No|Array of Exam Questions containing data for all questions in this page.|

## ExamQuestion

|Name|Type|Required|Note
|--- |--- |--- |--- 
|Id|long|No|Id of the ExamQuestion.|
|Type|string|No|The type of question. Possible values:         
||||MultipleChoiceSingleAnswer
||||MultipleChoiceMultipleAnswer
||||TextExacthWord
||||TextRegexMatch|
|Text|string|No|Question text that is displayed to the user.|
|SortIndex|Integer|No|Sort order for display of this question in the questions collection.|
|ScoreValue|Integer|No|How many points the question is worth in the exam.|
|IsRequired|Boolean|No|True if this question requires an answer.|
|AnswerExplanation|string|No|Reason the answer is correct. This is shown to the user in the exam results.|
|AnswerReferenceUrl|string|No|A URL reference to the reasoning for the correct answer.|
|Answers|Array of ExamAnswers.|No|Possible answers presented to the user for this question.|

## ExamAnswer
|Name|Type|Required|Note
|--- |--- |--- |--- 
|Id|Long|No|Id of the ExamAnswer|
|Text|String|No|Answer text displayed to the user.|
|IsCorrect|Boolean|No|Is true if this is the correct answer or one of the correct answers.|
|SortIndex|Integer|No|Sort order for display of this answer in the answer collection|

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
    "LabManualUrl" : "http://labondemand.com/LabLabProfile/Manual/1",
    "PremiumPrice" : 10.00,
    "BasicPrice" : 8.00,
    "Status": 1,
    "Error": null,
    "ExamPages":[
    {
        "Id": ,
        "LabProfileId": 12345,
        "Name": "Example Lab",
        "SortIndex": 0,
        "Questions": [
        {
            "Id": 0,
            "Type": "MultipleChoiceSingleAnswer",
            "Text": "What does LOD offer?",
            "SortIndex": 0,
            "ScoreValue": 1,
            "IsRequired": false,
            "AnswerExplanation": "LOD offers learning experiences on demand and does not offer cupcakes on demand.",
            "AnswerReferenceUrl": "www.learnondemandsystems.com",
            "Answers": [
            {
                "Id": 0,
                "Text": "On demand labs and learning experiences.",
                "IsCorrect": true,
                "SortIndex": 0
            },{
                "Id": 1,
                "Text": "Cupcakes",
                "IsCorrect": false,
                "SortIndex": 1
            }
        ]},
    }],
    "Tags": [
        "Tag1",
        "Tag2"
    ]
}
```
