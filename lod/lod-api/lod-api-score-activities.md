# Score Activities

The **ScoreActivities** command causes all scored activities in a particular lab instance to undergo scoring. Please note that this is API command is only necessary in specialized situations. In most cases, scoring is triggered by the student in the lab client and this command is not needed. However, if your students do not use our lab client, ScoreActivities provides a mechanism to trigger scoring. 

This command does not return scoring results. To obtain scoring results, use the @Html.ActionLink("Details", "Details") command.

## Parameters

|Name|Type|Required|Note|
|--- |--- |--- |--- |
| Id | Integer (64-bit) | No | The ID of the lab instance|

## Response

|Property|Type|Nullable|Note|
|--- |--- |--- |--- |
| Success | Boolean | No |

## Example Usage

Imagine…  A lab instance with an ID of 2393049 is running and needs to be scored.

```
https://labondemand.com/api/v3/scoreactivities/?id=4449999</pre>
```
## Example Response

```linenums
{
    "Success": true,
    "Status": 1,
    "Error": null
}
```
