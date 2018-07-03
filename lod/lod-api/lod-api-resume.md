# Resume

The **Resume** command allows you to resume a specified lab instance.

## Parameters

|Name|Type|Required|Note|
|--- |--- |--- |--- |--- |--- |--- |--- |
|labInstanceId|Long|Yes|The ID of the lab instance to resume

## Response

|Property|Type|Nullable|Note|
|--- |--- |--- |--- |
|Result|Int|False|0 = Error            1 = Success
||||2 = User has too many active labs
||||3 = Insufficient host resources
||||5 = API integration has too many active labs
||||7 = API integration doesn't have enough available RAM
||||10 = User doesn't have enough available RAM
||||20 = User's organization has too many active labs
||||30 = User's organization doesn't have enough available RAM
||||40 = Lab profile has too many active instances
||||50 = Lab organization doesn't have enough available RAM
||||60 = Lab organization has too many active instances
||||70 = Lab series has too many active instances
||||80 = Lab series doesn't have enough available RAM|
|Url|String|False|A URL where the lab can be viewed by the user|
|Expires|Long|False|When the saved lab will expire (in Unix epoch time)|
|Error|String|False|In the event of an error, this will contain a detailed error message.|

## Example Usage

Imagine… Your organization has a key of 1234567890. A user has a saved lab instance with an ID = 2393049

```
https://labondemand.com/api/v3/1234567890/resume?labinstanceid=2393049
```

## Example Response

```{
    "Result":1, 
    "Url":"https://labondemand.com/console/setup/1b4909d6-0dbe-43db-9ab9-74ee4f913c4e",
    "Expires":1337977153,
    "Status": 1,
    "Error": null
}
```