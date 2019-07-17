# How do I create a Badge Provider in the TMS?

The Badge Provider entity in the TMS identifies and links to your external badge provider account. Your badges in the TMS will be associated with this badge provider. 

To create your **Badge Provider** entity:
1. In the **Admin** menu, in the **Badges** group, click **Create Badge Provider**. This will open the Create Badge Provider page.
1. On the **Basic Information** tab, set the **Name** for your provider. This name should reflect the external provider relationship with your organization, such as IPC-Credly.
1. Add a **Description**, if wanted.
1. Ensure **Organization** is set to the organization that will manage the Badge Provider. It defaults to your organization.
1. In the **Badge Provider Type** dropdown, select the external provider. Currently only Credly is available.
1. In the **Badge Provider Organization Id** field, enter your organization’s ID given to you by the external provider. 
1. In the **Badge Provider Api Authentication Token** field, enter the token given to you by the external provider.
1. In the **API URL** field, enter the URL that will be used to issue badges from the external provider. This is what allows the TMS to call out to the provider to trigger badges to be issued.
1. On the **Availability** tab, add your child organizations that may use this Badge Provider for their badges.
1. Click **Save**.

![](/tms/images/create-badge-provider-image.png)

