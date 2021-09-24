---
title: "Terminology used in Lab on Demand"
description: "Explanation of terminology used in Lab on Demand"
isPublished: true
---

# Terminology

This document provides a brief overview of terminology used in Lab on Demand.

## Table of Contents


  * [Activities](#activities)
  * [Activity-based Assessment (ABA)](#activity-based-assessment)
  * [Cloud Slice](#cloud-slice)
  * [Cloud Subscription](#cloud-subscription)
  * [Cloud Subscription Pool](#cloud-subscription-pool)
  * [Containers](#containers)
  * [Code Labs](#code-labs)
  * [Development Environment (LOD)](#development-environment)
  * [Expected Duration](#expected-duration)
  * [Favorites](#favorites)
  * [IDLx](#idlx)
  * [Lab Fabric](#lab-fabric)
  * [Lab Platform](#lab-platform)
  * [Lab User Interface or Lab Client](#lab-user-interface-or-lab-client)
  * [Lab Manual-Instructions-Content](#lab-manual-instructions-content)
  * [Lab Profile](#lab-profile)
  * [Lab Series](#lab-series)
  * [Markdown](#markdown)
  * [Maximum Duration](#maximum-duration)
  * [Organizations](#organizations)
  * [Performance-Based Testing (PBT)](#performance-based-testing)
  * [Production Environment](#production-environment)
  * [Publish](#publish)
  * [Regex](#regex)
  * [Removable Media](#removable-media)
  * [Replacement Token](#replacement-token)
  * [Scored](#scored)
  * [Scored Lab](#scored-lab)
  * [Template Gallery](#template-gallery)
  * [User Profile](#user-profile)
  * [Virtual Disk(s)](#virtual-disk)
  * [Virtual Disk Chain](#virtual-disk-chain)
  * [Virtual Machine Profile](#virtual-machine-profile)

## Activities

Activities fall into two broad categories: Questions and Automated.

- Questions are multiple choice or short answer questions.
- Automated Activities use a script to run against a fabric object within the lab.

Activities are configured in the lab instructions, using IDLx. When an Activity is created, it is represented in the lab instructions by a Replacement Token, e.g., @lab.activity(Question1).

## Activity-based Assessment
Activity-based Assessments are activities included within a lab that are used to gauge a participants’ practical skills and knowledge by running scripts to verify that a technical task has been completed correctly. They can provide immediate feedback and are used to prove that a user has acquired both the theoretical and practical knowledge being taught within the lab. This helps with both knowledge acquisition and knowledge retention. Activity Based Assessments do not have scoring turned on. If they do, then they become a form of Performance Based Testing (PBT).

## Cloud Slice
Cloud Slice enables you to take a Master subscription (either one of yours or one of ours and divide it into up to 250 individual user subscriptions containing one or more cloud resources (virtual machines, networks, databases, websites, etc.). Users are controlled using Resource Groups which apply cost control and security. Each account is dynamically recycled after use, and once a lab is complete then everything is torn down. If a customer requires more than 250 accounts, a 2nd Master subscription (or more) can be added to a Subscription Pool to which load balancing can be applied for improved performance. The combination of a single user subscription with the resources contained within it is collectively referred to as a Cloud Slice.

## Cloud Subscription
LOD (Lab on Demand) offers cloud virtualization in both Azure and AWS. Using either option you can create a lab that launches the portal of your choosing without the need for a virtual machine inside the lab client. With our Cloud Slice feature, you can also use your subscription to create temporary subscription credentials for your users. We will provide a brief overview below. 

>[!Note] Before cloud labs are allowed to be released into Production they must be evaluated for risk of abuse using the Cloud Security standards review.

## Cloud Subscription Pool
Cloud Subscription Pools are used by labs to provision Cloud Slices in a load balanced fashion. Even if you are only using one managed Cloud Subscription, you still must create a Cloud Subscription Pool. This setup allows you to add additional subscriptions to your subscription pool later, at which point you will gain the benefits of the load balancing support that the platform provides.

## Containers
Our LOD (Lab on Demand) platform supports containers via Docker. Containers are a lightweight option compared to full Virtual Machines. 

## Code Labs
Code labs use a code editor also known as an Integrated Development Environment (IDE) user interface in the lab client to allow the delivery of Labs focused on programming objectives. Code labs utilize containers to provide support for a wide range of coding languages.

## Development Environment
The virtual environment where lab development occurs. All development should be done in a development organization and only moved to the production organization when it is ready for publishing.

## Expected Duration
The average amount of time you expect it will take a learner to complete the lab.

## Favorites
Gallery templates can be favorited in the template gallery for quick access. They will then appear when the available lab profiles are filtered by favorites.  Lab Profiles can also have the favorite flag set to make them stick to the user’s LOD dashboard.

## IDLx
Integrated Digital Lab Experience. The IDLx platform integrates the lab instructions with the LOD Lab Client in the lab environment.  The content written within the IDLx interface is normally written in Markdown, an easy to use markup language for formatting text,

## Lab Fabric
Lab Fabrics are the various platforms we offer for the delivery of labs. Fabrics can either be different virtualization technologies and containers hosted in an LODS datacenters or be public cloud.

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

## Markdown
Markdown is an easy-to-use set of markup language to format text. Markdown also supports the use of embedded HTML syntax to format the contents.

## Maximum Duration
The maximum amount of time allowed to complete the lab.

## Organizations
Organizations are the containers in which all objects in LOD reside. Each organization has two child orgs, Development and Production. Development is used for content creation and testing. Production is used only for content that is ready for consumption.  Organizations also provide one of the security boundaries within the LOD platform.

## Performance-Based testing
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

## Scored
Scoring allows the student to be given a score for each Activity they complete correctly, and those scores contribute to the student's overall score in the lab. As the lab author, you set the passing score for the lab after you enable scoring in the lab. 

## Scored Lab
The Lab on Demand platform supports the ability to score users either in an exam/quiz format or within a hands-on lab. 

## Template Gallery
The template gallery allows lab authors to easily search for and select pre-created lab profile templates to use as the base for a new lab.

## User Profile
The user profile contains information about the user and their preferences, including roles, managed organizations, and settings.

## Virtual Disk
The individual files that are used to represent physical disks in a virtual machine.

## Virtual Disk Chain
The list of Differencing Disks/Snapshots/checkpoint files that combine to represent the physical disk contents of a virtual machine in the lab environment when launched.

## Virtual Machine Profile
A Virtual Machine profile represents the hardware configuration of a virtual machine.  Base settings would include, memory, processor, network adapters and storage configuration.  The actual settings available are dependent on the fabric the Virtual Machine would be running on.

# Additional Resources 

- [Introduction to Lab on Demand UI](/lod/feature-focus/lod-experience.md)
- [Lab Developer FAQ](/lod/lab-developer-faq.md)
- [Lab Developer Roles](/lod/lod-lab-developers/org-lab-dev-roles.md)
