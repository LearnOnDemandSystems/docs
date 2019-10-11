# Lab on Demand API v3.0

## Production API and Integration Testing

Only lab profiles with a development status of **Complete** are consumable  via API. 

Development/Integration Testing API available with all the same API calls your production API can make, but has the following settings:
- Max Active Lab Instances - 5
- Max Saved Labs per User - 1
- Max Active Lab Instances per user - 1
- Max lab duration - 30 minutes
- Allows launching of lab profiles with any Development Status
    - i.e. is not restricted to a _Complete_ development status
- Has a dedicated API key
- Does not generate billable events

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
- [Class](lod-api-class.md) - Returns information about a class.
- [CloseUserAccount](lod-api-close-user-account.md) - Allows an API consumer to close a user account created within the system removing all identifying information.
- [DeleteClass](lod-api-delete-class.md) - Deletes a specified class.
- [DeliveryRegions](lod-api-delivery-regions.md) - Returns all delivery regions available to your organization.
- [Details](lod-api-details.md) - Retrieves detailed information about a specified lab instance.
- [GetEvaluationResponses](lod-api-get-evaluations-responses.md) - Returns evaluation data for a specific evaluation.
- [GetEvaluationResponsesForEvent](lod-api-get-evaluations-responses-for-event.md) - Returns evaluation data for a specific event.
- [GetOrCreateClass](lod-api-get-or-create-class.md) - Returns information about a class. If the class doesn’t exist, it is created.
- [LabProfile](lod-api-lab-profile.md) - Retrieves information about a specified lab profile.
- [LatestResults](lod-api-latest-results.md) - Returns information about all lab instance results that have recently started or ended.
- [Launch](lod-api-launch.md) - Launches a specified lab for a specified user.
- [LaunchForEvent](lod-api-launch-for-event.md) - Launches a specified lab within an event.
- [LaunchForEventByExternalId](lod-api-launch-for-event-by-external-id.md) - Launches a lab instance within an event using an - external lab identifier.
- [Result](lod-api-result.md) - Returns information about a particular lab instance result.
- [Results](lod-api-results.md) - Returns information about all lab instance results that started or ended within a specified time range.
- [ReplacementTokens](lod-api-replacementtokens.md) - Returns all @lab replacement tokens available for a particular lab instance.
- [Resume](lod-api-resume.md) - Resumes a specified lab instance.
- [RunningAndSavedLabs](lod-api-running-and-saved-labs.md) - Retrieves all labs that are currently running or saved.
- [Save](lod-api-save.md) - Saves a specified lab instance.
- [ScoreActivities](lod-api-score-activities.md) - Causes all scored activities in a particular lab instance to undergo scoring.
- [SendNotification](lod-api-send-notification.md) - Sends a notification to a specified lab instance for the user to see.
- [Stats](lod-api-stats.md) - Returns statistics about how many labs are currently active and saved.
- [UpdateClass](lod-api-update-class.md) - Updates a specified class.
- [UpdateLabInstructions](lod-api-update-lab-instructions.md) - Allows you to update the IDL-MD instructions of a lab.
- [UserRunningAndSavedLabs](lod-api-user-running-and-saved-labs.md) - Retrieves all labs that are currently running or saved for a particular user account.


## API Client
A .NET API client library is available via Nuget. This will allow you to use the API using only .NET code. 

https://www.nuget.org/packages/LearnOnDemandSystems.OneLearnLOD.OneLearnLODAPIClient/ 

Example:

```linenums
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
