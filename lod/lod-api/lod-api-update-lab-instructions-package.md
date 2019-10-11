# UpdateLabInstructionsPackage

The **UpdateLabInstructionsPackage** command allows you to update the IDL-MD instructions of a lab by uploading a ZIP archive containing the instructions and any referenced files, such as images and videos. **This method requires an HTTP POST**. The Content-Type of your post should be set to multipart/form-data. This is the same behavior that a browser uses to upload a file to a server. In .NET environments, the System.Net.WebClient class provides an UploadFile method that can be used.

## Parameters
|Name|Type|Required|Note|
|--- |--- |--- |--- |
|id|Integer (32-bit)|Yes|The ID of the lab profile to update.|

## Package File Format
- Standard ZIP archive
- **Instructions.md** file in the archive root
- You can include other content files referenced within your instructions, like images and videos.

Content files are referenced in your instructions markdown using relative paths. You can use subfolders if you wish. For instance, if your package contains the following files...

```
image1.jpg
image2.jpg
screenshots/screenshot1.jpg
screenshots/screenshot2.jpg
documents/document1.pdf
documents/document2.pdf
```

You could reference these content files in your instructions like this...

```
![](image1.jpg)
![](image2.jpg)
![](screenshots/screenshot1.jpg)
![](screenshots/screenshot2.jpg)
[Download document 1](documents/document1.pdf)
[Download document 2](documents/document2.pdf)
```

## Response
|Property|Type|Nullable|Note|
|--- |--- |--- |--- |
|Result|Int|False|0 = Error
||||1 = Success|
|Error|String|False|In the event of an error, this will contain a detailed error message.|

## Example Usage
Imagine…  A lab profile has an ID = 2393048 and you have a ZIP file containing the instructions.
```
https://labondemand.com/api/v3/updatelabinstructionspackage?Id=2393048
```

## Example Response
```linenums
{
   "Result":1,
   "Status": 1,
   "Error": null
}
```

## .NET Example

```
var id = 2393048;<br>
var filePath = "C:\MyStuff\Instructions.zip";
var url = ApiUrl + "UpdateLabInstructionsPackage/?Id=" + id;
var webClient = new WebClient();
webClient.Headers.Add("api_key", IntegrationKey);
var responseArray = webClient.UploadFile(url, filePath);
var responseText = System.Text.Encoding.ASCII.GetString(responseArray);
```
