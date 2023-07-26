---
title: "Auto-register Lab User Devices and Store Cookie and IP Address in Database"
description: "Automatically registers lab user devices and stores a cookie in their browser upon the initial lab launch."
isPublished: true
---

# Auto-Register Lab User Devices and Store Cookie and IP Address in DB

This feature enhances the lab user experience by automating device registration and improving authentication convenience. With this update, lab users will now have the option to have their devices automatically registered when launching a lab for the first time, eliminating the need for repetitive 2-factor authentication.

## Table of Contents

* [Introduction](#introduction)


* [Simplified Device Registration](#simplified-device-registeration)

* [Hassle-free Authentication](#hassle-free-authentication)

* [Centralized Device Registration](#centralized-device-registration)

* [Flexible Device Registration Rules](#flexible-device-registration-rules)

## Introduction

This is a new enhancement to our lab platform that will make your experience even more seamless and convenient. Introducing the auto-registration feature for lab user devices, along with the storage of a cookie and IP address in our secure database.

As a lab user, we understand that having to perform 2-factor authentication every time you launch a lab can be time-consuming. With our latest update, you can now have your device automatically registered when you launch a lab for the first time, eliminating the need for repetitive authentication steps.

## How it Works:

### Device Registration on Initial Lab Launch

When you launch a lab for the first time, the following steps will occur:

* A cookie will be placed in your browser to register your device.
* Your device's IP address and location data will be securely saved in our      database, but the cookie will only contain a unique GUID identifier, not your IP or geolocation data.

### Launching Labs without 2-Factor Authentication

Once your device is registered with the cookie, you can launch other labs from the same location without having to go through 2-factor authentication repeatedly. This means a smoother and quicker lab experience for you.

### Clearing Cookies and Re-Launching a Lab

In case you clear your browser cookies, or if you want to register a new device, follow these steps:

* After clearing the cookies in your browser, the next time you launch a lab, you will be prompted for cookie consent again.
* A new cookie will be placed in your browser, providing a fresh registration for your device. This new cookie will also contain a unique GUID identifier.


## Simplified Device Registeration

When you launch a lab for the first time, we will securely save your IP address and location data in our database. This information will enable faster lab launches in the future, saving you time and effort.

## Hassle-free Authentication

Upon your initial lab launch, a cookie will be placed in your browser to register your device. This cookie contains a unique identifier (GUID) associated with your registered device. Rest assured, the cookie only stores the GUID and does not include any personally identifiable information, such as your IP address or geolocation.

## User Consent

We prioritize your privacy and data security. Therefore, we will always seek your consent before placing the registration cookie in your browser. Your control and peace of mind are of utmost importance to us.

##  Centralized Device Registration

To efficiently manage device registration information, we have implemented a new table in our database. This table will store the following details securely:

1. IP address: The IP address used during the initial lab launch.

1. Location data: Geolocation information associated with your IP address.

1. Cookie GUID: The unique identifier generated for your registered device.

## Flexible Device Registration Rules

Device registration will be governed by our rules engine, allowing your organization's administrators to enable or disable this feature as needed. 
 
We understand that different organizations have varying security requirements, and we want to provide you with the flexibility to customize the device registration process accordingly.

We believe that these enhancements will significantly improve your lab user experience by reducing the authentication overhead and enabling faster lab access.

If you have any questions, concerns, or feedback, our dedicated support team is here to assist you. Your satisfaction and success are our top priorities, and we are committed to continuously improving our services to meet your needs.

Thank you for choosing our lab platform, and we look forward to providing you with an even better experience!
