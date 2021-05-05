---
title: "SPLA Support Software"
description: "Supported products and the conditions within Learn on Demand Systems implementation of the SPLA program."
isPublished: true
---

# SPLA Supported Software

## Table of Contents
- [Windows and Office](#windows-and-office)
- [Other Software Supported by SPLA](#other-software-supported-by-spla)
- [Billing Scenarios](#billing-scenarios)
- [FAQ](#faq)
    - [Windows Server](#windows-server)
        - [How is VMWare support different?](#how-is-vmware-support-different-)
        - [Are any VMs that run on SPLA tagged servers automatically activated?](#are-any-vms-that-run-on-spla-tagged-servers-automatically-activated-)
    - [Office](#office)
        - [Are Office Products available in any region and Platform?](#are-office-products-available-in-any-region-and-platform-)
        - [How does the Office product billing work?](#how-does-the-office-product-billing-work-)

## Windows and Office

Below are supported products and the conditions within Learn on Demand Systems implementation of the SPLA program.  

| Software       | Hyper-V | VMWare | Azure | AWS | Notes                         | Status |
|----------------|-------------|-----------|-------------------------------|--------|-|-|
| Windows Server 2012 R2 / 2016 / 2019 Datacenter | YES | YES | **NO** | **NO** | No Further Support Coming | Supported|
| Windows Server 2012 R2 / 2016 / 2019 Standard | YES  | YES | **NO** | **NO** | No Further Support Coming | Supported|
| Windows Server 2012 R2 / 2016 / 2019 Essentials | YES  | YES | **NO** | **NO** | No Further Support Coming | Supported|
| Any other Windows Server Version | **NO** | **NO** | **NO** | **NO** | Every supported version accounted for | Supported|
| Windows Client | **NO** | **NO** | **NO** | **NO** | Windows Client is not supported, in any form, under SPLA | Possible at a future date|
| **Office Products** |||||||||
| Office 2016 / 2019 Standard | YES | YES | **NO** | **NO** | | Supported|
| Office 2016 / 2019 Professional Plus | YES | YES | **NO** | **NO** | | Supported|
| Office Visio Standard / Professional | YES | YES | **NO** | **NO** | | Supported|
| Office Project Standard / Professional | YES | YES | **NO** | **NO** | | Supported|

## Other Software Supported by SPLA
The following is a list of other software supported by the SPLA program but **NOT** supported by LODS implementation of the program.  However, if you have a viable need, implementation is possible under SPLA for the following:

* SharePoint Server
* SQL Server Standard 
* SQL Server Standard and Enterprise Core edition
* System Center Standard Core
* Visual Studio Team Foundation Server
* Visual Studio Enterprise Professional and Test Professional
* BizTalk Server Branch, Standard and Enterprise
* Dynamics 365 for Customer Services, Sales and Team Members
* Exchange Server

# Billing Scenarios

Windows Server is offered under the following terms:
* **Concurrency GB Model** - offered in increments of 768GB RAM
* **Per GB RAM/hr Model** - offered per GB, calculated per hour

Office Products are billed on a 'Per User' basis.  Every launch in Lab on Demand constitutes a billable consumption.  

* Any lab that uses a licensed version of Office through SPLA and launched will incur a billable event despite duration or if a user makes use of it.
* A student that launches the same lab 5 times incurs 5 billable events for that lab.
* Any lab instance that runs over a calendar month incurs billing for both months.  A lab started on Jan 31st at 11:59 PM and torn down Feb 1st at 12:02 AM incurred two billing events; One for January and one for February.

Example billing scenarios:

| Number of Students | Scenario | Duration | Result |
|---|---|---|---|
|1 Student | 1 Lab w/ Office | 5 days | One consumption |
|1 Student | 3 labs w/ Office | 5 days | Three consumption |
|1 Student | 3 labs w/ Office| 5 days - crosses a month | Six consumption |
|1 Student | 1 Office VM | 5 days | One consumption |
|1 Student | 3 different Office VMs | 5 days | Three consumption | 
|1 Student | 3 different Office VMs | 5 days - crosses a month | Six consumption |
|Preinstance started - Never connected | 1 Office VM | 5 minutes | One consumption |

# FAQ
## Windows Server 

  1. ### How is VMWare support different?
  
    VMWare is supported, using a KMS or Key Management Server on a WebNet network.
    
  1. ### Are any VMs that run on SPLA tagged servers automatically activated?
  
    Only if they are of a supported Operating System version. On VMWare the client must be able to connect to the KMS server on a WebNet network. 

## Office

  1. ### Are Office Products available in any region and Platform?
  
    Yes.  Because Office is a 'per user' consumption, capacity does not need to be exclusive.  Additionally it does not rely on any features of the underlying Hyper-Visor.

  1. ### How does the Office product billing work?
  
    We report all usage and Microsoft makes no distinction in a 'launch' vs a 'user' in our world. The billing model is not designed for how Learn on Demand System operates and does not cater to our unique use cases. The SPLA team has had conversations with our SPLA program partner about this and will report accurately, within reason, to Microsoft our use case.  It is important you reading this and your customers, understand these situations and how rigid they are.
