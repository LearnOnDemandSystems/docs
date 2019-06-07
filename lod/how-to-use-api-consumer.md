# API Consumer Usage and Best Practices

## API Consumer Best Practices

### Do not use Strict Mapping

We advise against using strict mapping of API objects. We will add new API objects, but we will not remove any API objects that are already in place. If API objects are strictly mapped, your API integration may not work properly when new API objects are added.

### Window Manipulation

When launching labs via API, you should consider the size of the browser window that the lab will use, especially for Cloud Slice labs. We recommend using JavaScript to spawn new windows, and change the size of the windows to your desired size. 

For Cloud Slice, labs consist of two windows; the resource portal and lab console. The lab console is typically on the right side of the screen, housing the instructions and any lab resources. The resource portal is typically on the left side of the screen, housing the cloud platform the lab utilizes. If JavaScript isn't used to re-size the windows, the lab will launch with both windows at the same size, with one on top of the other. 

Resizing the windows to make the resource portal consume 75% of the screen, and the lab console consuming 25%, provides the best user experience and is how IDLx labs were designed to be used. 

For virtual machine based labs, you should use JavaScript to spawn a new window. No Window resizing is needed for these labs, as the VM and lab console are housed in the same browser window.

For more information about window resizing, check out [W3Schools](https://www.w3schools.com/jsref/met_win_resizeto.asp).

## How to use an API Consumer in Lab on Demand

To obtain API Consumer access, please [submit a Support ticket](https://lod.one/help) for assistance.

If you already have API Consumer access, and would like to use an API consumer with Lab on Demand (LOD), you must configure the API on the lab profile, lab series, and the organization profile that will be used with API calls. For more information on how the API can be used, have a look at our [API Documentation](lod-api/lod-api-main.md). 

- [Lab Series](#lab-series)
- [Lab Profile](#lab-profile)
- [Organization Profile](#organization-profile)

### Lab Series

The lab series must be published to the API consumer that will be used. By publishing a lab series to an API Consumer, that API Consumer will be able to launch any current and future lab profiles that belong to that series. 

To publish the Lab Series, please contact our Support team at https://lod.one/help.

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

To make the API Consumer available, please contact our Support team at https://lod.one/help.

Your API Consumer is now setup and is ready to use. If you would like to view the various ways you can interact with LOD via API, have a look at our [API Documentation](lod-api/lod-api-main.md).

## How to Make an API Request

Only lab profiles with a development status of **Complete** are consumable via API. 

- Requests are not case sensitive. Requests can use either **GET** or **Post**. 

    - **GET**: used to request data from a specified resource.

    - **POST**: used to send data to a server to create/update a resource.

### API Request Format



API requests use Methods and Parameters in the URL.

A typical API request would look like:

`https://labondemand.com/api/v3/[method]?[parameters]`

>[!knowledge] A request to launch a lab will look like:
>
>`https://labondemand.com/api/v3/launch?labid=100&userid=555&firstname=Joe&lastname=Smith&email=joe.smith@email.com`
>
>
>
>**launch** is the **method**.
>
>**labid**, **userid**, **firstname**, **lastname** and **email** are the >**parameters**.
>
>- **labid**: this is the lab ID of the lab that is to be launched. The ID can be >found in the URL while viewing the lab profile in LOD. 
>
>- **userid**: the user ID you use to identify the user in your external system.
>
>- **firstname**: the first name of the user that the lab launch will be associated with. 
>
>- **lastname**: the last name of the user that the lab launch will be associated with. 
>
>- **email**: the email address on the user profile of the user that the lab launch will be associated with. 

### API Testing Tools

If you want to test your API requests before implementing them, you can do so using an API testing tool. There are many tools available for testing an API request. One of the most common tool used is Postman, and is available on Windows, macOS and Linux (x32/x64).

In this guide, we will walk through the steps to use the _Launch_ APi request, to launch a specified lab for a specified user.

To launch a lab via an API request in Postman:

1. Download [Postman](https://www.getpostman.com/downloads/).

1. **Launch the installer** and install Postman.

1. **Open** Postman.

1. Click the **+ (plus) icon** in postman to create a new request. 

    ![](images/postman-new-button.png)

1. Click **Request** in the dialog that pops up.

1. Ensure that **GET** is selected. 

    ![](images/get-selected.png)

1. Copy the example API request below from the [Launch API request documentation](https://docs.learnondemandsystems.com/lod/lod-api/lod-api-launch.md):

    - `https://labondemand.com/api/v3/launch?labid=100&userid=555&firstname=Joe&lastname=Smith&email=joe.smith@email.com`

1. Paste the URL into Postman.

    ![](images/enter-request-url-postman.png)

1. You'll see that Postman parses the URL and displays query parameters in the appropriate field in the **Value** column.

    ![](images/query-params.png)

1. Replace the text in the **value** column, with data that corresponds to the **key** column. I.E. replace _100_ with the lab ID of the lab that is to be launched.

    ![](images/completed-replaced-date-postman.png)

1. Next, **Headers** need to be configured with the API key, to authenticate and use the API consumer. The API key is found in LOD, or it can be obtained from your organization. 

    ![](images/api-key-in-lod.png)

1. Click **Show** and copy the API key. 

1. In Postman, click the **Headers** tab.

    ![](images/headers-tab.png)

1. Enter the **API Key** in the **Value** Column.

1. Enter `api_key` in the **key** column. 

    ![](images/api-key-entered-in-postman.png)

1. The API request now has all required information to successfully launch a lab. Click **Send** to submit the API request.

    ![](images/send-button.png)

1. The lab will now for the specified user. Postman will return a JSON response with information about the result of the API request. The information in the response corresponds with the information on the Launch API details documentation. 

    ![](images/api-json-response.png)

    - **Result**: 1 = success.

    - **URL**: the URL to the lab instance.

    - **LabInstanceID**: 148562 = the lab instance ID.

    - **Expires**: when the lab will expire (in Unix epoch time).

    - **ExpiresTime**: when the lab will expire (in Unix epoch time).

    - **EstimatedReadySeconds**: the estimated amount of seconds it will take for the lab to be ready for use.

    - **Error**: in the event of an error, this will contain a detailed error message.

    - **Status**: 1 = success.

[Back to top](#api-consumer-usage-and-best-practices)
