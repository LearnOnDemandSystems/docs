# Copy Resource Template Parameters

1. Click anywhere in the sample instructions below to copy the sample Resource Template Parameters to your clipboard. 

1. Close this dialog to return to the previous document. 

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
