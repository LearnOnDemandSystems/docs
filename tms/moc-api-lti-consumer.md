---
title: "MOC API/LTI CONSUMER INFORMATION "
description: "Description of document."
isPublished: false
---

# MOC API/LTI CONSUMER INFORMATION 

## Lab Access 
API/LTI consumers of Microsoft Official Curriculum (MOC) get access to all our course offerings. Learn on Demand Systems publishes all labs to API and LTI consumers when at the same time they are released through our OneLearn Training Management Systems (TMS). 

## Post Class Access 
Learn on Demand Systems API/LTI consumers of Microsoft Official Curriculum (MOC) receive the standard 180 days post class access to labs. This is the same post class access length users receive through our OneLearn Training Management System (TMS). 

## Retirement Lifecycle 
Microsoft Official Curriculum (MOC) labs are no longer maintained by Learn on Demand Systems after the Microsoft official retirement date. Lab access is automatically disabled 180 days after Microsoft’s official retirement date to accommodate user post class access. API/LTI consumers should be aware of Microsoft retirement schedule to ensure automatic lab disable does not impact end users. 

## Available Lab IDs 
To view our list of available Lab Series and Lab Profiles, visit our new [MOC API/LTI Lab IDs webpage](https://lms.learnondemand.net/WebPage/143). This page refreshes daily and displays Lab IDs for currently offered MOC courses.  
Please note, Learn on Demand Systems makes every effort to avoid creation of new Lab Series’ or Profiles, however this is sometimes unavoidable. If a new Lab ID is created to replace an existing ID, LODS will notify API/LTI consumers by email with necessary information. LODS will leave the old Lab Series/Profile(s) enabled for 30 days after notification to allow for updates to take place on the API/LTI consumer’s end. After 30 days, the old Lab Series/Profiles will be automatically disabled.  
Instructor Information 
To view our most up to date Azure Cloud Slice Instructor Guide (specific to API/LTI consumers), please download our shareable PDF. This information should be distributed to technical contacts and instructors as needed. 

## Shared Dynamics Tenants 
Some Microsoft Official Curriculum (MOC) labs use a shared Dynamics 365 tenant. To ensure proper setup to consume these labs through Learn on Demand Systems API or LTI, please carefully review tenant configuration and impacts below. 

## Courses Impacted 
|Course Number |Version|Course Title|
|:---|:---|:---|
|MB-210T01 |A|Microsoft Dynamics 365 Sales|
|MB-220T00 |A|Microsoft Dynamics 365 Marketing|
|MB-230T01 |A|Microsoft Dynamics 365 Customer Service|
|MB-240T00 |A|Microsoft Dynamics 365 Field Service |
|MB-901T00 |A|Microsoft Dynamics 365 Fundamentals 

## User/Class Impact 

- A single tenant is provided per class with 1 admin credential for the instructor & 24 student credentials. 

- Class sizes are restricted to a maximum of 1 instructor and 24 students. 

- Instructor and student credentials are automatically returned after the last class session time. 

- Student credentials are not provided for post class access purposes. 

- Student 180 days post class is still available. 

## Setup for API/LTI 

These labs must be launched in a “class” context for the instructor and student credentials to be distributed. These labs cannot be consumed in a self-paced setting, this is a result of tenant configuration and the first time we’ve seen this tenant type. If the labs are launched outside a class, then credentials will not be assigned. 

To get credentials for these courses over API or LTI, 2 separate API calls are required. This is only required for the labs that have this tenant solution. 

To receive student credentials over API, create a class using the [GetOrCreateClass](https://docs.learnondemandsystems.com/lod/lod-api/lod-api-get-or-create-class.md) command and then launch the lab using that class Id parameter.  

The class does not explicitly need an “instructor” (specified when the class is created), however the instructor API call will provide that user with Admin credentials. Admin credentials have a higher permission level and are intended for ILT instructor use. If an instructor is not identified through API, they would receive student credentials. If the user launching matches the Instructor parameters, then they will be assigned the Admin credential.  