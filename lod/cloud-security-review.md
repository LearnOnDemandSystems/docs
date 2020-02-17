## Cloud Security Review.
Lab profiles that use cloud orchestration are subject to a cloud security review. Until a review is completed, the lab cannot be launched via TMS, API, LTI, or other methods outside of the LOD interface.


### How to Request a Security Review

When creating or editing a lab profile that uses cloud orchestration, the lab profile will display a notice, showing that the lab requires a cloud security review.
![Pending Status](images/required-security-review.png)

Once the lab is ready to publish, marking the lab profile as complete on the Basic Information tab will generate a notification to Learn on Demand Systems staff, signaling that the lab and [Access Control Policy (ACP)](https://docs.learnondemandsystems.com/lod/create-a-restriction-policy.md) are ready for review.
Once the review has been completed, the lab profile will show either approved or denied along with a note containing the reasoning. 

![Approved Status](images/cloud-security-approved.png)

You may manually request a cloud security review using the link next to the envelope icon in the Security Review area. This link will appear when the status is Pending, Expired, or Denied.

![Request Security Review](images/request-security-review.png)


- #### AWS
    Anytime a student is required to build cloud resources in AWS, these resources will need to be explicitly allowed in an Access Control Policy. Once an Access Control Policy is added to the lab profile, a security review will be required.

- #### Azure
    When using Azure, lab profiles containing a resource group and a User account with Contributor or Owner roles will be required to undergo a security review.

### Security Review Revocation. 

A lab profile will need to undergo an additional security review if the underlying ACP or Cloud Resource Template is changed or removed from the lab profile. When making a change that will impact lab profile(s), the following message will be displayed.

![](images/cloud-security-review.png)

When making changes to an ACP or RT, any lab profiles that use those will have their security review approval revoked and will need to undergo a security review again by LODS staff. 

### Alternatives to Security Review.

 In lieu of a security review, lab authors may choose to use a preconfigured Access Control Policy. To find policies that have already been approved, use the filter _Does Not_ - _Require Security Review_. These policies will also show in search results when enabling the _No_ output option, under _Requires Security Review_.

![ACP shows no security review required.](images/security-review-required.png)

If a student doesn't need to create any new resources after the lab is built, omitting the access control policy will allow the lab to be published and launched without undergoing a security review. To remove the ACP on Labs utilizing Azure, the user permissions must be set to reader.
