# LatestResults

The **LatestResults** command returns information about all lab instance results that have recently changed state.

## Parameters

|Name|Type|Required|Note|
|--- |--- |--- |--- |
|minutes|Integer (64-bit)|Yes|Lab instances that have changed state within this many minutes of the current time will be included. This value cannot exceed 10,080 (7 days).|

## Response

|Name|Type|Required|Note|
|--- |--- |--- |--- |
|Results|Array of LabResult|No|See LabResult type below|

## LabResult
|Name|Type|Required|Note|
|--- |--- |--- |--- |
|LabInstanceId|Integer (64-bit)|No|The unique identifier of the lab instance|
|LabProfileId|Int|No|The unique identifier of the lab profile the lab instance is based on|
|Start|Integer (64-bit)|No|When the lab was started (in Unix epoch time)|
|End|Integer (64-bit)|Yes|When the lab ended (in Unix epoch time)|
|UserId|String|Yes|The unique identifier of the user, as represented in your system|
|ClassId|String|Yes|The unique identifier of the class the lab is related to, as represented in your system|
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

## Example Usage

Imagine… You want to know the result of all labs that have started or ended in the last 60 minutes.

```
https://labondemand.com/api/v3/LatestResults/?minutes=60
```

## Example Response

```linenums
{
    "Results": [
        {
            "LabInstanceId": 349744,
            "LabProfileId": 5522,
            "Start": 1325376800,
            "End": 1325376900,
            "UserId": "555",
            "ClassId": null,
            "CompletionStatus": 1,
            "TotalRunTimeSeconds" : 2548,
            "TaskCompletePercent" : 33,
            "IsExam":false,
            "ExamPassed":null,
            "ExamScore":null,
            "ExamMaxPossibleScore":null,
            "ExamPassingScore":null,
            "IpAddress":null,
            "Country":null,
            "Region":null,
            "City":null,
            "Latitude":null,
            "Longitude":null,
            "LabHostId":49,
            "DatacenterId":3,
            "DeliveryRegionId":2
        },
        {
            "LabInstanceId": 349745,
            "LabProfileId": 5523,
            "Start": 1325377000,
            "End": 1325377100,
            "UserId": "555",
            "ClassId": null,
            "CompletionStatus": 1,
            "TotalRunTimeSeconds" : 4168,
            "TaskCompletePercent" : 44,
            "IsExam":false,
            "ExamPassed":null,
            "ExamScore":null,
            "ExamMaxPossibleScore":null,
            "ExamPassingScore":null,
            "IpAddress":null,
            "Country":null,
            "Region":null,
            "City":null,
            "Latitude":null,
            "Longitude":null,
            "LabHostId":125,
            "DatacenterId":4,
            "DeliveryRegionId":3
        }
    ],
    "Status": 1,
    "Error": null
}
```
