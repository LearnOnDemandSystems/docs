---
title: "Loss of Internet Connectivity in a Lab "
description: "Steps to mitigate issues due to loss of internet in a lab environment"
isPublished: true
---

# Loss of Internet Connectivity in a Lab 

Some lab environments may have external internet access. Internet connectivity in these labs may become intermittent or disconnected. If connectivity issues occur, following the instructions below can help correct these issues. If you are still experiencing issues after following the below steps, please reach out to your training organization. 

1. Navigate to the lab profile for the lab. 
1. Select **Edit Profile**. 
1. Navigate to the **Networks tab**. 
1. Next to Type, ensure that the lab profile has either **Web Access (NAT)** or **Web Access (Public IP)**. 

    >[!knowledge] Private is used to connect VM's together and will not connect the lab profile to the internet. Custom can be leveraged for internet as well, but should not be seen often. 

1. Save the lab profile and relaunch the lab. 

If the lab profile is not designed to have internet, no further troubleshooting steps are necessary. 

<!--search terms-->
<div hidden>
<b>unable to access internet</b>
<b>internet not present</b>
<b>lab lost internet</b>
<b>loss of internet</b>
</div>