## Copy Azure Resource Manager (ARM) template parameters

1. The code block below contains the definition of the parameters for the ARM template that you just copied and pasted. Click anywhere in that code block to copy its contents to your clipboard.

1. Click **Import from JSON** on the **Parameters** tab to open a dialog where you will paste the JSON document you just copied.

1. Paste the contents of your clipboard into the **Import Parameters** dialog, and then click **OK** to close that dialog. Notice how the parameters from the ARM template parameters file are automatically added to your Resource Template.

1. Close this dialog to return to the previous document.

### ARM template parameter definitions

```json
{
    "$schema": "https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#",
    "contentVersion": "1.0.0.0",
    "parameters": {
        "name": {
            "type": "String"
        },
        "nicName": {
            "type": "String"
        },
        "publicIPAddressName": {
            "type": "String"
        },
        "vnetName": {
            "type": "String"
        },
        "networkSecurityGroupName": {
            "type": "String"
        },
        "subnetName": {
            "type": "String"
        },
        "securityRuleName": {
            "type": "String"
        },
        "size":{
            "type": "string"
        },
        "adminUsername": {
            "type": "string"
        },
        "adminPassword":{
            "type": "securestring"
        },
        "dnsName":{
            "type": "string"
        }
    }
}
```
