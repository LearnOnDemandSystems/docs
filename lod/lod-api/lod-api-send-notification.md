# Send Notification 

The **SendNotification** command allows you to send a notification to a specified lab instance for the user to see.

## Parameters

|Name|Type|Required|Note
|--- |--- |--- |--- |
|labInstanceId|Integer (64-bit)|Yes|The ID of the lab instance to send the notification to.|
|notification|String|Yes, unless the notification has been named|The text of the notification to send. Please ensure the message is properly encoded. Line breaks can be included using \n. For notifications sent using the GET HTTP verb, the notification text is limited to 800 characters. For notifications sent using the POST HTTP verb, the notification text is limited to 4000 characters.
||||VIRTUALIZATION LABS: If you'd like some of the text to be typable directly into a virtual machine, you can mark it up using the following format. {typeable Type This!}In this case, "Type This!" appears with as clickable text within the notification. When the user clicks the text, "Type This!" is typed directly into the virtual machine. 
||||CLOUD SLICE LABS: If you'd like some of the test to be copyable, you can mark it up using the following format.{copyable Copy This!}. In this case, "Copy This!" appears with as clickable text within the notification. When the user clicks the text, "Copy This!" is copied to the user's clipboard.
|name|String|No|An optional name for the notification. If you name the notification, subsequent SendNotification commands using the same labInstanceId and name will cause the existing notification to be updated. It is also possible to delete a named notification by sending the name along with no notification value.|

## Response

|Name|Type|Nullable|Note
|--- |--- |--- |--- |
|name|String|No|An optional name for the notification. If you name the notification, subsequent SendNotification commands using the same labInstanceId and name will cause the existing notification to be updated. It is also possible to delete a named notification by sending the name along with no notification value.|
|Id|Integer (64-bit)|No|The unique identifier of the notification|
|Result|Integer|False|0 = Error
||||1 = Success|
|Error|String|False|In the event of an error, this will contain a detailed error message.|

## Example Usage

Imagine… A user is running a lab instance with an ID = 2393048 and you want to send a notification of "Hello from the API!"

```
https://labondemand.com/api/v3/sendnotification?labinstanceid=2393048¬ification=Hello%20from%20the%20API!
```

## Example Response

```linenums
{
   "Id": 28297
   "Result":1,
   "Status": 1,
   "Error": null
}
```

## GET vs. POST

Like all API commands, you can use either GET or POST when calling SendNotification. However, notifications sent using GET will be limited to 800 characters in length, while notifications set via POST can be up to 4000 characters in length.

### Example Usage With POST

Imagine… A user is running a lab instance with an ID = 2393048 and you want to send a notification of "Hello from the API!"

URL

```
https://labondemand.com/api/v3/sendnotification?labinstanceid=2393048
```

### Request Body

```
notification=Hello from the API!
```
