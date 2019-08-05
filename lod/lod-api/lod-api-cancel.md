# Cancel

The **Cancel** command allows you to cancel a specified lab instance.

## Parameters

|Name|Type|Required|Note|
|--- |--- |--- |--- |
|labInstanceId|Long|Yes|The ID of the lab instance to cancel

## Response 

|Property|Type|Nullable|Note|
|--- |--- |--- |--- |
|Result|Int|False|0 = Error
||||1 = Success|
|Error|String|False|In the event of an error, this will contain a detailed error message.|

## Example Usage

Imagine… A user is running a lab instance with an ID = 2393048

```
https://labondemand.com/api/v3/cancel?labinstanceid=2393048
```

## Example Response
```linenums
{
   "Result":1,
   "Status": 1,
   "Error": null
}
```
