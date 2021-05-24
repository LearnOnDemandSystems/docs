---
title: "Title of document"
description: "Description of document."
isPublished: false
---

# B2C SAML Integration 

## What is SAML?
Secure Assertion Markup Language (SAML). 

SAML is an open standard that allows Identity Providers (IDP) and Service Providers (SP) to send authorization credentials to each other, to authenticate a user. This allows using one set of credentials to log in to multiple services and/or websites.

  > If you think of Single Sign On (SSO) as "One set of credentials for many services", think of SAML as the glue that connects them together. 


<!--
Learn on Demand Systems prefers using OpenID Connect alongside OAuth 2.0. However, if you prefer to use SAML, we can authenticate with SAML. 

SAML is a secure way to authenticate if OpenID Connect and OAuth 2.0 are not being used. 

OpenID Connect and OAuth 2.0 way of doing things is LODS' preferred medium for auth, but if cannot do those because you need the particular type security that SAML provides, we can accommodate that. 

We prefer OpenID Connect alongside OAuth 2.0
-->

* [Create Azure Enterprise App](#create-azure-enterprise-app)
  + [Modify Application Configuration](#modify-application-configuration)
  + [User Attributes](#user-attributes)
  + [SAML Signing Certificate](#saml-signing-certificate)
  + [Application Setup with Learn on Demand Systems](#application-setup-with-learn-on-demand-systems)

## Create Azure Enterprise App 

If your Identity Provider uses Azure, you must create an Enterprise Application in Azure.

1. In Azure, **navigate to the Enterprise Applications section**. You can get to this by searching for _Enterprise Application_ in the top search bar in Azure.

1. Select **New Application** in the upper-left corner of the page. 

1. **WHAT IS THE NAME OF THE APPLICATION THAT THEY SHOULD USE?**

1. Navigate to **Set up Single Sign-On with SAML**, then select **Basic SAML Configuration**.

### Modify Application Configuration 

1. Modify the configuration of your application and **add the following Configuration values** in your SAML Enterprise application.

    |Name      |Example      | 
    |----------|:-------------|
    | Identifier (Entity ID) |  `https://{Service Provider B2C Tenant}.b2clogin.   com/lodsaccb2c.onmicrosoft.com/B2C_1A_TrustFrameworkBase` |
    | Reply URL (Assertion Consumer Service URL) |`https://{Service Provider B2C     Tenant}.b2clogin.com/lodsaccb2c.onmicrosoft.com/B2C_1A_TrustFrameworkBase/    samlp/sso/assertionconsumer`
    | Sign on URL (different in each lods application) |`http://portal.   learnondemandsystems.com/Authentication/SamlIdpRedirect? idp=B2C_1A_signup_signin_LOD-ACC_customer-name` |  
    | Logout Url |`https://{Service Provider B2C Tenant}.b2clogin.com/lodsaccb2c.onmicrosoft.com/B2C_1A_signup_signin_lods_acc_portal_customer-name/samlp/sso/logout` |  

### User Attributes 

1. Make sure the following **User Attributes are configured** in your application:

    |Attribute Name      |Attribute Syntax      | 
    |----------|:-------------|
    |Givenname|`user.givenname`|
    |Surname|`user.surname`|
    |Emailaddress|`user.mail`|
    |Name|`user.userprincipalname`|
    |Unique User Identifier|`user.userprincipalname`|

### SAML Signing Certificate

  Need more information about this topic.

1. Do this 
1. Do that
### Application Setup with Learn on Demand Systems

1. **Provide Learn on Demand Systems the following URLs**. The values in these URLs will vary. The following is an example of how these may look. 

    |Value Name      |Example     | 
    |----------|:-------------|
    |SAML Single Sign-On Service URL|`https://login.microsoftonline.com/   d2b68fa4-10b2-4d1e-bc44-30360174d4fa/saml2`|
    |SAML Entity ID|`https://sts.windows.net/d2b68fa4-10b2-4d1e-bc44-30360174d4fa/`|
    |Sign-Out URL|`https://login.microsoftonline.com/    d2b68fa4-10b2-4d1e-bc44-30360174d4fa/saml2`|
