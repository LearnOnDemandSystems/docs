# Lab on Demand LTI 1.3 Integration

In Learning Tools Interoperability (LTI), the learning management system (LMS) being used by a student is referred to as the **Platform**, and the external tool or service that is being integrated into that learning management system is referred to as the **Tool**. This LTI support is what allows external course authors to integrate rich Lab on Demand content directly into their learning solution. Since LTI is a standard protocol, Lab on Demand content can be integrated into any learning system that supports the LTI standard as an LTI Consumer.

To integrate content from an **Tool** into an **Platform**, the following information is required:

The Tool will be responsible for supplying the following.
- **LTI 1.3 Login / Connect Url** - this URL is used for initially authenticate between the Tool and Platform.
- **LTI Redirect URL / Launch URL** - this URL serves two purposes. It is used to validate the information passed between the provider and consumer. It also serves as the target URL or launch URL for the labs. You may need to enter this twice into two separate fields depending on the Platform you are using.
- **JWKS URL / PEM Public Key** - Lab On Demand supports LTI 1.3 authentication by issuing either a JWKS or PEM formatted public key. Please let us know which Platform you are using if you are unsure which authentication method to request.

Once the above information is entered into an Platform, the following information will be returned by the Platform and should be shared with Lab On Demand admin.

- **Client ID** - this is used to identify the Platform in the Lab On Demand tool.
- **Issuer** - this is the base URL of the Platform and is found on the certificate used to sign LTI request. 
- **Auth URL** - the URL used during the OIDC authorization call.
- **JWKS URL** - the endpoint hosting the JWKS used for signing LTI request.
- **Access Token URL** - the endpoint used to exchange the requested OAuth2 access token during authorization.

[LTI 1.3 Scoring](#lti-1.3-scoring)

[Integrating Content](#integrating-content)

[LOD LTI Implementation Details](#lod-lti-implementation-details)

## LTI 1.3 Scoring

Labs initialized through the platform and running in the Lab on Demand tool may return a score to the platform upon completion.
The scoring can be broken up into two categories, Per Exam level scoring and Per Activity level scoring. Please be sure to specify if you are interested in implementing either scoring option when requesting an API LTI consumer.

- **Per Exam Level Scoring** - when using per exam level scoring, the number of points earned during a lab is returned as a total number of points.
- **Per Activity Level Scoring** - when using per activity level scoring, the results will be more granular. A line item score will be returned for each activity configured in the lab profile. Additionally, the  total number of points earned will also be sent.

>[!knowledge] An optional feature can send the output returned by each individual activity. Please let us know if you are interested in this feature when requesting an API LTI consumer.

More information on configuring Activity Based Assessments and Performance-based Testing can be found below.

- [Activity Based Assessments ](activities.md)
- [Performance-based Testing](pbt/overview.md#pbt)


## LOD LTI Implementation Details

### LTI Launch Specification

For lab launches, Lab On Demand supports LTI Resource Link Launch Requests 

[Learning Tools Interoperability Core Specification](https://www.imsglobal.org/spec/lti/v1p3/#resource-link-launch-request-message)

#### Required Values

- https://purl.imsglobal.org/spec/lti/claim/message_type - will include “LtiResourceLinkRequest”

- https://purl.imsglobal.org/spec/lti/claim/version - must be set to “1.3.0”

- https://purl.imsglobal.org/spec/lti/claim/deployment_id - this value is provided by the platform after initial integration.

- https://purl.imsglobal.org/spec/lti/claim/target_link_uri - default for Lab on Demand is "https://lod-lti-api.labondemand.com/LtiV13/Launch". Use this value unless given something different. 

- https://purl.imsglobal.org/spec/lti/claim/resource_link - this will include and ID, usually a course/module and activity identifier configured by the platform. May also include the title of the activity. 

- User Identity Claims - Valid Identity Claims include sub, given_name, family_name, name, and email. We require only the subject identifier (sub) as outlined in [OpenID Connect Core 1.0](https://openid.net/specs/openid-connect-core-1_0.html#SubjectIDTypes). Anonymous launches are not supported.

-  https://purl.imsglobal.org/spec/lti/claim/roles - Must be declared but can be blank.

- https://purl.imsglobal.org/spec/lti/claim/custom - The format of this claim is typically in the format "labid": "15922" where "15922" is the lab profile ID to be launched.

> ### Looking for more information?
>
> If you're looking for more LTI 1.3 integration information? Please contact us via your sales representative or [open a support ticket.](https://www.learnondemandsystems.com/customer-support/)

[Back to top](#Lab-on-Demand-LTI-1.3-Integration)