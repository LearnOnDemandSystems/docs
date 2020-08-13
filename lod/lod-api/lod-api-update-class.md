# UpdateClass

The **UpdateClass** command updates a specified class.

|Name|Type|Required|Note|
|--- |--- |--- |--- |
|id|string|Yes|The unique identifier of the class, as represented in your organization|
|name|String|Yes|The name of the class|
|start|Long|Yes|When the class starts (in Unix epoch time)|
|end|Long|Yes|When the class ends (in Unix epoch time)|
|expires|Long|Yes|When labs can no longer be associated with the class (in Unix epoch time)|
|instructorFirstName|String|No|The first name of the class instructor|
|instructorLastName|String|No|The last name of the class instructor|
|maxActiveLabInstances|Integer|No|The maximum number of active lab instances than can exist concurrently within this class context. This is optional in most situations. However, it is required for classes that host shared environments. If a shared lab is launched against a class that doesn't have this value set, the launch will fail.|
|availableLabs|Integer Array|No|An optional array of lab profile IDs. When provided, Lab on Demand will know that these labs are available within the class. You do not need to set this value in order to launch labs against the class. This is useful when using Lab on Demand to display a class attendance page, or when consuming shared class environments and you want the shared environment launch link to appear on the class monitor page.

## Response

|Name|Type|Nullable|Note|
|--- |--- |--- |--- |
|Success|Boolean|No|
|Error|String|Yes|In the event of an error, this will contain a detailed error message.|

## Example Usage
Imagine… An existing class must be updated with the following data:

- ID (in your system): 4449999
- Name: “Another Sample Class”
- Instructor First Name: “Another”
- Instructor Last Name: “Instructor”
- Start: April 1, 2012 8AM UTC
- End: April 1, 2012 5PM UTC
- Expires May 2 2012 5PM UTC

```
https://labondemand.com/api/v3/updateclass/?id=4449999&name=Another+Sample+Class&instructorFirstName=Another&instructorLastName=Instructor&start=1333267200&end=1333299600&expires=1335978000
```

## Example Response

```linenums
{
    "Success": true,
    "Status": 1,
    "Error": null
}
```



