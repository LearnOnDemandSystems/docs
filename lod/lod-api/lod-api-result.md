# Result

The **Result** command returns information about a particular lab instance result.

## Parameters

|Name|Type|Required|Note
|--- |--- |--- |--- |
|labInstanceId|Long|Yes|The ID of the lab instance|

## Response
|Name|Type|Required|Note
|--- |--- |--- |--- |
|LabProfileId|Int|No|The unique identifier of the lab profile the lab is based on|
|Start|Long|No|When the lab instance was started (in Unix epoch time)|
|End|Long|Yes|When the lab instance was started (in Unix epoch time)|
|UserId|String|Yes|The user ID as represented in your organization|
|ClassId|String|Yes|The class ID as represented in your organization|
|CompletionStatus|Int|No|1 = Cancelled
||||2 = No Show
||||3 = Incomplete
||||4 = Complete
||||10 = Storage Provisioning Failed
||||20 = Lab Creation Failed
||||30 = Resume Failed
||||40 = Save Failed
||||50 = Submitted For Grading
||||60 = Grading In Progress|
|TotalRunTimeSeconds|Int|No|The total number of seconds the lab was running, whether or not the student was present.|
|TaskCompletePercent|Int|No|If the lab has integrated tasks, the percentage of tasks that the user has completed.|
|IsExam|Bool|No|Indicates whether the lab is scored as an exam|
|ExamPassed|Bool|Yes|Indicates whether the user passed the exam. Will only be set if the lab is an exam (IsExam = true) and the exam has been scored.|
|ExamScore|Integer|Yes|Indicates the exam score. Will only be set if the lab is an exam (IsExam = true) and the exam has been scored.|
|ExamMaxPossibleScore|Integer|Yes|Indicates the exam maximum possible score. Will only be set if the lab is an exam (IsExam = true) and the exam has been scored.|
|ExamPassingScore|Integer|Yes|Indicates the minimum score required to pass the exam. Will only be set if the lab is an exam (IsExam = true) and the exam has been scored.|
|IpAddress|String|Yes|The user's IP address. This is only included if the IP address was provided when the lab was launched.|
|Country|String|Yes|The user's country as determined by IP address geolocation. This is only included if the IP address was provided when the lab was launched.|
|Region|String|Yes|The user's state/region as determined by IP address geolocation. This is only included if the IP address was provided when the lab was launched.|
|City|String|Yes|The user's city as determined by IP address geolocation. This is only included if the IP address was provided when the lab was launched.|
|Latitude|Decimal|Yes|The user's latitude as determined by IP address geolocation. This is only included if the IP address was provided when the lab was launched.|
|Longitude|Decimal|Yes|The user's longitude as determined by IP address geolocation. This is only included if the IP address was provided when the lab was launched.|
|LabHostId|Integer|Yes|The ID of the lab host server that the lab instance is housed on.|
|DatacenterId|Integer|Yes|The ID of the datacetner that the lab instance is located in.|
|DeliveryRegionId|Integer|Yes|The ID of the delivery region that the lab instance is located in.|
|Exam Details|Array of ExamReportDetails|No|An array of exam details containing exam questions, answers, and score results|

## ExamReportDetails

|Name|Type|Required|Note
|--- |--- |--- |--- |
|ExamPages|Array of ExamPages|No|Array containing exam pages with questions and possible answers.|
|ExamAnswerResponses|Array of longs|No|Array containing AnswerIds the user selected from the answers in the exam pages.|
|TextAnswerResponses|Array of TextAnswerResponse|No|Array of text based typed responses from the user.|

## ExamPage

|Name|Type|Required|Note
|--- |--- |--- |--- |
|Id|Long|No|Id of the ExamPage.|
|Name|String|No|Name of the Exam page displayed during the exam.|
|SortIndex|Integer|No|Sort order for this page in the pages collection.|
|Questions|Array of ExamQuestion|No|Array of Exam Questions containing data for all questions in this page.|

## TextAnswerResponse

|Name|Type|Required|Note
|--- |--- |--- |--- |
|Id|Long|No|Id of the TextAnswerResponse.|
|ResponseText|String|No|User provided response to the corrisponding question.|
|IsCorrect|Boolean|No|Grading result of the user provided text response.|
|AnswerId|Long|No|Id that corrisponds to the answer object that holds the regular expression that this must match to be correct.|

## ExamQuestion

|Name|Type|Required|Note
|--- |--- |--- |--- |
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

## ExamAnswers

|Name|Type|Required|Note
|--- |--- |--- |--- |
|Id|Long|No|Id of the ExamAnswer|
|Text|String|No|Answer text displayed to the user.|
|IsCorrect|Boolean|No|Is true if this is the correct answer or one of the correct answers.|
|SortIndex|Integer|No|Sort order for display of this answer in the answer collection|

## Example Usage

Imagine… Your organization has a key of 1234567890. A user has a lab instance with an ID = 2393049

```
https://labondemand.com/api/v3/1234567890/Result/?labinstanceId=2393049
```

## Example Response

```
{
    "LabProfileId": 1,
    "Start": 1338224609,
    "End": 1338224624,
    "UserId": "555",
    "ClassId": null,
    "CompletionStatus": 4,
    "TotalRunTimeSeconds" : 4168,
    "TaskCompletePercent" : 100,
    "IsExam":false,
    "ExamPassed":null,
    "ExamScore":null,
    "ExamMaxPossibleScore":null,
    "ExamPassingScore":null,
        "ExamDetails": {
        "ExamPages":[
        {
            "Id": 12345,
            "LabProfileId": ,
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
        "ExamAnswerResponses" : [0],
        "TextAnswerResponses": [
        {
            "Id": 12345,
            "ResponseText": "Response Text Example",
            "IsCorrect": true,
            "AnswerId": 0
        }]
    },
    "IpAddress":null,
    "Country":null,
    "Region":null,
    "City":null,
    "Latitude":null,
    "Longitude":null,
    "LabHostId":49,
    "DatacenterId":3,
    "DeliveryRegionId":2,
    "Status": 1,
    "Error": null,
}
```