The Degreed Connector has been developed as a tightly coupled integration between the Degreed platform and Skillable Labs. This custom connector allows Degreed customers to be easily configured to receive a daily catalog of updated labs that is used to automatically create and maintain courses on the Degreed platform. It also allows Degreed customer's users to launch labs directly from courses and receive basic completion records. This article will outline the specific information required to fully configure the Degreed Connector.

## In This Article 

- [Required Permissions](#required-permissions)
- [Customer Information](#customer-information)
- [Degreed Connector Processes](#degreed-connector-processes)
    - [The Catalog Process](#the-catalog-process)
    - [The Lab Launch Process](#the-lab-launch-process)
    - [The Lab Results Process](#the-lab-results-process)

This article will cover the required customer information used in the Degreed Connector as well as the basic Catalog, Lab Launch and Lab Results processes.

## Customer Information

The Degreed Connector has been designed to be as simple to configure and use as possible. To ensure that configuration is completed properly Skillable will require the following information:

| Field | Notes |
|:---|:---|
| **Degreed Customer ID** | • This value is supplied by Degreed.<br>• This is generally the numeric value displayed in the Browser URL Address when logged in to the **Manage** section of Degreed.<br>• Example: https://companyABC.degreed.com/orgs/**123456**/settings. |
| **Degreed Environment** | • This value is supplied by Degreed.<br>• This value will generally correspond to your primary geographic location.<br>• Possible values include:<br>&nbsp;&nbsp;&nbsp;• US Production (United States)<br>&nbsp;&nbsp;&nbsp;• EU Production (European Union)<br>&nbsp;&nbsp;&nbsp;• CA Production (Canada)<br>&nbsp;&nbsp;&nbsp;• US Beta (for testing)<br>&nbsp;&nbsp;&nbsp;• EU Beta (for testing. not common) |
| **Degreed Client ID** | • This is created as part of a Degreed Provider Key.<br>• See **API Keys** in the Degreed Authentication Guide.<br>&nbsp;&nbsp;&nbsp;• See: [https://developer.degreed.com/docs/authentication](https://developer.degreed.com/docs/authentication "Degreed Authentication Guide") |
| **Degreed Client Secret** | • This is created as part of a Degreed Provider Key.<br>• The Client Secret is only displayed once when the Provider Key is created.<br>• It is recommended that the customer send this value to Skillable using **Password Pusher** or another secure method.<br>&nbsp;&nbsp;&nbsp;• See: Password Pusher - [https://pwpush.com/](https://pwpush.com/ "Password Pusher") |
| **Degreed SAML Metadata URL** | • This field identifies the SAML authentication for Lab Launch and Lab completion services.<br>Ask your Degreed representative to provide this value to your Skillable account team. |

## Degreed Connector Processes

The Degreed Connector provides a seamless route for many more users to experience skills based learning through Skillable Hands-On Labs. This is accomplished by providing a clear pathway for access to Skillable labs with the following functions:

- A daily automated update of Degreed courses encapsulating Skillable Labs.
- Authenticated Lab Launch from the Degreed Courses secured with SAML 2.0 authentication.
- Direct user lab completion reporting with basic lab results.

### The Lab Catalog Process

Once each day Skillable Insights will be automatically queried to obtain the full list of customer organizations and their associated API Consumers that have been configured to use the Degreed Connector. This process will create customer specific catalog files and automatically upload them to Degreed for processing. The following automated process is used:

![Degreed Sequence Diagram - Catalog v2](images/Degreed-Sequence-Diagram-Catalog-v2.png)

Every 24 hours Degreed will examine the existing Customer Content Files and add, update or archive the Degreed customer Course catalog appropriately.

- If a Course does not exist for a customer that corresponds to an Instruction Set/Lab record it will be created.
- If any information for a given Customer's Course has changed the corresponding Instruction Set/Lab record will be used to update the course.
- If an Instruction Set/Lab record can not be found for a specific Customer's Course then the Customer's Course will be archived.

**NOTE**: In all cases each Content File record will correspond to a unique Lab Profile's Instructions Set and Language combination and represents a specific course within a customer's Degreed catalog.

### The Lab Launch Process

The Degreed Connector - Lab Launch process is responsible for verifying the status of the Degreed Connector configuration, authenticating the user using SAML 2.0, and handling lab launch requests in a single, self-contained, service.

![Degreed Sequence Diagram - Launch](images/Degreed-Sequence-Diagram-Launch.png)

### The Lab Results Process

The Degreed Connector - Lab Results process involves receiving a lab ending notification from the Lab Results Webhook, converting the lab results to a Degreed Completion record and sending the user's Completion record to Degreed using the Degreed Completions API.

**NOTE**: For details of the Degreed Completions API refer to the Degreed documentation ([https://developer.degreed.com/reference/post_api-v2-completions](https://developer.degreed.com/reference/post_api-v2-completions "Completions API")).

![Degreed Sequence Diagram - results](images/Degreed-Sequence-Diagram-results.png)
