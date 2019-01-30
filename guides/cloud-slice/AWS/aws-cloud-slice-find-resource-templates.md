# Cloud Slice Guide - Find resource templates for AWS

[Return to the Cloud Slice guide][back]

This document describes how to find AWS templates for use with AWS.


## Replace below with AWS information


If you are creating Cloud Slice labs and you want those labs to automatically include resources hosted in Microsoft Azure, you should leverage Microsoft's collection of [Azure Quickstart Templates](https://azure.microsoft.com/en-us/resources/templates). This website provides you with a searchable collection of open source Azure Resource Manager (ARM) templates that are contributed to by Microsoft employees and members of the Microsoft Azure community. You can use these templates as is or copy them and modify them to suit your specific needs.

To find a template in the Azure Quickstart Templates repository, perform the following tasks:

1. Visit the [Azure Quickstart Templates](https://azure.microsoft.com/en-us/resources/templates) site.
2. Enter the terms you want to search for in the Search field.
3. Click the magnifying glass to the right of the Search field to search for templates.

For example, if you were to search for "logic app", you might see results that look something like the following:

![Azure Quickstart Templates search example](images/azure-quickstart-templates-site.png)

Once you find a template that you want to start working with, click on the name of the template. This is a hyperlink that will take you to a page describing the template and its parameters in greater detail. For example, in the logic app results you may find a template called [Alert to text message with Logic app](https://azure.microsoft.com/en-ca/resources/templates/201-alert-to-text-message-with-logic-app/). Clicking the title (or this link) will bring you to a page that looks something like the following:

![An Azure Quickstart Template page](images/azure-quickstart-template-page.png)

From here you can review what the template is for as well as the parameters that it contains. If it looks like a good fit for what you need in your lab, click on the [Browse on GitHub](https://github.com/Azure/azure-quickstart-templates/tree/master/201-alert-to-text-message-with-logic-app) link on the template page. This will bring you to the folder in Microsoft's GitHub repository that contains the template files, which should look something like this:

![Azure Quickstart Template contents on GitHub](images/azure-quickstart-template-contents-on-github.png)

From here, you can review the technical details for the template by looking at the contents of the azuredeploy.json file. If you want to copy this template into a Cloud Resource Template in OneLearn Lab on Demand, you  would copy the contents of the azuredeploy.json file into the Template field on the Basic Information tab of your Cloud Resource Template. If you want to link to the template instead, you should copy the template files into your own GitHub repository and link to it from that repository.

> #### Best Practice: Create your own Azure Resource Manager template library
>
> While it is possible to create Cloud Resource Templates in OneLearn Lab on Demand that link to Azure Resource Manager templates in the Azure Quickstart Template library or in other locations that you don't manage on the Internet, you should never actually do this. Instead, you should create your own repository in GitHub and store your ARM templates there. This is necessary to ensure that you can manage all changes to templates that are in use in your labs.
>
> Whether you copy the contents of your templates into Cloud Resource Templates in OneLearn Lab on Demand or link to their contents directly, having them in a GitHub repository will give you version control and multi-author support, and it will enable you to test your templates outside of OneLearn Lab on Demand to ensure that they are working before you start using them with a Cloud Slice lab.

You can also try out the template from here by clicking **Deploy to Azure**, or you can visualize the template in armviz.io by clicking **Visualize**.

This should help get you started on finding templates that you can draw from to build a rich library of Azure Resource Manager templates for use in your Cloud Slice labs.

[Back to top][back-to-top]

[Return to the Cloud Slice guide][back]

[back-to-top]: #cloud-slice-guide---find-resource-templates-for-microsoft-azure "Return to the top of the document"
[back]: ../cloud-slice.md#create-cloud-resource-templates-in-onelearn-lab-on-demand "Return to the Cloud Slice guide"

