# Lab Network Restrictions

## Overview

Lab environments hosted on Hyper-V or vSphere virtualization platforms utilize Learn on Demand System's on-premise environments. As part of standard network management we utilize monitoring and filtering technology to ensure network stability and security. Three separate networks are available for use:

- WebNet - This is default network when internet access is required. Labs on WebNet launch with a unique NAT gateway that provides routing and network isolation.

- SecureNet - This network is a more secure version of WebNet used for labs that are at greater risk of abuse.
    - Lab Profiles are assigned to SecureNet when an Access Control List (ACL) with the Secure field checked is applied.

- CustomerNet - This network is for labs that require Public IP access. It is available upon request.

## Network Policies and Restrictions

>[!knowledge] The policies and restrictions below do not apply to CustomerNet unless otherwise stated

Networks utilize industry standard filtering rules provided by Fortigate. Application control, Web Filtering, IPS Monitoring, Antivirus and DDoS prevention rules are all utilized.

In general, illegal content is prohibited, as are sites that are generally unrelated to the goals of technical training. Antivirus, IPS Monitoring and DDoS prevention rules apply to all networks including CustomerNet.

>[!knowledge] Updates to filtering rules are applied regularly. For information on a specific application, please see Fortigate's documentation:
[Application Control](https://fortiguard.com/appcontrol) | [Web Filtering](https://fortiguard.com/webfilter) | [IPS Monitoring](https://fortiguard.com/learnmore#ips)

#### Application Control

Blocked Categories:

- Game

- P2P

- Proxy

>[!Alert] Any service that establishes a secure tunnel is classified as a proxy.

- Remote.Access

- Social.Media

- Storage.Backup
    - Google Drive, OneDrive, and Dropbox are allowed on WebNet

- Video/Audio

- Unknown Applications

>[!Knowledge] When building a lab, please verify the function of all services needed. If a specific service is required for a lab environment and does not function, or if the lab uses a service classified as a proxy, please [contact support](https://www.learnondemandsystems.com/customer-support/).

### Web Filtering

Blocked Categories:

- Potentially Liable

- Adult/Mature Content

- Bandwidth Consuming
    - WebNet allows the subcategories "Internet Telephony" and "Backup and Storage"

- Security Risk

- General Interest - Personal

Exceptions to General Interest - Personal are as follows:

|                         |                   |                             |                        |                               |
|-------------------------|-------------------|-----------------------------|------------------------|-------------------------------|
| Advertising             | Digital Postcards | Entertainment               | Restaurant and Dining  | Web Based Email (WebNet only) |
|  Arts and Culture       | Domain Parking    | News and Media              | Society and Lifestyles |                               |
| Brokerage and   Trading | Dynamic Content   | Personal Websites and Blogs | Sports                 |                               |
| Content Servers         | Education         | Reference                   | Travel                 |                               |

#### Additional Restrictions

On all networks, including CustomerNet, the following services are prohibited:

- RDP inbound
- SSH inbound
- TELNET inbound
- FTP/TFPT inbound
- LDAP inbound
- SMB inbound

On the CustomerNet network, labs must follow additional configuration restrictions. Any lab not following these restrictions may be updated by Learn on Demand Systems to bring it into compliance or removed from availability until changes are made.

- Any DNS server with a public IP must have DNS recursion disabled. For details on how to do this, please refer to the documentation for your virtual machine operating system.

- Lab profiles with public IP addresses cannot have specify ethernet (MAC) addresses enabled on their network adapters.

On the SecureNet network, labs must follow additional configuration restrictions. If these restrictions are not followed, web access will not function reliably. For more information, refer to the [Access Control Lists](access-control-lists.md) documentation

- For labs without an internal DNS server, all virtual machiness should use the NAT gateway for their DNS server (this is automatic if DHCP is enabled for the NAT network)

- For labs with an internal DNS server, the internal server should have a forwarder added for the NAT gateway 

## Bandwidth

Bandwidth on all networks is regulated and monitored, utilizing per-IP and per-network restrictions. This is done to ensure platform stability and provide a minimum baseline to all labs. Due to the shared nature of the platform, it is strongly recommended that any downloads in a lab be prestaged to prevent issues or delays in a live class.

## Notice

All information in this document is regularly maintained and updated, but does not represent a guarantee. Network policies and restrictions may change at any time due to the constantly evolving nature of network security. If you have any questions, feedback, or concerns, please [contact support](https://www.learnondemandsystems.com/customer-support/).
