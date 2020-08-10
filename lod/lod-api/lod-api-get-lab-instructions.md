# GetLabInstructions

The **GetLabInstructions** command allows you to download the IDL-MD instructions of a lab as a string. 

## Parameters
|Name|Type|Required|Note|
|--- |--- |--- |--- |
|id|Integer (32-bit)|Yes|The ID of the lab profile that will be the source of the instructions. The profile must be owned by the organization on the API consumer.|


## Response
|Property|Type|Nullable|Note|
|--- |--- |--- |--- |
|Instructions|String|True|
|Error|String|True|In the event of an error, this will contain a detailed error message.|
|Status|Integer|false|0 = Error
||||1 = Success|


## Example Usage
Imagine…  A lab profile has an ID = 2393048 and you want to get the content of the instructions.

```
https://labondemand.com/api/v3/GetLabInstructions?id=2393048
```

## Example Response
```linenums
{
    "Instructions": "##Welcome to the world of tomorrow!",
    "Error": null,
    "Status": 1
}
```
