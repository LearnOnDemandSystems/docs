# ClassAccessUrl

The **ClassAccessUrl** command returns a single use URL to access the class monitoring page. 

## Parameters

|Name|Type|Required|Note|
|--- |--- |--- |--- |
|Id|String|Yes|The unique identifier of the class, as represented in your organization.

## Response 

|Property|Type|Nullable|Note|
|--- |--- |--- |--- |
|URL|String||The URL 
|Result|Int|False|0 = Error
||||1 = Success|
|Error|String|True|In the event of an error, this will contain a detailed error message.|

## Example Usage

Imagine… An Instructor requires access to the Lab Monitoring dashboard which belongs to a class, with a class ID = 2393048

```
https://labondemand.com/api/v3/ClassAccessUrl?id=2393048 
```

## Example Response
```linenums
{

"Url": "https://labondemand.com/class/access/ab1c2345-6d7b-890e-f1gh-234ij5kl6m7n",    
"Error": null,    
"Status": 1

}
```
