# OneLearn Lab on Demand Help

Welcome to the OneLearn Lab on Demand platform!

## Authoring lab instructions

- [**IDLx Lab Development Best Practices**](/lod/idlx-development-best-practices.md) - This document covers best practices for IDLx lab development, to assist in creating a rich learning experience.

- [**IDLx Authoring Guide**](/guides/idl2/idlv2-authoring-guide-and-best-practice.md) - This document covers Markdown, lab instruction editor interface, uploading files into your lab, and many other topics to assist with authoring your IDLx lab.

- [**IDLx Lab Interface Overview**](/lod/idlx-lab-interface-overview.md) - This document is an overview of the lab interface, and an explanation of the various functions available. 

- [**IDLx Instruction Editor Overview**](/lod/idlx-lab-instruction-editor.md) - This document is an overview of the lab instruction editor, and an explanation of the various functions available. 

- [**Markdown user Guide**](/guides/idl2/markdown-user-guide.md) - This document covers Markdown in detail, including syntax for all supported Markdown.

- [**IDLx Activities**](/lod/activities.md) - Activities fall into two broad categories: Questions and Automated. Questions are simply multiple choice or short answer questions. Automated Activities have a script configured to run against a cloud subscription or Windows-based virtual machines running on Hyper-V in the lab.

- [**IDLx Lab Variables**](/lod/variables.md) - Variables are used to store information that is not known at the time of lab instruction authoring. Variables store information and then that information can be recalled in later lab steps using a Replacement Token. This document covers how to use Variables in your IDLx lab.

- [**Replacement Tokens**](/lod/feature-focus/cloud-resource-templates/replacement-tokens.md) - Replacement tokens use the syntax &commat;lab.replacementTokenName. You can see the list of all &commat;lab replacement tokens available to your lab by simply editing the instructions, and clicking on the &commat;lab button.

- [**IDL (legacy)**](/guides/idl/idlv3.md) - Legacy IDL Studio authoring guide and best practices

## Cloud

* [**Create a Cloud Subscription**](/lod/create-cloud-subscription.md) - Create a Cloud Subscription to use cloud-based labs with Lab on Demand

* [**Create a Cloud Subscription Pool**](/lod/create-cloud-subscription-pool.md) - Create a Cloud Subscription Pool to load balance labs across your cloud subscriptions.

* [**Capacity Limitations**](/guides/cloud-slice/microsoft-azure/azure-capacity-limitations.md) - Azure resource capacity limitations, how to avoid them, and what to do if you run into capacity limitations with your Azure subsription.

* [**Resource Providers**](/guides/cloud-slice/microsoft-azure/azure-resource-providers.md) - Azure Resource Providers, and how to get the resources you need for your lab.

* [**Resource Templates**](/guides/cloud-slice/microsoft-azure/cloud-slice-find-resource-templates.md) - How to find Azure Resource Manager templates for use with Microsoft Azure.

* [**Create a Restriction Policy**](/lod/create-a-restriction-policy.md) - Create a Cloud Restriction Policy

* [**Create a Resource Template and Resource Group Configuration**](/lod/create-a-resource-template-and-configure-it-into-a-resource-group.md) - Create a Resource Template and Configure it into a Resource Group

* [**Resource Template - Best Practices**](/lod/feature-focus/cloud-resource-templates/recommendations-and-best-practices.md) - Recommendations and best practices for Azure Resource templates

* [**Microsoft Azure Cloud Slice Setup Guide**](/guides/cloud-slice/cloud-slice.md) - Comprehensive setup guide for configuring a Cloud Slice lab with Lab on Demand and Microsoft Azure. For a more guided walkthrough, please see our [Cloud Slice Quickstart](#building-your-first-cloud-slice-lab)

* [**Replacement Tokens**](/lod/feature-focus/cloud-resource-templates/replacement-tokens.md) - Replacement tokens use the syntax &commat;lab.replacementTokenName. You can see the list of all &commat; replacement tokens available to your lab by simply editing the instructions, and clicking on the &commat;lab button.

## Lab on Demand

* [**Create a Lab Profile**](/lod/feature-focus/lab-profiles/create.md) - Lab profile creation, and explanation of lab profile configuration.

* [**Create a Lab Series**](/lod/create-lab-series.md) - Lab Series creation.

* [**Create Removeable Media**](/lod/create-removeable-media.md) - Removeable Media to be used with virtual machines.

* [**Custom CSS**](/lod/feature-focus/lab-profiles/custom-css.md) - Customize CSS of your lab.

* [**Differencing Disk Rollback**](/lod/differencing-disks.md) - Rollback differencing disks to a previous configuration or add differencing disks back to a disk chain after they have been removed.

* [**Introduction to Lab on Demand UI**](/lod/feature-focus/lod-experience.md) - Explanation of Lab on Demand UI.

* [**GitHub Integration**](/guides/github-integration/github-integration.md) - Integrate lab instructions from a GitHub repository into your lab profile.

* [**Lab on Demand API Documentation**](/lod/lod-api/lod-api-main.md) - Documentation on how and when to use the Lab on Demand API.

* [**How to use an API Consumer**](/lod/how-to-use-api-consumer.md) - Guides through the steps to configure an API Consumer in LOD.

* [**Lab on Demand edX Integration**](/guides/lti/lod-lti.md) - Integrate edX into your lab profile. 

* [**Life Cycle Actions**](/lod/feature-focus/lab-profiles/life-cycle-actions.md) - Define actions to occur at certain times within the lab's life cycle, such as calling an external service when the lab builds, or sending a notification to the user when the lab is resumed. 

<!--
* [**Performance Based Testing (PBT)**](guides/pbt/lodpbtguide.md) - Configure Performance Based Testing on your lab profile.
-->

* [**Shared Labs (a.k.a. Cyber-Range)**](guides/sl/sharedlabs.md) - Configure a Shared Lab environment

* [**Virtual Machine Based Lab Development - Best Practices**](/lod/vm-based-lab-build-best-practices.md) - Recommendations and best practices for cloud-hosted and datacenter-hosted virtual machines.

- [**Custom UUID on VMware Virtual Machines**](uuid.md) - Assign a custom unique ID to a virtual machine hosted on a VMware host.

## Quick Starts

Quick starts are a guided walkthrough, and allow you to fast track your learning experience, helping you get more value from the platform as quickly as possible.

### Building your first Cloud Slice lab

With the Cloud Slice feature, LOD is able to support cloud learning at scale. Learners are provided with a slice of a cloud subscription that they can use for the duration of their learning experience, limited however you configure it. This series of Quick Starts will walk you through every step required to create a feature-rich Cloud Slice lab.

|Duration|Quick Start|
|--:|:--|
|20&nbsp;minutes|[Configure your Cloud Subscription for use with LOD](/lod/quick-starts/cloud-slice/configure-subscription.md)|
|5&nbsp;minutes|[Add your Cloud Subscription into LOD](/lod/quick-starts/cloud-slice/add-subscription-into-lod.md)|
|5&nbsp;minutes|[Create a Cloud Slice lab in 3 steps](/lod/quick-starts/cloud-slice/create.md)|
|10&nbsp;minutes|[Write instructions for your Cloud Slice lab](/lod/quick-starts/cloud-slice/write-instructions.md)|
|10&nbsp;minutes|[Provision cloud resources in your Cloud Slice lab](/lod/quick-starts/cloud-slice/provision-cloud-resources.md)|
|10&nbsp;minutes|[Restrict what users can create in your Cloud Slice lab](/lod/quick-starts/cloud-slice/restriction-policies.md)|
|20&nbsp;minutes|[Register Cloud Resource Providers](/lod/quick-starts/cloud-slice/cloud-resource-providers.md)|
|10&nbsp;minutes|[Set up Cloud Slice lab for Scale](/lod/quick-starts/cloud-slice/scale.md)|

### Deploying a Linux VM on Azure using a Resource Template

|Duration|Quick Start|
|--:|:--|
|15&nbsp;minutes|[Deploy Linux on Azure using a Resource Template](/lod/quick-starts/linux/deploy-linux-template.md)|

> ### Looking for more information?
>
>If you've already read through all of the documentation that is available on a topic, and you are still looking for more information, or have questions, check out the resources available to you on our [Contact Us](/contact-us.md) page.



















<!-- THE BELOW WAS THE LOD LANDING PAGE FOR THE INTEGRATED HELP. IT IS COMMENTED OUT TO RETAIN THE CONTENT.

Welcome to the OneLearn Lab on Demand platform (LOD), &commat;.UserFirstName!

If you're keen on getting started, and want to hit the ground running, have a look at [Quick Starts](#quick-starts).

After you have gone through some of the Quick Starts, or if you simply want to learn more about a specific feature in LOD, [Feature Focus](#feature-focus) will provide you with in-depth information about a feature.

If you've already read through all of the documentation that is available on a topic, and you are still looking for more information, or have questions, check out the resources available to you on our [Contact Us](/contact-us.md) page.

We hope this documentation helps you create awesome labs!

## Lab on Demand
* [Lab on Demand API Documentation](/lod/lod-api/lod-api-main.md)
* [Introduction to the Lab on Demand](/lod/feature-focus/lod-experience.md)

## Quick Starts

Quick Starts allow you to fast track your learning experience, helping you get more value from the platform as quickly as possible.

### Building your first Cloud Slice lab

With the Cloud Slice feature, LOD is able to support cloud learning at scale. Learners are provided with a slice of a cloud subscription that they can use for the duration of their learning experience, limited however you configure it. This series of Quick Starts will walk you through every step required to create a feature-rich Cloud Slice lab.

|Duration|Quick Start|
|--:|:--|
|20&nbsp;minutes|[Configure your Cloud Subscription for use with LOD](/lod/quick-starts/cloud-slice/configure-subscription.md)|
|5&nbsp;minutes|[Add your Cloud Subscription into LOD](/lod/quick-starts/cloud-slice/add-subscription-into-lod.md)|
|5&nbsp;minutes|[Create a Cloud Slice lab in 3 steps](/lod/quick-starts/cloud-slice/create.md)|
|10&nbsp;minutes|[Write instructions for your Cloud Slice lab](/lod/quick-starts/cloud-slice/write-instructions.md)|
|10&nbsp;minutes|[Provision cloud resources in your Cloud Slice lab](/lod/quick-starts/cloud-slice/provision-cloud-resources.md)|
|10&nbsp;minutes|[Restrict what users can create in your Cloud Slice lab](/lod/quick-starts/cloud-slice/restriction-policies.md)|
|20&nbsp;minutes|[Register Cloud Resource Providers](/lod/quick-starts/cloud-slice/cloud-resource-providers.md)|
|10&nbsp;minutes|[Set up Cloud Slice lab for Scale](/lod/quick-starts/cloud-slice/scale.md)|


### Getting Started With Life Cycle Actions

With the Life Cycle Actions feature, LOD is able to execute actions when specific events occur during the lab instance life cycle. Each of these action types will be covered, in this series of Quick Starts. We will discuss how to use each action, and when it is appropriate to use each one. After completing this Quick Start series, you will be able to configure your lab with Life Cycle Actions, to make your more lab a more rich experience for students.

|Duration|Quick Start|
|--:|:--|
|5&nbsp;minutes|[Send a Notification to the user](/lod/quick-starts/life-cycle-actions/send-a-notification-to-user.md)|
|5&nbsp;minutes|[Send E-mail to User](/lod/quick-starts/life-cycle-actions/email-student.md)|
|10&nbsp;minutes|[Execute Subscription Command](/lod/quick-starts/life-cycle-actions/subscription-command.md)|
|10&nbsp;minutes|[Send Web Request](/lod/quick-starts/life-cycle-actions/web-request.md)|
|10&nbsp;minutes|[Execute Machine Command](/lod/quick-starts/life-cycle-actions/machine-command)|



### Deploying a Linux VM on Azure using a Resource Template

|Duration|Quick Start|
|--:|:--|
|15&nbsp;minutes|[Deploy Linux on Azure using a Resource Template](/lod/quick-starts/linux/deploy-linux-template.md)|

## Feature Focus

Feature Focus helps you learn more in-depth about specific features in LOD.

### Lab Profiles

Lab Profiles integrate a set of resources (cloud resources, virtualized resources, websites, videos, images, supplementary documents and/or files) with instructions and configuration options, providing anyone who launches the lab with a rich learning experience. You include an exam if you want to reinforce what people have learned from the lab. They can exist on their own, or be presented as part of a Lab Series. Everything related to how the lab is built and presented is defined in the lab profile.

LOD provides a "blank canvas" approach to the design of a lab profile. This flexibility allows you to build whatever learning experience you want for consumers of your lab.

To learn more about how to do something with Lab Profiles, click an Action link from one of the lists below.

Or, you can learn more about a specific setting in [Lab Profile settings](/lod/feature-focus/lab-profiles/settings.md).

#### Creating a new Lab Profile

|Action|Description|
|--|--|
|[Create a Virtualized lab](/lod/feature-focus/lab-profiles/create.md)||
|[Create a Cloud Slice lab]()||
|[Create a Hybrid lab]()||



Import
Export


CREATE			/LabProfile/Create,https://raw.githubusercontent.com/LearnOnDemandSystems/docs/master/lod/feature-focus/lab-profiles/create.md
DETAILS 		/LabProfile/{labProfileId},
FIND 			/LabProfile,
EDIT			/LabProfile/Edit/{labProfileId},https://raw.githubusercontent.com/LearnOnDemandSystems/docs/master/lod/feature-focus/lab-profiles/edit.md
IMPORT			/LabProfile/ImportContent/{labProfileId},
VIEW STATISTICS	/LabProfile/Statistics/{labProfileId},


* [Create a Lab Profile](/lod/feature-focus/lab-profiles/create.md)
* [Create a Lab Series](/lod/create-lab-series.md)
* [Create Removeable Media](/lod/create-removeable-media.md)


#### Working with Lab Resources

|Action|Description|
|--|--|
|[Add a VM to a Lab Profile](/lod/feature-focus/lab-profiles/create.md)||
|[Add a Cloud Subscription in a Lab Profile](/lod/feature-focus/lab-profiles/find.md)||
????|[Add a URL or file to a Lab Profile](/lod/feature-focus/lab-profiles/edit.md)||


#### Authoring lab instructions

* [IDLx Authoring](/guides/idl2/idlv2-authoring-guide-and-best-practice.md)
* [IDLx Markdown User Guide](/guides/idl2/markdown-user-guide.md)
* [IDLx Activities](/lod/activities.md)
* [IDLx Lab Variables](/lod/variables.md)
* [IDL (legacy) Authoring](/guides/idl/idlv3.md)

#### Going further with Lab Profiles

* [Virtual Machine Based Lab Development - Best Practices](/lod/vm-based-lab-build-best-practices.md)
* [GitHub Integration](/guides/github-integration/github-integration.md)
* [Life Cycle Actions](/guides/lca/life-cycle-actions-guide.md)
* [Performance Based Testing (PBT)](/guides/pbt/lodpbtguide.md)
* [Shared Labs (a.k.a. Cyber-Range)](/guides/sl/sharedlabs.md)
* [Lab on Demand edX Integration](/guides/lti/lod-lti.md)
* [Custom CSS](/lod/feature-focus/lab-profiles/custom-css.md)
* [Setup up a Cloud Slice lab](/guides/cloud-slice/cloud-slice.md)

### Cloud Subscription Pools

* [Create a Cloud Subscription](/lod/create-cloud-subscription.md)
* [Create a Cloud Subscription Pool](/lod/create-cloud-subscription-pool.md)

### Cloud Resource Templates

* [Recommendations and Best Practices](/lod/feature-focus/cloud-resource-templates/recommendations-and-best-practices.md)
* [Replacement Tokens](/lod/feature-focus/cloud-resource-templates/replacement-tokens.md)


### Cloud Resource Templates


### Cloud Restriction Templates
-->

