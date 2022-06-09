---
title: "Geolocation for Lab Launches"
description: "The process for geolocating labs when they are launched."
isPublished: false
---

# Lab Launch Geolocation 

When a lab is launched, Lab on Demand (LOD) can use the location of the user's IP address to determine the best location to place the lab instance. 

The location to place a lab instance is defined by the Delivery Regions available to an organization. A delivery region is composed of one or more datacenters. Within a delivery region, launches are placed based on capacity and lab profile content availability. If a lab's content doesn't exist in a delivery region, the lab cannot be launched in that delivery region and LOD will choose the next available delivery region. 

## Table of Contents

- [Process](#process)
- [VPN and Geolocation](#vpn-and-geolocation)
- [Geolocation by lab Type](#geolocation-by-lab-type)
    - [Lab Instances Launched by API](#lab-instances-launched-by-api)
    - [Lab Instances Launched from the Training Management System](#lab-instances-launched-from-the-training-management-system)
    - [Lab Instances Launched from Lab on Demand](#lab-instances-launched-from-lab-on-demand)
    - [Lab Instances that are pre-instanced from Lab on Demand](#lab-instances-that-are-pre-instanced-from-lab-on-demand)
    - [Lab Instances Launched by LTI](#lab-instances-launched-by-lti)

## Process

1. Lab on Demand receives a launch request.

1. If the launch request includes user IP information, the lab will launch in the nearest delivery region to the user, based on the geolocation of the IP address. Lab content must be available in a Delivery region for that Delivery Region to be eligible for the lab instance.

    1. If the optimal delivery region is not available, the next most optimal delivery regions will be attempted until the user is able to launch the lab.

1. If IP information is not provided, Lab on Demand will attempt to launch against the default delivery region that is defined in the user's organization. If the default delivery region is not available, the launch will be attempted in the next available delivery region.

## VPN and Geolocation

Using a VPN while launching a lab is not recommended. If a VPN is used while launching a lab, the lab instance will be geolocated to the location the VPN is configured to, instead of the location of the lab user. 

## Geolocation by lab Type

### Lab Instances Launched by API

- Lab instances that are launched by API are geolocated if the user's IP address is supplied as a parameter in the API command. See the [Launch API Command](https://connect.skillable.com/lod/#tag/Lab-Instance-Management/operation/Launch) for more information. 

### Lab Instances Launched from the Training Management System

- Lab launches from the Skillable Training Management System (TMS) are geolocated if the user's IP address is detected by the TMS. TMS sends the IP information in an API command that launches the lab.  

### Lab Instances Launched from Lab on Demand 

- Lab launches from (LOD) directly are geolocated if the user's IP address is detected. LOD uses the IP information to geolocate the user and launch the lab in the closest available delivery region available. 

### Lab Instances that are pre-instanced from Lab on Demand

- Preinstanced lab instances are geolocated to a user, if a preinstanced lab instance exists in the delivery region where the user's IP is located. 

    If a preinstance doesn't exist in the optimal delivery region, a new lab instance will be launched in the nearest delivery region where the lab's content is available, and the delivery region is available to the user's organization. 

### Lab Instances Launched by LTI

- Lab instances that are launched by LTI are not able to be geolocated and will be placed in a delivery region based on capacity and lab profile content availability. 