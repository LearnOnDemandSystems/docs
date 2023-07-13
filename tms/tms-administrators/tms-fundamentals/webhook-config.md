# Webhook Configuration in Skillable TMS

Webhooks are a way our platforms can send automated messages or information to you. They can be used to automatically inform you when a course assignment or class has been changed in the Skillable TMS. 

You will need to know how to use webhooks in the TMS if you want to automatically receive notifications.

## Set up your TMS Webhooks
You can set up one or more webhooks on your Organization profile.

1. From the Site Administration page on the Organizations tile, click **My Organizations**.
1. Click your organization's name link.
1. Click the **Edit** link.
1. Select the **Webhooks** tab.
1. Click **Add** link. 

Reference the fields below to set up your webhook.

**Name**: Enter the name of the webhook.

**Trigger Event**: Select the event which occurs to enact the webhook. Available events include: 
* **Course assignment changed**: Triggered when a Course Assignment is changed (started, completed, expired, cancelled).
* **Class changed**: Triggered when the status of a class changes (requested, tentative, scheduled, guaranteed to run, cancelled, denied, rescheduled, completed).
      
**URL**: Input a webhook URL where the Webhook response is sent when the configured platform event occurs. 

**HttpHeaders**: Send additional information with an HTTP request or response, an HTTP header consists of its case-insensitive name followed by a colon ( : ), then by its value. Headers should be entered in `name=value` format, with each header on a new line. It is recommended to add an authorization header in order to secure your webhook. If Basic Authentication is required for the webhook in the header field enter `Authorization=Basic <Base64 URL Safe version of the Username:Password>`.  Assuming a username of `Webhookuser` and a password of `webhookpassword` the Base64 URL Safe string of `Webhookuser:webhookpassword` is `V2ViaG9va3VzZXI6d2ViaG9va3Bhc3N3b3Jk`.  In the header field the full entry would be `Authorization=Basic V2ViaG9va3VzZXI6d2ViaG9va3Bhc3N3b3Jk`.  To help with converting the username and password there are many available tools including [Cyber Chef](https://cyberchef.org/ "Link to Cyber Chef for performing the Base64 conversion")

**Delay Seconds**: Input an optional delay before the webhook is triggered.

**Timeout Seonds**: Include the amount of time to wait for the webhook request to complete before timing out.

**Max Retries**: Set the maximum number of times the webhook will be called in the event of an error response. The time between retries is 1 second for the 1st retry, 2 seconds for the 2nd retry, 3 seconds for the 3rd retry, 4 seconds for the 4th retry, and 5 seconds for the 5th retry. There is a maximum of five retries.

**Enabled**: Checking this activates the webhook.
