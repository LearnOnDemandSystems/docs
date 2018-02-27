# Cloud Slice Quick Start - Add Subscription Into LOD

> [!ALERT] You are currently viewing the second entry in a series of Quick Starts about Cloud Slice.
>
> To complete this quick start, you must have the following:
> * a cloud subscription configured for use with the One Learn Lab on Demand platform (LOD);
> * the cloud subscription ID, tenant name, application ID, and application secret for your subscription;
> 
> If you have not yet configured your cloud subscription for use with LOD and captured the required information, go through the [Configure Subscription Quick Start](configure-subscription.md).

Estimated time to completion: **5 minutes**.

## Create a Cloud Subscription Pool

All cloud subscriptions are added to LOD as part of a Cloud Subscription Pool. This is true even if you only have one subscription. By using subscription pooling, you can add additional subscriptions to your Cloud Subscription Pool later, enabling LOD to automatically load balance lab instances across a pool of subscriptions.

> [!KNOWLEDGE] Subscription pooling allows you to offer labs in which students collectively create more cloud resources than a single cloud subscription can support. Cloud subscriptions can have their resource limits increased to a certain maximum value (determined by the cloud service provider). Subscription pooling allows for individual subscription resource limits to be exceeded by running labs.

1. [] Navigate to the <[Lab on Demand Administration page](/Admin).

1. [] Click on <[Cloud Subscription Pools](/CloudSubscriptionPool) on the Cloud tile.

    !IMAGE[Cloud Subscription Pools](images/lod-open-cloud-subscription-pools.png)

1. [] Click <[Create Cloud Subscription Pool](/CloudSubscriptionPool/Create) in the upper-right corner of the page. 

    !IMAGE[Create Cloud Subscription Pool](images/lod-create-cloud-subscription-pool.png)

1. [] Enter a name for your subscription pool into the **Name** field, and then click **Save**. 

## Add a Cloud Subscription to your Cloud Subscription Pool

1. [] Once you have saved your Cloud Subscription Pool, click **Create Cloud Subscription**.

    !IMAGE[Create a Cloud Subscription](images/create-cloud-subscription-from-subscription-pool.png)

1. [] Enter the following values into the Create Cloud Subscription form:

    |Tab|Field Name|Field Value|
    |--|--|--|
    |**Basic Information**|**Name**|A name of your choosing.|
    ||**Subscription ID**|The Subscription ID that you recorded when you configured your subscription in the previous Quick Start.|
    |**Authentication**|**Tenant Name**|The Tenant Name that you recorded when you configured your subscription in the previous Quick Start.|
    ||**Application ID**|The Application ID that you recorded when you configured your subscription in the previous Quick Start.|
    ||**Application Secret**|The Application Secret that you recorded when you configured your subscription in the previous Quick Start.|

1. [] Click **OK** to add the cloud subscription to your Cloud Subscription Pool.

Now that you have added your subscription into LOD for use with Cloud Slice labs, you're ready to create your first Cloud Slice lab! Click on the link below to go through the next Quick Start where you will create a Cloud Slice lab in 3 steps.

[Creating a Cloud Slice lab in 3 steps](creating-a-cloud-slice-lab-in-3-steps.md)
