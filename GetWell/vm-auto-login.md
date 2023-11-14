---
title: "Configure Virtual Machines to log in to Windows automatically"
description: "Configure a Windows virtual machine to log in automatically without the need to enter a username and password."
isPublished: true
---
## Improve the learner & candidate experience by automatically logging into VMs when a lab is launched

### Description
Learn how to configure VMs to automatically log in to Windows
 - Lab Builders can configure Virtual Machines to automatically log in to Windows, making the experience of the learner easier and more seamless
 - Any Lab Builder who wants to wants to avoid having learners log in to the VM manually can set up their VMs to log in automatically
 - The steps to configure automatic login differ depending on the virtualization fabric and remote controller used in the lab.

## In this Article:
- [Configuring ESX VMs for automatic login](#configuring-esx)
    -  [Configuring Netplwiz](#configuring-netplwiz)
- [Configuring Automatic Login for Hyper-V and Enhanced Session Mode](#configuring-automatic-login-for-hyper-v-and-enhanced-session-mode)
  - [Disable Limit Local Accounts use of Blank Passwords](#disable-limit-local-accounts-use-of-blank-passwords)
  - [Disable Password Complexity Requirements](#disable-password-complexity-requirements)
  - [Set a Blank Password via PowerShell](#set-a-blank-password-via-powershell)
  - [Edit Windows Registry](#edit-windows-registry)
  - [Configuring Other ESM VMs in the Lab](#configuring-other-esm-vms-in-the-lab)

### Required Permissions

This feature requires the following permissions. If you do not have access to this feature, please reach out to our customer support team for assistance.

- *Lab Profile and VM Management*

# Configuring ESX VMs for automatic login

Automatic login is configured using the Netplwiz utility built into Windows

## Configuring Netplwiz

Netplwiz is a utility built into Windows that allows you to manage user accounts. 

1. **Navigate to the lab profile** that contains the VMs that you wish to enable automatic login on. 

1. **Launch** the lab. 

1. If the lab has multiple VMs, **select the VM that should be automatically logged in**.

1. **Enter the login password** and login to the VM. 

1. In the Windows Start menu, search for **Netplwiz**, and then select **Netplwiz**. 

1. **Uncheck** the box next to **Users must enter a user name and password to use this computer**. 

    ![Uncheck Users must enter a user name and password to use this computer](images/netplwiz-uncheck-box.png){600}

1. In the dialog that appears, enter the VM user name and password and click **OK**. 

    ![](images/netplwiz-enter-password.png){600}

1. Repeat steps 3-7 for any other VMs that should be automatically logged in.

1. Save these changes to the VM disk(s). For more information about saving changes to the VM disk(s), see our [Differencing Disk Documentation](capture-differencing-disks.md).

    1. Select the **Hamburger menu** in the upper-right corner of the lab. 

    1. Select **Save**

## Hyper-V 

- For Hyper-V labs that **do not use Enhanced Session Mode (ESM)**, automatic login is configured using the Netplwiz utility built into Windows.

- For Hyper-V labs that **use ESM**, Windows Registry and Group Policy must be configured to enable automatic login. 

## Configuring Automatic Login for Hyper-V and Enhanced Session Mode

For labs that **use ESM**, Windows Registry and Group Policy must be configured to enable automatic login. There are two settings that need to be changed, and a PowerShell command to execute. 


1. [Disable Limit Local Accounts use of Blank Passwords](#disable-limit-local-accounts-use-of-blank-passwords)
1. [Disable Password Complexity Requirements](#disable-password-complexity-requirements)
1. [Set a Blank Password via PowerShell](#set-a-blank-password)
1. [Edit Windows Registry](#edit-windows-registry)

### Disable Limit Local Accounts use of Blank Passwords

1. **Navigate to the lab profile** that contains the VMs that you wish to enable automatic login on. 

1. **Launch** the lab. 

1. If the lab has multiple VMs, **select the VM that should be automatically logged in**.

1. **Enter the login password** and login to the VM. 

1. In the Windows Start menu, search for **Group Policy**, then select **Edit Group Policy**. 

    ![Group Policy Editor](images/group-policy-editor.png){600}

1. Select **Computer Configuration**

    ![Select Computer Configuration](images/gp-computer-config.png){600}

1. Select **Windows Settings**

    ![Select Windows Settings](images/gp-windows-settings.png){600}

1. Select **Security Settings**

    ![Select Security Settings](images/gp-security-settings.png){600}

1. Select **Local Policies**

    ![Select Local Policies](images/gp-local-policies.png){600}

1. Select **Security Options**

    ![Select Security Options](images/gp-security-options.png){600}

1. Double-click  **Accounts: Limit local account use of blank passwords to console logon only**

    ![Select Accounts: Limit local account use of blank passwords to console logon only](images/gp-accounts-limit-local.png){600}

1. Select **Disabled**, and click **OK**. 

    ![Select Disabled](images/gp-account-disabled-setting.png){600}

### Disable Password Complexity Requirements

1. In the Windows Start menu, search for **Group Policy**, then select **Edit Group Policy**. 

    ![Group Policy Editor](images/group-policy-editor.png){600}

1. Select **Computer Configuration**

    ![Select Computer Configuration](images/gp-computer-config.png){600}

1. Select **Windows Settings**

    ![Select Windows Settings](images/gp-windows-settings.png){600}

1. Select **Security Settings**

    ![Select Security Settings](images/gp-security-settings.png){600}

1. Select **Account Policies**

    ![Select Account Policies](images/gp-account-policies.png){600}

1. Select **Password Policy**

    ![Select Password Policy](images/gp-password-policy.png){600}

1. Double-click **Password must meet complexity requirements**. 

    ![Select Password must meet complexity requirements](images/gp-password-complexity-requirements.png){600}

1. Select **Disabled**, and click **OK**.

    ![Select Disabled](images/gp-password-complexity-requirements-disabled.png){600}

### Set a Blank Password via PowerShell

Now that the Group Policy is configured to allow a blank password, we need to set the password to be blank. 

1. In the VM, open PowerShell as an administrator. 

1. Enter the following command and press enter: 

    ```PowerShell
    Set-LocalUser -name "Administrator" -Password ([securestring]::new())
    ```
    If the username in your VM is not Administrator, replace _Administrator_ with the name of your username in the PowerShell command. 

### Edit Windows Registry

Edit the registry and ensure the values match the table below: 

| Name | Type | Data
|:---|:---|:--|
| AutoAdminLogon  |Reg_SZ|1
| DefaultPassword |Reg_SZ|leave this blank
| DefaultUserName |Reg_SZ|Administrator
| ForceAutoLogon  |Reg_DWORD|1
| ForceUnlockLogon|Reg_DWORD|1

![](images/edit-registry-for-auto-login.png)

### Configuring Other ESM VMs in the Lab

1. Repeat all previous steps for any other VMs that should be automatically logged in.

1. Save these changes to the VM disk(s). For more information about saving changes to the VM disk(s), see our [Differencing Disk Documentation](capture-differencing-disks.md).

    1. Select the **Hamburger menu** in the upper-right corner of the lab. 

    1. Select **Save**
