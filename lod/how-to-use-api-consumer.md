# API Consumer

To use an API consumer with Lab on Demand (LOD), you must configure the API on the lab profile, lab series, and organization that will be used in API calls. 

There are 4 areas of LOD that must be configured to use an API Consumer. 

- [Lab Series](#lab-series)
- [Lab Profile](#lab-profile)
- [API Consumer Profile](#api-consumer-profile)
- [Organization Profile](#organization-api-consumer)

## Lab Profile

A lab profile must be associated with a lab series, to use the lab profile with an API.

To associate your lab profile with a lab series:

1. Navigate to the **lab profile** you wish to use.
1. Click **Edit**.
1. One the **Basic Information** tab, click the Choose button next to Lab Series.
1. Enter the **name** of the lab series you wish to associate the lab profile with, and click **Search**. 
1. Select the lab series and click **Ok**.
1. Click **Save**.

## Lab Series

The lab series must be published to the API consumer that will be used. 

To publish the Lab Series:

1. Navigate to the lab series that houses that lab profile that will be used with the API.
1. Click **edit**.
1. On the **Publish** tab, select the API consumer that you wish to publish the lab series to. 

- Must be in "complete" status
- Must be published to the org that will use the Lab Series



## API Consumer profile
- API Key
- Default organization: select org that can use the api consumer
- Expiration
- 

## Organization API Consumer

- API Consumer Availability tab
