# Cloud Slice Quick Start - Restriction Policies

> [!ALERT] You are currently viewing the seventh entry in a series of Quick Starts about Cloud Slice.
>
> This guide is **optional**, but it is recommended to avoid incurring additional charges from Cloud providers. 
>
> To complete this quick start, you must have the following:
> * a cloud subscription configured for use with the One Learn Lab on Demand platform (LOD);
>
> * a Cloud Subscription Pool created in LOD that contains the cloud subscription(s) you will use with your Cloud Slice;
>
> * a lab profile that is properly configured to be a Cloud Slice lab;
>
> If you have not yet configured your cloud subscription for use with LOD, go through the [Configure Subscription Quick Start](configure-subscription.md).
>
> If you have configured your cloud subscription properly but have not added your subscription into LOD for use with Cloud Slice labs, go through the [Add Subscription into LOD Quick Start](add-subscription-into-lod.md)
>
> If you have not yet configured your lab profile to be a Cloud Slice lab, go through the [Creating a Cloud Slice lab Quick Start](create.md)

Restriction Policies are used to restrict what lab users can do, while working in a Cloud provider portal. This helps to prevent additional charges from incurring if students configure something in the Cloud portal that is outside of the scope of the lab. Restriction Policies also help students stay within the goals of the lab. 

1. []  **Navigate** to the **Cloud Services** tile, on the Admin page.

   !IMAGE[Cloud Services Tile](images/cloud-services-tile.png)

1. [] Click <[Cloud Restriction Policies](/CloudRestrictionPolicy)

1. []  Click <[Create Cloud Restriction Policy](/CloudRestrictionPolicy/Create) in the upper-right corner of the page. 

   !IMAGE[Create Cloud Restriction Policy](images/create-a-cloud-restriction-policy.png)

1. []  Enter the following values into the Create a Restriction Policy form:

|Tab|Field Name|Field Value|
|--|--|--|
|**Basic Information**|**Name**|A name of your choosing.|
||**Description**|Describe the intentions and goals of the Restriction Policy.|
||**Organizaton**|Select the organization that the Restriction Policy will be available to.|
||**Restriction Policy**|Enter the Restriction Policy here, in JSON format.|
||**Enabled**|Check the box to enable this Restriction Policy for use.|

5. []  Click **Save** at the bottom of the **Create a Restriction Policy** window to save the Restriction Policy

## Sample Restriction Policy

The below Restriction Policy is used to restrict Virtual Machines from being created in Microsoft Azure.

```json
{
    "if": {
        "anyOf": [               
            {
                "field": "type",
                "equals": "Microsoft.Compute/virtualMachines"
            }
        ]
    },
    "then": {
        "effect": "Deny"
    }
}
```

For more information about the items that can be used in a Restriction Policy, see [Microsoft Azure Restriction Policy Templates](https://docs.microsoft.com/en-us/azure/azure-policy/json-samples).

<<<<<<< HEAD
Congratulations, you have just created your first Restriction Policy! Now let's add your Restriction Policy to your Cloud Slice lab.

1. [] Return to the <[Lab on Demand Administration page](/Admin).

1. [] Click <[Find Lab Profiles](/LabProfile) to find your lab profile.

1. [] Enter ++cloud-slice-quick-start++ into the **Name** field, and change the operator drop down adjacent to it to **Equal**. (Or the name of your lab profile, if it is named something else)

1. [] Click **Search** to find your lab profile.

1. [] In the search results, click the Name hyperlink of your lab profile to open the Lab Profile details view.

1. [] Click **Edit** to open the edit view for your lab profile.

1. [] Select the **Cloud** tab.

1. [] Scroll down to where you defined your ++corp-data++ resource group, then click **Add Restriction Policies** below the _Cloud Restriction Policies_ heading.

1. [] Enter the name you gave your Restriction Policy into the **Name** field, and change the operator drop down adjacent to it to **Equal**. (Restriction Policy created in previous steps)

1. [] Click **Search** to find your Restriction Policy.

1. [] Select your Restriction Policy in the list of results, then click **OK**.

1. [] Click **Save** to save the updated lab profile.

With this Restriction Policy in place, lab users will be restricted from creating resources that are defined in the Restriction Policy, in their Cloud Slice lab.

=======
<!--
>>>>>>> ce948fdb7f70ca823e5ec1c8d9193b8e68f4985a
Now that you have configured a Restriction Policy, the next step is to set up your Cloud Slice lab for scale.
Click on the link below to go through the next Quick Start where you will Set up your Cloud Slice lab to scale.

[Set up your Cloud Slice lab up for scale](set-up-cloud-slice-lab-for-scale.md)
-->

[Back to top](#cloud-slice-quick-start---restriction-policies "Return to the top of the document")
