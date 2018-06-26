# Cloud Slice Quick Start - Setup Cloud Resource Management - Microsoft Azure

> [!ALERT] You are currently viewing the second entry in a series of Quick Starts about Cloud Slice.
>
> To complete this quick start, you must have the following:
> * a Microsoft Azure subscription configured for use with the One Learn Lab on Demand platform (LOD);
> * the subscription ID, tenant name, application ID, and application secret for your Microsoft Azure subscription;
> 
> If you have not yet configured your Microsoft Azure subscription for use with LOD and captured the required information, go through the [Configure your cloud provider for use with LOD](configure-cloud-provider-azure.md) Quick Start.

Estimated time to completion: **5 minutes**.

## Create a Cloud Subscription Pool

All Microsoft Azure subscriptions are added to LOD as part of a Cloud Subscription Pool. This is true even if you only have one subscription. You can add additional subscriptions to your Cloud Subscription Pool later, enabling LOD to automatically load balance lab instances that leverage your Cloud Subscription Pool across a pool of subscriptions.

> [!KNOWLEDGE] Azure subscriptions can have their resource limits increased, but only to a certain maximum value (determined by Microsoft). Subscription pooling load balances all lab instances across all subscriptions in the pool, allowing you to offer labs whose cloud resources (across all lab instances) will collectively exceed the limits of an individual Azure subscription.

1. [] Navigate to the <[Lab on Demand Administration page](/Admin).

1. [] Click <[Cloud Subscription Pools](/CloudSubscriptionPool) on the Cloud Services tile.

    !IMAGE[Cloud Subscription Pools](images/lod-open-cloud-subscription-pools.png)

1. [] Click <[Create Cloud Subscription Pool](/CloudSubscriptionPool/Create) in the upper-right corner of the page. 

    !IMAGE[Create Cloud Subscription Pool](images/lod-create-cloud-subscription-pool.png)

1. [] Enter ++Cloud Slice Resource Manager - Microsoft Azure++ into the **Name** field, and then click **Save**. 

## Add a Cloud Subscription to your Cloud Subscription Pool

1. [] Once you have saved your Cloud Subscription Pool, click **Create Cloud Subscription**.

   !IMAGE[Create a Cloud Subscription](images/create-cloud-subscription-from-subscription-pool.png)

1. [] Enter the following values into the Create Cloud Subscription form:

    |Tab|Field Name|Field Value|
    |--|--|--|
    |**Basic Information**|**Cloud Platform**|Azure|
    ||**Name**|A name of your choosing.|
    ||**Cloud Subscription ID**|The Subscription ID that you recorded when you configured your subscription in the previous Quick Start.|
    |**Authentication**|**Tenant Name**|The Tenant Name that you recorded when you configured your subscription in the previous Quick Start.|
    ||**Application ID**|The Application ID that you recorded when you configured your subscription in the previous Quick Start.|
    ||**Application Secret**|The Application Secret that you recorded when you configured your subscription in the previous Quick Start.|

1. [] Click **OK** to add the Cloud Subscription to your Cloud Subscription Pool.

Now that you have added your Azure subscription into LOD for use with Cloud Slice labs, you're ready to create your first Cloud Slice lab! Click on the link below to go through the next Quick Start where you will create a Cloud Slice lab in 3 steps.

[Create a Cloud Slice lab in 3 steps](create.md)

[Back to top][back-to-top]

[back-to-top]: #cloud-slice-quick-start---setup-cloud-resource-management-azure "Return to the top of the document"
