---
title: "DeliveryRegions API Command"
description: "The DeliveryRegions command will return all delivery regions available to your organization."
isPublished: true
---

# DeliveryRegions

The **DeliveryRegions** command will return all delivery regions available to your organization.

## Parameters

none

## Response

|Property|Type|Nullable|Note
|--- |--- |--- |--- |
|DeliveryRegions|Array of DeliveryRegion|No|See the DeliveryRegion Type below|
|Status|Integer|No|Indicates the status of the API request.
||||0 = Error
||||1 = Success|
|Error|String|Yes|In the event of an error, this will contain a detailed error message.|

### DeliveryRegion

|Property|Type|Nullable|Note
|--- |--- |--- |--- |
|Id|Integer|No|The unique identifier of the delivery region|
|Name|String|No|The name of the delivery region|
|Description|String|Yes|A brief description of the delivery region|

## Example Usage

```
https://labondemand.com/api/v3/deliveryregions
```

## Example Response

```linenums
{
    "DeliveryRegions": [
        {
            "Id": 1,
            "Name": "North America",
            "Description": "North American datacenters"
        },
        {
            "Id": 2,
            "Name": "Australia",
            "Description": null 
        }
    ],
    "Status": 1,
    "Error": null
}
```
