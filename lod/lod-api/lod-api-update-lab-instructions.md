# UpdateLabInstructions

The **UpdateLabInstructions** command allows you to update the IDL-MD instructions of a lab. In order to support longer instructions lengths, **this method requires an HTTP POST**. The Content-Type of your post should be set to application/x-www-form-urlencoded.

## Parameters
|Name|Type|Required|Note|
|--- |--- |--- |--- |
|id|Integer (32-bit)|Yes|The ID of the lab profile to update.|
|instructions|String|Yes|The IDL-MD instructions. This should included in the body of the post.|

## Response
|Property|Type|Nullable|Note|
|--- |--- |--- |--- |
|Result|Int|False|0 = Error
||||1 = Success|
|Error|String|False|In the event of an error, this will contain a detailed error message.|


## Example Usage
Imagine…  A lab profile has an ID = 2393048 and you want to update the instructions to read "Updated from the API"

```
https://labondemand.com/api/v3/updatelabinstructions?id=2393048
```

### Request Body
```
instructions=Updated from the API
```

## Example Response
```linenums
{
   "Result":1,
   "Status": 1,
   "Error": null
}
```
