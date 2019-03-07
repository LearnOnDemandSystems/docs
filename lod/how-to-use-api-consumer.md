# API Consumer Usage and Best Practices

## API Consumer Best Practices

### No Versioning - Do not use Strict Mapping

Versioning controls which API resources and features are exposed. If you configure your application to only use a specific version of our API, your application may not function properly when new API objects are added.  

We advise against versioning or using strict mapping of API objects. We will add new API objects, but we will not remove any API objects that are already in place. If API objects are stricly mapped, your API integration may not work properly when new API objects are added.

For more information about this API design and best practices on versioning, check out [Microsofts API Design documentation](https://docs.microsoft.com/en-us/azure/architecture/best-practices/api-design#no-versioning).

### Window Resizing

When launching labs via API, you should consider the size of the browser window that the lab will use, especially for Cloud Slice labs. We recommend using Javascript to change the size of the windows, to your desired size. 

For Cloud Slice, labs consist of two windows; the resource portal and lab console. The lab console is typically on the right side of the screen, housing the instructions and any lab resources. The resource portal is typically on the left side of the screen, housing the cloud platform the lab utilizes. If Javascript isn't used to re-size the windows, the lab will launch with both windows at the same size, with one on top of the other. 

Resizing the windows to make the resource portal consume 75% of the screen, and the lab console consuming 25%, provides the best user experience and is how IDLx labs were designed to be used. 

For more information about window resizing, check out [W3Schools](https://www.w3schools.com/jsref/met_win_resizeto.asp).

## How to use an API Consumer in Lab on Demand

To obtain API Consumer access, please contact our Help Desk <a href="mailto:support@learnondemandsystems.com">support@learnondemandsystems.com</a> for assistance.

If you already have API Consumer access, and would like to use an API consumer with Lab on Demand (LOD), you must configure the API on the lab profile, lab series, and the organization profile that will be used with API calls. For more information on how the API can be used, have a look at our [API Documentation](lod-api/lod-api-main.md). 

- [Lab Series](#lab-series)
- [Lab Profile](#lab-profile)
- [Organization Profile](#organization-profile)

### Lab Series

The lab series must be published to the API consumer that will be used. By publishing a lab series to an API Consumer, that API Consumer will be able to launch any current and future lab profiles that belong to that series. 

To publish the Lab Series, please contact our Support team <a href="mailto:support@learnondemandsystems.com">support@learnondemandsystems.com</a>

### Lab Profile

A lab profile must be associated with a lab series, to use the lab profile with an API.

To associate your lab profile with a lab series:

1. Navigate to the **lab profile** you wish to use.
1. Click **Edit profile**.
1. One the **Basic Information** tab, click the Choose button next to Lab Series.
1. Enter the **name** of the lab series you wish to associate the lab profile with, and click **Search**. 
1. Select the lab series and click **Ok**.
1. Click **Save**.

### Organization Profile

The API Consumer needs to be made available to the organization that will use it. This should be the same organization that the lab series and lab profile belong to. 

To make the API Consumer available, please contact our Support team <a href="mailto:support@learnondemandsystems.com">support@learnondemandsystems.com</a>

Your API Consumer is now setup and is ready to use. If you would like to view the various ways you can interact with LOD via API, have a look at our [API Documentation](lod-api/lod-api-main.md).
