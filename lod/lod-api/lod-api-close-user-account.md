# CloseUserAccount

The **CloseUserAccount** command closes a user account and removes all user information using an ID. This is usually a unique identifier used by the calling system.

## Parameters

|Name|Type|Required|Note|
|--- |--- |--- |--- |
|userId|String|Yes|The ID of the user to retrieve. This is usually a unique identifier used by the calling system.|

## Response

|Name|Type|Required|Note|
|--- |--- |--- |--- |
|Status|Integer|No|Indicates the status of the API request
||||0 = Error
||||1 = Success|
|Error|String|Yes|Error details. This will only have a value if an error was encountered. The status property will also be set to Error (0).|
|RowsAffected|int|No|The number of database rows affected while removing all user data for the account.|

## Example Usage

Imagine… You have a user named Joe Smith. His ID in your system is 555. His email address is joe.smith@email.com. You want to close this account and remove all identifying data from the system.

```
https://labondemand.com/api/v3/CloseUserAccount/?userId=555
```

## Example Response

```
{
    "Status": 1,
    "Error": null,
    "RowsAffected": 25
}
```