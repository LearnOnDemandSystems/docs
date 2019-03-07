# How do I upload my VMware images?

When you want to use your own VMware-based Virtual Machine images in your labs, there are a couple of important steps that you need to complete. These steps enable us to create Virtual Machine (VM) Profiles for use in your Lab Series and Profiles.

First, EXPORT your VMware based virtual machines to **.OVF** or **.OVA** format. This is very important in order for us to correctly build the VM Profiles. You can normally find Export on the File menu. The following are links to additional information about exporting your images in the VMware Workstation or ESX/I server programs:

1. [VMware Workstation](https://pubs.vmware.com/workstation-9/topic/com.vmware.ws.using.doc/GUID-D1FEBF81-D0AA-469B-87C3-D8E8C45E4ED9.html)

1. [ESX/i servers](https://pubs.vmware.com/vsphere-4-esx-vcenter/topic/com.vmware.vsphere.vmadmin.doc_41/vc_client_help/importing_and_exporting_virtual_appliances/t_export_a_virtual_machine.html)

Once the image is exported, compress the image or multiple images into **.ZIP** or **.RAR files. We recommend creating 700mb .ZIP files for uploading. If retransmission of the file(s) is necessary, it is much easier to upload a single 700mb file than it is to upload the whole 3-300gb image.

Next, contact our **Lab Requests** team at https://lod.one/help to obtain the credentials and site information for uploading the compressed image files. Once the upload has finished, notify **Lab Requests** with the following information:

- Names of the Virtual Machine Profiles that you want created (usually the names of the images that you send us, but sometimes different)
- Main log on account (username and password) of the virtual machines
- Date and time you started the upload
- Folder that you put the upload into
- Date and time that the upload completed

Finally, our **Content Team** relocates the uploaded images to your **VMware** storage and creates the **Virtual Machine Profile(s)** on the **vSphere** platform in your **Lab Developer Organization**. Lab Requests will notify you when it is ready for your use. This process will be completed in a first-in-first-out fashion. We will do everything possible to meet your production schedule.
