# Important Note for Windows Server Operating Systems Users

When connecting to the Learn on Demand Systems Training Management Systems (TMS) from a Windows Server OS computer, you may experience difficulty connecting to the sign-in page or clicking on some buttons.

If this occurs, ensure that you are signed on to your machine as a user with administrative privileges and do the following to turn off IE Enhanced Security Configuration (IE ESC):

1. Close any open **Internet Explorer** windows.
1. Open **Server Manager**, if not already open.
1. Select the **Local Server**.
1. On the right side of the **Properties** pane, click **IE Enhanced Security On**.
1. Select **Off** for both **Administrators** and **Users**.
1. Click **OK**.
1. Open **Internet Explorer**.
1. Navigate to the TMS.
1. Sign in normally.

![](../images/server-manager.png)
