---
title: "Stats API Command"
description: "The Stats command returns statistics about how many labs are currently active and saved."
isPublished: false
---

# Stats

The **Stats** command returns statistics about how many labs are currently active and saved.

## Parameters

There are no parameters for this API command. 

|Name|Type|Required|Note|
|--- |--- |--- |--- |
|N/A|N/A|N/A|N/A|

## Response

|Property|Type|Nullable|Note|
|--- |--- |--- |--- |
|NumActive|Integer|False|The number of currently active labs (starting, running, tearing down, saving, resuming, etc)|
|NumSaved|Integer|False|The number of currently saved labs|
|Status|Integer|No|Indicates the status of the API request
||||0 = Error
||||1 = Success|
|Error|String|False|In the event of an error, this will contain a detailed error message.|

## Example Usage

```
https://labondemand.com/api/v3/1234567890/stats
```

## Example Response

```linenums
{
    "NumActive":571, 
    "NumSaved":451,
    "Status": 1,
    "Error": null 
}
```
