## Copy an Azure Resource Manager (ARM) template into LOD

1. The code block below contains an ARM template. Click anywhere in that code block to copy its contents to your clipboard.

1. Paste what you just copied into the **Template** field on the **Basic Information** tab of your Resource Template.

1. Close this dialog to return to the previous document.

### ARM template

```json
{
    "$schema": "https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#",
    "contentVersion": "1.0.0.0",
    "parameters": {
        "name": {
            "defaultValue": "ubuntu",
            "type": "String"
        },
        "nicName": {
            "defaultValue": "ubuntuNic",
            "type": "String"
        },
        "publicIPAddressName": {
            "defaultValue": "ubuntuIPAddress",
            "type": "String"
        },
        "vnetName": {
            "defaultValue": "ubuntuVNet",
            "type": "String"
        },
        "networkSecurityGroupName": {
            "defaultValue": "ubuntuNsg",
            "type": "String"
        },
        "subnetName": {
            "defaultValue": "default",
            "type": "String"
        },
        "securityRuleName": {
            "defaultValue": "SSH",
            "type": "String"
        },
        "size":{
            "defaultValue": "Standard_B1s",
            "type": "string"
        },
        "adminUsername": {
            "defaultValue": "azureadmin",
            "type": "string"
        },
        "adminPassword":{
            "defaultValue": "AzurePassw0rd!",
            "type": "securestring"
        },
        "dnsName":{
            "type": "string"
        }
    },
    "variables": {},
    "resources": [
        {
            "type": "Microsoft.Compute/virtualMachines",
            "name": "[parameters('name')]",
            "apiVersion": "2017-03-30",
            "location": "[resourceGroup().location]",
            "scale": null,
            "properties": {
                "hardwareProfile": {
                    "size": "[parameters('size')]"
                },
                "storageProfile": {
                    "imageReference": {
                        "publisher": "Canonical",
                        "offer": "[concat(parameters('name'),'Server')]",
                        "sku": "16.04-LTS",
                        "version": "latest"
                    },
                    "osDisk": {
                        "osType": "Linux",
                        "name": "[concat(parameters('name'),'_OsDisk_1_3760acb5ca8649a086e1ad2b476d3b12')]",
                        "createOption": "FromImage",
                        "caching": "ReadWrite",
                        "managedDisk": {
                            "storageAccountType": "Premium_LRS"
                        },
                        "diskSizeGB": 30
                    },
                    "dataDisks": []
                },
                "osProfile": {
                    "computerName": "[parameters('name')]",
                    "adminUsername": "[parameters('adminUsername')]",
                    "adminPassword": "[parameters('adminPassword')]",
                    "linuxConfiguration": {
                        "disablePasswordAuthentication": false
                    },
                    "secrets": []
                },
                "networkProfile": {
                    "networkInterfaces": [
                        {
                            "id": "[resourceId('Microsoft.Network/networkInterfaces', parameters('nicName'))]"
                        }
                    ]
                }
            },
            "dependsOn": [
                "[resourceId('Microsoft.Network/networkInterfaces', parameters('nicName'))]"
            ]
        },
        {
            "comments": "Generalized from resource: '/subscriptions/c9fd8569-a40c-4701-b4fe-0212e170195f/resourceGroups/Ubuntu/providers/Microsoft.Network/networkInterfaces/ubuntu551'.",
            "type": "Microsoft.Network/networkInterfaces",
            "name": "[parameters('nicName')]",
            "apiVersion": "2017-10-01",
            "location": "[resourceGroup().location]",
            "scale": null,
            "properties": {
                "provisioningState": "Succeeded",
                "resourceGuid": "744b8605-0fa8-495a-83e5-9a75f777b63f",
                "ipConfigurations": [
                    {
                        "name": "ipconfig1",
                        "etag": "W/\"1a1927bc-c05d-4a3b-a3be-818ae05bb74d\"",
                        "properties": {
                            "provisioningState": "Succeeded",
                            "privateIPAddress": "10.0.1.4",
                            "privateIPAllocationMethod": "Dynamic",
                            "publicIPAddress": {
                                "id": "[resourceId('Microsoft.Network/publicIPAddresses', parameters('publicIPAddressName'))]"
                            },
                            "subnet": {
                                "id": "[resourceId('Microsoft.Network/virtualNetworks/subnets', parameters('vnetName'), parameters('subnetName'))]"
                            },
                            "primary": true,
                            "privateIPAddressVersion": "IPv4"
                        }
                    }
                ],
                "dnsSettings": {
                    "dnsServers": [],
                    "appliedDnsServers": []
                },
                "macAddress": "00-0D-3A-1A-F4-DA",
                "enableAcceleratedNetworking": false,
                "enableIPForwarding": false,
                "networkSecurityGroup": {
                    "id": "[resourceId('Microsoft.Network/networkSecurityGroups', parameters('networkSecurityGroupName'))]"
                },
                "primary": true,
                "virtualMachine": {
                    "id": "[resourceId('Microsoft.Compute/virtualMachines', parameters('name'))]"
                }
            },
            "dependsOn": [
                "[resourceId('Microsoft.Network/publicIPAddresses', parameters('publicIPAddressName'))]",
                "[resourceId('Microsoft.Network/virtualNetworks/subnets', parameters('vnetName'), parameters('subnetName'))]",
                "[resourceId('Microsoft.Network/networkSecurityGroups', parameters('networkSecurityGroupName'))]"
            ]
        },
        {
            "type": "Microsoft.Network/networkSecurityGroups",
            "name": "[parameters('networkSecurityGroupName')]",
            "apiVersion": "2017-10-01",
            "location": "[resourceGroup().location]",
            "scale": null,
            "properties": {
                "provisioningState": "Succeeded",
                "resourceGuid": "3f0269b1-dc99-4073-8ee2-378bab87ab02",
                "securityRules": [
                    {
                        "name": "SSH",
                        "etag": "W/\"adc8d000-0fb3-48a3-9dff-33d04ec8c517\"",
                        "properties": {
                            "provisioningState": "Succeeded",
                            "protocol": "TCP",
                            "sourcePortRange": "*",
                            "destinationPortRange": "22",
                            "sourceAddressPrefix": "*",
                            "destinationAddressPrefix": "*",
                            "access": "Allow",
                            "priority": 100,
                            "direction": "Inbound",
                            "sourcePortRanges": [],
                            "destinationPortRanges": [],
                            "sourceAddressPrefixes": [],
                            "destinationAddressPrefixes": []
                        }
                    }
                ],
                "defaultSecurityRules": [
                    {
                        "name": "AllowVnetInBound",
                        "etag": "W/\"adc8d000-0fb3-48a3-9dff-33d04ec8c517\"",
                        "properties": {
                            "provisioningState": "Succeeded",
                           "description": "Allow inbound traffic from all VMs in VNET",
                            "protocol": "*",
                            "sourcePortRange": "*",
                            "destinationPortRange": "*",
                            "sourceAddressPrefix": "VirtualNetwork",
                            "destinationAddressPrefix": "VirtualNetwork",
                            "access": "Allow",
                            "priority": 65000,
                            "direction": "Inbound",
                            "sourcePortRanges": [],
                            "destinationPortRanges": [],
                            "sourceAddressPrefixes": [],
                            "destinationAddressPrefixes": []
                        }
                    },
                    {
                        "name": "AllowAzureLoadBalancerInBound",
                        "etag": "W/\"adc8d000-0fb3-48a3-9dff-33d04ec8c517\"",
                        "properties": {
                            "provisioningState": "Succeeded",
                            "description": "Allow inbound traffic from azure load balancer",
                            "protocol": "*",
                            "sourcePortRange": "*",
                            "destinationPortRange": "*",
                            "sourceAddressPrefix": "AzureLoadBalancer",
                            "destinationAddressPrefix": "*",
                            "access": "Allow",
                            "priority": 65001,
                            "direction": "Inbound",
                            "sourcePortRanges": [],
                            "destinationPortRanges": [],
                            "sourceAddressPrefixes": [],
                            "destinationAddressPrefixes": []
                        }
                    },
                    {
                        "name": "DenyAllInBound",
                        "etag": "W/\"adc8d000-0fb3-48a3-9dff-33d04ec8c517\"",
                        "properties": {
                            "provisioningState": "Succeeded",
                            "description": "Deny all inbound traffic",
                            "protocol": "*",
                            "sourcePortRange": "*",
                            "destinationPortRange": "*",
                            "sourceAddressPrefix": "*",
                            "destinationAddressPrefix": "*",
                            "access": "Deny",
                            "priority": 65500,
                            "direction": "Inbound",
                            "sourcePortRanges": [],
                            "destinationPortRanges": [],
                            "sourceAddressPrefixes": [],
                            "destinationAddressPrefixes": []
                        }
                    },
                    {
                        "name": "AllowVnetOutBound",
                        "etag": "W/\"adc8d000-0fb3-48a3-9dff-33d04ec8c517\"",
                        "properties": {
                            "provisioningState": "Succeeded",
                            "description": "Allow outbound traffic from all VMs to all VMs in VNET",
                            "protocol": "*",
                            "sourcePortRange": "*",
                            "destinationPortRange": "*",
                            "sourceAddressPrefix": "VirtualNetwork",
                            "destinationAddressPrefix": "VirtualNetwork",
                            "access": "Allow",
                            "priority": 65000,
                            "direction": "Outbound",
                            "sourcePortRanges": [],
                            "destinationPortRanges": [],
                            "sourceAddressPrefixes": [],
                            "destinationAddressPrefixes": []
                        }
                    },
                    {
                        "name": "AllowInternetOutBound",
                        "etag": "W/\"adc8d000-0fb3-48a3-9dff-33d04ec8c517\"",
                        "properties": {
                            "provisioningState": "Succeeded",
                            "description": "Allow outbound traffic from all VMs to Internet",
                            "protocol": "*",
                            "sourcePortRange": "*",
                            "destinationPortRange": "*",
                            "sourceAddressPrefix": "*",
                            "destinationAddressPrefix": "Internet",
                            "access": "Allow",
                            "priority": 65001,
                            "direction": "Outbound",
                            "sourcePortRanges": [],
                            "destinationPortRanges": [],
                            "sourceAddressPrefixes": [],
                            "destinationAddressPrefixes": []
                        }
                    },
                    {
                        "name": "DenyAllOutBound",
                        "etag": "W/\"adc8d000-0fb3-48a3-9dff-33d04ec8c517\"",
                        "properties": {
                            "provisioningState": "Succeeded",
                            "description": "Deny all outbound traffic",
                            "protocol": "*",
                            "sourcePortRange": "*",
                            "destinationPortRange": "*",
                            "sourceAddressPrefix": "*",
                            "destinationAddressPrefix": "*",
                            "access": "Deny",
                            "priority": 65500,
                            "direction": "Outbound",
                            "sourcePortRanges": [],
                            "destinationPortRanges": [],
                            "sourceAddressPrefixes": [],
                            "destinationAddressPrefixes": []
                        }
                    }
                ]
            },
            "dependsOn": []
        },
        {
            "type": "Microsoft.Network/publicIPAddresses",
            "sku": {
                "name": "Basic"
            },
            "name": "[parameters('publicIPAddressName')]",
            "apiVersion": "2017-10-01",
            "location": "[resourceGroup().location]",
            "scale": null,
            "properties": {
                "provisioningState": "Succeeded",
                "resourceGuid": "0927927c-6891-4c37-ac48-ea2f883e9f38",
                "ipAddress": "52.186.84.120",
                "publicIPAddressVersion": "IPv4",
                "publicIPAllocationMethod": "Dynamic",
                "idleTimeoutInMinutes": 4,
                "dnsSettings": {
                    "domainNameLabel": "[parameters('dnsName')]",
                    "fqdn": "[parameters('dnsName')].[resourceGroup().location].cloudapp.azure.com"
                }
            },
            "dependsOn": []
        },
        {
            "type": "Microsoft.Network/virtualNetworks",
            "name": "[parameters('vnetName')]",
            "apiVersion": "2017-10-01",
            "location": "[resourceGroup().location]",
            "scale": null,
            "properties": {
                "provisioningState": "Succeeded",
                "resourceGuid": "5676a20e-d623-48a2-bfa5-753c6eaf7f89",
                "addressSpace": {
                    "addressPrefixes": [
                        "10.0.1.0/24"
                    ]
                },
                "subnets": [
                    {
                        "name": "default",
                        "etag": "W/\"dd04670b-13e0-4289-b0f8-560d0286b763\"",
                        "properties": {
                            "provisioningState": "Succeeded",
                            "addressPrefix": "10.0.1.0/24"
                        }
                    }
                ],
                "virtualNetworkPeerings": [],
                "enableDdosProtection": false,
                "enableVmProtection": false
            },
            "dependsOn": []
        },
        {
            "type": "Microsoft.Network/networkSecurityGroups/securityRules",
            "name": "[concat(parameters('networkSecurityGroupName'), '/', parameters('securityRuleName'))]",
            "apiVersion": "2017-10-01",
            "scale": null,
            "properties": {
                "provisioningState": "Succeeded",
                "protocol": "TCP",
                "sourcePortRange": "*",
                "destinationPortRange": "22",
                "sourceAddressPrefix": "*",
                "destinationAddressPrefix": "*",
                "access": "Allow",
                "priority": 100,
                "direction": "Inbound",
                "sourcePortRanges": [],
                "destinationPortRanges": [],
                "sourceAddressPrefixes": [],
                "destinationAddressPrefixes": []
            },
            "dependsOn": [
                "[resourceId('Microsoft.Network/networkSecurityGroups', parameters('networkSecurityGroupName'))]"
            ]
        },
        {
            "type": "Microsoft.Network/virtualNetworks/subnets",
            "name": "[concat(parameters('vnetName'), '/', parameters('subnetName'))]",
            "apiVersion": "2017-10-01",
            "scale": null,
            "properties": {
                "provisioningState": "Succeeded",
                "addressPrefix": "10.0.1.0/24"
            },
            "dependsOn": [
                "[resourceId('Microsoft.Network/virtualNetworks', parameters('vnetName'))]"
            ]
        }
    ]
}
```
