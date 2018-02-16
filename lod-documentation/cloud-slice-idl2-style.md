# Cloud Slice Guide

This guide will walk you through how to create a lab that provisions dynamically created cloud subscriptions to each student using that lab. These subscriptions may contain one or more cloud resources (virtual machines, networks, databases, websites, etc.). Each student will have access to the cloud subscription that is provided to them, along with the resources contained within that subscription, for the duration of the lab. The combination of one of these subscriptions with the resources contained within it is collectively referred to as a Cloud Slice.

There are two ways that cloud resources are made available within a Cloud Slice: as managed cloud resources and as unmanaged cloud resources.

Managed cloud resources are cloud resources that are more tightly integrated with the OneLearn Lab on Demand (LOD) user experience. They do not require the definition of Cloud Resource Templates to deploy them into a Cloud Slice, and instead use a more traditional user interface to configure the cloud resource options. At this time there are only two types of managed cloud resources: virtual machines and virtual networks. Managed virtual machines can also be displayed to students as tiles within the LOD UI, allowing students to easily view and interact with the desktop of those machines from directly within LOD.

Unmanaged cloud resources are cloud resources that are created during the deployment of a Cloud Slice as part of a Cloud Resource Template. Unmanaged cloud resources may also include any cloud resources that are created directly by a student or an event within a Cloud Slice. These resources are not directly integrated with the LOD user experience. To view and interact with unmanaged cloud resources, students must use the appropriate portal for the cloud platform that they are using in the lab.

The Cloud Slice feature allows you to create labs in the cloud that are pre-configured with compute, networking, and storage cloud resources, and/or that allow students to create their own compute, networking, and storage cloud resources as part of the steps they must complete within that lab. Before adding Cloud Slice support in your labs, there are several tasks you must perform. These tasks are listed below and any optional ones are appropriately marked with "(Optional)". As you work through these tasks, you can use the list below to navigate to the one you are currently working on and then return to the list to continue with another task.

> [!NOTE] You can use the checkboxes below to help keep track of your Cloud Slice setup configuration. 

1. [] [Enable Cloud Slice support on the cloud platform of your choice](#enable-cloud-slice-support-in-your-cloud-platform).
1. [] [Configure resource capacity limitations to allow your labs to scale](#configure-resource-capacity-limitations).
1. [] [(Optional) Upload any virtual hard disks that you want to use as a template into the appropriate storage container in your cloud platform](#upload-template-vhds-into-your-cloud-platform).
1. [] [Setup your cloud subscription(s) in OneLearn Lab on Demand](#setup-your-cloud-subscriptions-in-onelearn-lab-on-demand).
1. [] [(Optional) Create a Cloud Resource Template for each template that you want to use during the deployment of your lab(s)](#create-cloud-resource-templates-in-onelearn-lab-on-demand).
1. [] [Add Cloud Slice support to your lab profile(s\)](#add-cloud-slice-support-to-your-lab-profiles).
1. [] [(Optional) Add a Cloud Exam to your lab profile(s) if you want the labs scored](#add-a-cloud-exam-to-your-lab-profiles).

===

## Enable Cloud Slice support in your cloud platform

To expose the Cloud Slice capability to your lab(s), you must first grant the OneLearn Lab on Demand (LOD) platform access to the cloud platform that your students will be using within your lab(s). The steps required to grant this access depend on the cloud platform that you are working with.

> [!NOTE]
> #### Lab scalability in a cloud platform
>
> LOD will automatically load balance Cloud Slices across the pool of subscriptions that Cloud Slice labs are configured to use. To take advantage of this load balancing functionality so that your cloud resources are managed properly, you may have to repeat several tasks on each cloud platform where you will be provisioning Cloud Slices. You also need to ensure that any limits on resources that are imposed by your cloud platform are configured appropriately to support your lab requirements. The combination of load balancing and appropriately configured resource limits are essential to allow your Cloud Slice labs to scale to support all students registered for your labs. See the documentation specific to the cloud platform you are using for more details on how to set that up.

Select one of the following cloud platforms to learn how you can grant the required access to that platform. If the platform listed is not a hyperlink, that platform is not yet supported for Cloud Slice labs.

1. [Microsoft Azure](microsoft-azure/cloud-slice-setup.md)
1. Amazon Web Services (coming soon)
1. Google Cloud Platform (coming soon)

[Back to to Table of Contents][back-to-top]

===

## Configure resource capacity limitations

By default, cloud subscriptions come pre-configured with relatively low resource capacity limitations. These limitations are necessary for cloud platform providers to ensure that they are able to meet the demand of all customers, and they also help customers manage cost by preventing something or someone from creating too many of a certain type of resources. Resource quota increase requests may take extended periods of time for the cloud provider to fulfill, with times varying from hours to days, depending on the resources requested and the region the resources will be consumed in. To properly deal with these limits when creating one or more Cloud Slice labs that may need to scale to a large number of learners, it is imperative that lab authors determine the maximum number of resources that are simultaneously required within a single Cloud Subscription Pool and then scale the Cloud Subscriptions within that Cloud Subscription Pool accordingly well in advance of training events or classes to avoid running into resource limitations during the use of a Cloud Slice lab.

Select one of the following cloud platforms to learn how you can request for resource quotas to be increased on that platform. If the platform listed is not a hyperlink, that platform is not yet supported for Cloud Slice labs.

1. [Microsoft Azure](microsoft-azure/azure-capacity-limitations.md)
1. Amazon Web Services (coming soon)
1. Google Cloud Platform (coming soon)

[Back to to Table of Contents][back-to-top]

===

## Upload template VHDs into your cloud platform

> [!ALERT] *This is optional and should only be done if you want to include managed virtual machines that are running in your cloud platform within your Cloud Slice lab(s).*

If you want your students to be able to interact with the cloud virtual machines included in your Cloud Slice lab directly from within the OneLearn Lab on Demand (LOD) user experience, you need to include managed cloud virtual machines in your lab. Managed cloud virtual machines are provisioned as part of the Cloud Slice deployment process. They are dynamically created in the cloud platform you are using from a template virtual hard disk that is stored in the master cloud subscription in your subscription pool. The virtual hard disk file that they will access when launched is stored inside of the Cloud Slice. The specific location of the template virtual hard disk and the deployed virtual hard disk are defined using the optional settings on the Storage tab in the master subscription (see the next section, Create a Cloud Subscription...).

To prepare for the deployment of managed virtual machines in your Cloud Slice lab, you must upload the template virtual hard disk(s) that will be used by your managed virtual machines into your cloud platform. Select the cloud platform you are using with your lab from the list below to learn how to upload template virtual hard disk(s) into that cloud platform. If the platform listed is not a hyperlink, managed virtual machines are not yet supported on that platform.

1. [Microsoft Azure](microsoft-azure/cloud-slice-upload-template-vhds.md)
1. Amazon Web Services (coming soon)
1. Google Cloud Platform (coming soon)

[Back to to Table of Contents][back-to-top]

===

## Setup your cloud subscription(s) in OneLearn Lab on Demand

Once you have enabled Cloud Slice support in the cloud platform of your choice (see previous section), you need to create a Cloud Subscription Pool that contains one or more cloud subscriptions in OneLearn Lab on Demand (LOD). Each cloud subscription that you will be managing with this platform must be added to a Cloud Subscription Pool.

Cloud Subscription Pools are used by labs to provision Cloud Slices in a load balanced fashion. As users launch a Cloud Slice lab, they will be given access to a slice of one of the available subscriptions in the subscription pool associated with the lab. Even if you are only using one managed Cloud Subscription, you still must create a Cloud Subscription Pool. This setup allows you to add additional subscriptions to your subscription pool later, at which point you will gain the benefits of the load balancing support that the platform provides.

Load balancing evenly distributes Cloud Slices across subscriptions in a Cloud Subscription Pool. When a user launches a Cloud Slice lab, they are provided with a slice of whichever subscription in the pool has the lightest load (the lowest number of users) at the time. This load balancing distributes resource load across all of the subscriptions in the pool, which can help keep resource counts lower, avoiding any maximum limits that the subscriptions in the pool have on specific resource types. 

The first Cloud Subscription you add to a Cloud Subscription Pool is the master Cloud Subscription for that pool. The master subscription is the subscription that is used when creating managed virtual machines in Cloud Slices from template virtual hard disk files that are in the master subscription. We'll discuss how to set up your template virtual hard disks in more detail in the next section.

To add a Cloud Subscription Pool to OneLearn Lab on Demand (LOD), perform the following steps:

1. Navigate to the <a href="https://labondemand.com" target="_blank">OneLearn Lab on Demand portal</a> and sign in.

1. Open the **Cloud Subscription Pools** section on the Cloud Services tile.

   ![Open the Cloud Subscription Pools section in OneLearn Lab on Demand](images/lod-open-cloud-subscription-pools.png)

1. Click **Create Cloud Subscription Pool** to create a new cloud subscription pool in LOD.

   ![Click on Create Cloud Subscription Pool link](images/lod-create-cloud-subscription-pool.png)

1. Assign values to **Name**, **Organization**, and any optional fields you want to use. 

   |Field Name|Description|
   |----|----|
   |Name&nbsp;(required)|The name of the Cloud Subscription Pool being created.|
   |Description|The Description should describe the capabilities or the intent of the Subscription Pool.|
   |Organization&nbsp;(required)|The organization in LOD where the managed Cloud Subscription pool will be used.|
   |Enabled|This checkbox determines if the Cloud Subscription Pool is enabled or disabled.|
   |Block&nbsp;lab&nbsp;launches...|This checkbox determines if lab launches should be blocked if no subscriptions are available.|
   |Custom&nbsp;subscription&nbsp;unavailable&nbsp;message|This message will be presented to users if they try to launch a lab and a subscription is unavailable. If this field is blank, the default message will be used.|

   ![Assign default values to the Cloud Subscription Pool](images/create-cloud-subscription-pool.png)

1. Click **Save** to create the Cloud Subscription Pool.

1. On the next page, click **Create Cloud Subscription**.

   ![Click the Add Subscription link on the Cloud Subscriptions tab](images/create-subscription.png)

1. Populate the following required fields in the **Create Cloud Subscription** form:

   |Tab|Field Name|Description|
   |----|----|----|
   |**Basic Information**|**Name**|The name you want to use to identify your managed cloud subscription.|
   ||**Subscription&nbsp;Id**|The identifier that uniquely identifies the cloud subscription you are managing on the cloud platform where you have enabled Cloud Slice support.|
   ||**Organization**|The organization in LOD where the managed Cloud Subscription will be used.|
   ||**Cloud&nbsp;Subscription&nbsp;Pool**|If the Cloud Subscription Pool is not already set, choose the Cloud Subscription Pool that you created earlier in this section.|
   |**Authentication**|**Tenant&nbsp;Name**|The name of the tenant used for deployment of Cloud Slices in your cloud service.|
   ||**Application&nbsp;Id**|The identifier that uniquely identifies the client used to manage your cloud service subscription.|
   ||**Application&nbsp;Secret**|The secret used to authenticate your client id in your cloud service subscription.|

   You may also provide values for the following optional fields:

   |Tab|Field Name|Description|
   |----|----|----|
   |**Basic Information**|**Description**|Text used to describe the managed Cloud Subscription that you are setting up.|
   ||**Owner&nbsp;Name**|The name of the the Cloud Subscription Owner|
   ||**Owner&nbsp;E-mail**|The e-mail address of the the Cloud Subscription Owner|
   ||**Expires&nbsp;After**|The date that the Cloud Subscription will expire.|
   ||**Enabled**|Indicates whether or not the managed Cloud Subscription is enabled.|

   If you are using managed virtual machines in your cloud platform, you may also provide values for the following fields:

   |Tab|Field Name|Description|
   |----|----|----|
   |**Storage**|**Template&nbsp;Storage&nbsp;Account**|The name of a storage account inside of the Template Storage Resource Group where the template VHDs may be found. This should either be provided to you or, if you set it up yourself, this is the name of the storage account that you created in the previous task.|
   ||**Template&nbsp;Storage&nbsp;Resource&nbsp;Group**|The name of a Cloud Resource Group in the managed Cloud Subscription that contains template VHDs that you would like to copy into a lab during its deployment. This should either be provided to you or, if you set it up yourself, this is the name of the resource group that you created in the previous task.|
   ||**Template&nbsp;Storage**|The name of a container in the Template Storage Account where the template VHDs may be found. This should either be provided to you or, if you set it up yourself, this is the name of the template VHD container that you created in the previous task.|
   ||**Instance&nbsp;Storage&nbsp;Account**|The name of a storage account inside of the Instance Storage Resource Group where template VHDs will be copied when a Cloud Slice lab configured to use those template VHDs is deployed. This should either be provided to you or, if you set it up yourself, this is the name of the storage account that you created in the previous task. You may use the same storage account as the one used for the Template Storage Account field.|
   ||**Instance&nbsp;Storage&nbsp;Resource&nbsp;Group**|The name of a Cloud Resource Group in the Cloud Slice where template VHDs will be copied when a Cloud Slice lab configured to use those template VHDs is deployed. This should either be provided to you or, if you set it up yourself, this is the name of the resource group that you created in the previous task. You may use the same resource group as the one used for the Template Storage Resource Group field.|
   ||**Instance&nbsp;Storage**|The name of a container in the Instance Storage Account where template VHDs will be copied when a Cloud Slice lab configured to use those template VHDs is deployed. This should either be provided to you or, if you set it up yourself, this is the name of the template VHD container that you created in the previous task.|

1. Click **OK** to create the Cloud Subscription. The Cloud Subscription will be saved and associated with the Cloud Subscription Pool that was created during previous steps.

1. If desired, repeat the three previous steps for each managed Cloud Subscription that you want to add to the pool.

#### Below are some screenshots showing what the Cloud Subscription might look like when you have finished.

![Finished Basic Information Tab](images/cloud-subscription-basic-info-tab-finished.png)

![Cloud Subscription Authentication](images/cloud-subscription-authentication-tab-finished.png)

![Storage tab](images/cloud-subscription-storage-tab-finished.png)

![Finished Cloud Subscription Pool](images/cloud-subscription-finished.png)

[Back to to Table of Contents][back-to-top]

===

## Create Cloud Resource Templates in OneLearn Lab on Demand

> [!ALERT] *This is optional and should only be done if you want to include provisioned resrouces in a Cloud Resource Template within your Cloud Slice lab(s).*

When you create a Cloud Slice lab, you can provide students with an empty cloud subscription from which to work, or a cloud subscription that includes resources that were provisioned when the student launched their lab. In order to set up the latter, you must define Cloud Resource Templates within OneLearn Lab on Demand (LOD) that you will later include in one or more lab profiles.

A Cloud Resource Template contains a template document that defines the resources that will be deployed in a Cloud Slice along with some parameter metadata. This metadata configures how parameters within that template document will be exposed to a lab profile. Each cloud platform uses a different template format. In Microsoft Azure, Azure Resource Manager (ARM) templates are used to deploy resources into an Azure subscription. In Amazon Web Services, CloudFormation templates are used. Cloud Deployment Manager templates do the same thing in the Google Cloud Platform. Regardless of which cloud platform you use, you need to create Cloud Resource Templates in LOD if you want to provision cloud resources as part of the lab deployment process.

Before you get started creating Cloud Resource Templates, you need at least one cloud platform template that you want to use in a Cloud Slice lab. If you haven't already identified templates that you want to use in your lab, select the cloud platform you are using with your lab from the list below to learn how to find templates for that cloud platform. If the platform listed is not a hyperlink, Cloud Resource Templates are not yet supported on that platform.

1. [Microsoft Azure](microsoft-azure/cloud-slice-find-resource-templates.md)
1. Amazon Web Services (coming soon)
1. Google Cloud Platform (coming soon)

Once you have identified one or more cloud platform template documents you want to use, you can create a Cloud Resource Template in LOD by logging on to the Lab on Demand portal and completing the following steps:

1. Click **Cloud Resource Templates** in the Cloud Services tile.

   ![Click on Cloud Resource Templates](images/lod-open-cloud-resource-templates.png)

1. In the Cloud Resource Templates view, click **Create Resource Template** to create a new Cloud Resource Template.

   ![Click Create Resource Template to create a new Cloud Resource Template](images/lod-create-cloud-resource-template.png)

1. In the Create Resource Template view, populate the following required fields in the **Create Resource Template** form:

   | Tab                   | Field Name                               | Description                              |
   | --------------------- | ---------------------------------------- | ---------------------------------------- |
   | **Basic Information** | **Name**                                 | The name you want to use to identify your cloud resource template. |
   |                       | **Use External Template** with **Template URL** | If you are referencing an external template document, check the Use External Template field and provide the URL to the external document in the Template URL field. |
   |                       | **Template**                             | If you are *not* referencing an external template document, paste the contents of your template into the Template field and leave the Use External Template field unchecked. |

   You may also provide values for the following optional fields:

   | Tab                   | Field Name               | Description                              |
   | --------------------- | ------------------------ | ---------------------------------------- |
   | **Basic Information** | **Description**          | Text used to describe the Cloud Resource Template that you are setting up. |
   |                       | **Organization**         | The organization in LOD where the Cloud Resource Template will be used. |
   |                       | **Enabled**              | Indicates whether or not the Cloud Resource Template is enabled. |
   |                       | **Required For Display** | When checked, indicates that the resource(s) provisioned by the template must be deployed before the lab will be made available to a student. When left unchecked, the resources will be provisioned in the background while the student begins their lab. |

   Below is a screenshot showing what the Basic Information tab might look like when you have finished.

   ![Create Cloud Resource Template - Basic Information Tab](images/lod-cloud-resource-template-basic-information.png)

1. If your Cloud Resource Template has parameters whose values you want displayed to students, or whose values must be set when the Cloud Resource Template is added to a lab profile, click the **Parameters** tab. From this tab you can either add individual template parameters by clicking the **Add Template Parameter** button, or you can add a set of template parameters by clicking the **Import From Json** button to import a JSON document that defines the parameters. In either case, you will end up with one or more parameters defined for your Cloud Resource Template. Each parameter has the following properties:

   | **Property Name**      | **Description**                          |
   | ---------------------- | ---------------------------------------- |
   | **Name**               | The name of the parameter. This must exactly match the name of a parameter that is defined in the template document (external or pasted into the basic tab). |
   | **Display Name**       | The display name of the parameter. This is the name that will be displayed to students using the Cloud Slice lab in the LOD Cloud Resources tab. |
   | **Description**        | The description of the parameter. This is displayed in a lab profile when a lab author reviews the parameters available to a resource template they are adding to a lab. |
   | **Required**           | When checked, a value must be provided for this parameter in each lab profile where the Cloud Resource Template is used. |
   | **Display To Student** | When checked, the parameter display name and value will be displayed to students in the Cloud Resources tab in the LOD UI. |

   Here is what the Parameters tab might look like once you have it configured for a Cloud Resource Template:

   ![Create Cloud Resource Template - Parameters Tab](images/lod-cloud-resource-template-parameters.png)

   If you want to remove a parameter that you mistakenly added, you can click the **Delete** button to the right of the parameter you want to remove.

1. Once you have configured your Cloud Resource Template, click **Save** to save it in LOD.

[Back to to Table of Contents][back-to-top]

===

## Add Cloud Slice Support to your lab profile(s)

Once you have configured your cloud platform to allow OneLearn Lab on Demand (LOD) to create Cloud Slices, configured one or more Cloud Subscription Pools, and optionally loaded template virtual hard disks into your cloud platform and/or loaded Cloud Resource Templates into the LOD platform, you are ready to add Cloud Slice support to your lab profile. If you feel you are missing any of the items that were just mentioned that you want to use in your lab, please review previous sections in this document to see if you missed any steps.

If you have not created a lab profile yet, create a lab profile now by clicking **Create Lab Profile** in the Lab Profiles tile. Otherwise, open the lab profile to which you want to add Cloud Slice support.

![Create a new lab profile](images/lod-create-lab-profile.png)

In a lab profile, there are many configurable options; however, only a small set of those options are directly related to Cloud Slice support. Once you have your lab profile opened, review the following options to ensure that you have them configured properly for your Cloud Slice lab.

### Virtualization Platform - Basic Information tab

The **Virtualization Platform** setting defines the platform used to launch managed virtual machines. If you have template virtual hard disks loaded into your master Cloud Subscription that you want provisioned and launched when the lab is launched, select the cloud platform where those template files are located (e.g. Azure). If you instead want your students to use virtual machines running in a Learn on Demand Systems datacenter while working with their Cloud Slice, select the virtualization platform that will be used to launch those VMs (e.g. Hyper-V or vSphere). If you don't have any managed virtual machines in your lab, select None.

![Selecting the virtualization platform for managed virtual machines in a lab profile](images/lod-lab-profile-virtualization-platform.png)

> #### Best Practice: Setup support contacts for your Cloud Slice labs
>
> You should make sure that you have set the **Owner Name** and **Owner E-mail** fields correctly for this lab so that the right person can be contacted if there are problems with this lab during a scheduled class.

### Virtual Machines tab

If you have virtual machines that you are launching in your cloud platform when this lab is provisioned, open the **Virtual Machines tab** and click **Create Virtual Machine** to create a virtual machine profile for the template virtual hard disk in your cloud platform. This will open the Create Virtual Machine Profile view. When creating a virtual machine profile for a virtual machine provisioned in a cloud platform, there are only a few differences from the standard virtual machine profile creation process:

1. On the **Basic Information** tab, ensure that the **Platform** field is set to the cloud platform where the virtual machine will be provisioned.
1. In the **Machine Type** field on the same tab, select the size of the VM that you want provisioned when the VM is created. When choosing a VM size, pay close attention to the cost and the number of cores required for that VM. You must ensure that you have enough resources available in your subscription for all students taking your lab to provision VMs of the size you choose.
1. On the **Hard Disks** tab, click **Add Hard Disk** and type in the name of the template virtual hard disk file that you uploaded into your cloud subscription that you want to use as a template when provisioning this virtual hard disk.
1. On the **Network Adapters** tab, if you want a network adapter provisioned for the virtual machine, click **Add Network Adapter**, give that network adapter a name in the **Name** field, and configure the other options you want for your network adapter.

Those settings aside, the remaining settings for the virtual machine profile should be familiar to you if you have already created virtual machine profiles in LOD. Once you have finished creating the virtual machine, click **Save** to save it and then return to the **Create Lab Profile** view.

### Orchestration  - Cloud tab

To enable Cloud Slice support in your lab profile, open the **Cloud** tab, and in the **Orchestration** section, click **Choose** and select the Cloud Subscription Pool that will be used for your Cloud Slice lab. Once you have finished that, you should see something that looks like this:

![Choose Cloud Subscription Pool in Lab Profile](images/lod-create-lab-profile-subscription-pool.png)

### Cloud Resource Groups - Cloud tab

If you want cloud resources other than managed virtual machines to be provisioned as part of your Cloud Slice lab, you need to define one or more Cloud Resource Groups where those resources will be provisioned, and you need to add the Cloud Resource Template(s) that you want provisioned as part of your lab to the appropriate Cloud Resource Group(s).

The first step is to define a Cloud Resource Group. Click **Add Cloud Resource Group** to add a resource group to your Cloud Slice. This will show you a form that allows you to define how the resource group should be created. The fields on that form are defined as follows:

| Field Name             | Description                              |
| ---------------------- | ---------------------------------------- |
| **Name Prefix**        | This is the prefix that will be applied to the resource group when it is created. All resource groups are created using the name prefix, followed by the lab instance id, and then the lab profile id. |
| **Restriction Policy** | Some cloud platforms support using a restriction policy to limit the operations that can be performed within a Cloud Slice subscription. These cloud platforms typically include a tool to define the restriction policy for a subscription. For example, in Microsoft Azure, you can browse into the Subscriptions service, select a subscription, click Policies, and then click Add to create a restriction policy that you can copy and paste into this field in your lab profile. You can learn more about Azure Resource Manager Policies by reviewing this <a href="https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-manager-policy" target="_blank">external document</a>. As a best practice, you should apply a restriction policy that limits what students can create/manage to properly control your subscription costs and keep students focused on the work required for them to complete their lab. |
| **Region**             | Indicates the region where the resource group will be created. |
| **Visible To Student** | When checked, the resource group will be visible to the student on the Cloud Resources tab in the LOD UI. You can also select the access that the student will have to the resource group. Reader = read-only access; Contributor = read-write access; Owner = read-write access with the ability to manage permissions. |
| **Show Login Link**    | This option only appears for resource groups that are visible to the student. When checked, a login link will appear on the same tile as this resource group when it is displayed in the LOD UI. |
| **Login Link Label**   | This option only appears for resource groups that are visible to the student, and only when the Show Logon Link is checked. It defines a label that will be displayed next to the login link that is displayed on the resource group tile. |
| **Login Url**          | This option only appears for resource groups that are visible to the student, and only when the Show Logon Link is checked. It defines the URL that the login link links to from the resource group tile. |

Once you have configured a resource group that will be provisioned with your Cloud Slice lab, if you want additional resources deployed in that resource group you can add a Cloud Resource Template to that resource group. To do this, click **Add Template**, use the Choose Cloud Resource form to find the Cloud Resource Template you want to add, and click **OK**. If the Cloud Resource Template you choose has parameters, an Edit Parameters window will appear allowing you to provide values for required parameters and for optional parameters as well if you want to.

With a Cloud Resource Group added and an optional Cloud Resource Template added to that resource group, you should see something that looks like the following in your lab profile:

![Add Cloud Resource Group in lab profile](images/lod-create-lab-profile-resource-group.png)

Use the steps above to add as many Cloud Resource Groups and Cloud Resource Templates as you need in your Cloud Slice lab.

> #### Best Practice: Provide support contact information in the Errata
>
> You should share contact information for the person who should be contacted if subscription resources run out for a lab in the Errata for the lab. This will give students and instructors an easier method of recovery if all resources in a cloud subscription are consumed before a student tries to launch the lab.
>

[Back to to Table of Contents][back-to-top]

===

## Add a Cloud Exam to your lab profile(s)

If you want to add an exam to a Cloud Slice lab, the process is the same as adding an exam to a lab that does not include cloud resources. The only difference is in how you enable scoring of the Cloud Slice itself. To add an exam to the lab profile, open the **Exam** tab, check **Has Exam**, and select **Automated** in the **Scoring Type** field.

Once you have indicated you want an automated exam in your lab, you can add scoring items that can be used to score a Cloud Slice by doing the following:

1. Click **Add Scoring Item** in the **Scoring Items** section.
1. Optionally assign a different value to the **Score Value** field if you want that scoring item to be worth more than 1 point.
1. In the **Type** field, select **Cloud Subscription Scoring** from the list of options.
1. In the **Scoring Script** field, enter the PowerShell script you want to use to determine whether the student completed the work required to receive the value for that scoring item. This script will be run automatically against each student's Cloud Slice subscription. To include values relative to the specific Cloud Slice lab being scored, create a `param` block at the top of the script and include the parameters you want to reference from within your script. The parameters you can choose from are listed below.

### Parameters optionally sent to Cloud Slice PBT scoring scripts

| Parameter Name            | Sample Value                          |
| ------------------------- | ------------------------------------- |
| $TemplateName             | Complex network with multiple subnets |
| $TemplateId               | 15                                    |
| $LabProfileId             | 18122                                 |
| $LabInstanceId            | 294781                                |
| $SubscriptionName         | My Subscription                       |
| $SubscriptionId           | f162ec58-a25b-4996-9e47-277951ae52d1  |
| $TemplateStorageContainer | template-vhds                         |
| $InstanceStorageContainer | deployed-vhds                         |
| $SourceStorageAccountName | cloudslicestorage                     |
| $DestStorageAccountName   | cloudslicestorage                     |
| $PoolId                   | -1                                    |
| $StartTime                | 2017-08-10T18:32:03.26Z               |
| $ExpirationTime           | 2017-08-11T04:38:01.79Z               |
| $UserFirstName            | Jeff                                  |
| $UserLastName             | Smith                                 |
| $UserId                   | 12873                                 |
| $Username                 | jsmith                                |
| $UserEmail                | jsmith@example.com                    |

The screenshot below shows what adding a scoring item looks like. Note how the lab instance ID can be used by the script by including it in the `param` statement.

![Adding a cloud subscription scoring item](images/lod-lab-profile-add-cloud-scoring-item.png)

This screenshot shows you what you might see once you have added a scoring item to an exam for a Cloud Slice lab:

![Cloud Slice lab profile with cloud scoring item added](images/lod-lab-profile-with-cloud-scoring-item.png)

[Back to to Table of Contents][back-to-top]

[back-to-top]: #cloud-slice-guide "Return to the top of the document"
