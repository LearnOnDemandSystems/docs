# How do I integrate GitHub repositories into my lab's content?

# How do I create IDL content in Skillable Studio?

Using GitHub integration in a Lab Profile allows you to manage your lab content in a combination of markdown files, screenshots, and video files inside of a GitHub repository. GitHub has native support for multiple authors, revision control, offline editing, and more. Integrating a lab with GitHub will move all content management (including editing) for that lab into GitHub, and your lab will automatically be updated in Skillable Studio as you update your content in GitHub. At a minimum you will need a Markdown document, based on our template, in GitHub and, optionally, screenshots in a screens folder and videos in a videos folder. To get started you can either export the content from a current lab profile and import that into a GitHub repository, or you can create a new GitHub repository. To integrate a lab with the repository, follow these steps:

1. Edit the Lab Profile and on the **Cloud** tab, click **Configure GitHub Repository**.
1. The Configure GitHub Repository dialog with Login with GitHub link will open. Click Login with GitHub.
    - If you are already logged into GitHub, you will be presented with a list of your repositories.
    - If you are not logged in you will be prompted for your GitHub credentials and then presented with a list of your repositories.
    - If you do not have an account, there is an option to create one; however, as mentioned earlier, you will need to load your markdown files into your repository before continuing with this process.
1. Click Select next to the repository with the markdown file in it (if no markdown files are present in the repository, you will be prompted to select another).
    - To preview a repository before selecting it, click on the name of the repository.
1. Once selected, the repository will open and the .md files in it will be displayed. Click Select next to the .md file that will be used.
    - To preview a .md before selecting it, click on the name of .md file.
1. Click OK.
1. Refresh your browser and then ensure Enabled is selected on the Cloud
1. Click Save on the Lab Profile.

At this point the lab will be integrated with GitHub and the IDL content will import. If you have a valid email address set up in GitHub for notifications, you will receive an email notifying you of success or failure.

Once a lab is integrated with GitHub, if you are in Skillable Studio and want to change the lab content, you can click on the GitHub repository link on the Cloud tab. This will bring you to GitHub and the content.md file. You can also change the lab content directly in GitHub without using the Skillable Studio UI. In either case, Skillable Studio will automatically synchronize any changes you make as they are committed into your GitHub repository. These changes will be immediately available to users who launch that lab, or upon refresh for users who already have the lab launched.

When a Lab Profile is integrated with GitHub, instruction editing in Skillable Studio is disabled. If you remove the integration with GitHub, the content will remain but is now treated as regular content managed in Skillable Studio as described in our other documentation.