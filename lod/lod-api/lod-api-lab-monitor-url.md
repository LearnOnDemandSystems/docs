---
title: "LabMonitorUrl API Command"
description: "The LabMonitorUrl command returns a single use URL to monitor a lab instance."
isPublished: false
---

# LabMonitorUrl

!INSTRUCTIONS[](https://raw.githubusercontent.com/LearnOnDemandSystems/docs/master/lod/lod-api/api-deprecate-message.md)

<!--
The **LabMonitorUrl** command returns a single use URL to monitor a lab instance. 

## Parameters

|Name|Type|Required|Note|
|--- |--- |--- |--- |
|labInstanceId|Long|Yes|The unique identifier of the lab instance.

## Response 

|Property|Type|Nullable|Note|
|--- |--- |--- |--- |
|URL|String||The URL 
|Status|Integer|No|Indicates the status of the API request.
||||0 = Error
||||1 = Success|
|Error|String|True|In the event of an error, this will contain a detailed error message.|

## Example Usage

Imagine… A user has a lab instance with an ID = 4449999.

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
-->