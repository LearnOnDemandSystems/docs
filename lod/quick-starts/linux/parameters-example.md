## Copy Azure Resource Manager (ARM) template parameters

1. [] The code block below contains the definition of the parameters for the ARM template that you just copied and pasted. Click anywhere in that code block to copy its contents to your clipboard.

1. [] Click **Import from JSON** on the **Parameters** tab to open a dialog where you will paste the JSON document you just copied.

1. [] Paste the contents of your clipboard into the **Import Parameters** dialog, and then click **OK** to close that dialog. Notice how the parameters from the ARM template parameters file are automatically added to your Resource Template.

1. [] Close this dialog to return to the previous document.

### ARM template parameter definitions

```json
{
    "$schema": "https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#",
    "contentVersion": "1.0.0.0",
    "parameters": {
        "virtualMachines_Ubuntu_name": {
            "defaultValue": "Ubuntu",
            "type": "String"
        },
        "networkInterfaces_ubuntu551_name": {
            "defaultValue": "ubuntu551",
            "type": "String"
        },
        "publicIPAddresses_Ubuntu_ip_name": {
            "defaultValue": "Ubuntu-ip",
            "type": "String"
        },
        "virtualNetworks_Ubuntu_vnet_name": {
            "defaultValue": "Ubuntu-vnet",
            "type": "String"
        },
        "networkSecurityGroups_Ubuntu_NSG_name": {
            "defaultValue": "Ubuntu-NSG",
            "type": "String"
        },
        "subnets_default_name": {
            "defaultValue": "default",
            "type": "String"
        },
        "securityRules_SSH_name": {
            "defaultValue": "SSH",
            "type": "String"
        },
        "vmsize":{
            "defaultValue": "Standard_B1s",
            "type": "string"
        },
        "vmAdminUsername": {
            "defaultValue": "azureadmin",
            "type": "string"
        },
        "vmAdminPassword":{
            "defaultValue": "AzurePassw0rd!",
            "type": "securestring"
        },
        "dnsName":{
            "defaultValue": "",
            "type": "string"
        }
    }
}
```
