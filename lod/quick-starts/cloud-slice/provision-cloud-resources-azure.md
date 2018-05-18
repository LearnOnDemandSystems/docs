# Cloud Slice Quick Start - Provision cloud resources in your Cloud Slice lab - Microsoft Azure

Estimated time to completion: **10 minutes**.

To create your first Cloud Resource Template in the OneLearn Lab on Demand platform (LOD), you must perform the following tasks:

1. [] Return to the <[Lab on Demand Administration page](/Admin).

1. [] Click <[Cloud Resource Templates](/CloudTemplate) on the Cloud Services tile.

   ![Cloud Resource Templates](images/lod-open-cloud-resource-templates.png)

1. [] Click <[Create Resource Template](/CloudTemplate/Create) in the upper-right corner of the page.

   ![Create Cloud Resource Template](images/lod-create-cloud-resource-template.png)

1. [] Enter ++simple-storage-account++ into the **Name** field on the **Basic Information** tab.

1. [] Enter ++Deploys a single storage account.++ into the **Description** field on the **Basic Information** tab.

1. [] Paste the following Azure Resource Manager (ARM) template into the **Template** field on the **Basic Information** tab.

    ```json
    {
        "$schema": "https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#",
        "contentVersion": "1.0.0.0",
        "parameters": {
            "storageAccountNamePrefix": {
                "defaultValue": "sa",
                "type": "String"
            }
        },
        "variables": {},
        "resources": [
            {
                "type": "Microsoft.Storage/storageAccounts",
                "sku": {
                    "name": "Standard_LRS",
                    "tier": "Standard"
                },
                "kind": "Storage",
                "name": "[concat(parameters('storageAccountNamePrefix'), uniqueString(resourceGroup().id))]",
                "apiVersion": "2017-06-01",
                "location": "[resourceGroup().location]",
                "scale": null,
                "properties": {
                    "supportsHttpsTrafficOnly": false,
                    "encryption": {
                        "services": {
                            "file": {
                                "enabled": true
                            },
                            "blob": {
                                "enabled": true
                            }
                        },
                        "keySource": "Microsoft.Storage"
                    }
                },
                "dependsOn": []
            }
        ]
    }    
    ```

    > [!KNOWLEDGE] You can either copy template contents directly from your cloud platform into a Cloud Resource Template, or you can link to an external template (in a GitHub repository, for example). As a best practice, you should only use external templates if the template files are managed by you or your organization. Otherwise, you risk breaking changes being introduced to a template that is in use in a production lab.

1. [] Select the **Parameters** Tab.

1. [] Enter ++storageAccountNamePrefix++ in the **Name** field.

1. [] Enter ++Storage Account Name Prefix++ in the **Display Name** field.

1. [] Enter ++The prefix that will be applied to the name of the storage account++ in the **Description** field.

1. [] Uncheck the **Required** check box to make the parameter optional.

    > [!KNOWLEDGE] Use **Required** for any parameters that do not have default values.

1. [] Click **Save**.

Congratulations, you have just created your first Cloud Resource Template! Now let's use this template to provision a single storage account with a unique name that starts with "sa" into a resource group in your Cloud Slice lab.

1. [] Return to the <[Lab on Demand Administration page](/Admin).

1. [] Click <[Find Lab Profiles](/LabProfile) to find your lab profile.

1. [] Enter ++cloud-slice-quick-start++ into the **Name** field, and change the operator drop down adjacent to it to **Equal**.

1. [] Enter ++001++ into the **Number** field, and change the operator drop down adjacent to it to **Equal**.

1. [] Click **Search** to find your lab profile.

1. [] In the search results, click the Name hyperlink of your lab profile to open the Lab Profile details view.

1. [] Click **Edit Profile** to open the edit view for your lab profile.

1. [] Select the **Cloud** tab.

1. [] Scroll down to where you defined your ++corp-data++ resource group, then click **Add Resource Template** below the _Cloud Resource Templates_ heading.

1. [] Enter ++simple-storage-account++ into the **Name** field, and change the operator drop down adjacent to it to **Equal**.

1. [] Click **Search** to find your Cloud Resource Template.

1. [] Select your Cloud Resource Template in the list of results, then click **OK**.

    > [!KNOWLEDGE] When you add a Cloud Resource Template to a Cloud Resource Group in a lab profile, if that template has any required parameters, you will automatically be prompted to provide values for those parameters. 

1. [] Enter ++mysa++ into the **Value** field for the "Storage Account Name Prefix" parameter, then click **OK**.

  > [!KNOWLEDGE] Reminder: this is optional, because the parameter was not configured as required.

1. [] Uncheck the **Deploy in Background** checkbox.

    > [!KNOWLEDGE] When you do not mark a Cloud Resource Template as deploy in background, the lab will not be available to the student once launched until the resources defined in the Cloud Resource Template are fully provisioned. If your lab provisions resources that are not required at the beginning of the lab, you may want to check this checkbox so that the lab launches more quickly,allowing students to start working in the lab even while resources are being provisioned.

1. [] Click **Save** to save the updated lab profile.

With these changes in place, one storage account will be provisioned for each student who launches this lab. Provisioning resources during lab deployment can help guide students down the right path more quickly.

Now that you have added a Cloud Resource Template to your lab, click on the link below to learn how to restrict the types of resources students can create in their Cloud Slice.

[Restrict what users can create in your Cloud Slice lab](restriction-policies.md)

[Back to top][back-to-top]

[back-to-top]: #cloud-slice-quick-start---provision-cloud-resources-in-your-cloud-slice-lab-microsoft-azure "Return to the top of the document"
