---
title: "Connectivity Requirements"
description: "Connectivity requirements, bandwidth requirements and firewall rules for labs. "
isPublished: true
---

# Connectivity Requirements

To launch and use a lab, the following requirements must be met:

1. Use a supported operating system:
    1. Windows 7 or later
    1. Ubuntu 14.04 or later (or comparable distribution)
    1. macOS 10.12 or later
1. Have a supported browser. Edge, Chrome, Firefox, Safari.
    1. Latest version is preferred, but full support details can be found below
    1. Chromium based browsers such as Opera or Vivaldi can connect, but default hotkeys they set may interfere with lab inputs
1. Be connected to a network that allows at least one of the following:
    1. Secure Web sockets on HTTPS port 443 and 43443
    1. RDP over port 21xxx or 443 (Enhanced control)
    1. For more information see Browser/Controller Support below


## Bandwidth Requirements

In addition to the software requirements above we recommend the following:

1. Minimum 200kbps consistent bandwidth with 1mbps burst per student  
    1. Machine controller bandwidth consumption is based on the rate onscreen content changes, some scenarios (i.e. web browsing inside the lab) may require more
    1. For optimal experience, we recommend at least 1mbps per student
1. When utilizing the instructions interface, bandwidth needs may increase based on what features are utilized, examples include:
    1. Embedded audio
    1. Embedded video
    1. Large numbers of embedded images
    1. Bandwidth usage is highly dependent on the media being used. An embedded MP3 may fit into 1mbps burst capacity, while a 1080P video can require up to 10mbps for its duration
1. When using Cloud Slice labs where the target environment is a website additional bandwidth may be required
    1. For the Azure and AWS management portals, we recommend at least 512kbps per student

## Firewall Exception Rule Information

For those that need to create a firewall exception rule to allow connectivity to the Skillable Studio servers (this isn&#39;t common), the following information can be used to create a limited destination rule to only allow the above protocols and ports from your network to the Skillable Studio cloud.

- Domain Names:
  - *.skillable.com
  - *.labondemand.com
  - *.learnondemand.net
  - *.holsystems.com

- Authentication domains:
  - learnondemandsystemsb2c.b2clogin.com

- IP Range:
  - 104.214.106.0/25
  - 20.114.65.0/25
  - 185.254.59.0/24
  - 103.18.85.0/24
  - 163.47.101.0/25
  - 168.245.203.241 - 168.245.203.254

Certain lab environments utilize GitHub; therefore, the following URL should be added as a firewall exception: ```https://githubusercontent.com```

The Skillable Studio system is a cloud platform that automatically provisions and connects the learner with private sandboxed resources. There is no way to predict which IP address in the cloud the learner will connect to for the provisioning of their virtual machines. Therefore, we provide a range of IP addresses and only a second level domain name.

For Hyper-V and Hyper-V w/RDP only labs, the domains and IP addresses in the table below may also be required as firewall exceptions. We strongly encourage using names, and not IP addresses, for firewall and proxy configuration if possible, as the IP addresses may change without warning (and without documentation update). This allows access even in network failover and future geographic targeting scenarios.

If specific IP addresses are required, use the following table as a guide for IP addresses:

| **DNS name** | **IP Address 1** | **IP Address 2** |
| --- | --- | --- |
| labondemand.com | 20.114.65.34 | 104.214.106.31 |
| lms.learnondemand.net | 13.66.39.88 |   |
| au-rds.au.learnondemandsystems.com | 103.18.85.2 |   |
| console.au.learnondemandsystems.com | 103.18.85.8 |   |
| rds01.eu.learnondemandsystems.com | 185.254.59.3 |   |
| console.eu.learnondemandsystems.com | 185.254.59.8 |   |
| sea-rds.labondemand.com | 163.47.101.8 | 163.47.101.9 |
| sea-console.labondemand.com | 163.47.101.13 |

## Launch the Lab Orientation & Connectivity Check

Click the following link to launch a test lab: [Launch the Lab Orientation & Connectivity Check](https://labondemand.com/Launch/122B02AA). This will allow you to see if you are able to connect and function within the lab environment.

## Speed Test

If you are experiencing frequent disconnects or lag when controlling your machines, you may run a [speed test](https://www.skillable.com/speedtest/). This page allows you to run a connection assessment test. A connection assessment test is a very deep and thorough test that measures throughput speed, capacity, and packet quality to assess the user experience of a connection to their respective data center. This includes efficiency, data loss, recovery, duplication of data, retransmissions and even corruption.

## When Connections Traverse a Proxy

When connecting to a lab instance via a proxy, certain configuration requirements must be met for each remote controller. For more information, please review the [Proxy Requirements](proxy-requires.md) article.

## When Using Windows Server Operating Systems

When connecting to our Skillable Training Management System (TMS) portals with a computer having Windows Server operating systems on it, you may experience difficulty in connecting to the sign-in page or clicking on some buttons. Steps to remediate can be found [here.](/tms/end-user-student-faqs/basics/windows-server-os.md)

## In-Lab Software Whitelisting Information for Lab Developers

Software that communicates with remote servers outside of the lab environment may need addresses whitelisted with the vendor to work. The below address ranges are used by NAT internet access labs.

- IP addresses/scopes: 185.254.56.125, 103.245.221.106
- IP Ranges: 163.47.101.118 - 163.47.101.126, 185.254.59.118 - 185.254.59.127, 103.18.85.29 - 103.18.85.30, 103.18.87.240 - 103.18.87.249

The below ranges are used by Public IP internet access labs.

185.254.59.40 - 185.254.59.255, 185.254.58.0/24 185.254.57.0/24 168.245.200.0/23 168.245.202.0/23 103.18.85.21 - 103.18.85.254, 199.101.108.5 - 199.101.109.254, 103.8.28.0/24, 103.177.46.0/25, 103.177.47.0/24


A CSV containing these ranges is available for use in automating any whitelist changes. It can be found [here](lods-whitelist-ips.csv).

## Browser Support

The majority of VM or container based labs can be accessed via HTML5 websocket controllers. ESX, Hyper-V, and Docker<sup>1</sup> labs all utilize this technology.

<sup>1</sup> Docker labs that expose an external service port do so over ports 41952-65534. Connection requirements are dependent on the exposed service.

### Custom Integrations and iFrames:

If a lab uses an iframe integration, 3rd party cookies must not be blocked by the web browser used to access the lab. If 3rd party cookies are blocked, an _Access Denied_ message will be displayed when launching the lab. Most web browsers do not block 3rd party cookies by default. If your browser is blocking 3rd party cookies, please check with the browser's vendor to learn more about how third party cookies may be blocked.

All connections utilize secure WebSockets connections over port 443. No plugin installation is required.

| Browser | Version |
| --- | --- |
| Chrome | 16+ |
| Firefox<sup>1</sup> | 11+ |
| Microsoft Edge | 1+ |

<sup>1</sup> In some cases, the Firefox browser can cause repeating characters in ESX labs.

## Experiencing Issues? 
If you are experiencing issues, please see our recommendations in our [Connectivity Issues documentation](https://docs.skillable.com/lod/connectivity-issues.md).

<!--
Keywords
--> 
<div hidden>
  <b>black screen issues</b>
</div>
