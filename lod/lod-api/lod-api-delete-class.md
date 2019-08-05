# DeleteClass

The **DeleteClass** command deletes a specified class.

## Parameters

|Name|Type|Required|Note|
|--- |--- |--- |--- |
|id|string|Yes|The unique identifier of the class, as represented in your organization|

## Response

|Name|Type|Required|Note|
|--- |--- |--- |--- |
|Success|Boolean|No|

## Example Usage

Imagine… An existing class with an ID = 4449999 must be deleted.

```
https://labondemand.com/api/v3/deleteclass/?id=4449999
```

## Example Response

```linenums
{
    "Success": true,
    "Status": 1,
    "Error": null
}
```



