# Cloud Slice Quick Start - Provision cloud resources in your Cloud Slice lab

> [!ALERT] You are currently viewing the fifth entry in a series of Quick Starts about Cloud Slice.
>
> To complete this quick start, you must have the following:
> * a lab profile that is properly configured as a Cloud Slice lab;
> 
> If you have not yet configured your Lab Profile to be used with Cloud Slice, go through the [Create a Cloud Slice lab in 3 steps](create.md) Quick Start.

Estimated time to completion: **10 minutes**.

When you create a Cloud Slice lab, you can provide students with an empty cloud subscription from which to work, or a cloud subscription that includes resources that were provisioned when the student launched their lab. In order to set up the latter, you must define Cloud Resource Templates within OneLearn Lab on Demand (LOD) that you will later include in one or more lab profiles.

A Cloud Resource Template contains a template document that defines the resources that will be deployed in a Cloud Slice along with some parameter metadata. This metadata configures how parameters within that template document will be exposed to a lab profile. Each cloud platform uses a different template format. In Microsoft Azure, Azure Resource Manager (ARM) templates are used to deploy resources into an Azure subscription. In Amazon Web Services, CloudFormation templates are used. Cloud Deployment Manager templates do the same thing in the Google Cloud Platform. Regardless of which cloud platform you use, you need to create Cloud Resource Templates in LOD if you want to provision cloud resources as part of the lab deployment process.

Let's get started creating your first Cloud Resource Template by selecting the appropriate cloud platform below.

1. [Microsoft Azure](provision-cloud-resources-azure.md)
1. Amazon Web Services (coming soon)
1. Google Cloud Platform (coming soon)

Now that you have added a Cloud Resource Template to your lab, click on the link below to learn how to restrict the types of resources students can create in their Cloud Slice.

[Restrict what users can create in your Cloud Slice lab](restriction-policies.md)
