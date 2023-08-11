---
title: "Email Verification Workflow for 2FA"
description: "An enhanced email verification workflow for Two-Factor Authentication (2FA) on our platform."
isPublished: true
---

# Email Verificaton Workflow for 2FA

## Table of Contents

[Introduction](#introduction)

[Email Verification Process](#email-verification-process)

*   [Email Notification](#email-notification)
*   [Email Verification Link](#email-verification-link)
*   [Device Verification](#device-verification)
*   [Callback Response](#callback-response)
*   [Lab Access](#lab-access)

[Important Notes](#important-notes)

## Introduction

We are excited to introduce our new Email Verification Workflow for Two-Factor Authentication (2FA), which enhances the security of your lab experience while providing a seamless verification process. With this feature, you can verify your device through an email verification link, and once verified, you won't be prompted for 2FA again as long as you use the same device and location. This guide will walk you through the steps to complete the email verification process.

## Email Verification Process

### Email Notification

When 2FA is enforced on your lab launch, you will see a message on the lab loading screen indicating that your account needs to be verified. Additionally, an email will be sent to the email address associated with your account. The email will contain the following information:

    Subject: Device Verification Required - Skillable Lab

    Hello [Username],

    You are required to verify your device before continuing your lab. Please click the link below to verify your device. You can then return to your lab.

    [Verification URL]

    Thank you,
    Skillable

    Please do not reply to this email.

### Email Verification Link

To initiate the verification process, click on the "Verification URL" link provided in the email. The link will lead you to a verification page.

### Device Verification

Upon clicking the verification link, our system will generate a unique token for verification. The link will contain a GUID identifier, securely linking the verification request to your user account.

### Callback Response

After you click the verification link, it will call back to our system, which will then validate the token. If the GUID exists in our database and the record is valid (not expired or already validated), the verification process will be marked as successful.

### Lab Access

Once your device is successfully verified, you will receive a notification that your verification was successful. The lab state will change to "Building," and you can continue with your lab experience without being prompted for 2FA again, as long as you are using the same device and location.

## Important Notes

* The email verification link is valid for a limited time to ensure security. If the link expires, you can request a new verification link by launching the lab again.
* For added security, please do not share the verification link with others, as it is intended for your use only.

* Two factor authentication will be governed by our rules engine, allowing your organization's administrators to enable or disable this feature as needed.
We understand that different organizations have varying security requirements, and we want to provide you with the flexibility to utilize the 2FA feature accordingly.


Our Email Verification Workflow for 2FA ensures that your lab experience remains secure and hassle-free. By verifying your device through the email link, you can enjoy uninterrupted access to your labs without repeated 2FA prompts.

If you have any questions or encounter any issues during the verification process, please don't hesitate to contact our support team for assistance.

Thank you for choosing Skillable Labs, and we hope you have a fantastic lab experience!