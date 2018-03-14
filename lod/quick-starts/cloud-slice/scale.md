# Set up Cloud Slice lab for Scale

> [!ALERT] You are currently viewing the eighth entry in a series of Quick Starts about Cloud Slice.
>
> This guide is **optional**, but it is recommended to avoid running into resource limitations during the use of a Cloud Slice lab. 
>
> To complete this quick start, you must have the following:
> * a cloud subscription configured for use with the One Learn Lab on Demand platform (LOD);
>
> * a Cloud Subscription Pool created in LOD that contains the cloud subscription(s) you will use with your Cloud Slice;
>
> * a lab profile that is properly configured to be a Cloud Slice lab;
>
> If you have not yet configured your cloud subscription for use with LOD, go through the [Configure Subscription Quick Start](configure-subscription.md).
>
> If you have configured your cloud subscription properly but have not added your subscription into LOD for use with Cloud Slice labs, go through the [Add Subscription into LOD Quick Start](add-subscription-into-lod.md)
>
> If you have not yet configured your lab profile to be a Cloud Slice lab, go through the [Creating a Cloud Slice lab Quick Start](create.md)

By default, cloud subscriptions come pre-configured with relatively low resource capacity limitations. These limitations are necessary for cloud platform providers to ensure that they are able to meet the demand of all customers, and they also help customers manage cost by preventing something or someone from creating too many of a certain type of resources. 

> [!KNOWLEDGE] Resource quota increase requests may take extended periods of time for the cloud provider to fulfill, with times varying from hours to days, depending on the resources requested and the region the resources will be consumed in. 

To properly deal with these limits when creating one or more Cloud Slice labs that may need to scale to a large number of learners, it is imperative that lab authors determine the maximum number of resources that are simultaneously required within a single Cloud Subscription Pool and then scale the Cloud Subscriptions within that Cloud Subscription Pool accordingly well in advance of training events or classes to avoid running into resource limitations during the use of a Cloud Slice lab.

Select one of the following cloud platforms to learn how you can request for resource quotas to be increased on that platform. If the platform listed is not a hyperlink, that platform is not yet supported for Cloud Slice labs.

1. [Microsoft Azure](azure-scale.md)
1. Amazon Web Services (coming soon)
1. Google Cloud Platform (coming soon)

Click the link below to learn how to create a Cloud Subscription Pool in Lab on Demand.

[Create a Cloud Subscription Pool in Lab on Demand](/lod/create-cloud-subscription-pool.md)
 
