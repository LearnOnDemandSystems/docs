---
title: "Connectivity Issues "
description: "How to mitigate common connectivity issues."
isPublished: true
---

# Connectivity Issues 

Issues present inside the lab environment can vary and show in different forms: 

 - Blank or Black screens 
 - Slow interactions in lab environment (Keyboard inputs or mouse clicks are delayed) 
 - Messages displaying on screen saying _The Connection to your lab machines appears to have been interrupted_ 

 A few important things to review with regards to the issues you are describing can be looked at first. 

>[!knowledge]
> - **Work Issued Device**: If you are using a work issued device, please try > using a personal device instead. Your company device could have built in > protocols that could prohibit access to remote sessions, causing connection > issues to your labs.  
> 
> - **Managed Network**: If the lab is being run through a managed network > through your Work or school, please review our [Connectivity Requirements]> (https://docs.skillable.com/tms/connectivity-requires.md) and have your IT > department look over all the necessary requirements. 
> 
> - **Lab Latency Indicator**: The lab interface latency indicator may show > latency as good or excellent. This does not rule out problems with the local > connection as it only takes into account the current latency and does not test > for firewall or routing problems. There are "hops" between the initial lab > launch location and our hosts that can fail and are also not detected by the > in-lab indicator. This test measures the most common factors that can impact > connection quality to lab environments: [https://www.skillable.com/speedtest/]> (https://www.skillable.com/speed-test/)
 
If these don't apply to your situation, please perform the following steps to rule out your local connection.  

- **VPN/Proxy**: While you can have success with VPN's, they are not recommended as certain configuration requirements must be met to avoid issues properly connecting with the lab: [Proxy Requirements](https://docs.skillable.com/tms/proxy-requires.md?).

- **Use a hardwired connection**: Hotspots, Wi-Fi, cellular, and satellite internet typically have higher latency and can cause packet loss, which can result in a poor lab experience. 

- **Review your security software**: Turn off any third party anti-virus programs, pop up blockers, add blockers, Etc. 

- **Review your network**: Port 443 must be open for inbound and outbound traffic. Additional firewall exceptions may be needed. Please review our [Connectivity Requirements](https://docs.skillable.com/tms/connectivity-requires.md?). 

- **Reset your local Network**: Power cycle your modem and router. 

- **Confirm your bandwidth**: The minimum Speed for labs is 200kbps up and down consistent/1mbps burst, Per user. 

- **Try a different browser**: Some browser extensions can cause certain aspects of our lab environments to not load correctly. 

- **Try a different computer**: Some work-issued computers have built-in software that cannot be disabled, sometimes this software interferes with connection to our service.  If possible, please try a personal computer. 

<!--search terms-->
<div hidden>
<b>Unresponsive</b>
<b>no screen</b>
<b>slow response</b>
<b>connection issues</b>
</div>