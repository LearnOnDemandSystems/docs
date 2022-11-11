---
title: "Datacenter Bandwidth Limits"
description: "Upload and download speeds in Skillable datacenters."
isPublished: true 
---

# Datacenter Bandwidth Limits

>[!note] The below information references upload and download speeds in Skillable datacenters. Upload and download speeds from 3rd party tools, websites, datacenters, and services may have their own bandwidth limits outside of Skillable's control.

## Table of Contents 

  * [Bandwidth Terminology](#bandwidth-terminology)
  * [Bandwidth Speeds](#bandwidth-speeds)
  * [Bandwidth Examples](#bandwidth-examples)
    + [US West (Seattle) with 5 labs downloading at the same time](#us-west--seattle--with-5-labs-downloading-at-the-same-time)
    + [EU North (London) with 15 labs uploading at the same time](#eu-north--london--with-15-labs-uploading-at-the-same-time)
    + [US East (Ashburn) with 30 labs downloading at the same time](#us-east--ashburn--with-30-labs-downloading-at-the-same-time)
    + [APAC Southeast (Singapore) with 50 labs downloading at the same time](#apac-southeast--singapore--with-50-labs-downloading-at-the-same-time)

## Bandwidth Terminology

- **Total Download**: Total download capability of all labs running concurrently in the datacenter.
- **Total Upload**: Total upload capability of all labs running concurrently in the datacenter.
- **Per-IP Download**: Total download capability of a single lab.
- **Per-IP Upload**: Total upload capability of a single lab.
- **Mbps**: Mega-Bits Per Second.

## Bandwidth Speeds

| Datacenter | Total Download | Total Upload | Per-IP Download | Per-IP Upload |
|------------|------------|------------|------------|------------|
| US West (Seattle) | 1000 Mbps | 150 Mbps | 100 Mbps | 100 Mbps |
| EU North (London) | 1500 Mbps | 150 Mbps | 100 Mbps | 100 Mbps |
| AU East (Sydney) | 400 Mbps | 100 Mbps | 25 Mbps | 25 Mbps |
| US East (Ashburn) | 1500 Mbps | 500 Mbps | 100 Mbps | 100 Mbps |
| APAC Southeast (Singapore) | 1200 Mbps | 150 Mbps | 100 Mbps | 100 Mbps |

## Bandwidth Examples

### US West (Seattle) with 5 labs downloading at the same time

The total download capability for labs in the datacenter is **1000 Mbps**. Each lab IP has a maximum download of **100 Mbps**. With **5 labs** downloading at **100 Mbps** the total concurrent download will be **500 Mbps**.

### EU North (London) with 15 labs uploading at the same time

The total upload capability for labs in the datacenter is **100 Mbps**. Each lab IP has a maximum upload of **100 Mbps**. With **15 labs** uploading at **100 Mbps** this will exceed to maximum concurrent upload limit of **100 Mbps**. Each lab will have a best effort upload and will average around **6 Mbps**.

### US East (Ashburn) with 30 labs downloading at the same time

The total download capability for labs in the datacenter is **1500 Mbps**. Each lab IP has a maximum download of **100 Mbps**. With **30 labs** downloading at **100 Mbps** this will exceed to maximum concurrent download limit of **1500 Mbps**. Each lab will have a best effort download and will average around **50 Mbps**.

### APAC Southeast (Singapore) with 50 labs downloading at the same time

The total download capability for labs in the datacenter is **1200 Mbps**. Each lab IP has a maximum download of **100 Mbps**. With **50 labs** downloading at **100 Mbps** this will exceed to maximum concurrent download limit of **1200 Mbps**. Each lab will have a best effort download and will average around **24 Mbps**.