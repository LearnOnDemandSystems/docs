# How do I create IDL content in LOD?

There are five methods to add Integrated Digital Lab (IDL) content into a Lab on Demand (LOD) lab profile. You can choose the one that matches your needs the best:

1. Author IDLx Instructions in Lab on Demand
1. Directly enter into IDL studio
1. Integrate with GitHub
1. Import Markdown document
1. Import Word document
1. Import archive

## Author IDLx Instructions in Lab on Demand

The IDLx platform integrates the lab instructions with the Cloud Portal of choice or virtual machines (VMs) in the lab environment, to guide the users in completing the lab. The IDLx platform allows users to view lab instructions inline with the Cloud portal or VMs.

An advantage of this presentation format is that the lab steps take up only a relatively small amount of screen real estate. This removes the need to switch back and forth between a lab document and the lab -- these activities distract from performing the lab and can take focus away from the lab steps and goals.

## Enter content directly into the IDL Studio

This method leverages the WYSIWYG IDL Studio interface and has not changed. For information on how to enter content this way, please refer to the How do I add step-by-step instructions to my labs? article. IDL Studio allows you to enter all of your IDL content, including all components of any exercises or tasks included in your lab from within the lab UI, while you are testing the lab. If you prefer entering lab content in a UI, you have online access, and you?re not managing your lab content elsewhere, this method will work very well for you.

## Integrate with GitHub

his method allows you to manage your lab content in a combination of markdown files, screenshots, and video files inside of a GitHub repository. GitHub has native support for multiple authors, revision control, offline editing, and more. Integrating a lab with GitHub will move all content management (including editing) for that lab into GitHub, and your lab will automatically be updated in LOD as you update your content in GitHub. At a minimum you will need a Markdown document, based on our template, in GitHub and, optionally, screenshots in a screens folder and videos in a videos folder. To get started you can either export the content from a current lab profile and import that into a GitHub repository, or you can create a new GitHub repository. To integrate a lab with the repository, follow these steps:

1. Edit the Lab Profile and on the **Cloud** tab, click **Configure GitHub Repository**.
1. The Configure GitHub Repository dialog with Login with GitHub link will open. Click **Login with GitHub**.
1. If you are already logged into GitHub, you will be presented with a list of your repositories.
1. If you are not logged in you will be prompted for your GitHub credentials and then presented with a list of your repositories.
1. If you do not have an account, there is an option to create one; however, as mentioned earlier, you will need to load your markdown files into your repository before continuing with this process.
1. Click **Select** next to the repository with the markdown file in it (if no markdown files are present in the repository, you will be prompted to select another).
1. To preview a repository before selecting it, click on the name of the repository.
1. Once selected, the repository will open and the .md files in it will be displayed. Click **Select** next to the .md file that will be used.
1. To preview a .md before selecting it, click on the name of .md file.
1. Click **OK**.
1. Refresh your browser and then ensure **Enabled** is selected on the **Cloud**.
1. Click **Save** on the Lab Profile.

At this point the lab will be integrated with GitHub and the IDL content will import. If you have a valid email address set up in GitHub for notifications, you will receive an email notifying you of success or failure.

Once a lab is integrated with GitHub, if you are in LOD and want to change the lab content, you can click on the GitHub repository link on the Cloud tab. This will bring you to GitHub and the content.md file. You can also change the lab content directly in GitHub without using the LOD UI. In either case, LOD will automatically synchronize any changes you make as they are committed into your GitHub repository. These changes will be immediately available to users who launch that lab, or upon refresh for users who already have the lab launched.

When a Lab Profile is integrated with GitHub, the IDL Studio options are disabled. If you remove the integration with GitHub, the IDL content will remain but is now treated as regular IDL content.

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


