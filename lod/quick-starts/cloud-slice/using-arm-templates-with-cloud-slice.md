# Using ARM Templates with Cloud Slice

When you create a Cloud Slice lab, you can provide students with an empty cloud subscription from which to work, or a cloud subscription that includes resources that were provisioned when the student launched their lab. In order to set up the latter, you must define Cloud Resource Templates within OneLearn Lab on Demand (LOD) that you will later include in one or more lab profiles.

A Cloud Resource Template contains a template document that defines the resources that will be deployed in a Cloud Slice along with some parameter metadata. This metadata configures how parameters within that template document will be exposed to a lab profile. Each cloud platform uses a different template format. In Microsoft Azure, Azure Resource Manager (ARM) templates are used to deploy resources into an Azure subscription. In Amazon Web Services, CloudFormation templates are used. Cloud Deployment Manager templates do the same thing in the Google Cloud Platform. Regardless of which cloud platform you use, you need to create Cloud Resource Templates in LOD if you want to provision cloud resources as part of the lab deployment process.

Before you get started creating Cloud Resource Templates, you need at least one cloud platform template that you want to use in a Cloud Slice lab. If you haven't already identified templates that you want to use in your lab, select the cloud platform you are using with your lab from the list below to learn how to find templates for that cloud platform. If the platform listed is not a hyperlink, Cloud Resource Templates are not yet supported on that platform.

1. [Microsoft Azure](microsoft-azure/cloud-slice-find-resource-templates.md)
1. Amazon Web Services (coming soon)
1. Google Cloud Platform (coming soon)

Once you have identified one or more cloud platform template documents you want to use, you can create a Cloud Resource Template in LOD by logging on to the Lab on Demand portal and completing the following steps:

1. Click **Cloud Resource Templates** in the Cloud Services tile.

   ![Click on Cloud Resource Templates](images/lod-open-cloud-resource-templates.png)

1. In the Cloud Resource Templates view, click **Create Resource Template** to create a new Cloud Resource Template.

   ![Click Create Resource Template to create a new Cloud Resource Template](images/lod-create-cloud-resource-template.png)

1. In the Create Resource Template view, populate the following required fields in the **Create Resource Template** form:

   | Tab                   | Field Name                               | Description                              |
   | --------------------- | ---------------------------------------- | ---------------------------------------- |
   | **Basic Information** | **Name**                                 | The name you want to use to identify your cloud resource template. |
   |                       | **Use External Template** with **Template URL** | If you are referencing an external template document, check the Use External Template field and provide the URL to the external document in the Template URL field. |
   |                       | **Template**                             | If you are *not* referencing an external template document, paste the contents of your template into the Template field and leave the Use External Template field unchecked. |

   You may also provide values for the following optional fields:

   | Tab                   | Field Name               | Description                              |
   | --------------------- | ------------------------ | ---------------------------------------- |
   | **Basic Information** | **Description**          | Text used to describe the Cloud Resource Template that you are setting up. |
   |                       | **Organization**         | The organization in LOD where the Cloud Resource Template will be used. |
   |                       | **Enabled**              | Indicates whether or not the Cloud Resource Template is enabled. |
   |                       | **Required For Display** | When checked, indicates that the resource(s) provisioned by the template must be deployed before the lab will be made available to a student. When left unchecked, the resources will be provisioned in the background while the student begins their lab. |

   Below is a screenshot showing what the Basic Information tab might look like when you have finished.

   ![Create Cloud Resource Template - Basic Information Tab](images/lod-cloud-resource-template-basic-information.png)

1. If your Cloud Resource Template has parameters whose values you want displayed to students, or whose values must be set when the Cloud Resource Template is added to a lab profile, click the **Parameters** tab. From this tab you can either add individual template parameters by clicking the **Add Template Parameter** button, or you can add a set of template parameters by clicking the **Import From Json** button to import a JSON document that defines the parameters. In either case, you will end up with one or more parameters defined for your Cloud Resource Template. Each parameter has the following properties:

   | **Property Name**      | **Description**                          |
   | ---------------------- | ---------------------------------------- |
   | **Name**               | The name of the parameter. This must exactly match the name of a parameter that is defined in the template document (external or pasted into the basic tab). |
   | **Display Name**       | The display name of the parameter. This is the name that will be displayed to students using the Cloud Slice lab in the LOD Cloud Resources tab. |
   | **Description**        | The description of the parameter. This is displayed in a lab profile when a lab author reviews the parameters available to a resource template they are adding to a lab. |
   | **Required**           | When checked, a value must be provided for this parameter in each lab profile where the Cloud Resource Template is used. |
   | **Display To Student** | When checked, the parameter display name and value will be displayed to students in the Cloud Resources tab in the LOD UI. |

   Here is what the Parameters tab might look like once you have it configured for a Cloud Resource Template:

   ![Create Cloud Resource Template - Parameters Tab](images/lod-cloud-resource-template-parameters.png)

   If you want to remove a parameter that you mistakenly added, you can click the **Delete** button to the right of the parameter you want to remove.

1. Once you have configured your Cloud Resource Template, click **Save** to save it in LOD.
