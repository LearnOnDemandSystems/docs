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
|LabProfileId|Integer|No|The ID of the lab profile|
|LabProfileName|String|No|The name of the lab profile|
|SeriesId|Integer|Yes|The ID of the lab series.|
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
||||Provisioning Storag
||||Building
||||Building (Displayable)
||||Starting
||||Running
||||Saving
||||Saved
||||Resuming
||||Creating Snapshot
||||Applying Snapshot
||||Updating Lab Profile
||||Tearing Down
||||Cloning
||||Creating As Clone
||||Moving (Running)
||||Moving (Saved)
||||Creating New Lab Profile
||||Scoring
||||Scheduled|
|CompletionStatus|String|No|The student's completion status. Possible values:
||||Scheduled
||||Cancelled
||||Not Started
||||Incomplete
||||Complete
||||Storage Provisioning Failed
||||Lab Creation Failed
||||Resume Failed
||||Save Failed
||||Submitted For Grading
||||Grading In Progress|
|PoolMemberName|String|Yes|If the lab contains a virtual machine pool, the name of the pool member that was used.|
|PlatformId|String|No|The platform the lab has hosted on. Possible values:
||||2 = Hyper-V
||||3 = vSphere
||||20 = Docker
||||-1 = None
|CloudPlatformId|Integer|Yes|10 = Azure
||||11 = AWS|
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
|TotalRunTime|Integer|No|The total number of seconds the lab was running, whether or not the student was present.|
|TimeInSession|Integer|No|The total number of seconds the user spent in the lab.|
|TimeRemaining|Integer|No|The total number of seconds remaining before the lab expires.|
|InstructorName|String|Yes|The name of the instructor for the associated class.|
|StartupDuration|Integer|Yes|The number of seconds it took the lab to start.|
|HasContent|Boolean|No|Indicates whether the lab has content, or simply houses virtual machines.|
|IsExam|Bool|No|Indicates whether the lab is scored as an exam|
|ExamPassed|Bool|Yes|Indicates whether the user passed the exam. Will only be set if the lab is an exam (IsExam = true) and the exam has been scored.|
|ExamScore|Integer|Yes|Indicates the exam score. Will only be set if the lab is an exam (IsExam = true) and the exam has been scored.|
|ExamMaxPossibleScore|Integer|Yes|Indicates the exam maximum possible score. Will only be set if the lab is an exam (IsExam = true) and the exam has been scored.|
|ExamPassingScore|Integer|Yes|Indicates the minimum score required to pass the exam. Will only be set if the lab is an exam (IsExam = true) and the exam has been scored.|
|ExamScoredById|Long|Yes|The ID of the user that manually scored the exam. Will only be set if the lab is an exam (IsExam = true) and the exam has been scored manually. Automatically scored exams will not include a value for this property.|
|ExamScoredByName|String|Yes|The name of the user that manually scored the exam. Will only be set if the lab is an exam (IsExam = true) and the exam has been scored manually. Automatically scored exams will not include a value for this property.|
|ExamDetails||| Legacy Field from previous scoring engine.|
|ExamScoredTime|Long (Unix epoch time)|Yes|When the exam was scored (in Unix epoch time). Will only be set if the lab is an exam (IsExam = true) and the exam has been scored.|
|Task|String|Yes|If the lab has content (HasContent=true), indicates the name of the task the student is working on.|
|Exercise|String|Yes|If the lab has content (HasContent=true), indicates the name of the exercise the student is working on.|
|NumTasks|Integer|No|If the lab has content (HasContent=true), indicates the total number of tasks in the lab.|
|NumCompletedTasks|Integer|No|If the lab has content (HasContent=true), indicates the number of tasks the student has completed.|
|TaskCompletePercent|Integer|No|If the lab has content (HasContent=true), indicates the percentage of tasks that the student has completed.|
|MonitorUrl|String|Yes|If the lab is currently running, a URL at which the lab can be monitored in real time.|
|DetailsUrl|String|No|The URL at which the lab instance details can be reviewed (required authentication to view)|
|Errors|Array of String|No|An array of all errors associated with the lab instance.|
|IpAddress|String|Yes|The user's IP address. This is only included if the IP address was provided when the lab was launched.|
|Country|String|Yes|The user's country as determined by IP address geolocation. This is only included if the IP address was provided when the lab was launched.|
|Region|String|Yes|The user's state/region as determined by IP address geolocation. This is only included if the IP address was provided when the lab was launched.|
|City|String|Yes|The user's city as determined by IP address geolocation. This is only included if the IP address was provided when the lab was launched.|
|Latitude|Decimal|Yes|The user's latitude as determined by IP address geolocation. This is only included if the IP address was provided when the lab was launched.|
|Longitude|Decimal|Yes|The user's longitude as determined by IP address geolocation. This is only included if the IP address was provided when the lab was launched.|
|Snapshots|Array of LabInstanceSnapshot|No|An array of snapshots created by the user within the lab. See the LabInstanceSnapshot Type below.|
|Sessions|Array of LabInstanceSession|No|An array of session times the student spent in the lab. See the LabInstanceSnapshot Type below.|
|Notes| Array of notes|No|Array of notes applicable to the lab instance|
|PublicIpAddresses|Array|No|An array of public IP address information objects. See the IpAddressInfo Type below.|
|CloudCredentials|Array|Yes|An array of credentials assigned to the lab instance. See the CloudCredentials Type below.|
|CloudPortalCredentials|Array|Yes|An array of credentials assigned to the lab instance. See the CloudPortalCredentials Type below. |
|VirtualMachineCredentials|Array|Yes|An array of credentials used to access the virtual machines. See the VirtualMachineCredentials Type below. |
|ClientUrl|String|No|The URL at which a student may access their lab instance.|
|ActivityResults|Array of ActivityResults|Yes|An array of results for activities displayed in the lab instance. See the ActivityResults Type below.|
|EstimatedReadySeconds|Integer|No|An estimated number of seconds before the lab is ready.|
|Error|String|Yes|In the event of an error, this will contain a detailed error message.|

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

## CloudPortalCredentials

|Property|Type|Nullable|Note
|---|---|---|---|
CloudPlatform|Integer|No| The ID of the cloud platform to which the credentials belong.
||||10 = Azure
||||11 = AWS
|PropertiesJson|String|No|Json serialized properties for the credentials.|

## VirtualMachineCredentials
|Property|Type|Nullable|Note
|---|---|---|---|
|Id|Integer|No|ID of the virtual machine.|
|Name|String|No|Name of the virtual machine.|
|Username|String|No|Username used to accces the virtual machine.|
|Password|String|No|Password used to access the virtual machine.|

## ActivityResults
|Property|Type|Nullable|Note
|---|---|---|---|
|ActivityId|Integer|No|ID of the Activity.|
|ActivityName|String|No|Name of the Activity.|
|Scored|Boolean|No| Whether the activity is scored.|
|Score|Float|No|The Score received by the student.|
|Passed|Boolean|No| Whether the student received a passing score on the activity.|
|ActivityType|Integer|No| 0 = Multiple choice, single answer|
||||10 = Multiple choice, multiple answer|
||||20 = Short answer, exact match|
||||30 = Short answer, regex match|
||||40 = Automated Activity|
|TextResult|String|Yes|The answer given by a student for Short Answer type questions|
|UiResponse|String|Yes|The response given to the student if specified in the question Answer Feedback.|
|DisplayScriptsAsTaskList|Boolean|Yes| Whether automated activities are scored as a TaskList or individually.|
|AnswerResults|Array|Yes|A collection of the answers available in single-answer activities|
|AnswerTexts|Array|Yes|A collection of the answers available in multi- answer activities|
|ScriptResults|Array|Yes|A collection of the results of the an automated activity. Includes Script ID, Score, Passing Status, UiResponse, ScriptResponse, PlatformError, and ScriptError.|
|ScriptTexts|Array|Yes|The Activity ID and Text displayed in the Task List if  Task List is enabled on the activity.|


## Example Usage
Imagine… A user has a lab instance with an ID = 360701

```
https://labondemand.com/api/v3/details?labinstanceid=360701
```

## Example Response

```linenums
{
    "Id": 360701,
    "LabProfileId": 18100,
    "LabProfileName": "01: Launch/Details Call",
    "SeriesId": 10702,
    "SeriesName": "API Examples",
    "UserId": "11",
    "UserFirstName": "Chad",
    "UserLastName": "S",
    "ClassId": null,
    "ClassName": null,
    "Start": 1603295589,
    "StartTime": "/Date(1603295589000)/",
    "Expires": 1603299334,
    "ExpiresTime": "/Date(1603299334000)/",
    "End": 1603295793,
    "EndTime": "/Date(1603295793000)/",
    "LastActivity": 1603295787,
    "LastActivityTime": "/Date(1603295787000)/",
    "LastSave": null,
    "LastSaveTime": null,
    "SaveExpires": null,
    "SaveExpiresTime": null,
    "State": "Tearing Down",
    "CompletionStatus": "Complete",
    "PoolMemberName": null,
    "LabHostId": 111,
    "LabHostName": "LOD-HV03",
    "DatacenterId": 4,
    "DatacenterName": "LOD-East",
    "DeliveryRegionId": 1,
    "DeliveryRegionName": "Default",
    "PlatformId": 2,
    "LastSaveTriggerType": null,
    "TimeInSession": 204,
    "TotalRunTime": 204,
    "TimeRemaining": 0,
    "InstructorName": null,
    "StartupDuration": 145,
    "Errors": [],
    "Snapshots": [],
    "Sessions": [
        {
            "Start": 1603295589,
            "StartTime": "/Date(1603295589000)/",
            "End": 1603295793,
            "EndTime": "/Date(1603295793000)/"
        }
    ],
    "Notes": [
        {
            "Time": 1603295793,
            "TimeValue": "/Date(1603295793000)/",
            "Title": "This environment has been submitted for grading and can no longer be accessed.",
            "Text": "Submitted for scoring from the lab console by the student."
        }
    ],
    "HasContent": true,
    "Task": null,
    "Exercise": null,
    "NumTasks": 0,
    "NumCompletedTasks": 0,
    "TaskCompletePercent": 100,
    "MonitorUrl": null,
    "DetailsUrl": "https://labondemand.com/LabInstance/360701",
    "RemoteController": "HTML5",
    "Tag": null,
    "BrowserUserAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36 Edg/86.0.622.48",
    "LastLatency": 35,
    "ExamPassed": true,
    "ExamScore": 5.00000,
    "ExamMaxPossibleScore": 5,
    "ExamPassingScore": 2,
    "ExamScoredById": null,
    "ExamScoredByName": null,
    "ExamDetails": null,
    "ExamScoredDate": 1603295793,
    "ExamScoredTime": "/Date(1603295793000)/",
    "IsExam": true,
    "IpAddress": "198.199.209.76",
    "Country": "United States of America",
    "Region": "Florida",
    "City": "Lakeland",
    "Latitude": 28.03947,
    "Longitude": -81.9498,
    "PublicIpAddresses": [],
    "CloudCredentials": [
        {
            "PropertiesJson": "{  \"Username\": \"Username2\",  \"Password\": \"Password2\"}",
            "Expires": "/Date(1645557720000)/",
            "DisplayName": "Demo Demo Demo Demo Demo",
            "Message": null
        }
    ],
    "CloudPortalCredentials": [
        {
            "CloudPlatform": 10,
            "PropertiesJson": "{\r\n  \"Username\": \"User1-360701@lod.onmicrosoft.com\",\r\n  \"Password\": \"1234ABCD\",\r\n  \"_FirstName\": \"Chad\",\r\n  \"_LastName\": \"S\"\r\n}"
        }
    ],
    "VirtualMachineCredentials": [
        {
            "Id": 13484,
            "Name": "Windows 10 2004",
            "Username": "Student",
            "Password": "Pa$$w0rd"
        }
    ],
    "CloudPlatformId": 10,
    "ClientUrl": "https://labclient.labondemand.com/Setup/a37e1990-e7c8-4fc9-9512-a0d2418bc0a3",
    "ActivityResults": [
        {
            "ActivityId": 4910,
            "ActivityName": "What is 1 + 1?",
            "Scored": true,
            "Score": 1.00000,
            "Passed": true,
            "ActivityType": 0,
            "TextResult": null,
            "UiResponse": null,
            "AnswerResults": [
                {
                    "AnswerId": 2856,
                    "AnswerText": "2",
                    "Correct": true
                }
            ],
            "ScriptResults": [],
            "DisplayScriptsAsTaskList": false,
            "AnswerTexts": [
                {
                    "Correct": false,
                    "AnswerId": 2855,
                    "Text": "1",
                    "Chosen": false
                },
                {
                    "Correct": true,
                    "AnswerId": 2856,
                    "Text": "2",
                    "Chosen": true
                },
                {
                    "Correct": false,
                    "AnswerId": 2857,
                    "Text": "3",
                    "Chosen": false
                },
                {
                    "Correct": false,
                    "AnswerId": 2858,
                    "Text": "4",
                    "Chosen": false
                }
            ],
            "ScriptTexts": []
        },
        {
            "ActivityId": 4911,
            "ActivityName": "Select all that result in a product of 4",
            "Scored": true,
            "Score": 3.00000,
            "Passed": true,
            "ActivityType": 10,
            "TextResult": null,
            "UiResponse": null,
            "AnswerResults": [
                {
                    "AnswerId": 2859,
                    "AnswerText": "1, 4",
                    "Correct": true
                },
                {
                    "AnswerId": 2860,
                    "AnswerText": "-1, -4",
                    "Correct": true
                },
                {
                    "AnswerId": 2861,
                    "AnswerText": "2, 2",
                    "Correct": true
                }
            ],
            "ScriptResults": [],
            "DisplayScriptsAsTaskList": false,
            "AnswerTexts": [
                {
                    "Correct": true,
                    "AnswerId": 2859,
                    "Text": "1, 4",
                    "Chosen": true
                },
                {
                    "Correct": true,
                    "AnswerId": 2860,
                    "Text": "-1, -4",
                    "Chosen": true
                },
                {
                    "Correct": true,
                    "AnswerId": 2861,
                    "Text": "2, 2",
                    "Chosen": true
                },
                {
                    "Correct": false,
                    "AnswerId": 2862,
                    "Text": "2, -2",
                    "Chosen": false
                }
            ],
            "ScriptTexts": []
        },
        {
            "ActivityId": 4912,
            "ActivityName": "What is the southernmost continent on earth?",
            "Scored": true,
            "Score": 1.00000,
            "Passed": true,
            "ActivityType": 20,
            "TextResult": "Antarctica",
            "UiResponse": null,
            "AnswerResults": [],
            "ScriptResults": [],
            "DisplayScriptsAsTaskList": false,
            "AnswerTexts": [],
            "ScriptTexts": []
        }
    ],
    "EstimatedReadySeconds": null,
    "Error": null,
    "Status": 1
}
```
