# Results

The **Results** command returns information about all lab instance results that started or ended within a specified time range. **The time range cannot exceed 7 days**.

## Parameters

|Name|Type|Required|Note|
|--- |--- |--- |--- |
|start|Integer (64-bit)|Yes|The start of the timeframe to check against (in Unix epoch time)|
|end|Integer (64-bit)|Yes|The end of the timeframe to check against (in Unix epoch time)|

## Response

|Name|Type|Nullable|Note|
|--- |--- |--- |--- |
|Results|Array of LabResult|No|See LabResult type below|
|Error|String|Yes|In the event of an error, this will contain a detailed error message.|

## LabResult

|Name|Type|Nullable|Note|
|--- |--- |--- |--- |
|LabInstanceId|Integer (64-bit)|No|The unique identifier of the lab instance|
|LabProfileId|Int|No|The unique identifier of the lab profile the lab instance is based on|
|Start|Integer (64-bit)|No|When the lab was started (in Unix epoch time)|
|End|Integer (64-bit)|Yes|When the lab ended (in Unix epoch time)|
|LastActivity|Integer (64-bit)|Yes|The last time the student interacted with the lab (in Unix epoch time)|
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

Imagine… You want to know the result of all labs that started or ended between UTC 12:00 January 1, 2012 and UTC 1:00 January 1, 2012.

```
https://labondemand.com/api/v3/Results/?start=1325376000&end=1357002000
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
            "LastActivity": 1325376900,
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
            "LastActivity": 1325377100,
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