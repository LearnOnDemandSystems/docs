# Cancel

The **Cancel** command allows you to cancel a specified lab instance.

## Parameters

|Name|Type|Required|Note|
|--- |--- |--- |--- |--- |--- |--- |--- |
|labInstanceId|Long|Yes|The ID of the lab instance to cancel

## Response 

|Property|Type|Nullable|Note|
|--- |--- |--- |--- |
|Result|Int|False|0 = Error
||||1 = Success|
|Error|String|False|In the event of an error, this will contain a detailed error message.|

## Example Usage

Imagine… Your organization has a key of 1234567890. A user is running a lab instance with an ID = 2393048

```
https://labondemand.com/api/v3/1234567890/cancel?labinstanceid=2393048
```

## Example Response
```
{
   "Result":1,
   "Status": 1,
   "Error": null
}
```