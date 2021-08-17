---
title: "SSO Authentication via Azure Active Directory and SAML"
description: "Configure an Azure Active Directory Enterprise Application for SAML-based Single Sign-On."
isPublished: true
---

# SSO Authentication via Azure Active Directory and SAML

The following is an example of how to configure your Azure AD to support LODS SSO authentication via SAML.  While this example is for Azure AD, any SAML Identify Provider should work.

LODS supports SAML authentication.  SAML is an open standard that allows Identity Providers (IdP) and Service Providers (SP) to send authorization credentials to each other, to authenticate a user. This allows using one set of credentials to log in to multiple services and/or websites.

- [Central Authentication SAML Integration](#central-authentication-saml-integration)
  - [Create an Azure Active Directory Enterprise App](#create-an-azure-active-directory-enterprise-app)
  - [Modify Application Configuration for Single Sign On with SAML](#modify-application-configuration-for-single-sign-on-with-saml)
    - [Basic SAML Configuration](#basic-saml-configuration)
    - [User Attributes and Claims](#user-attributes-and-claims)
  - [Application Setup with Learn on Demand Systems](#application-setup-with-learn-on-demand-systems)

## Create an Azure Active Directory Enterprise App 

If your Identity Provider is Azure, you must create an Enterprise Application in Azure Active Directory.

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

1. **Add the following Configuration values for each platform**. 
    >[!note] Replace the following information in the URL before configuring these values:
    >
    >    - **Lab on Demand** 
    >      - Sign on URL: replace `{customer}` with your customer name.
    >    - **Training Management System**: 
    >      - Sign on URL: replace `{TMS-Site}` with your TMS site. 
    >      - Logout URL: replace `{TMS-Site}` with your TMS site.
    >    - **Portal**:
    >      - Sign on URL: replace `{customer}` with your customer name.

    ### **Lab on Demand (LOD)**
    |Name|Description|Example | 
    |:---|:---|:---|
    |Unique Identifier (Entity ID) |This value must be unique across all applications in your Azure Active Directory tenant.| https://learnondemandsystemsb2c.b2clogin.com/learnondemandsystemsb2c.onmicrosoft.com/B2C_1A_TrustFrameworkExtensions_LOD-PROD |
    | Reply URL (Assertion Consumer Service URL) |The reply URL is where the application expects to receive the authentication token. This is also referred to as the "Assertion Consumer Service" (ACS) in SAML.|https://learnondemandsystemsb2c.b2clogin.com/learnondemandsystemsb2c.onmicrosoft.com/B2C_1A_TrustFrameworkExtensions_LOD-PROD/samlp/sso/assertionconsumer
    | Sign on URL |This URL contains the sign-in page for this application that will perform the service provider-initiated single sing-on. |https://labondemand.com/AuthenticationProvider/SamlIdpRedirect?idp=B2C_1A_signup_signin_LOD_SAML-PROD-{Customer} |  
    |Relay State | Leave this blank. Configuring Relay State is not neccessary for this configuration. | N/A
    | Logout Url |This URL is used to send the SAML Logout response back to the application.| https://learnondemandsystemsb2c.b2clogin.com/learnondemandsystemsb2c.onmicrosoft.com/B2C_1A_TrustFrameworkExtensions_LOD-PROD/samlp/sso/logout |  

    ### **Training Management System (TMS)**
    |Name|Description|Example | 
    |:---|:---|:---|
    |Unique Identifier (Entity ID) |This value must be unique across all applications in your Azure Active Directory tenant.| https://learnondemandsystemsb2c.b2clogin.com/learnondemandsystemsb2c.onmicrosoft.com/B2C_1A_TrustFrameworkExtensions_TMS |
    | Reply URL (Assertion Consumer Service URL) |The reply URL is where the application expects to receive the authentication token. This is also referred to as the "Assertion Consumer Service" (ACS) in SAML.|https://learnondemandsystemsb2c.b2clogin.com/learnondemandsystemsb2c.onmicrosoft.com/B2C_1A_TrustFrameworkExtensions_TMS/samlp/sso/assertionconsumer
    | Sign on URL |This URL contains the sign-in page for this application that will perform the service provider-initiated single sing-on. |https://{TMS-Site}.learnondemand.net/User/CurrentTraining (or any designated landing page) |  
    |Relay State | Leave this blank. Configuring Relay State is not neccessary for this configuration. | N/A
    | Logout Url |This URL is used to send the SAML Logout response back to the application.| https://{TMS-Site}.learnondemand.net/User/Logout |  

    ### **Portal**
    |Name|Description|Example | 
    |:---|:---|:---|
    |Unique Identifier (Entity ID) |This value must be unique across all applications in your Azure Active Directory tenant.| https://learnondemandsystemsb2c.b2clogin.com/learnondemandsystemsb2c.onmicrosoft.com/B2C_1A_TrustFrameworkExtensions_portal |
    | Reply URL (Assertion Consumer Service URL) |The reply URL is where the application expects to receive the authentication token. This is also referred to as the "Assertion Consumer Service" (ACS) in SAML.|https://learnondemandsystemsb2c.b2clogin.com/learnondemandsystemsb2c.onmicrosoft.com/B2C_1A_TrustFrameworkExtensions_TMS/samlp/sso/assertionconsumer
    | Sign on URL |This URL contains the sign-in page for this application that will perform the service provider-initiated single sing-on. |https://portal.learnondemandsystems.com/Authentication/SamlIdpRedirect?idp=B2C_1A_signup_signin_TMS_SAML-PROD-{Customer} |  
    |Relay State | Leave this blank. Configuring Relay State is not neccessary for this configuration. | N/A
    | Logout Url |This URL is used to send the SAML Logout response back to the application.| https://portal.learnondemandsystems.com/Authentication/LogOut |  

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
