# How can I add Internet accessibility to my labs?

>[!ALERT] This article applies to labs running on the Hyper-V platform only. Users working with labs using the VSphere environment should contact our Help Desk Team at https://lod.one/help.

When creating a Lab Profile, you can add Internet access to the lab by setting a network in the profile to a Web Access (NAT) type. 

To do this:
1. Click **Edit** on the **Lab Profile** page. 
1. In the **Edit Lab Profile** page, click the **Network** tab. 
1. You can either change a current network entry or add a new one. On the network that will provide web access, click the **Type** dropdown and select **Web Access (NAT)**. If you do not see this option, you can request it by contacting our Support team at https://lod.one/help.

Once you select **Web Access (NAT)**, you can edit the **Gateway Address** and the **Subnet Mask**. The Gateway Address is the address to be used as the Gateway entry inside of the VM Profiles? IP addressing. You set this address to what will work with your Virtual Machine Profile(s)? network settings. 

We highly recommend the use of static MAC addresses on the NICs which are connected to any NAT networks. You can set the static MAC address on the VM by editing the **VM profile**, then click on the **Network Adapter** tab. From here check the box next to Specify Ethernet (MAC) address and then click on Generate to create a static MAC address.

If you want the Virtual Machines Profiles that will use this Network to obtain their network information automatically, click the **Enable DHCP** checkbox. Then set the **DHCP Range Start** and **DHCP Range End** fields to any valid addresses within the scope specified in the **Gateway Address** and **Subnet Mask**. This address range will be given to the DHCP client VM Profiles. 

>[!ALERT] We do not recommend the use of DHCP for labs which will use a start state.

For labs which will use a start state, we recommend setting the IPv4 settings of the NIC to use a static IP address, subnet mask, and gateway which match the scope and gateway address of the NAT network. You can use any external DNS you would like. Alternatively, you can change the gateway IP and subnet of the NAT network to something that will fit your current IP scope in the lab environment.
