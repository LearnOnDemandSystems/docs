# Details

The **Details** command retrieves detailed information about a specified lab instance.


## Parameters

|Name|Type|Required|Note
|--- |--- |--- |---|
|labInstanceId|Long|Yes|The ID of the lab instance|

## Response
|Property|Type|Nullable|Note
|---|---|---|---|
|Id|Integer (64-bit)|No|The ID of the lab instance|
|LabProfileId|Int|No|The ID of the lab profile|
|LabProfileName|String|No|The name of the lab profile|
|SeriesId|Int|Yes|The ID of the lab series.|
|SeriesName|String|Yes|The name of the lab series.|
|UserId|String|No|The ID you use to identify the user in your external system.|
|UserFirstName|String|No|The user's first name.|
|UserLastName|String|No|The user's last name.|
|ClassId|String|Yes|The ID you use to identify the associated class in your external system.|
|ClassName|String|Yes|The name of the class the lab instance is associated with.|
|Start|Long|No|When the lab was started (in Unix epoch time).|
|Expires|Long|No|When the lab expires (in Unix epoch time).|
|End|Long|Yes|When the lab ended (in Unix epoch time).|
|LastActivity|Long|Yes|When student activity was last detected (in Unix epoch time).|
|LastSave|Long|Yes|When the lab was last saved (in Unix epoch time).|
|SaveExpires|Integer (64-bit)|Yes|If the lab instance is saved, when the saved data will expire and be deleted (in Unix epoch time).|
|State|String|No|The state of the lab instance. Possible values:
||||Off
||||Preparing Cache
||||Building Virtual Environment
||||Starting
||||Running
||||Saving
||||Saved
||||Resuming
||||Creating Snapshot
||||Applying Snapshot
||||Saving Environment
||||Tearing Down|
|CompletionStatus|String|No|The student's completion status. Possible values:
||||Cancelled
||||No Show
||||Incomplete
||||Complete
||||Storage Provisioning Failed
||||Lab Creation Failed
||||Resume Failed
||||Save Failed
||||Submitted For Grading
||||Grading In Progress|
|PoolMemberName|String|Yes|If the lab contains a virtual machine pool, the name of the pool member that was used.|
|Platform|String|No|The platform the lab has hosted on. Possible values:
||||Hyper-V
||||Virtual Server
||||vSphere|
|CloudPlatformId|Int|Yes|10 = Azure|
|LabHostId|Integer|No|The ID of the lab host machine.|
|LabHostName|String|No|The name of the lab host machine.|
|DatacenterId|Integer|No|The ID of the datacenter where the lab is located.|
|DatacenterName|String|No|The name of the datacenter where the lab is located.|
|DeliveryRegionId|Integer|No|The ID of the delivery region where the lab is located.|
|DeliveryRegionName|String|No|The name of the delivery region where the lab is located.|
|RemoteController|String|No|The name of the remote controller used by the user.|
|BrowserUserAgent|String|Yes|The browser user agent used by the user.|
|LastLatency|Integer|Yes|The last known latency value as measured between the client and the lab's datacenter.|
|LastSaveTriggerType|String|Yes|If the lab is currently saved, what triggered the save operation. Possible values:
||||Unknown
||||By Student
||||By Administrator
||||Automatic
||||From API Consumer|
|TotalRunTime|Int|No|The total number of seconds the lab was running, whether or not the student was present.|
|TimeInSession|Int|No|The total number of seconds the user spent in the lab.|
|TimeRemaining|Int|No|The total number of seconds remaining before the lab expires.|
|InstructorName|String|Yes|The name of the instructor for the associated class.|
|StartupDuration|Int|Yes|The number of seconds it took the lab to start.|
|HasContent|Boolean|No|Indicates whethere the lab has content, or simply houses virtual machines.|
|IsExam|Bool|No|Indicates whether the lab is scored as an exam|
|ExamPassed|Bool|Yes|Indicates whether the user passed the exam. Will only be set if the lab is an exam (IsExam = true) and the exam has been scored.|
|ExamScore|Integer|Yes|Indicates the exam score. Will only be set if the lab is an exam (IsExam = true) and the exam has been scored.|
|ExamMaxPossibleScore|Integer|Yes|Indicates the exam maximum possible score. Will only be set if the lab is an exam (IsExam = true) and the exam has been scored.|
|ExamPassingScore|Integer|Yes|Indicates the minimum score required to pass the exam. Will only be set if the lab is an exam (IsExam = true) and the exam has been scored.|
|ExamScoredById|Long|Yes|The ID of the user that manually scored the exam. Will only be set if the lab is an exam (IsExam = true) and the exam has been scored manually. Automatically scored exams will not include a value for this property.|
|ExamScoredByName|String|Yes|The name of the user that manually scored the exam. Will only be set if the lab is an exam (IsExam = true) and the exam has been scored manually. Automatically scored exams will not include a value for this property.|
|ExamScoredTime|Long (Unix epoch time)|Yes|When the exam was scored (in Unix epoch time). Will only be set if the lab is an exam (IsExam = true) and the exam has been scored.|
|Task|String|Yes|If the lab has content (HasContent=true), indicates the name of the task the student is working on.|
|Exercise|String|Yes|If the lab has content (HasContent=true), indicates the name of the exercise the student is working on.|
|NumTasks|Int|No|If the lab has content (HasContent=true), indicates the total number of tasks in the lab.|
|NumCompletedTasks|Int|No|If the lab has content (HasContent=true), indicates the number of tasks the student has completed.|
|TaskCompletePercent|Int|No|If the lab has content (HasContent=true), indicates the percentage of tasks that the student has completed.|
|MonitorUrl|String|Yes|If the lab is currently running, a URL at which the lab can be monitored in real time.|
|Errors|Array of String|No|An array of all errors associated with the lab instance.|
|IpAddress|String|Yes|The user's IP address. This is only included if the IP address was provided when the lab was launched.|
|Country|String|Yes|The user's country as determined by IP address geolocation. This is only included if the IP address was provided when the lab was launched.|
|Region|String|Yes|The user's state/region as determined by IP address geolocation. This is only included if the IP address was provided when the lab was launched.|
|City|String|Yes|The user's city as determined by IP address geolocation. This is only included if the IP address was provided when the lab was launched.|
|Latitude|Decimal|Yes|The user's latitude as determined by IP address geolocation. This is only included if the IP address was provided when the lab was launched.|
|Longitude|Decimal|Yes|The user's longitude as determined by IP address geolocation. This is only included if the IP address was provided when the lab was launched.|
|Snapshots|Array of LabInstanceSnapshot|No|An array of snapshots created by the user within the lab. See the LabInstanceSnapshot Type below.|
|Sessions|Array of LabInstanceSession|No|An array of session times the student spent in the lab. See the LabInstanceSnapshot Type below.|
|PublicIpAddresses|Array of IpAddressInfo|No|An array of public IP address information objects. See the IpAddressInfo Type below.|
|CloudCredentials|Array of CloudCredentials|No|An array of credentials assigned to the lab instance. See the CloudCredentials Type below.|
|Exam Details|Array of ExamReportDetails|No|An array of exam details containing exam questions, answers, and score results.


## LabInstanceSnapshot

|Property|Type|Nullable|Note
|---|---|---|---|
|Name|String|No|The name that the student gave to the snapshot|
|Time|Long|No|When the student created the snapshot (in Unix epoch time)

## LabInstanceSession

|Property|Type|Nullable|Note|
|---|---|---|---|
|Start|Long|No|When the session started (in Unix epoch time)|
|End|Long|Yes|When the session ended (in Unix epoch time)|

## IpAddressInfo

|Property|Type|Nullable|Note
|---|---|---|---|
|IpAddress|String|No|An IP address|
|MacAddress|String|No|The MAC address of the NIC that the IP address was assigned to.|
|MachineInstanceName|String|No|The name of the virtual machine instance that the IP address was assigned to.|

## CloudCredentials

|Property|Type|Nullable|Note
|---|---|---|---|
|PropertiesJson|String|No|Json serialized properties for the credentials, as defined in the cloud credential pool.|
|Expires|Long|No|When the credentials expire (in Unix epoch time).|
|DisplayName|String|No|Friendly credential name displayed in the lab user interface.|

## Example Usage
Imagine… A user has a lab instance with an ID = 2393049

```
https://labondemand.com/api/v3/details?labinstanceid=2393049
```

## Example Response

```linenums
{
    "Id":2393049,
    "LabProfileId":100,
    "LabProfileName":"Module 1: Demo Lab",
    "SeriesId":155,
    "SeriesName":"Demo Lab Series",
    "UserId":"555",
    "UserFirstName":"Chris",
    "UserLastName":"Sears",
    "ClassId":null,
    "ClassName":null,
    "Start":1355783154,
    "Expires":1355804754,
    "End":1355783165,
    "LastActivity":1355782471,
    "LastSave":null,
    "SaveExpires":null,
    "State":"Off",
    "CompletionStatus":"Complete",
    "PoolMemberName":null,
    "Platform":"Hyper-V",
    "CloudPlatformId": null,
    "LabHostId":165,
    "LabHostName":"HV132",
    "DatacenterId":1,
    "DatacenterName":"Tulsa, OK",
    "DeliveryRegionId":1,
    "DeliveryRegionName":"US",
    "LastSaveTriggerType":null,
    "TimeInSession":5899,
    "TimeRemaining":0,
    "InstructorName":null,
    "StartupDuration":84,
    "HasContent":true,
    "IsExam":false,
    "ExamPassed":null,
    "ExamScore":null,
    "ExamMaxPossibleScore":null,
    "ExamPassingScore":null,
    "ExamScoredById":null,
    "ExamScoredByName":null,
    "ExamScoredTime":null,    
    "ExamScoredDate": 1355783165,
    "Task":"Task 14",
    "Exercise":"Exercise 3",
    "NumTasks":41,
    "NumCompletedTasks":0,
    "TaskCompletePercent":0,
    "MonitorUrl":null,
    "Errors":[],
    "Snapshots":[{"Name":"Snapshot 1","Time":1355782300},{"Name":"Snapshot 2","Time":1355782900}],
    "Sessions":[{"Start":1355783154,"End":1355783165}],
    "BrowserUserAgent": "Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko",
    "LastLatency":29,
    "IpAddress":null,
    "Country":null,
    "Region":null,
    "City":null,
    "Latitude":null,
    "Longitude":null,
    "PublicIpAddresses": null,
    "CloudCredentials": [
    {
        "PropertiesJson": "{  \"Email\": \"user@domain.com\",  \"Password\": \"password\"}",
        "Expires": "/Date(7922829600000)/",
        "DisplayName": "O365 Credential"
    },{
        "PropertiesJson": "{  \"Login\": \"username01\",  \"Password\": \"password01\",  \"SubscriptionId\": \"\012345ABC"}",
        "Expires": "/Date(7922829600000)/",
        "DisplayName": "Azure Credential"
    }],
    "Status": 1,
    "Error": null
}
```
