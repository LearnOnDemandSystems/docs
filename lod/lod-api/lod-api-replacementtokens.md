# ReplacementTokens

The **ReplacementTokens** command retrieves all @lab replacement tokens available for a particular lab instance.

## Parameters

|Name|Type|Required|Note|
|--- |--- |--- |--- |
| Id | Integer (64-bit) | No | The ID of the lab instance|

## Response

|Property|Type|Nullable|Note
|--- |--- |--- |--- |
|ReplacementTokens|Array of ReplacementToken|No|See the ReplacementToken Type below|

## ReplacementToken

|Property|Type|Nullable|Note
|--- |--- |--- |--- |
|Token|String|No|The token name|
|Replacement|String|No|The replacement value for the token|

## Example Usage

```
https://labondemand.com/api/v3/replacementtokens/15167595
```

## Example Response

Please note that the actual replacement tokens returned will vary by lab type. For instance, virtualization labs will have several VirtualMachine tokens, while Cloud Slice labs will have several CloudResource tokens.

```linenums
{
    "ReplacementTokens": [
        {
            "Token": "@lab.VirtualMachine(machine1).Username",
            "Replacement": "user1"
        },
        {
            "Token": "@lab.VirtualMachine(machine1).Password",
            "Replacement": "h&4Fa?)C3/eQ;)?E"
        },
        {
            "Token": "@lab.VirtualMachine(machine2).Username",
            "Replacement": "user1"
        },
        {
            "Token": "@lab.VirtualMachine(machine2).Password",
            "Replacement": "LXM(#(Z^Hw4Upp>f"
        },
        {
            "Token": "@lab.LabInstance.Id",
            "Replacement": "15167595"
        },
        {
            "Token": "@lab.LabInstance.GlobalId",
            "Replacement": "lod15167595"
        },
        {
            "Token": "@lab.LabInstance.StartDate",
            "Replacement": "20190809"
        },
        {
            "Token": "@lab.LabProfile.Id",
            "Replacement": "1581178"
        },
        {
            "Token": "@lab.User.Id",
            "Replacement": "11832814"
        },
        {
            "Token": "@lab.User.FirstName",
            "Replacement": "John "
        },
        {
            "Token": "@lab.User.LastName",
            "Replacement": "Doe"
        },
        {
            "Token": "@lab.User.Email",
            "Replacement": "john.doe@sample.net"
        }
    ],
    "Error": null,
    "Status": 1
}
```
