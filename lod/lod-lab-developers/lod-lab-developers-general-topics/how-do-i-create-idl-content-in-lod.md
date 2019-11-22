# How do I create IDL content in LOD?

There are multiple methods to add instructions to a Lab on Demand (LOD) lab profile. You can choose the one that matches your needs the best:

1. [Author IDLx Instructions in Lab on Demand](#author-idlx-instructinos-in-lab-on-demand)
1. [External Instruction Source](#external-instruction-source)
1. [Import Markdown document]
1. [Import Word document]
1. [Import archive]

## Author IDLx Instructions in Lab on Demand

The IDLx platform integrates the lab instructions with the Cloud Portal of choice or virtual machines (VMs) in the lab environment, to guide the users in completing the lab. The IDLx platform allows users to view lab instructions inline with the Cloud portal or VMs.

An advantage of this presentation format is that the lab steps take up only a relatively small amount of screen real estate. This removes the need to switch back and forth between a lab document and the lab -- these activities distract from performing the lab and can take focus away from the lab steps and goals.

## External Instruction Source

Lab on Demand allows you to set Azure DevOps (ADO) or GitHub as an instruction source, using an external ADO or GitHub repository into a lab and use that repository as the source of IDLx content for that lab.

Choosing to leverage these features means moving all of your content management (including editing) for a lab into ADO or GitHub. Once you have enabled this instruction source for a lab, the content in that lab will automatically be updated based on the the latest changes you make to your content in the external repository.

For more information about configuring Azure DevOps or GitHub as an instruction source, read our [External Instruction Source documentation](/lod/instruction-source.md). 

## Import Markdown (.md) document using provided template

This method requires you have a Markdown (.md) file based on our template. To use this method:

1. On the Lab Profile, click **Import**.
1. On the **Import IDL Content** page, click **Choose File**, navigate to and select your .md file, and click **Open**.
1. Click Import to append the content at the end of any existing IDL content in the lab -OR-
1. Check **Replace Existing Content** and click **Import** to override any existing IDL content with the content in the .md file.

## Import Word (.docx) document using provided template

This method requires you have a Word (.docx) file based on our template. To use this method:

1. On the Lab Profile, click **Import**.
1. On the Import IDL Content page, click Choose File, navigate to and select your .docx file, and click Open.
1. Click Import to append the content at the end of any existing IDL content in the lab -OR-
1. Check Replace Existing Content and click Import to override any existing IDL content with the content in the .docx file.

For more information on this, please read [How Do I Use A Word Template To Import Content Into My Lab Profile?](/lod-lab-developers/lod-lab-developer-training-level-2/how-do-i-use-a-word-template-to-import-content-into-my-lab-profile.md)

## Import an archive (zip) file

This method requires you have an archive file created from exported IDL content. This file will include a .md file and screenshots/videos. To use this method:

1. On the Lab Profile whose IDL content you want to reuse, click
1. In the **Export** dialog, select **Lab Metadata: IDL Content Only** and click **OK**.
1. Navigate to the location to save the archive file, change the name if wanted, and click **Save**.
1. On the Lab Profile you want use the archive file with, click **Import**.
1. Select **IDL Content** and click **OK**.
1. On the **Import IDL Content** page, click **Choose File**, navigate to and select your archive file, and click **Open**.
1. Click Import to append the content at the end of any existing IDL content in the lab -OR-
1. Check **Replace Existing Content** and click **Import** to override any existing IDL content with the content in the archive file.

| |IDL Studio|GitHub|Import Markdown|Import Word|Import Archive|
|---|---|---|---|---|---|---|
|Exercise Titles|Yes|Yes|Yes|Yes|Yes|
|Exercise Intro/Completion Messages|Yes |Yes |Yes |Yes | Yes|
|Task Titles and details|Yes|Yes|Yes|Yes|Yes|
|Knowledge info |Yes|Yes|Yes|Yes|Yes|
|Alert info |Yes|Yes|Yes|Yes|Yes|
|Screenshots |Yes|Yes|Yes|No|Yes|
|Videos |Yes|Yes|Yes|No|Yes|
|VM select |Yes|Yes|Yes|No|Yes|
|Floppy drive |Yes|Yes|Yes|No|Yes|
|DVD drive |Yes|Yes|Yes|No|Yes|
|Command |Yes|Yes|Yes|No|Yes|
|Native support for multiple authors |Yes|Yes|No|No|No|
|Revision control |No|Yes|No|No|No|
|Offline editing |No|Yes|Yes|Yes|Yes|
|Changes available in launched labs upon user browser refresh/reload |Yes|Yes|Yes|Yes|Yes|


