# Use Azure ARM Template for Cloud Slice

This document outlines the considerations and recommendations for Lab Authors who wish to use Azure ARM templates as part of a Cloud Slice deployment. No guidance is a substitute for thorough testing, and all templates should be fully tested before release and on a regular basis during the life of the lab they support. Azure frequently changes, and changes may have a negative impact on existing, especially older, templates, which may require updates to remain current and valid.

## Preparing an ARM Template for Deployment in Cloud Slice.

A cloud slice lab may contain one or more resource groups. Each resource group can consist of one or more ARM templates deployed concurrently. A cloud slice will contain one user account, but may contain multiple user accounts. User accounts can be assigned access to resource groups based on the build-in roles of Contributor, Owner, and Reader.

The recommended process for building and testing an ARM template for inclusion in LOD is as follows.

1. Log into your Azure Subscription and create a new RG.
1. Create and configure the resources that you want deployed for students within your RG.
1. Once you have your resources the way you want, use Azure to view/export the script. Take note of any messages related to resources/config that are not applied to the RG -- these will require either manual updates to the ARM template or a PowerShell script run as part of a Life Cycle Action when the lab launches.
1. Save both the ARM script and the parameters to disk.
1. Test deployment of your ARM template into a new RG in the same subscription, in the region where you want the resources deployed, from outside of Azure, using a user account that only has Contributor access to that RG (no subscription level access). This can be done using PowerShell or the Azure CLI.
1. Once you confirm your ARM template deploys successfully, delete the RG and its contents.
1. Modify your ARM template so that any resources requiring unique names (either unique across a subscription or globally unique) are appropriately randomized so that no matter how many students launch the lab, their deployments will all succeed. This requires using ARM template functions and/or replacement tokens in the ARM template. Refer to details in the Recommendations and Best Practices section, below, for guidance on name randomization.
1. Test deployment of your updated ARM template, into a new, empty RG in the same fashion that you did in 6. Ensure that all resources are created in the same region as your RG. Once it is working, delete the RG and its contents.
1. Either copy your template directly into a new LOD Cloud Resource Template or save it into an external repository (GitHub, etc.) and copy the link into the new LOD Cloud Resource Template. If you save it externally you will need a link that allows anyone to access the raw template file (possible even in GitHub private repos).
1. Reference the LOD Cloud Resource Template in your Cloud Slice lab.
1. Launch the lab, and make sure everything from the template is deployed the way you want. If not, return to step 8, resolve your config issues, then continue with steps 9, 10, etc.
1. Now launch the lab twice, as two separate users, and make sure that both labs launch successfully. This verifies that resource naming is properly configured. This must be done in a Cloud Subscription Pool containing a single subscription. If the first launch succeeds but you get errors on deployment of the second launch, they are most likely due to name conflicts. Return to step 8 and resolve those, then continue with steps 9, 10, etc. Otherwise, if both launches succeeded, then your template is properly configured.

## Valid ARM Templates

Any valid Azure ARM template can be used as the basis for a Cloud Slice, provide it meets the following criteria.

1. Supports Resource Group Only Deployment – Cloud slice users do not have subscription level access. A supported ARM template must deploy in its entirety in a single resource group and have no dependencies outside the resource group.
1. Does not depend on other templates – All templates are deployed concurrently. Deployment is not ordered or sequenced. For a lab to be considered deployed, all templates must successfully deploy. Any dependent resources should be contained within a single template.
1. Ensure only relative reference ID's are included – Templates generated from deployed Azure resources can contain fixed references to resources in subscriptions. These must be removed or generalized prior to deployment to ensure the template does not contain dependencies on objects that may not exist in the subscription targeted for deployment.

## Recommendations and Best Practices

1. Create a single resource group in Azure and then use the automation script to preview the ARM template for the resource group. Export and modify as needed using the procedure outlined above.
1. Avoid referencing templates from public repositories that you do not control. These templates may change without notice and break your lab.
1. Replace all references to a specific region with [resourcegroup().location]. This enables you to control the region of your deployment with the cloud slice configuration, instead of the template and allows the same template to be used in multiple regions at the same time.
1. For any object requiring a unique name, use "[concat('<string>,uniquestring(resourceGroup().name)]" where <string> is some value relevant to your lab, such as linuxlab.
1. Do not hard-code usernames and passwords in the template, instead use template parameters such as adminUsername and adminPassword to enable credentials to be set at lab design time, and allow different labs using the same template.
1. To assign random passwords, use the &commat;lab.CloudPortalCredential().Password replacement token in the adminPassword parameter. If a resource such as a VM or a database requires a longer password, pad the Cloud Credential Password with additional characters, for example: "[concat('p5wD', parameters('adminPassword')]". Another option is to combine replacement tokens such as &commat;lab.labinstanceID and &commat;lab.CloudPortalCredential().Password. This will prevent two users doing the same lab from having access to each other's resources.
1. For user accessible names such as DNS names of resources, or other public names, include a template parameter for the name instead of generating a unique string. When the template is attached to a lab, use a lab replacement tokens such as the &commat;lab.LabInstanceID combined with &commat;lab.UserFirstName to create user friendly names that can be also inserted into the lab document using the same replacement token.
1. If the template is generated from a deployed Azure resource group, remove all embedded comments to improve readability of the template.
1. If the lab template deploys virtual machines, the sizing of the virtual machine should be captured in a template parameter. This enables sizing information to be easily changed if the deployment region changes, and the currently configured size is not available in the new region.
1. For Linux VM's, use password authentication, by setting disablePasswordAuthentication to false in the linuxConfiguration section under osProfile in your ARM template. For example, once properly configured your osProfile section may look something like this:

    ```json
    "osProfile": {
      "computerName": "[parameters('vmName')]",
      "adminUsername": "[parameters('adminUsername')]",
      "adminPassword": "[parameters('adminPassword']",
      "linuxConfiguration": {
        "disablePasswordAuthentication": false
      },
      "secrets": []
    },
    ```

1. Avoid the use of the parameter type "securestring" during development as it hides the passed parameter value when troubleshooting. If warranted, change "string" to "securestring" once deployment is tested and verified.

## Storage Options for ARM Templates

Templates can be stored natively in Lab on Demand, or can be stored on an external document repository such as GitHub. If templates are stored on an external repository, that repository must support anonymous access for Lab on Demand to read the template correctly.
