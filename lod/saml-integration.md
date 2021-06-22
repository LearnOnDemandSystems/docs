---
title: "B2C SAML Integration"
description: "Configure an Azure Enterprise Application for SAML-based Single Sign-On."
isPublished: true
---

# B2C SAML Integration 

## What is SAML?
Secure Assertion Markup Language (SAML). 

SAML is an open standard that allows Identity Providers (IDP) and Service Providers (SP) to send authorization credentials to each other, to authenticate a user. This allows using one set of credentials to log in to multiple services and/or websites.

  > If you think of Single Sign On (SSO) as "One set of credentials for many services", think of SAML as the glue that connects them together. 

- [B2C SAML Integration](#b2c-saml-integration)
  - [What is SAML?](#what-is-saml-)
  - [Create Azure Enterprise App](#create-azure-enterprise-app)
  - [Modify Application Configuration for Single Sign On with SAML](#modify-application-configuration-for-single-sign-on-with-saml)
    - [Basic SAML Configuration](#basic-saml-configuration)
    - [User Attributes and Claims](#user-attributes-and-claims)
    - [Application Setup with Learn on Demand Systems](#application-setup-with-learn-on-demand-systems)

## Create Azure Enterprise App 

If your Identity Provider uses Azure, you must create an Enterprise Application in Azure.

1. In Azure, **navigate to the Enterprise Applications section**. You can get to this by searching for _Enterprise Application_ in the top search bar in Azure.

1. Select **New application** in the upper-left corner of the page. 

1. Select **Create your own application**. 

1. Provide a **name** for your application. 

1. Select the option to **Integrate any other application you don't find in the gallery (non-gallery)**. 

1. Select **Create**. 

## Modify Application Configuration for Single Sign On with SAML

1. **Navigate to your application**, if you are not there already. 

1. Select **Set up single sign on**. 

1. Select **SAML**. 

### Basic SAML Configuration

1. Select the **Edit** button on the **Basic SAML Configuration** section.

1. **Add the following Configuration values**:

    |Name      |Description|Example      | 
    |----------|:-------------|:-------------|
    |Unique Identifier (Entity ID) |This value must be unique across all applications in your Azure Active Directory tenant.|  https://{Service Provider B2C Tenant}.b2clogin.com/lodsaccb2c.onmicrosoft.com/B2C_1A_TrustFrameworkBase|
    | Reply URL (Assertion Consumer Service URL) |The reply URL is where the application expects to receive the authentication token. This is also referred to as the "Assertion Consumer Service" (ACS) in SAML.|https://{Service Provider B2CTenant}.b2clogin.com/lodsaccb2c.onmicrosoft.com/B2C_1A_TrustFrameworkBase/samlp/sso/assertionconsumer
    | Sign on URL |This URL contains the sign-in page for this application that will perform the service provider-initiated single sing-on. |http://{application URL}/Authentication/SamlIdpRedirect?idp={policy name} |  
    |Relay State | Leave this blank. Configuring Relay State is not neccessary for this configuration. | N/A
    | Logout Url |This URL is used to send the SAML Logout response back to the application.| https://{Service Provider B2C Tenant}.b2clogin.com/{Service Provider B2C Tenant}.onmicrosoft.com/{Policy Name}/samlp/sso/logout |  

### User Attributes and Claims

1. Ensure the following **User Attributes are configured** 

    |Attribute Name      |Attribute Syntax      | 
    |----------|:-------------|
    |Givenname|`user.givenname`|
    |Surname|`user.surname`|
    |Emailaddress|`user.mail`|
    |Name|`user.userprincipalname`|
    |Unique User Identifier|`user.userprincipalname`|

1. If these are not configured, select the **Edit** button on the **User Attributes and Claims** section, and modify each value. 

### Application Setup with Learn on Demand Systems

1. **Provide Learn on Demand Systems the following URLs**. The values in these URLs will vary. The following is an example of how these may look. 

    |Value Name      |Example     | 
    |----------|:-------------|
    |SAML Single Sign-On Service URL|https://login.microsoftonline.com/{Tenant ID}/saml2|
    |SAML Entity ID|https://sts.windows.net/{Tenant ID}/|
    |Sign-Out URL|https://login.microsoftonline.com/{Tenant ID}/saml2|
