---
title: "Title of document"
description: "Description of document."
isPublished: false
---

# SAML Integration 

### *SAML Authentication*

As of writing this, B2C does not support Identity Provider (IDP) Initiated SAML authentication.  However, it *does* support Service Provider Initiated SAML authentication.  The following approach will have B2C authenticate with a SAML Identity Provider, then B2C will send an OpenId Connect token to our apps in order to view the use as Authenticated.

- Create a self signed certificate in PowerShell

1. Execute this PowerShell command to generate a self-signed certificate. Modify the -Subject argument as appropriate for your application and Azure AD B2C tenant name. You can also adjust the -NotAfter date to specify a different expiration for the certificate.

```powershell
New-SelfSignedCertificate `
    -KeyExportPolicy Exportable `
    -Subject "CN=yourappname.yourtenant.onmicrosoft.com" `
    -KeyAlgorithm RSA `
    -KeyLength 2048 `
    -KeyUsage DigitalSignature `
    -NotAfter (Get-Date).AddMonths(12) `
    -CertStoreLocation "Cert:\CurrentUser\My"
```

2. Open Manage user certificates > Current User > Personal > Certificates > `yourappname.yourtenant.onmicrosoft.com`.

3. Select the certificate, and then select Action > All Tasks > Export.

4. Select Yes > Next > Yes, export the private key > Next.

5. Accept the defaults for Export File Format.

6. Provide a password for the certificate.

For Azure AD B2C to accept the .pfx file password, the password must be encrypted with the TripleDES-SHA1 option in Windows Certificate Store Export utility as opposed to AES256-SHA256.

- Upload the certificate
You need to store your certificate in your Azure AD B2C tenant.

1. Sign in to the Azure portal.
2. Make sure you're using the directory that contains your Azure AD B2C tenant. Select the Directory + subscription filter in the top menu and choose the directory that contains your tenant.
3. Choose All services in the top-left corner of the Azure portal, and then search for and select Azure AD B2C.
4. On the Overview page, select Identity Experience Framework.
5. Select Policy Keys and then select Add.
6. For Options, choose Upload.
7. Enter a Name for the policy key. For example, SAMLSigningCert. The prefix B2C_1A_ is added automatically to the name of your key.
8. Browse to and select your certificate .pfx file with the private key.
9. Click Create.

Add a new technical profile in the TrustFrameworkExtensions.xml file for the SAML IDP:

- *the following is an example of using LOADTEST AAD as a SAML IDP.  Make sure to reference the correct signing key created in the previous step.*

```xml
    <ClaimsProvider>
      <Domain>https://sts.windows.net/6facea3f-5706-4d16-b76b-cb2b4c7e96ae/</Domain>
      <DisplayName>LoadTest ADFS</DisplayName>
      <TechnicalProfiles>
        <TechnicalProfile Id="LoadTest-SAML2">
          <DisplayName>LoadTest ADFS</DisplayName>
          <Description>Login with your ADFS account</Description>
          <Protocol Name="SAML2"/>
          <Metadata>
            <Item Key="WantsEncryptedAssertions">false</Item>
            <Item Key="WantsSignedAssertions">false</Item>
            <Item Key="RequestsSigned">false</Item>
            <Item Key="ResponsesSigned">false</Item>
            <Item Key="PartnerEntity">https://login.microsoftonline.com/d2b68fa4-10b2-4d1e-bc44-30360174d4fa/federationmetadata/2007-06/federationmetadata.xml?appid=6facea3f-5706-4d16-b76b-cb2b4c7e96ae</Item>
            <Item Key="IdpInitiatedProfileEnabled">true</Item>
          </Metadata>
          <CryptographicKeys>
            <Key Id="SamlAssertionSigning" StorageReferenceId="B2C_1A_SAMLSigningCert"/>
            <Key Id="SamlMessageSigning" StorageReferenceId="B2C_1A_SAMLSigningCert"/>
          </CryptographicKeys>
          <OutputClaims>
            <OutputClaim ClaimTypeReferenceId="issuerUserId" DefaultValue="LoadTestIdp"  PartnerClaimType="identityprovider"/>
            <OutputClaim ClaimTypeReferenceId="givenName" />
            <OutputClaim ClaimTypeReferenceId="surname" />
            <OutputClaim ClaimTypeReferenceId="email"/>
            <OutputClaim ClaimTypeReferenceId="displayName" />
            <OutputClaim ClaimTypeReferenceId="authenticationSource" DefaultValue="socialIdpAuthentication"/>
            <OutputClaim ClaimTypeReferenceId="identityProvider" DefaultValue="LoadTestIdp" />
          </OutputClaims>
          <OutputClaimsTransformations>
            <OutputClaimsTransformation ReferenceId="CreateRandomUPNUserName"/>
            <OutputClaimsTransformation ReferenceId="CreateUserPrincipalName"/>
            <OutputClaimsTransformation ReferenceId="CreateAlternativeSecurityId"/>
            <OutputClaimsTransformation ReferenceId="CreateSubjectClaimFromAlternativeSecurityId"/>
          </OutputClaimsTransformations>
          <UseTechnicalProfileForSessionManagement ReferenceId="SM-Saml-idp"/>
        </TechnicalProfile>
      </TechnicalProfiles>
    </ClaimsProvider>    
```

- Add the SAML session technical profile for session management.

```xml
<ClaimsProvider>
  <DisplayName>Session Management</DisplayName>
  <TechnicalProfiles>
    <TechnicalProfile Id="SM-Saml-idp">
      <DisplayName>Session Management Provider</DisplayName>
      <Protocol Name="Proprietary" Handler="Web.TPEngine.SSO.SamlSSOSessionProvider, Web.TPEngine, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" />
      <Metadata>
        <Item Key="IncludeSessionIndex">false</Item>
        <Item Key="RegisterServiceProviders">false</Item>
      </Metadata>
    </TechnicalProfile>
  </TechnicalProfiles>
</ClaimsProvider>
```

- Add the identity provider to a user journey

If this is a true, Service Provider Initiated scenario where a button to connect to the IDP is needed, then add the *ClaimsProviderSelection* and *ClaimsExchange* to the User Journey that is alreeady in place.  This will enable a custom button for login.

- If an IDP initiated flow is needed, please follow the following instructions.
  - Add a new UserJourney specifically for this SAML technical profile only. This UserJourney can be exactly the same as the usual ones already referenced, except only reference the SAML tech profile.
  - Add a new Relying Party (signup or signin) xml file that references the new UserJourney (xml below)
  - Add a forwarding endpoint in your application's code that will challenge the Policy when coming from the IDP. (code example below)
  ```xml
  <TrustFrameworkPolicy xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.microsoft.com/online/cpim/schemas/2013/06" PolicySchemaVersion="0.3.0.0" TenantId="lodsaccb2c.onmicrosoft.com" PolicyId="B2C_1A_signup_signin_lods_acc_portal_loadtest" PublicPolicyUri="http://lodsaccb2c.onmicrosoft.com/B2C_1A_signup_signin_lods_acc_portal_loadtest" TenantObjectId="e3832d99-3923-4549-a80e-9a867d7e38de">
    <BasePolicy>
      <TenantId>lodsaccb2c.onmicrosoft.com</TenantId>
      <PolicyId>B2C_1A_TrustFrameworkExtensionsLods_acc_Portal</PolicyId>
    </BasePolicy>
    <RelyingParty>
      <DefaultUserJourney ReferenceId="SignUpOrSignInLoadTestSAML" />
      <UserJourneyBehaviors>
        <SingleSignOn Scope="Tenant" EnforceIdTokenHintOnLogout="false" />
      </UserJourneyBehaviors>
      <TechnicalProfile Id="PolicyProfile">
        <DisplayName>PolicyProfile</DisplayName>
        <Protocol Name="OpenIdConnect" />
        <OutputClaims>
          <OutputClaim ClaimTypeReferenceId="displayName" />
          <OutputClaim ClaimTypeReferenceId="givenName" />
          <OutputClaim ClaimTypeReferenceId="surname" />
          <OutputClaim ClaimTypeReferenceId="email" />
          <OutputClaim ClaimTypeReferenceId="objectId" PartnerClaimType="sub" />
          <OutputClaim ClaimTypeReferenceId="identityProvider" />
          <OutputClaim ClaimTypeReferenceId="tenantId" AlwaysUseDefaultValue="true" DefaultValue="{Policy:TenantObjectId}" />
        </OutputClaims>
        <SubjectNamingInfo ClaimType="sub" />
      </TechnicalProfile>
    </RelyingParty>
  </TrustFrameworkPolicy>
  ```

```csharp
        public ActionResult SamlIdpRedirect(string idp)
        {
            if (!Request.IsAuthenticated)
            {
                foreach (Policy policy in B2CPolicies.GetPolicies())
                {
                    if (policy.Name == idp)
                    {
                        HttpContext.GetOwinContext().Authentication.Challenge(
                            new AuthenticationProperties() { RedirectUri = "/Authentication/Callback" }, idp);
                        return null;
                    }
                }
                HttpContext.GetOwinContext().Authentication.Challenge(
                    new AuthenticationProperties { RedirectUri = "/Authentication/Callback" });
                return null;
            }

            return Redirect("/Onboarding");
        }
```
  
    For Identity Providers using Azure, have them use an Enterprise Application in Azure:
  - Modify the following iadd the following Configuration values in the SAML Enterpise application under *Set up Single Sign-On with SAML => Basic SAML Configuration*

        Identifier (Entity ID) = https://{Service Provider B2C Tenant}.b2clogin.com/lodsaccb2c.onmicrosoft.com/B2C_1A_TrustFrameworkBase

        Reply URL (Assertion Consumer Service URL) = https://{Service Provider B2C Tenant}.b2clogin.com/lodsaccb2c.onmicrosoft.com/B2C_1A_TrustFrameworkBase/samlp/sso/assertionconsumer

        Sign on URL (different in each lods application) = http://portal.learnondemandsystems.com/Authentication/SamlIdpRedirect?idp=B2C_1A_signup_signin_LOD-ACC_veritas

        Logout Url = https://{Service Provider B2C Tenant}.b2clogin.com/lodsaccb2c.onmicrosoft.com/B2C_1A_signup_signin_lods_acc_portal_veritas/samlp/sso/logout

    Make sure the Following User Attributes are configured:
    
        Givenname = user.givenname
        Surname = user.surname
        Emailaddress = user.mail
        Name = user.userprincipalname
        Unique User Identifier = user.userprincipalname

    Hand the following URL's to the B2C Service Provider (LODS).  These values can vary, the following is simply an examle of your specific values:
        
        SAML Single Sign-On Service URL: https://login.microsoftonline.com/d2b68fa4-10b2-4d1e-bc44-30360174d4fa/saml2

        SAML Entity ID: https://sts.windows.net/d2b68fa4-10b2-4d1e-bc44-30360174d4fa/

        Sign-Out URL: https://login.microsoftonline.com/d2b68fa4-10b2-4d1e-bc44-30360174d4fa/saml2