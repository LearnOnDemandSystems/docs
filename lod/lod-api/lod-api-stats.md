# Stats

The **Stats** command returns statistics about how many labs are currently active and saved.

## Parameters

non

## Response

|Property|Type|Nullable|Note|
|--- |--- |--- |--- |
|NumActive|Int|False|The number of currently active labs (starting, running, tearing down, saving, resuming, etc)|
|NumSaved|Int|False|The number of currently saved labs|

## Example Usage

Imagine… Your organization has a key of 1234567890.

```
https://labondemand.com/api/v3/1234567890/stats
```

## Example Response

```
{
    "NumActive":571, 
    "NumSaved":451,
    "Status": 1,
    "Error": null 
}
```