---
title: "Terminology used in Lab on Demand"
description: "Explanation of terminology used in Lab on Demand"
isPublished: true
---

# Platform Terminology

This document provides a brief overview of terminology used in Lab on Demand.

## Table of Contents

* [Access Control Policy](#access-control-policy)
* [Activities](#activities)
* [Activity-Based Assessment](#activity-based-assessment)
* [Advertising Campaign](#advertising-campaign)
* [AWS](#aws)
* [Azure](#azure)
* [Cloud Credential](#cloud-credential)
* [Cloud Credential Pool](#cloud-credential-pool)
* [Cloud Slice](#cloud-slice)
* [Cloud Subscription](#cloud-subscription)
* [Cloud Subscription Pool](#cloud-subscription-pool)
* [Containers](#containers)
* [Code Labs](#code-labs)
* [Container Registry](#container-registry)
* [Development Environment](#development-environment)
* [Development Status](#development-status)
* [Duration](#duration)
* [Evaluation](#evaluation)
* [Favorites](#favorites)
* [Hyper-V](#hyper-v)
* [IDLx](#idlx)
* [Inheritance](#inheritance)
* [Lab Fabric](#lab-fabric)
* [Lab instance](#lab-instance)
* [Lab Platform](#lab-platform)
* [Lab User Interface or Lab Client](#lab-user-interface-or-lab-client)
* [Lab Manual-Instructions-Content](#lab-manual-instructions-content)
* [Lab Profile](#lab-profile)
* [Lab Series](#lab-series)
* [Life Cycle Action](#life-cycle-action)
* [Markdown](#markdown)
* [Organizations](#organizations)
* [Performance-Based Testing](#performance-based-testing)
* [Production Environment](#production-environment)
* [Publish](#publish)
* [Regex](#regex)
* [Removable Media](#removable-media)
* [Replacement Token](#replacement-token)
* [Resource Template](#resource-template)
* [Scored](#scored)
* [Scored Lab](#scored-lab)
* [Shared lab](#shared-lab)
* [Snapshots](#snapshots)
* [Template Gallery](#template-gallery)
* [Themes](#themes)
* [User Profile](#user-profile)
* [Virtual Disk](#virtual-disk)
* [Virtual Disk Chain](#virtual-disk-chain)
* [Virtual Machine Profile](#virtual-machine-profile)
* [Virtualization Platform](#virtualization-platform)
* [vSphere](#vsphere)
* [Additional Resources](#additional-resources)

## Access Control Policy
An Access Control Policy is used by a cloud provider to limit the resources that can be provisioned within the cloud environment. This prevents additional cloud costs by preventing users from creating resources that are not relevant to the content and/or outside the scope of the lab.

## Activities

Activities fall into two broad categories: Questions and Automated.

- Questions are multiple choice or short answer questions.
- Automated Activities use a script to run against a fabric object within the lab.

Activities are configured in the lab instructions, using IDLx. When an Activity is created, it is represented in the lab instructions by a Replacement Token, e.g., @lab.activity(Question1).

## Activity-Based Assessment
Activity-based Assessments are activities included within a lab that are used to gauge a participants’ practical skills and knowledge by running scripts to verify that a technical task has been completed correctly. They can provide immediate feedback and are used to prove that a user has acquired both the theoretical and practical knowledge being taught within the lab. This helps with both knowledge acquisition and knowledge retention. Activity Based Assessments do not have scoring turned on. If they do, then they become a form of Performance Based Testing (PBT).

## Advertising Campaign
Advertising campaigns are used to present a website to a lab user while the lab is launching. 

## AWS
Amazon cloud computing environment. 

## Azure
Microsoft cloud computing environment.

## Cloud Credential 
Credentials that are given to users in a lab, to log in to a cloud environment, or other platforms. Credentials are managed in an Cloud Credential Pool in LOD.

## Cloud Credential Pool 
A pool of credentials that are configured for a specific use, class, or organization, and displayed to the user in a launched lab.

## Cloud Slice
Cloud Slice enables you to take a Master subscription (either one of yours or one of ours and divide it into up to 250 individual user subscriptions containing one or more cloud resources (virtual machines, networks, databases, websites, etc.). Users are controlled using Resource Groups which apply cost control and security. Each account is dynamically recycled after use, and once a lab is complete then everything is torn down. If a customer requires more than 250 accounts, a 2nd Master subscription (or more) can be added to a Subscription Pool to which load balancing can be applied for improved performance. The combination of a single user subscription with the resources contained within it is collectively referred to as a Cloud Slice.


## Cloud Subscription
LOD (Lab on Demand) offers cloud virtualization in both Azure and AWS. Using either option you can create a lab that launches the portal of your choosing without the need for a virtual machine inside the lab client. With our Cloud Slice feature, you can also use your subscription to create temporary subscription credentials for your users. We will provide a brief overview below. 

>[!Note] Before cloud labs are allowed to be released into Production they must be evaluated for risk of abuse using the Cloud Security standards review.

## Cloud Subscription Pool
Cloud Subscription Pools are used by labs to provision Cloud Slices in a load balanced fashion. Even if you are only using one managed Cloud Subscription, you still must create a Cloud Subscription Pool. This setup allows you to add additional subscriptions to your subscription pool later, at which point you will gain the benefits of the load balancing support that the platform provides.

## Containers
Our LOD (Lab on Demand) platform supports containers via Docker. Containers are a lightweight option compared to full Virtual Machines. Container images use virtualization that focuses on a specific application or software, rather than a full operating system. 

## Code Labs
Code labs use a code editor also known as an Integrated Development Environment (IDE) user interface in the lab client to allow the delivery of Labs focused on programming objectives. Code labs utilize containers to provide support for a wide range of coding languages.

## Container Registry
Custom registries can be created in LOD, that are linked to an external registry. This is useful to use containers that are maintained in your own external repository. 

## Development Environment
The virtual environment where lab development occurs. All development should be done in a development organization and only moved to the production organization when it is ready for publishing.

## Development Status
The status of a lab profile's development. Options include: 
   - In Development
   - Awaiting Verification
   - In Verification
   - Verification failed
   - Complete

## Duration
The expected amount of time it will take a user to complete the lab. After setting the duration, the maximum duration of the lab will be will be set to 150% of the duration.

## Evaluation
Evaluations are presented to lab user after the lab is ended, to provide feedback about the lab profile to the instructor or learning organization. 

## Favorites
Gallery templates can be favorited in the template gallery for quick access. They will then appear when the available lab profiles are filtered by favorites.  Lab Profiles can also have the favorite flag set to make them stick to the user’s LOD dashboard.

## Hyper-V
Microsoft hardware virtualization platform that enables the use of virtual machines. 

## IDLx
Integrated Digital Lab Experience. The IDLx platform integrates the lab instructions with the LOD Lab Client in the lab environment.  The content written within the IDLx interface is normally written in Markdown, an easy to use markup language for formatting text,

## Inheritance
Allowing a lab profile to inherit settings and environment properties from another lab profile.
- Child lab profile: the lab profile that is inheriting from the parent lab profile. 
- Parent lab profile: the lab profile that is being inherited from.

## Lab Fabric
Lab Fabrics are the various platforms we offer for the delivery of labs. Fabrics can either be different virtualization technologies and containers hosted in a Skillable datacenters or be public cloud.

## Lab instance 
A lab instance is the individual occurrence of a lab profile launch. Each lab instance is unique for each lab launch, and all details related to the lab launch are displayed on the lab instance. 

## Lab Platform 
A lab platform is the technology used to create a lab environment, for example, a Hyper-V virtual machine, or a V-Sphere virtual machine. Platform and fabric can be used in conjunction with one another.

## Lab User Interface or Lab Client
The interface that the user sees as they work in a lab. The interface is presented in a HTML5 compatible browser and normally contains two windows.  One window presents the service the Learner will interact with, and the second window can contain instructions and other resources to guide the Learner.

## Lab Manual-Instructions-Content
The lab content and instructions written in the IDLx editor and displayed in the lab user interface.

## Lab Profile
Labs in Lab on Demand are housed in a Lab Profile. The Lab Profile contains the information about the configurable settings and the virtual machines that make up a lab. For a Lab Profile to be published it must be part of a Lab Series.

## Lab Series
A Lab Series is a container that holds one or more Lab Profiles. The Lab Series contains Lab Profiles and settings for the Lab Series. It is like the cover of a book, while the Lab Profiles are like the chapters within the book.

## Life Cycle Action
With Life Cycle Actions, LOD is able to execute actions when specific events occur during the lab instance life cycle.

## Markdown
Markdown is an easy-to-use set of markup language to format text. Markdown also supports the use of embedded HTML syntax to format the contents.

## Organizations
Organizations are the containers in which all objects in LOD reside. Each organization has two child orgs, Development and Production. Development is used for content creation and testing. Production is used only for content that is ready for consumption.  Organizations also provide one of the security boundaries within the LOD platform.

## Performance-Based Testing
Performance-based testing is a challenge-centric, scored lab used for skills validation. It uses activities, such as Activity Based Assessments (ABA), that have scoring turned on.  Questions and Automated Activities are used to validate a Learners' practical skills through the completion of technical tasks, and the results are generated at the end of a lab.

## Production Environment
The production environment is where live content is located. Content should be copied from the development environment only when it is ready to be published.

## Publish
Publishing a lab is the process of making a Lab Profile available to the customer’s Learning Management System (LMS).  The LMS can then be configured to enable the end Learner to have access to the new Lab(s).

## Regex
A regular expression (shortened as regex or regex); also referred to as rational expression) is a sequence of characters that specifies a search pattern. 

## Removable Media 
Allows content to be presented to a virtual machine as a virtual CD/DVD image.  The content is presented as an ISO file.  Removable media can be used to upload content for developing labs, can be made available as part of a lab for the Learner to use, or can be used by an instructor can upload their own content to share as part of a class. 

## Replacement Token
Used to replace text in lab instructions with a defined variable that is unknown at the time of authoring the lab instructions. These variables may not be generated or created until the lab is launched by the student. These can include usernames, user first name, user last name, running lab instance ID number, etc.

## Resource Template
Resource Templates are used to deploy cloud resources in a cloud environment.

## Scored
Scoring allows the student to be given a score for each Activity they complete correctly, and those scores contribute to the student's overall score in the lab. As the lab author, you set the passing score for the lab after you enable scoring in the lab. 

## Scored Lab
The Lab on Demand platform supports the ability to score users either in an exam/quiz format or within a hands-on lab. 

## Shared lab
A Shared Lab is a tool used at Skillable to create environments which share their networks with each other to allow machines to communicate between a Shared Lab Environment and a Participant (or Participants). 

## Snapshots
Snapshots allow students and instructors to set a restore point in their lab instance. Once a snapshot is created in the lab instance, the lab can be rolled back to this point in time.

## Template Gallery
The template gallery allows lab authors to easily search for and select pre-created lab profile templates to use as the base for a new lab.

## Themes
Themes allow styling to be configured for a lab profile, to provide a custom look and feel.

## User Profile
The user profile contains information about the user and their preferences, including roles, managed organizations, and settings.

## Virtual Disk
The individual files that are used to represent physical disks in a virtual machine.

## Virtual Disk Chain
The list of Differencing Disks/Snapshots/checkpoint files that combine to represent the physical disk contents of a virtual machine in the lab environment when launched.

## Virtual Machine Profile
A Virtual Machine profile represents the hardware configuration of a virtual machine.  Base settings would include, memory, processor, network adapters and storage configuration.  The actual settings available are dependent on the fabric the Virtual Machine would be running on.

## Virtualization Platform
The virtualization platform that a lab profile will use for virtual machines or Containers. A virtualization platform is not needed for labs that do not use virtual machines or Containers. Options include: 
    - Hyper-V 
    - vSphere
    - Azure
    - AWS
    - Docker

## vSphere
VMware hardware virtualization platform that enables the use of virtual machines. 

# Additional Resources 

- [Introduction to Lab on Demand UI](/lod/feature-focus/lod-experience.md)
- [Lab Developer FAQ](/lod/lab-developer-faq.md)
- [Lab Developer Roles](/lod/lod-lab-developers/org-lab-dev-roles.md)