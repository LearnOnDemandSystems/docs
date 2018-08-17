# How to use an API Consumer

To use an API consumer with Lab on Demand (LOD), you must configure the API on the lab profile, lab series, and the organization profile that will be used with API calls. For more information on how the API can be used, have a look at our [API Documentation](lod/lod-api/lod-api-main.md). 

- [API Consumer ](#create-api-consumer)
- [Lab Series](#lab-series)
- [Lab Profile](#lab-profile)
- [Organization Profile](#organization-profile)

## Create API Consumer

To create an API Consumer:

1. From the Admin page, click **Create API Consumer** on the Integration tile.
    - If you do you see this tile, please contact your organization, as you may not have the proper permissions to create an API Consumer.
1. Enter a **Name** for the API Consumer
1. Next to **API Key**, click **Show**, and take note of the **API Key**. This will be needed to user the API Consumer. 
1. If you plan to use the API Consumer with LTI, click the **Generate** button next to **LTI Key** and **LTI Secret**
1. Click **Choose** next to Default Organization, to select the organization that the API Consumer will be available to. 
1. Enter a value for **Default Saved Labs Per User**.
1. Enter a value for **Max Saved Labs Per User**.
1. Enter a value for **Default Max Active Labs Per User**.
1. If you only would like to use this API Consumer for a limited amount of time, or if it will be used temporarily, **add an expiration**, by checking the **Expires** box.
1. The remaining checkboxes are optional. Check any boxes that you would like to apply to this API Consumer.
1. Click **Save**.

## Lab Series

The lab series must be published to the API consumer that will be used. 

To publish the Lab Series:

1. Navigate to the lab series that houses that lab profile that will be used with the API.
1. Click **edit**.
1. On the **Publish** tab, select the API consumer that you wish to publish the lab series to. 
1. Click **Save**.

## Lab Profile

A lab profile must be associated with a lab series, to use the lab profile with an API.

To associate your lab profile with a lab series:

1. Navigate to the **lab profile** you wish to use.
1. Click **Edit profile**.
1. One the **Basic Information** tab, click the Choose button next to Lab Series.
1. Enter the **name** of the lab series you wish to associate the lab profile with, and click **Search**. 
1. Select the lab series and click **Ok**.
1. Click **Save**.

## Organization Profile

The API Consumer needs to be made available to the organization that will use it. This should be the same organization that the lab series and lab profile belong to. 

To make the API Consumer available:

1. Navigate to the Organization profile of the organization that will use the API Consumer. 
1. Click **Edit**.
1. Click the **API Consumer Availability** tab
1. Click **Add API Consumer**
1. Enter the **Name** of the organization, and click **Search**.
1. Click the **Organization** and click **OK**.
1. Click **Save**.

Your API Consumer is now setup and is ready to use. If you would like to view the various ways you can interact with LOD via API, have a look at our [API Documentation](lod/lod-api/lod-api-main.md).