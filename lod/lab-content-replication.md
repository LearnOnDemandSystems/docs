---
title: "Lab Content Replication"
description: "The expected amount of time for lab profile updates to replicate across available delivery regions."
isPublished: true
---

# Lab Content Replication   

## Table of Contents

- [Overview](#overview)
- [Replication Times](#replication-times)
- [Delivery Regions](#delivery-regions)

## Overview 

When a lab profile's development status is set to _Complete_, the lab profile will be replicated to all Delivery Regions that are available to the organization that owns the lab profile.

Any changes to the lab profile's virtual machines (VM) will replicated to all delivery regions available to the organization that owns and manages the lab profile. Any subsequent changes such as VM disk changes or adding/removing VMs will cause replication to begin across available delivery regions. 

## Replication Times

The table below describes the expected amount of time for replication to be completed, based on the size of the updates that are being replicated. 

| Lab Size | Transfer to Closest Delivery Region | Transfer to All Delivery Regions |
|-------|-------------|----------|
| 1GB   | 3 minutes   |15 minutes|
| 5GB   | 15 minutes  |1 hour    |
| 10GB  | 30 minutes  |2 hours   |
| 25GB  | 1 hour      |4 hours   |
| 50GB  | 2.25 hours  |8 hours   |
| 100GB | 4.5 hours   |.75 days  |
| 250GB | 11 hours    |1.8 days  |
| 500GB | 22.25 hours |3.7 days  |
| 1TBB  | 44.5 hours  |1 week    |
| 2TB   | 89 hours    |2 weeks   |

## Delivery Regions

The list below is all Skillable Delivery Regions. Some regions may not be available to you, based on your organization's settings in Skillable Studio. 

- North America
- Australia
- Europe
- Asia-Pacific 