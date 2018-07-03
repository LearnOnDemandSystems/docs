# Lab on Demand API v3.0

## API Request Format

Requests are not case sensitive. Requests can use either **GET** or **POST**. 

A typical API request will look like:

`https://labondemand.com/api/v3/[method]?[parameters]`

For example, a request to get the entire lab catalog will look like:

`https://labondemand.com/api/v3/catalog`

## API Key
- All methods require an API key, which must be obtained from Learn on Demand Systems. This key is used by Lab on Demand to validate your account. The key can be passed either as an HTTP request header or as part of the URL.

    `HTTP header name: api_key`

- The key can also be included in the URL, directly before the method name:

    `https://labondemand.com/api/v3/[key]/[method]?[parameters]`

- The catalog example would then look something like:

    `https://labondemand.com/api/v3/123456789/catalog`

>[!ALERT] You do **NOT** need to provide the key as both a header and as part of the URL. You can pick whichever approach works best for you. Thoughout the documentation, the URL approach will be used for the sake of simplicity.

## API Response Format

All responses are formatted as JSON. A full explanation of each response is included with each command below.

## Date Formats

All dates are in unix epoch time, which is the number of seconds that have elapsed since midnight UTC January 1st, 1970. Values are always rounded to the nearest whole second.

## Commands
- [Launch](lod-api-launch.md) - Launches a specified lab for a specified user.
- [LaunchAnonymous](lod-api-launch-anonymous.md) - Launches a specified lab without supplying user information.
- [LaunchForEvent](lod-api-launch-for-event.md) - Launches a specified lab within an event.
- [LaunchForEventByExternalId](lod-api-launch-for-event-by-external-id.md) - Launches a lab instance within an event using an - external lab identifier.
- [LaunchAnonymousForEvent](lod-api-launch-anonymous-for-event.md) - Launches a specified lab within an event without supplying user information.
- [LaunchAnonymousForEventByExternalId]() - Launches a lab instance anonymously within an event using an external lab identifier.
- [Cancel](lod-api-cancel.md) - Cancels a specified lab instance.
- [Save](lod-api-save.md) - Saves a specified lab instance.
- [Resume](lod-api-resume.md) - Resumes a specified lab instance.
- [Details](lod-api-details.md) - Retrieves detailed information about a specified lab instance.
- [SendNotification](lod-api-send-notification.md) - Sends a notification to a specified lab instance for the user to see.
- [LabProfile](lod-api-lab-profile.md) - Retrieves information about a specified lab profile.
- [Catalog](lod-api-catalog.md) - Returns all lab series, lab profiles, and delivery regions available to your organization.
- [DeliveryRegions](lod-api-delivery-regions.md) - Returns all delivery regions available to your organization.
- [RunningAndSavedLabs](lod-api-running-and-saved-labs.md) - Retrieves all labs that are currently running or saved.
- [UserRunningAndSavedLabs](lod-api-user-running-and-saved-labs.md) - Retrieves all labs that are currently running or saved for a particular user account.
- [Stats](lod-api-stats.md) - returns statistics about how many labs are currently active and saved.
- [Result](lod-api-result.md) - returns information about a particular lab instance result.
- [Results](lod-api-results.md) - returns information about all lab instance results that started or ended within a specified time range.
- [LatestResults](lod-api-latest-results.md) - returns information about all lab instance results that have recently started or ended.
- [Class](lod-api-class.md) - returns information about a class.
- [GetOrCreateClass](lod-api-get-or-create-class.md) - returns information about a class. If the class doesn’t exist, it is created.
- [UpdateClass](lod-api-update-class.md) - updates a specified class.
- [DeleteClass](lod-api-delete-class.md) - deletes a specified class.
- [GetEvaluationResponsesForEvent](lod-api-get-evaluations-responses-for-event.md) - returns evaluation data for a specific event.
- [GetEvaluationResponses](lod-api-get-evaluations-responses.md) - returns evaluation data for a specific evaluation.
- [CloseUserAccount](lod-api-close-user-account.md) - Allows an API consumer to close a user account created within the system removing all identifying information.

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