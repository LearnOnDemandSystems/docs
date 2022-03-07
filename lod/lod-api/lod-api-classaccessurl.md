# ClassAccessUrl

The **ClassAccessUrl** command returns a single use URL to access a class. 

## Parameters

|Name|Type|Required|Note|
|--- |--- |--- |--- |
|Id|String|Yes|The unique identifier of the class, as represented in your organization.

## Response 

|Property|Type|Nullable|Note|
|--- |--- |--- |--- |
|URL|String||The URL 
|Status|Integer|No|Indicates the status of the API request.
||||0 = Error
||||1 = Success|
|Error|String|True|In the event of an error, this will contain a detailed error message.|

## Example Usage

Imagine… A user is running a lab instance with an ID = 2393048

```
https://labondemand.com/api/v3/ClassAccessUrl/?id=1234567 
```

## Example Response
```linenums
{

"Url": "https://labondemand.com/class/access/ab1c2345-6d7b-890e-f1gh-234ij5kl6m7n",    
"Error": null,    
"Status": 1

}
```