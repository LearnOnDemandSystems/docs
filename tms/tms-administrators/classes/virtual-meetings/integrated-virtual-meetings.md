---
title: "How can I set up an integrated virtual meeting host?"
isPublished: true
---

# How do I set up integrated virtual meeting hosts?

We have an integration in place for two virtual meeting platforms: Adobe Connect and Zoom. Integrating a virtual meeting host into the TMS makes scheduling easier. Scheduling a class in the TMS automatically creates a meeting in your virtual meeting host. It also gives each student links to class recordings directly in their enrollment. This gives your students and instructors one place to open their virtual meeting, launch all their class activities, and access any class recordings. 

Please note, we have no control over changes made in Adobe Connect or Zoom or outages on their platforms. We are only providing a service to allow meetings to be created and opened within the TMS platform.

## Adobe Connect Integrated Meeting Host Setup

Once you have an Adobe Connect contract you will need to send LODS the following information. 

1.	The **URL** for your Adobe Connect account
1.	The **username** and **password** for your account; the account must have full Administrator account permissions
1.	The number of **licenses** purchased
1. The amount of time before class starts and after class ends for your instructor to be able to launch into the meeting. If this is not specified, it will default to 60 minutes before class starts and zero minutes after the class session ends.
1. The amount of time before class starts and after class ends for your students to be able to launch into the meeting. If this is not specified, it will default to 15 minutes before class starts and zero minutes after the class session ends.
1.	Gather this information and send a request to LODS. [Click here to request a TMS/Adobe Connect integration.](https://supportrequest.learnondemandsystems.com/form-4500904/support-request) 

## Zoom Integrated Meeting Host Setup

To integrate Zoom into the TMS, you will need a licensed Zoom account, set up a JSon Web Token (JWT) in Zoom, and send some information to LODS for set up in the TMS. Once you have decided on a Zoom plan and have an account, you will need to set up a JWT app, this lets Zoom and the TMS communicate. Follow the instructions below to create the JWT app and send us the API key, API secret, and the email of a licensed user. 

Go to the [Zoom App Marketplace.](https://marketplace.zoom.us/) 

1.	From the **Develop** menu, select **Build App**
1.	This opens a **Choose your app type** page, on the **JWT** tile click **Create**.
1.	Fill out the information to create the app
1.	To set up Zoom, we will need your **API Key** and **API Secret**. We also need the **email of a licensed Zoom user** to verify the set up.  [Click here to request a TMS/Zoom integration.](https://supportrequest.learnondemandsystems.com/form-4500904/support-request) 
  

The integration will be broken if you regenerate the API Secret after the integration is set up.

### Additional Resources

[Virtual Meeting Host Comparison](https://docs.learnondemandsystems.com/tms/tms-administrators/classes/virtual-meetings/vmh-comparison.md)
