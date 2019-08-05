# Save

The **Save** command allows you to save a specified lab instance.

## Parameters

|Name|Type|Required|Note|
|--- |--- |--- |--- |
|labInstanceId|Long|Yes|The ID of the lab instance to save

## Response 
|Property|Type|Nullable|Note|
|--- |--- |--- |--- |
|Result|Int|No|0 = Unknown Error
||||1 = Success
||||2 = Invalid State|
|Expires|Long|No|When the saved lab will expire (in Unix epoch time)|
|Error|String|No|In the event of an error, this will contain a detailed error message.|

## Example Usage

Imagine… A user is running a lab instance with an ID = 2393049

```
https://labondemand.com/api/v3/save?labinstanceid=2393049
```

## Example Response
```linenums
{
    "Result":1, 
    "Expires":1337977153,
    "Status": 1,
    "Error": null
}
```
