# DeliveryRegions

The **DeliveryRegions** command will return all delivery regions available to your organization.

## Parameters

none

## Response

|Property|Type|Nullable|Note
|--- |--- |--- |--- |
|DeliveryRegions|Array of DeliveryRegion|No|See the DeliveryRegion Type below|

## DeliveryRegion

|Property|Type|Nullable|Note
|--- |--- |--- |--- |
|Id|Int|No|The unique identifier of the delivery region|
|Name|String|No|The name of the delivery region|
|Description|String|Yes|A brief description of the delivery region|

## Example Usage

```
https://labondemand.com/api/v3/deliveryregions
```

## Example Response

```
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
