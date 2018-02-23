## **Azure Resource Capacity Limitations**

[Return to the Cloud Slice guide][back]

Microsoft Azure has resource capacity limitations that should be considered in advance of training events or classes, to avoid running into limitations during the use of the Cloud Slice lab. After the class or event is scheduled, it is a good idea to estimate the amount of resources that will be needed during the event based on the number of lab users and the amount of resources that each lab user will need.

A support request must be made to Microsoft to adjust the amount of resources that are available to use in the Azure subscription. Depending on the resources requested, the region requested and severity of the request, it may take an extended amount of time for the support request to be fulfilled by Microsoft. To learn more about Azure quotas, click here [Azure Quotas](https://docs.microsoft.com/en-us/azure/azure-subscription-service-limits).

Requests are typically fulfilled by Microsoft within a few hours, depending on the amount of resources requested and the region requested. In some cases, it can take Microsoft several days or weeks to fulfill some requests, based on demand for the resources requested.

### **Submitting a Support Request to Microsoft** 

1. Click the **'?'** in the upper-right corner of the Azure portal

  ![azure question mark](images/azure-help-question-mark.png)

2. Click **Help + support**

  ![azure help+support](images/azure-help-button.png)

3. Click **New Support Request**

  ![new support request](images/azure-new-support-request.png)

4. Select **Issue type**, then select **Quota**

  ![issue type - quota](images/azure-issue-type-quota.png)

5. Select **Subscription** (if there are multiple subscriptions listed, be sure to select the appropriate subscription)

  ![select subscription](images/azure-select-subscription.png) 

6. Select **Quota type**. For example, you can choose Cores to increase the number of CPU cores that you want to be able to support in each region. See <a href="https://docs.microsoft.com/en-us/azure/azure-stack/azure-stack-quota-types">Azure Quota Types</a> for more information.

![select quota type](images/azure-select-quota-types.png)

7. Select **Support plan**

![select support plan](images/azure-support-plan.png)
> - the 'i' icon reveals additional information. Clicking the icon enables the text to become stationary and easier to move the mouse to. 
>
>   ![i icon](images/azure-i-icon.gif)


Click **Next** to proceed


9. 8. Select **Severity** 

> - Severity has 3 options; A - Critical impact, B - Moderate impact and C - Minimal impact.
> - Microsoft will downgrade requests marked with A Severity to B Severity, after the request is submitted.

![select severity](images/azure-severity.png)

9. Select **Deployment** model
> - Typically **Resource Manager** should be selected for Cloud Slice labs.

![select deployment model](images/azure-deployment-model.png)

10. Select **Location**
> - select the location geographically closest to the location where Azure resources will be used.
> - If the closest region is known to be busy, select the next closest region. 

![select location](images/azure-select-location.png)

11. Select **Sku** 
> - For more information about Azure SKU families, see [here](https://azure.microsoft.com/en-ca/pricing/details/virtual-machines/series/).

![select sku family](images/azure-sku-family.png)

12. Enter **New limit** amount
> - increases should only be requested for the amount of resources needed, to avoid overconsumption that could result in resources becoming unavailable to other users. 

![azure sku new limit](images/azure-sku-new-limit.png)

13. Complete **Contact information** details

![azure contact information](images/azure-contact-information.png)

14. Click **Create** to submit the request

---
[Back to top][back-to-top]

[Return to the Cloud Slice guide][back]

[back]: ../cloud-slice.md#configure-resource-capacity-limitations	"Return to the Cloud Slice guide"
[back-to-top]: #cloud-slice-guide---microsoft-azure-setup "Return to the top of the document"
