# Create an Access Control Policy 

An Access Control Policy  is used by a cloud provider, to limit the resources that can be provisioned by the cloud provider. This helps to prevent additional charges from incurring if students configure something in the Cloud portal that is outside of the scope of the lab. Access Control Policies also help students stay within the goals of the lab.

For more information about the items that can be used in an Access Control Policy , see [Microsoft Azure Access Control Policy  Templates](https://docs.microsoft.com/en-us/azure/azure-policy/json-samples).

>[!alert] In LOD, Access Control Policies are housed inside of a resource group. If you have not created a Resource Group, you will not be able to configure the Access Control Policy to the lab profile until the Resource Group is created and assigned to the lab profile. See our guide for more information about [creating a resource template and configure it into a resource group](create-a-resource-template-and-configure-it-into-a-resource-group.md). 

## Creating an Access Control Policy in Lab on Demand (LOD)

1. **Navigate** to the **Cloud Services** tile, on the LOD Admin page.

1. Click **Cloud Access Control Policies**.

1. Click **Create Acess Control Policy** in the upper-right corner of the page. 

   ![Create Cloud Access Control Policy ](images/find-access-control-policy.png)

1. Enter the following values into the Create an Access Control Policy  form:

    |Tab|Field Name|Field Value|
    |--|--|--|
    |**Basic Information**|**Name**|A name of your choosing.|
    ||**Description**|Describe the intentions and goals of the Access Control Policy .|
    ||**Organizaton**|Select the organization that the Access Control Policy  will be available to.|
    ||**Access Control Policy**|Enter the Access Control Policy  here, in JSON format.|
    ||**Enabled**|Check the box to enable this Access Control Policy  for use.|

## Examples

### Azure

By default, Azure allows all resources to be provisioned, unless they are defined as denied by an access control policy. 

The access control policy below will deny any resources from being provisioned unless it is a standard_DS3_v2 virtual machine to be deployed. 

```
{
    "if": {
        "allOf": [
            {
                "field": "type",
                "equals": "Microsoft.Compute/virtualMachines"
            },
            {
                "not": {
                    "field": "Microsoft.Compute/virtualMachines/sku.name",
                    "in": [
                        "Standard_DS3_v2"
                    ]
                }
            }
        ]
    },
    "then": {
        "effect": "Deny"
    }
}
```

### AWS

By default, AWS allows denies all resources from bring provisioned, unless they are defined as allowed by an access control policy. 

The access control policy below will allow only the EC2 service to be deplyed. Other AWS services that are not defined will not be available for deployment.

```
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1547479378374",
      "Action": [
                "ec2:*"   
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
```

## Adding a Access Control Policy  To a Cloud Slice Lab in LOD

1. Navigate to the lab profile that you wish to add the Access Control Policy  to.

    >[!knowledge] You can search for your lab profile by doing the following:
    >
    >1. Return to the Lab on Demand Administration page.
    >
    >1. Click Find Lab Profiles to find your lab profile.
    >
    >1. Enter the name of the lab profile into the **Name** field, and change the operator drop down adjacent to it to **Equal**. 
    >
    >1. Click **Search** to find your lab profile.
    >
    >1. In the search results, click the Name of your lab profile to open the Lab Profile details view.

1. Click **Edit Profile** to open the edit view for your lab profile.

1. Select the **Cloud** tab.

1. Scroll down to your resource group, then click **Add Access Control Policies** below the _Cloud Access Control Policies_ heading.

1. Enter the name you gave your Access Control Policy  into the **Name** field, and change the operator drop down adjacent to it to **Equal**. (Access Control Policy  created in previous steps)

1. Click **Search** to find your Access Control Policy .

1. Select your Access Control Policy  in the list of results, then click **OK**.

1. Click **Save** to save the updated lab profile.

With this Access Control Policy  in place, lab users will be restricted from creating resources that are defined in the Access Control Policy , in their Cloud Slice lab.

[Back to top](#an-access-control-policy)
