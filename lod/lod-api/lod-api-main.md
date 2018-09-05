# Lab on Demand API v3.0

## API Request Format

Requests are not case sensitive. Requests can use either **GET** or **POST**. 

A typical API request will look like:

`https://labondemand.com/api/v3/[method]?[parameters]`

For example, a request to get the entire lab catalog will look like:

`https://labondemand.com/api/v3/catalog`

## API Key
- All methods require an API key, which must be obtained from Learn on Demand Systems. This key is used by Lab on Demand to validate your account. The key can be passed as an HTTP request header with the header name "api_key".

## API Response Format

All responses are formatted as JSON. A full explanation of each response is included with each command below.

## Date Formats

All dates are in unix epoch time, which is the number of seconds that have elapsed since midnight UTC January 1st, 1970. Values are always rounded to the nearest whole second.

## Commands
- [Cancel](lod-api-cancel.md) - Cancels a specified lab instance.
- [Catalog](lod-api-catalog.md) - Returns all lab series, lab profiles, and delivery regions available to your organization.
- [Class](lod-api-class.md) - returns information about a class.
- [CloseUserAccount](lod-api-close-user-account.md) - Allows an API consumer to close a user account created within the system removing all identifying information.
- [DeleteClass](lod-api-delete-class.md) - deletes a specified class.
- [DeliveryRegions](lod-api-delivery-regions.md) - Returns all delivery regions available to your organization.
- [Details](lod-api-details.md) - Retrieves detailed information about a specified lab instance.
- [GetEvaluationResponses](lod-api-get-evaluations-responses.md) - returns evaluation data for a specific evaluation.
- [GetEvaluationResponsesForEvent](lod-api-get-evaluations-responses-for-event.md) - returns evaluation data for a specific event.
- [GetOrCreateClass](lod-api-get-or-create-class.md) - returns information about a class. If the class doesn’t exist, it is created.
- [LabProfile](lod-api-lab-profile.md) - Retrieves information about a specified lab profile.
- [LatestResults](lod-api-latest-results.md) - returns information about all lab instance results that have recently started or ended.
- [Launch](lod-api-launch.md) - Launches a specified lab for a specified user.
- [LaunchAnonymous](lod-api-launch-anonymous.md) - Launches a specified lab without supplying user information.
- [LaunchAnonymousForEvent](lod-api-launch-anonymous-for-event.md) - Launches a specified lab within an event without supplying user information.
- [LaunchAnonymousForEventByExternalId](lod-api-launch-for-event-by-external-id.md) - Launches a lab instance anonymously within an event using an external lab identifier.
- [LaunchForEvent](lod-api-launch-for-event.md) - Launches a specified lab within an event.
- [LaunchForEventByExternalId](lod-api-launch-for-event-by-external-id.md) - Launches a lab instance within an event using an - external lab identifier.
- [Result](lod-api-result.md) - returns information about a particular lab instance result.
- [Results](lod-api-results.md) - returns information about all lab instance results that started or ended within a specified time range.
- [Resume](lod-api-resume.md) - Resumes a specified lab instance.
- [RunningAndSavedLabs](lod-api-running-and-saved-labs.md) - Retrieves all labs that are currently running or saved.
- [Save](lod-api-save.md) - Saves a specified lab instance.
- [ScoreActivities](lod-api-score-activities.md) - causes all scored activities in a particular lab instance to undergo scoring.
- [SendNotification](lod-api-send-notification.md) - Sends a notification to a specified lab instance for the user to see.
- [Stats](lod-api-stats.md) - returns statistics about how many labs are currently active and saved.
- [UpdateClass](lod-api-update-class.md) - updates a specified class.
- [UpdateLabInstructions](lod-api-update-lab-instructions.md) - allows you to update the IDL-MD instructions of a lab.
- [UpdateLabInstructionsPackage](lod-api-update-lab-instructions-package.md) - allows you to update the IDL-MD instructions of a lab by uploading a ZIP archive containing the instructions and any referenced files, such as images and videos.
- [UserRunningAndSavedLabs](lod-api-user-running-and-saved-labs.md) - Retrieves all labs that are currently running or saved for a particular user account.


## API Client
A .NET API client library is available via Nuget. This will allow you to use the API using only .NET code. 

https://www.nuget.org/packages/LearnOnDemandSystems.OneLearnLOD.OneLearnLODAPIClient/ 

Example:

```
var apiUrl = "https://labondemand.com/api/v3";
var apiKey = "YourKeyGoesHere";
var labId = 12001; 
var firstName = "Sample";
var lastName = "Student";
var userId = "sample.student@nowhere.net"; // you can use any value that will uniquely identify the user in your system. here, we use an email address.
var email = "sample.student@nowhere.net";

var client = new LabOnDemandApiClient(apiUrl, apiKey);
var launchResponse = client.Launch(labId, userId, firstName, lastName, email);

if (launchResponse.Result == LaunchResult.Success)
{
    var url = launchResponse.Url; //this is the URL to send the user to
}
else
{
    var error = launchResponse.Error; //this will explain what went wrong
}
```

## Sample Project
A sample project that utilizes many API functions is available on GitHub. https://github.com/LearnOnDemandSystems/APIDemo
