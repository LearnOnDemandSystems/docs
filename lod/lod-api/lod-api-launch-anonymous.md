# Launch Anonymous

The **Launch** command will launch a specified lab without supplying user information. Please note that not all labs can be launched anonymously.

## Parameters

|Name|Type|Required|Note|
|--- |--- |--- |--- |--- |
|labId|Int|Yes|The ID of the lab profile|
|classId|String|No|An optional parameter used to associate the lab with a class (see GetOrCreateClass). This is the unique identifier of the class as it is represented in your organization.|
|tag|String|No|An optional parameter that can be used for tagging the lab instance with your own custom data.|
|ipAddress|String|No|When specified, Lab on Demand will attempt to launch the lab in the closest available delivery region. You should provide the IP address of the user that is taking the lab, not the IP address of your system.|
|regionId|Integer|No|When specified, Lab on Demand will attempt to launch the lab in the specified delivery region. Delivery regions can be found using the DeliveryRegions command or Catalog command.|

## Response

|Property|Type|Nullable|Note|
|--|--|--|--|
|Result|Int|False|0 = Error
||  |  | 1 = Success|
||  |  | 2 = User has too many active labs
||  |  | 3 = Insufficient host resources
||  |  | 5 = API integration has too many active labs
||  |  | 6 = User has a saved instance of this lab
||  |  | 7 = API integration doesn't have enough available RAM
||  |  | 10 = User doesn't have enough available RAM
||  |  | 20 = User's organization has too many active labs
||  |  | 30 = User's organization doesn't have enough available RAM
||  |  | 40 = Lab profile has too many active instances
||  |  | 50 = Lab organization doesn't have enough available RAM
||  |  | 60 = Lab organization has too many active instances
||  |  | 70 = Lab series has too many active instances
||  |  | 80 = Lab series doesn't have enough available RAM|
|Url|String|False|A URL where the lab can be viewed by the user|
|LabInstanceId|Long|False|The Id assigned to the new lab instance|
|Expires|Long|False|When the lab will expire (in Unix epoch time)|
|Error|String|False|In the event of an error, this will contain a detailed error message.|

## Example Usage

Imagine… You want to launch a lab with an ID of 100.

```
https://labondemand.com/api/v3/launchanonymous?labid=100
```

## Example Response

```
{
   "Result":1,
   "Url":"https://labondemand.com/console/setup/1b4909d6-0dbe-43db-9ab9-74ee4f913c4f",
   "LabInstanceId":3896479,
   "Expires": 1337977153,
    "Status": 1,
    "Error": null
}
```
