# Azure Resource Providers      

Resources in Azure are made available by a Resource provider, registered to the subscription. When attempting to create certain types of resources in Azure, an error may occur, preventing the resource from being created. This may happen because the Resource Provider for the type of resource that is being created has not been registered to the subscription. 

Azure subscriptions come with a default set of Resource Providers to support creating various resources. For example, if you want to create a virtual machine, the *Microsoft.Compute* Resource Provider needs to be registered to the subscription to successfully create a virtual machine. 

To create resources that use Resource Providers that are not included in the default set provided with a new subscription, will need to be registered to the subscription by a user with subscription-level access, **using one of the following methods**:

- Pre-register all available or a specific Resource Provider to the subscription.
- Create custom role-based access control to permit registrations of Resource Providers as-needed.

> [!ALERT] It is only necessary to follow one of these methods, to register Resource Providers to your subscription. 

With both methods, Resource Providers are registered to the subscription using  Powershell commands. The additional Resource Providers are typically registered to the subscription in 1-10 minutes, after the Powershell commands have been executed.

---
### Pre-registering all available or a specific Resource Provider to the subscription 

The first two commands will register all available Resource Providers at the time of running the Powershell command. Every time a new service is added to Azure including Azure Marketplace, these commands will need to be ran again to register new providers for the new services. The third command is used to register a specific Resource Provider. 

1. To see a list of all available resource providers run the following **PowerShell command:** 

   `get-AzureRmResourceProvider -ListAvailable | select ProviderNamespace`

> [!ALERT] You must be logged into the subscription with a user account with sufficient privileges to register Resource Providers while running these Powershell commands.

2. To register all available resource providers in the current subscription run the following **PowerShell command:**

   `get-AzureRmResourceProvider -ListAvailable | foreach-object{Register-AzureRmResourceProvider -ProviderNamespace $_.ProviderNamespace}`

3. To register a specific resource provider (e.g. the one required for provisioning virtual machine resources) run the following **Powershell command:**

`Register-AzureRmResourceProvider -ProviderNamespace ResourceProvider.Name`

Replace "*ResourceProvider.Name*" with the name of the Resource Provider you wish to register. Refer the the Azure portal error message received when attempting to create resources, if you are not sure which Resource Provider is needed.

### Create custom role-based access control to permit registrations of  Resource Providers.

This will allow Resource Group Owners to have the ability to register Resource providers using custom role-based access control. This custom role will grant **only** registration rights on the subscription. This role should be assigned in-addition to the built-in Resource Group Owner role.

1. **Create a JSON file** with the role definition below and name the file **MycustomRole.JSON**. Note the directory where the file is saved. 

   `{"Name": "Register Microsoft providers","Description": "Can register Microsoft providers","Actions": [ "*/register/action" ],"AssignableScopes": [ "/subscriptions/[SUBSCRIPTION1_ID_GOES_HERE]","/subscriptions/[SUBSCRIPTION2_ID_GOES_HERE]","/subscriptions/[SUBSCRIPTION3_ID_GOES_HERE]" ]}`

   Replace ‘[SUBSCRIPTION1_ID_GOES_HERE], SUBSCRIPTION2_ID_GOES_HERE]…etc.’ with all subscription ids that you would like this role to be associated to.

> [!KNOWLEDGE] Custom role definition objects span subscriptions and sit on the AAD tenant level. That means you can only have uniquely named custom roles defined across all subscriptions in a single tenant. So make sure you include all the subscriptions ids you want to include in the above custom role definition in the assignable scopes section.

2. Run the following **Powershell command:** 

   `New-AzureRmRoleDefinition -InputFile C:\MycustomRole.json`

   If your file is not saved at C:\, change the directory in Powershell to the directory where your file is saved (from step 1) and update the Powershell command with the correct directory.

3. Navigate to https://portal.azure.com/ and assign the custom role to individual users or groups.

   - Click **Subscriptions** on the left-side navigation pane. If Subscriptions is not listed, click More services. 

     ![Subscription button](images/resource-providers-subscriptions-button.png)

   - Click the **subscription** that the new role will be added to

       ![Subscription button](images/resource-providers-subscriptions-to-add.png)

   - Click **Access control (IAM)**

       ![Access control](images/resource-providers-Access-control.png)

   - Click **Add**

     ![Add](images/resource-providers-subscriptions-add.png)

     - Select **Register Microsoft providers** and click Ok.

     - **Type the name of the user or group** to add the role to, **select the user or group** and then click select.

     - Click **Ok** to add the role to the user or group. 

Now that you have registered the Resource Providers for the reources that your Cloud Slice lab needs, click the link below to learn how to set your lab up to scale, and request a Resource Quota increase. This ensures your lab has the correct amount of resources available, to meet the goals of your lab. 

[Set up your Cloud Slice lab to scale](scale.md)
