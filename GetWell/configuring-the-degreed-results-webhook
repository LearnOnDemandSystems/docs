The Degreed Connector, a custom integration between the Degreed LXM and Skillable, provides Lab Catalog, Lab Launch, and Completions service for Degreed Customers wanting to access Skillable hands-on Labs. 

## In This Article 

- [Required Permissions](#topic-one)
- [Overview](#topic-two)
- [Best Practices](#topic-three)
- [Results Webhook Configuration](#topic-four)
- [Next Steps](#topic-five)

This article will supply the necessary steps to configure the API Consumer Webhook required to provide the lab results for the Completion service. 

### Required Permissions

This features requires the following permissions. If you do not have these permissions, please reach out to our [customer support team](http://www.skillable.com/customer-support/) for assistance. 

| User Type | Role | Permission | Description |
|:---|:---|:---|
| Skillable Administrator | LOD Internal - API Administrator | API Consumer Management<br>Create, Delete, Edit, View | Allows a user to manage API Consumers globally  |
| Organization Administrator | Organization API Management | API Consumer Management<br>Create, Delete, Edit, View | Allows a user to manage API Consumers for organizations that they manage  |

## Overview

The Degreed Connector is built on three main functions. These include the creation and delivery of a catalog of labs, the authenticated launching of labs and the return of lab completion results.

In order to provide timely and accurate lab completion results for users a Webhook must be created for each customer's API Consumer. This webhook will fire when a lab launched through the Degreed Connector is completed and torn down. It will provide the Degreed Connector Completion Service with important information regarding the state and status of the lab and so care must be taken to set it up properly.

## Best Practices

- Only set up one "Results" webhook for a Degreed Connector API Consumer. Multiple webhooks can have unexpected ramifications during completion processing.
- Always test the target URL by navigating to it to ensure that the URL is available. If your browser reports an error review the target URL to ensure it is entered correctly.
- Follow the instructions provided in this document exactly. Configuring the webhook incorrectly can have unexpected consequences.

## Results Webhook Configuration

The Results Webhook is an required part of the Degreed Connector. As such it is important that it is set up correctly when customers are configured to use the Degreed Connector.  

The Degreed Connector Results Webhook is configured as part of the API Consumer to which a customer's labs will be published. Each customer that is configured to use the Degreed Connector will require that an API Consumer be created. 

>[!alert] API Consumers are a protected part of the Lab environment and therefore only specific individuals are granted permissions to updated them. If you do not have permission to create a webhook contact the [customer support team](http://www.skillable.com/customer-support/) requesting that the webhook configuration included in these instructions be configured for the required API Consumer.

1. Navigate to the API Consumer that you wish to use for the Degreed customer.

1. On the API Consumer Details page in the Webhooks section select **+ Add Webhook**.

1. Configure the webhook with the following charateristics and select **OK** to save the configuration

    >| Field | Value | Notes |
    >|:---|:---|:---|
    >| Name | **Degreed Connector: Results** | The name field identifies the Webhook for administrators |
    >| Event | **Torn Down** | The Torn Down event is used to ensure that the lab has been successfully scored and completed |
    >| Verb | **POST** | This webhook uses the POST verb to send data to the target URL |
    >| URL | **https//[base-url]/results/** | This is the target URL receiving the webhook result set |
    >| Headers | **BLANK** | No specific headers are required |
    >| Content | Select **Send Lab Details as Content Body** | This will provide the required data for the result set |
    >| Enabled | **Selected** | If a webhook is not enabled it will not provide results |
    >| Blocking | **Not Selected** | This webhook should not block any other webhooks from executing |
    >| Delay | **3 Seconds** | The delay sets a pause before initial activation of the webhook |
    >| Timeout | **30 Seconds** | The webhook will attempt to complete for up to this value |
    >| Retries | **3** | The webhook will retry with a 1 second delay if any condition prevents it from completing |
    >| Error Action | **Log** | This ensures that any issues encountered by the Webhook are logged to App Insights |
    >
    !IMAGE[Webhook configuration.png](connect-images/degreed-webhook-config.png)

---

## Next Steps

This is where we will put links and descriptions to the broader Degreed Connector documentation.
