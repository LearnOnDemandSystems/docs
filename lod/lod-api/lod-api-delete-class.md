# DeleteClass

The **DeleteClass** command deletes a specified class.

## Parameters

|Name|Type|Required|Note|
|--- |--- |--- |--- |
|id|String|Yes|The unique identifier of the class, as represented in your organization|

## Response

|Name|Type|Nullable|Note|
|--- |--- |--- |--- |
|Success|Boolean|No|
|Error|String|Yes|In the event of an error, this will contain a detailed error message.|

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



