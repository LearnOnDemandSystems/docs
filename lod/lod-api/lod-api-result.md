# Result

The **Result** command returns information about a particular lab instance result.

## Parameters

|Name|Type|Required|Note
|--- |--- |--- |--- |
|labInstanceId|Long|Yes|The ID of the lab instance|

## Response
|Name|Type|Nullable|Note
|--- |--- |--- |--- |
|LabProfileId|Integer|No|The unique identifier of the lab profile the lab is based on|
|Start|Long|No|When the lab instance was started (in Unix epoch time)|
|End|Long|Yes|When the lab instance was ended (in Unix epoch time)|
|LastActivity|Long|Yes|The last time the student interacted with the lab (in Unix epoch time)|
|UserId|String|Yes|The user ID as represented in your organization|
|ClassId|String|Yes|The class ID as represented in your organization|
|CompletionStatus|Integer|No|1 = Cancelled
||||2 = No Show
||||3 = Incomplete
||||4 = Complete
||||10 = Storage Provisioning Failed
||||20 = Lab Creation Failed
||||30 = Resume Failed
||||40 = Save Failed
||||50 = Submitted For Grading
||||60 = Grading In Progress|
|TotalRunTimeSeconds|Integer|No|The total number of seconds the lab was running, whether or not the student was present.|
|TaskCompletePercent|Integer|No|If the lab has integrated tasks, the percentage of tasks that the user has completed.|
|IsExam|Bool|No|Indicates whether the lab is scored as an exam|
|ExamPassed|Bool|Yes|Indicates whether the user passed the exam. Will only be set if the lab is an exam (IsExam = true) and the exam has been scored.|
|ExamScore|Decimal|Yes|Indicates the exam score. Will only be set if the lab is an exam (IsExam = true) and the exam has been scored.|
|ExamMaxPossibleScore|Integer|Yes|Indicates the exam maximum possible score. Will only be set if the lab is an exam (IsExam = true) and the exam has been scored.|
|ExamPassingScore|Integer|Yes|Indicates the minimum score required to pass the exam. Will only be set if the lab is an exam (IsExam = true) and the exam has been scored.|
|IpAddress|String|Yes|The user's IP address. This is only included if the IP address was provided when the lab was launched.|
|Country|String|Yes|The user's country as determined by IP address geolocation. This is only included if the IP address was provided when the lab was launched.|
|Region|String|Yes|The user's state/region as determined by IP address geolocation. This is only included if the IP address was provided when the lab was launched.|
|City|String|Yes|The user's city as determined by IP address geolocation. This is only included if the IP address was provided when the lab was launched.|
|Latitude|Decimal|Yes|The user's latitude as determined by IP address geolocation. This is only included if the IP address was provided when the lab was launched.|
|Longitude|Decimal|Yes|The user's longitude as determined by IP address geolocation. This is only included if the IP address was provided when the lab was launched.|
|LabHostId|Integer|Yes|The ID of the lab host server that the lab instance is housed on.|
|DatacenterId|Integer|Yes|The ID of the datacenter that the lab instance is located in.|
|DeliveryRegionId|Integer|Yes|When specified, Lab on Demand will attempt to launch the lab in the specified delivery region if a suitable host in that region is available and all required storage is available in that region. Delivery regions can be found using the [DeliveryRegions command](lod-api-delivery-regions.md) or [Catalog command](lod-api-catalog.md). Using the ipAddress parameter will result in a more reliable geo-location of the lab for the end user.|
|Status|Integer|No|Indicates the status of the API request
||||0 = Error
||||1 = Success|
|Error|String|Yes|In the event of an error, this will contain a detailed error message.|

## Example Usage

Imagine… A user has a lab instance with an ID = 2393049

```
https://labondemand.com/api/v3/Result?labinstanceId=2393049
```

## Example Response

```linenums
{
    "LabProfileId": 1,
    "Start": 1338224609,
    "End": 1338224624,
    "LastActivity": 1338224624,
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
