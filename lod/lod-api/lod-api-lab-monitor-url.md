# LabMonitorUrl

The **LabMonitorUrl** command returns a single use URL to monitor a lab instance. 

## Parameters

|Name|Type|Required|Note|
|--- |--- |--- |--- |
|labInstanceId|Long|Yes|The unique identifier of the class, as represented in your organization.

## Response 

|Property|Type|Nullable|Note|
|--- |--- |--- |--- |
|URL|String||The URL 
|Result|Int|False|0 = Error
||||1 = Success|
|Error|String|True|In the event of an error, this will contain a detailed error message.|

## Example Usage

Imagine… You have a class within your system with an ID = 4449999 that already exists in Lab on Demand.

```
https://labondemand.com/api/v3/LabMonitorUrl?LabInstanceId=4449999
```

## Example Response
```linenums
{
    "Url": "https://labondemand.com/access/ab1c2345-6d7b-890e-f1gh-234ij5kl6m7n?monitor=1",
    "Error": null,
    "Status": 1
}
```