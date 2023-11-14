Skillable has developed a number of REST APIs to assist you to interact with and maintain your accounts on the Skillable Studio and TMS platforms, launch and monitor labs, retrieve data, integrate external systems, and more. This article will highlight a couple methods that API administrators and developers 
can use to make an API request using the Skillable Studio and TMS REST APIs.

## In This Article 

- [Required Permissions](#required-permissions)
- [Best Practices](#best-practuces)
- [How to Make an API Request](#how-to-make-api-request)
    - [API Request Format](#api-request-format)
- [API Testing Tools](#api-testing-tools)
- [Next Steps](#next-steps)F

This article will highlight some of the methods you can use to make an API request as well as highlight the API request format. Also covered in this article is some of the tools that you can use when developing and testing your API requests.

### Required Permissions

Skillable APIs offer one form of authentication: an API Key. All methods require an API Key, which must be obtained from a Skillable team member working with your organization. Our systems use this key to validate your development account. 

Pass your API Key as an HTTP request header with the header name "api_key". No other permissions or authentication will be required to complete an API Request.

In Skillable Studio APIs, the API Key is configured as part of the API Consumer while in Skillable TMS, the API Key is associated with Organization accounts.

When developing labs on the Skillable Studio platform you may have access to both a development and a production environment. These environments will likely require separate API Consumers providing different API keys. 

If you do not have an API Key for your environment(s), please reach out your Skillable representative or contact the [customer support team](http://www.skillable.com/customer-support/) for assistance. 

## Best Practices

### API Workflow
As a best practice the API key should never be exposed to client side code. Below is a sample workflow for using and integrating API calls. The sample assumes that the client side has a button or page that the student clicks to launch a lab via API.

1. Student clicks a button that initiates the API call.

1. An ajax call is made to the customer-owned service, or learning management system.

1. The customer-owned service makes a Launch API call and receives the lab URL from Skillable Studio.

1. The ajax call returns to the browser and includes the lab URL.

1. Client-side code redirects to the URL or spawns a new window and directs the new window at the lab URL.

>**NOTE**: Spawning a new window is preferred for the following reasons:
>
>- Spawning a new window allows for the browser window to be resized to the ideal size for the student's machine. 
>- Resizing can't be done in a redirect, as browser's do not allow resizing of user-opened windows.
>- The student is able to maintain the page they launched the lab from. 
>    - It is best practice to launch the lab in its own window, so the student can navigate to the page the lab was launched from if needed.

### Do not use Strict Mapping
We advise against using strict mapping of API objects. We will add new API objects, but we will not remove any API objects that are already in place. If API objects are strictly mapped, your API integration may not work properly when new API objects are added.

### Window Manipulation
If you launch a lab in a new window using JavaScript, Skillable Studio will resize the lab window after it is launched.

To launch a lab in a new window, use the following JavaScript:

>`window.open(labUrl, "lab", "width=800,height=600,status=0,resizable=1,toolbar=0,menubar=0,location=0,scrollbars=0");`

This tells the browser to open a new window with dimensions of 800x600. After a new window is opened, Skillable Studio will resize the window appropriately for the lab type that is being launched (Virtualization or Cloud Slice). Since the initial window dimensions were set by a script, future scripts are permitted to change those dimensions (resize the window).

>**ALERT**: Windows spawned in any other context are only resizable by the user. If you open the window using an HTML link, or simply redirect the current window to the lab URL, Skillable Studio will be prevented from resizing the window.

- **Cloud Slice** labs consist of two windows; the resource portal and lab console.
- **Virtualization** based labs consist of one window; the virtual machine and the lab console.
Lab console: on the right side of the screen, housing the instructions and any lab resources.
Resource portal: on the left side of the screen, housing the cloud platform or the virtual machine(s) that the lab utilizes.

## How to Make an API Request

API Requests can be submitted to launch a lab, obtain profile information, update accounts and more. The general format of the request will not change regardless of whether you making a request on the Studio or TMS platforms.

- API Requests are **not** case sensitive.
- Requests can use either the HTTP verb **GET** or **POST**.
    - **GET**: used to request data from a specified resource.
    - **POST**: used to send data to a server to create/update a resource.

    >**NOTE**: The Skillable Studio and TMS APIs have been designed to use the **GET** verb for most API requests. Refer to the specific API endpoint documentation found on the [Connect](https://connect.skillable.com) website for more details.


### API Request Format
API requests use Methods and Parameters in the URL.

A typical API request would look like:

>`https://labondemand.com/api/v3/[method]?[parameters]`

>**INFORMATION**: A request to launch a lab will look like:
>
>`https://labondemand.com/api/v3/launch?labid=100&userid=555&firstname=Joe&lastname=Smith&email=joe.smith@email.com`
>
>**launch** is the **method**.
>
>**labid**, **userid**, **firstname**, **lastname** and **email** are the parameters.
>
>| Parameter | Description |
>|:---|:---|
>| **labid** | This is the lab ID of the lab that is to be launched. The ID can be found in the URL while viewing the lab profile in Skillable Studio. |
>| **userid** | The user ID you use to identify the user in your external system. |
>| **firstname** | The first name of the user that the lab launch will be associated with. |
>| **lastname** | The last name of the user that the lab launch will be associated with. |
>| **email** | The email address on the user profile of the user that the lab launch will be associated with. |

## API Testing Tools

If you want to test your API requests before implementing them, you can do so using an API testing tool. There are many tools available for testing an API request. One of the most common tool used is Postman, and is available on Windows, macOS and Linux (x32/x64).

>**NOTE**: The [Connect](https://connect.skillable.com) website has a **try-it** function in the top-right panel of each API endpoint that provides testing capabilities as well as sample code in various scripting languages and a JSON sample of the resulting output.

You may download a OpenAPI collection of calls directly from the [Connect](https://connect.skillable.com) website. The OpenAPI collection can be imported directly into a Postman Collection for easy access. Be sure to edit the authorization header to include the appropriate API Key.
- [Skillable Studio API](https://connect.skillable.com/lab/overview/)
- [Skillable TMS API](https://connect.skillable.com/tms/overview/)

In this article, we will walk through the steps to use the Studio **/Launch** APi request, to launch a specified lab for a specified user using the **Postman** API Testing tool.

>**NOTE**: Use the Connect website documentation for the [/Launch](https://connect.skillable.com/lab/operation/Launch/) command as reference.

To launch a lab via an API request in Postman:

1. Download [Postman](https://www.postman.com/downloads/) for your operating system.

1. Once the appropriate package for your operating system has been downloaded select it to launch the installer and install Postman.

    - Follow the prompts to complete the Postman installation.

1. When the installation has completed, open Postman.

1. To create a new request, select the **+ (plus)** icon in postman .

    ![Postman - Plus](/images/Postman-Plus.png)

1. A new **Untitled Request** tab will open providing all the fields and attributes necessary to create an API request. Ensure that the HTTP verb field matches the verb indicated in the Connect website documentation. In the case of the **/Launch** command an HTTP verb of **GET** should be selected.

    ![Postman - GET](/images/Postman-Get.png)

1. Copy  the following /Launch API example and paste it into the URL field in Postman.

    >`https://labondemand.com/api/v3/launch?labid=100&userid=555&firstname=Joe&lastname=Smith&email=joe.smith@email.com`

    ![Postman - URL](/images/Postman-URL.png)

    >**NOTE**: You'll see that Postman parses the URL and displays query parameters in the appropriate field in the Value column.
    >
    >![Postman - Query Params](/images/Postman-Query_Params.png)

1. Replace the text in the value column, with data that corresponds to the key column. 

    >| Key | Value |
    >|:---|:---|
    >| **labid** | Replace 100 with the lab ID of the lab that is to be launched. |
    >| **userid** | Set the user id of the user to be used to launch the lab. |
    >| **firstname** | Enter the first name of the user launching the lab. |
    >| **lastname** |  Enter the last name of the user launching the lab. |
    >| **email** | Add the email address of the user launching the lab. |
    >
    >![Postman - Replaced Values](/images/Postman-Replaced_Values.png)

1. In order to properly authenticate the API request the appropriate API Key will be required. Since the **/Launch** API endpoint command is a Studio function you will need the correct API Key from the API Consumer linked to the Lab Series that the Lab Profile was published to. 

    >**NOTE**: If you do not have access to the API Consumer, or can not retrieve the API Key contact the [customer support team](http://www.skillable.com/customer-support/) for assistance.
    >
    >![Studio - API Key](Studio-API_Key.png)

1. In Skillable Studio select the **Copy** link for the API Key you will use to authenticate the **/Launch** API request.

1. In Postman, select the **Authorization** tab, expand the **Type** list and select **API Key**.

    ![Postman - Authorization](/images/Postman-Authorization.png)

1. Paste the **API Key** from the API Consumer in Skillable Studio into the **Value** field in Postman ensuring that the **Add to** field has the value of **Header**.

    ![Postman - API_Key Value](/images/Postman-API_Key_Value.png)

    >**NOTE**: Alternatively, you can select the **Headers** tab, add the key name **api_key** to the **Key** column and paste the **API Key** from the API Consumer in Skillable Studio to the **Value** column.
    >
    >![Postman - API Key Header](/images/Postman-API_Key_Header.png)

1. The API request now has all required information to successfully launch a lab. Select **Send** to submit the API request.

    ![Postman - Send](/images/Postman-Send.png)

1. The lab will now launch for the specified user. Postman will return a JSON response with information about the result of the API request. The information in the response corresponds with the information on the Launch API details documentation. 

    ![Postman - Launch Result](/images/Postman-Launch_Result.png)

    | Field | Value | Description |
    |:---|:---|:---|
    | **Result** | 1 | A value of 1 = Success. |
    | **URL** | Properly formatted Lab Instance URL | • The URL to the lab instance.<br>• Paste this URL into a web browser to view the Lab Client |
    | **LabInstanceID** | 35470327 | The lab instance ID. |
    | **Expires** |1699834075 | When the lab will expire (in Unix epoch time). |
    | **ExpiresTime** | "/Date(1699834075000)/" | when the lab will expire (in Unix epoch time). |
    | **EstimatedReadySeconds** | 60 | The estimated amount of seconds it will take for the lab to be ready for use. |
    | **Error** | null | In the event of an error, this will contain a detailed error message. |
    | **Status** | 1 | A value of 1 = Success. |

## Next Steps

The same API Request can be made in the Connect website using the **Try it** function. We would encourage you to explore this functionality using that tool as well.

>**NOTE**: The **Try it** function only works for production Skillable Studio and TMS environments.

### Reference Materials

The Postman application is a powerful tool for developing API Requests. Refer to their official documentation for more information. 
- [Postman Learning Center](https://learning.postman.com/docs/introduction/overview/)

The Skillable Studio and TMS Restful APIs are fully documented on the Connect website. Refer to this site for information about all the publicly available API endpoints.
- [Skillable Connect](https://connect.skillable.com)
