---
title: "Enforce 2FA When IP Address or Location Changes"
description: "Enforce Two-Factor Authentication (2FA) when a lab user's IP address or location changes from their initial device registration."
isPublished: true
---

# Enforce 2FA When IP Address or Location Changes

## Table of Contents

[Introduction](#introduction)

[How It Works](#how-it-works)
*   [No Cookie Installed](#no-cookie-installed)
*   [IP Address Change](#ip-address-change)
*   [Location Proximity Change](#location-proximity-change)

[Configurable Verification Time](#configurable-verification-time)

[Important Notes](#important-notes)

## Introduction

Welcome to our enhanced security feature that enforces two-factor authentication (2FA) when there are changes in your IP address or location from the initial registration of your device. This additional layer of protection ensures that your lab sessions are secure and prevents unauthorized access to your account.


As a lab user, you may occasionally access our platform from different locations or IP addresses. To enhance security and protect your account, we have introduced a feature that triggers 2FA when any of the following conditions are met:

1.  There is no cookie installed on your device.
1.  The IP address is different from the one used during your initial registration.
1.  The location proximity has changed from your initial device registration.

By implementing these security measures, we aim to provide a safer environment for all our users and protect your valuable lab data.

## How It Works:

When you attempt to launch a lab session, our system will automatically check for the conditions mentioned above. If any of these conditions are met, you will be prompted to go through the 2FA process before gaining access to the lab. Let's explore each condition in more detail:

### No Cookie Installed:

If there is no valid cookie installed on your device, you will be required to perform 2FA every time you launch a lab session. This ensures that even if someone else gains access to your device, they won't be able to launch labs without going through the additional security step.

### IP Address Change:

If the IP address detected during your lab launch attempt differs from the one used during your initial registration, our system will recognize this as a potential security risk. As a result, you will be prompted to complete the 2FA process to verify your identity.

### Location Proximity Change:

We understand that you may travel or use different networks, which can lead to changes in location proximity. However, if such changes are significant compared to your initial device registration, the system will flag it as a security concern. To ensure the security of your account, you will be required to perform 2FA before proceeding with the lab launch.

## Configurable Verification Time

In case you need to verify your identity through email, we provide the ability to configure the time you have to complete the 2FA process. This time frame will be specified in the email sent to you. If you fail to complete the verification within the specified time, your lab instance will be canceled for security reasons.

## Important Notes

* Instances should not be able to go from a "pending verification" state to a "saved" state without successful verification. This means that you cannot access the lab until the 2FA process is completed.
* In the event that you encounter any issues during the 2FA process or need assistance, please reach out to our support team for immediate help.
* Two factor authentication will be governed by our rules engine, allowing your organization's administrators to enable or disable this feature as needed.
We understand that different organizations have varying security requirements, and we want to provide you with the flexibility to utilize the 2FA feature accordingly.



With the implementation of the "Enforce 2FA when IP address or location changes" feature, we prioritize your account's security and protect your valuable lab data from potential threats. 

By requiring 2FA in specific scenarios, we can ensure that only authorized users can access lab sessions and provide you with a safer and more secure environment. If you have any questions or feedback, please feel free to contact our support team. Thank you for using our platform!
