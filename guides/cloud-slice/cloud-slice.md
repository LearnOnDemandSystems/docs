# Cloud Slice Guide

## Setup

### Registered Application

In Azure AD, create a Registered Application.

With the Registered Application selected, in Required permissions, grant the following:

- Microsoft.Azure.ActiveDirectory
  - Application Permissions
    - Read directory data
    - Read and write directory data
  - Delegated permissions
    - Read all users' full profiles
    - Read all users' basic profiles
    - Sign in and read user profile

### Subscription

In Azure, with the subscription where you created the Registered Application selected, in Access control (IAM), add the Registered Application as an Owner to the subscription.

TODO: Is Owner really required here, or would something else suffice? Should this be a custom set of minimum permissions?

### LOD Cloud Subscription

Set up a new Cloud Subscription with the values defined in the following sections.

#### Basic Information

The Subscription Id field must be set to the ID of the Azure subscription that contains your Registered Application.

The Template Storage field must identify the name that will be used for the storage container created within the Storage Group for templates used in the subscription.

The Instance Storage field must identify the name that will be used for the storage container created within the Storage Group for virtual machines used in the subscription.

##### Other fields

Source: Where to copy VMs from (you set up VMs in a subscription for use in labs)

Destination: Where to copy VMs to when provisioning them to students in dynamically created subscriptions when launching labs

#### Authentication

The Tenant Name field must contain the name of your onmicrosoft.com account.

The Client ID field must be set to the Application ID for your Registered Application.

The Client Secret field must be set to the key you created for your Registered Application.

## Lab Profile

