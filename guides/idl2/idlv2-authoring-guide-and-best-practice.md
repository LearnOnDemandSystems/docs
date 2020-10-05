---
title: "IDLx Authoring Guide"
description: "This document covers Markdown, lab instruction editor interface, uploading files into your lab, and many other topics to assist with authoring your IDLx lab."
isPublished: true
---

# Learn on Demand Systems Integrated Digital Lab eXperience Authoring Guide 

## Overview of the Integrated Digital Lab eXperience (IDLx) Platform

The IDLx platform integrates the lab instructions with the Cloud Portal of choice or virtual machines (VMs) in the lab environment, to guide the users in completing the lab. The IDLx platform allows users to view lab instructions inline with the Cloud portal or VMs.

An advantage of this presentation format is that the lab steps take up only a relatively small amount of screen real estate. This removes the need to switch back and forth between a lab document and the lab -- these activities distract from performing the lab and can take focus away from the lab steps and goals.

A successful lab that is well-received by users usually contains more than a simple set of basic lab steps or tasks. It will have significant explanatory content to provide context, background information, tips, cautions, and other useful and relevant information. Additionally, visual elements such as screenshots, videos, Alert dialogs and Knowledge blocks can add clarity and reduce the likelihood of error on the part of the user. The IDLx platform has the ability to include formatted text and visual content in a way that ensures the focus remains on the lab tasks and the context in which those tasks occur. Instructions for labs that use the IDLx platform are authored using Markdown. Markdown allows instructions to be written however the author chooses, and the IDLx platform includes an authoring experience that allows for real-time updating of lab content, enabling authors to see exactly what the instructions they are authoring will look like at all times.

### Launching a lab 

A lab launch may take anywhere from a few seconds to a couple of minutes to fully launch, depending on the Cloud platform chosen and/or the size and number of VMs (if using VMs). Once the required resources are provisioned for your lab, a window will appear with a message saying that the lab is ready.

![](images/idl2-lab-ready.png "Your lab is ready!")

Clicking **_Get Started_** will open close that window and open the lab client. The lab client will open in two separate windows for labs that do not include managed virtual machines, or in a single window for labs that do include managed virtual machines. In both cases, the student experience is provided in two parts: the resource portal (where users work with virtual machines, cloud resources, etc.) and the lab instructions. You can see these in a single window in the [Overview of the Lab Client](#overview-of-the-lab-client).

### Advertising Campaigns and Introductory Content

A lab launch may take from a few seconds to a couple of minutes to fully launch, depending on the complexity and number of resources that are being deployed. During this time, a progress indicator shows by default. However, while the lab is launching, it is possible to show useful information, web pages, interactive graphics, or videos to the user launching the lab. In the example below, an introductory video is playing while the lab is launching in the background.

![](images/introductory-video.png "Lab playing introductory video while the lab loads in the background.")

There are multiple ways to provide introductory content. One way is to use a feature called an Advertising Campaign. This allows you to provide introductory content across multiple labs that are grouped by lab series, organization or event. Another way is to configure a lab-specific introduction within the lab profile itself, which contains various settings for the lab. Yet another way is to provided links or embedded content at the beginning of the lab instructions, such as: dialog windows, embedded images or videos, external links or text. These are configured in the lab instruction editor using [Markdown Syntax](#markdown-syntax). You will learn about how to set up introductory content later in this document.

An introductory presentation can serve many different purposes. For example, you could use these features to provide:

-   General information on your products, services, and offerings,

-   A specific introduction to the lab ,

-   Tutorials,

-   Information and cautions about upcoming lab step challenges,

-   Other kinds of content, such as static web pages, PowerPoint presentations and so on.

For introductory content that is displayed _while the lab loads_, the only requirement is that it be accessible from a URL.

If you are including introductory content directly within the lab instructions, it should be displayed on its own page at the beginning of the lab instructions, separate from the remainder of the lab instructions, using [Markdown Syntax](#markdown-syntax). A common practice is to include objectives or goals that the user will achieve and a scenario that provides contextual information to assist the user to gain a deeper understanding of the lab.

### Lab Instructions

In labs configured to use the IDLx platform, lab instructions are written in an IDL flavor of Markdown (idl-md), and what those instructions contain is completely up to the author. There is no predefined format that has to be followed. You simply author lab instructions the way that you want, and they will appear that way to users of the lab. The content you include in your instructions may be all on one page, or you may break up your content across multiple pages. You may include task lists, with or without numbering, with or without subtasks, and you can go as many levels deep as you like. How the lab instructions present to users of your lab is entirely up to you.

![](images/idl2-exercises-tasks.png "Lab instructions")

Even though the instructions are free form, here are a few general tips that you might like to consider:

1. Keeping any introductory content to your lab on separate pages in the instructions allows users to more easily understand the intent of the lab without being overburdened by the rest of the lab content.
1. Using a separate page for any login and/or manual/configuration that is required for the lab allows users to separate login/configuration from actual learning.
1. If your lab contains multiple exercises or challenges, these are often natural locations to start a new page, allowing users to transition from one learning activity to the next.
1. Using task lists (numbered or not) allows users to track their own progress in a lab, while also allowing the lab owners to monitor progress over all students in a lab. Note, however, that it is completely optional for users to check off tasks as they complete them.
1. When using numbered lists of any kind, always use "1." for the number. This may seem odd when you look at a series of consecutive items, each numbered with 1., but it's a best practice worth following in Markdown. Markdown natively supports auto-numbering when it is rendered into HTML. Using 1-dot numbering makes ongoing maintenance easier (inserting items in a numbered list does not require renumbering the list, and if you use revision control, comparing differences becomes much easier when changes are made in the middle of a numbered list).
1. When you are working within numbered or bulleted lists, and you want to include additional content (more paragraphs, images, videos, knowledge blocks, code blocks, etc.) in a particular item in your list, indent that item by 4 spaces (in Markdown, indentation creates a parent-child relationship between items).
1. When you transition from one item type to another (e.g. from a paragraph to a numbered list, or from a knowledge block to an alert), you should insert a blank line for those items to be recognized as distinct and rendered properly. This also makes your Markdown easier to read. Note that multiple, consecutive blank lines are treated the same as a single blank line.
1. You can include rich media content from internal or external sources at any point in your lab instructions, directly in the Markdown either embedded inline, in a pop-up dialog behind a hyperlink, or in a new window behind a hyperlink. You can also include URLs to external content in the lab Resources tab that can be accessed at any time by lab users. These provide additional context to the lab instructions and help users learn more easily.
1. Learning about all of the different supported Markdown features early on will make it easier for you to create the best instructions possible for your users. You can read more about Markdown features in the [Markdown Syntax](#markdown-syntax) section below.

## Overview of the Lab Client

The lab client is divided into two main parts: the **Lab Console**, and the **Resource Portal**.

The **Lab Console** is initially displayed on the right side of the lab client, with the Instructions tab showing. This initial view allows users to get started with a lab immediately once it has launched. All instructions written in idl-md will be rendered within the Instructions tab. In the screenshot below, you see a sample lab showing a portion of the instructions for the lab. Activities that the user is instructed to do can optionally be created in a task list, which will render with checkboxes before each task (as you can see in the same screenshot), allowing users to track their progress in the lab. When a user checks a checkbox, all preceding checkboxes that were unchecked will be checked. This allows users to perform multiple tasks quickly, and then mark them as complete with a single click. As users mark tasks as complete, this progress is tracked and reported to LOD and TMS, while providing a visual marker to the end user indicating where they are in the lab. Overall lab progress is reported as the percentage of tasks that are marked as complete in the lab instructions.

![](images/idl2-example-with-instructions.png "Lab Client, shown with the Dark theme")

Adjacent to the Instructions tab in the **Lab Console** are two additional tabs: Resources and Help. The Resources tab lists all resources that lab users will need direct access to for the duration of the lab. These resources allow the user to select a resource that they want to view in the **Resource Pane** (such as a cloud portal, a managed virtual machine, or a URL). Users can also insert/remove optical media into managed virtual machines from the Resources tab.

The Help tab allows users to change the theme of the Lab Client, or change the Machine Remote Controller (if the lab has managed VMs). It also provides users with the ID of their lab instance along with other relevant details (depending on the type of lab launched), and links to view a FAQ, submit a support request, or report a bug.

The larger pane on the left side of the client is known as the **Resource Portal**. This window will show users whatever resource they are currently viewing in the lab. Resources shown may be cloud portals, managed virtual machine desktops, videos, images, or any URL that you want displayed in the **Resource Portal**. Users can change what is shown in the portal by clicking on the resource in the Resources tab in the **Lab Console**, or they can click in links in the instructions to change what is shown in the portal if the author included links to do so using Markdown syntax (discussed later in this guide).

### Separating the Lab console from the Resource Portal (two windows)

If you are using multiple monitors, or wish to only see the Resource Portal window, the Resource Portal can be separated into another window. Then you can display the Resource Portal with lab instructions on a monitor, and the Lab Console on a different monitor. 

To split the lab into two windows:

1. Click the **menu in the upper-right corner** of the lab.
1. Click **Split Windows**.  

![](images/split-windows.png)

To join the two windows back into a single window:

1. On the **Resource Portal** (instructions) window,
1. Click **Join Windows**.

![](images/join-windows.png)

### Edit Instructions

Once the IDLx client experience is enabled, you are now able to edit the lab instructions. When the Edit Instructions button is clicked, this checks out the lab manual. Checking out the lab manual ensures that only you are able to edit lab instructions, and if another author attempts to edit the lab instructions while you are actively editing the lab instructions, the lab instruction editor will simply open in read-only mode. After you are done editing the lab instructions, close the the instructions editor, and the lab manual will be checked in automatically. Once the lab manual is checked in, another author will be able to edit the lab instructions.  

To begin editing lab instructions, while viewing a lab profile, click **Edit Instructions** in the upper-right corner, to open the instruction editor, as shown below. This will open a new window with an idl-md (markdown) editor on the left and a preview pane on the right. This gives you the ability to create lab instructions, and see a live preview of how they will be displayed to the user during the lab.

![](images/edit-instructions.png "Edit Instructions")

When you edit instructions this way, no lab resources are provisioned/launched. You are simply editing the instructions in the lab.

You can also edit lab instructions while you have a lab launched, with real-time updates to your instructions so that you can edit and test at the same time. To do this, launch a lab that uses the IDLx Client. Once the lab has launched, on the top right of the User Console is a button with three bars. Click on this to open a menu,and select Edit Instructions. All changes you make to your instructions will be immediately reflected in your currently running lab.

## Authoring Lab Instructions

All instructions are authored in Markdown. Markdown allows for easy plain-text authoring of paragraphs, with special syntax when you want certain items to be formatted differently. You can also use HTML alongside, or in place of, Markdown elements. The following sections describe various items used to create lab content with IDLx.

### Using the Lab Instruction Editor

The image below shows what will be seen after clicking **Edit instructions**, as discussed in the previous section. This text editor is where all of the lab content is written and stored. The left side of the editor shows the raw syntax of the lab content, whereas the right side shows how the lab content will be rendered and displayed to users.

![](images/idl2-text-editor.png "IDL 2 Instruction Editor")

- **Disk icon:** Click to save current progress; this is not necessary if autosave is enabled.
- **&commat;lab:** Replacement Tokens are used to create a placeholder for dynamic text that will be added to the lab when it is launched. This is helpful if you do not know the information at the time of authoring the lab, but would like specific information to be inserted later when the user is in the lab. Examples of this are usernames, passwords, unique ID numbers, etc.
- **Upload:** Used to upload files or images to the lab.
- **Activities:** Activities Menu
    - Question Activities
    - Automated Activities
- **Gear icon:** Lab Instruction Editor Settings Menu.
    - Word wrap: enables work wrap.
    - Preview: enables preview of how your lab instructions will render in a lab.
    - Sync Preview Location: syncs your cursor location in lab instructions with the Preview.
    - Autosave: enables the lab instructions to autosave
    - Theme: select a theme for the lab instruction editor.
    - Editor zoom: adjusts the zoom level on the instruction editor.
    - Preview zoom: adjusts the zoom level on the preview pane of the instruction editor. 
    - Track Task Progress: enables the percentage of completed tasks to be reflected on the lab instance page, as well as the class page if the lab is part of an active class. 
    - Auto-check previous tasks: when this is enabled and a task is completed, all previous tasks will be automatically checked. 
- **Markdown Help:** displays common Markdown syntax, used for reference while writing lab instructions. Clicking the *Learn More* button will display more information that may be helpful with authoring your lab. 

### Upload Media and Documents

Media and documents can be uploaded and inserted into lab instructions. 

1. Click the **Upload** icon in the lab editor toolbar

    ![Upload Button](images/upload-button.png)

1. A **Dialog** will appear that allows you to add files by **dragging them into the lab instructions window** or by clicking the **Choose Files** button, as well as some additional options:
    - **Display Inline** or **As a link**: Inline will **render the image with lab instrucitons**, As a link **provides a link** that the user can click, to view the image in a new window.
    - **Overwrite existing files**: chosing this option will **overwrite files with the same file name**, that are currently saved in Lab on Demand. This is useful when the wrong file gets uploaded and needs to be replaced with the correct file. 

![](images/drag-and-drop-screenshots.png)

### Instruction Recommendations

Below you will find a few recommendations to help you get started authoring content for your lab. Following these recommendations is a section on Markdown that describes the syntax used to create headings, apply bold or italics to text, insert knowledge blocks, etc.

#### Headings

Headings are useful to identify and separate sections of lab instructions. Headings are also used as page titles in lab instructions. Headings that use H1 will be styled slightly bolder than other headings, and are given a horizontal line.  

When students are navigating pages in your lab, the button to navigate to the next page will be displayed with the page title of the next page, truncated after 40 characters. If the next page does not have a title, the next button will simply say *Next*.

> [!KNOWLEDGE] As a best practice when creating page titles, consider keeping the title under 40 characters, so that the page title will be displayed on the *Next* button appropriately to the student.
>
> ![](images/short-page-title.png)
>
> ![](images/long-page-title.png)

For section titles, you should use title case (see [Common Style Guidelines](#common-style-guidelines) for a definition of title case).

#### Introduction Message

The introduction message provides information about the goals of the lab, what the lab user will accomplish in the lab, and puts the lab tasks into a context. Dialog prompts, embedded images or videos, external links or text are commonly used.

##### Objective and Scenario Best Practices and Guidelines

The Objective is used to provide specific information about the lab. It should include a summary of the lab instructions and a list of specific goals that the lab is intended to meet. In contrast, the scenario serves a more general purpose. It can, for example, be used to establish the context in which the lab tasks are performed or to provide more general background information.

- Use bulleted or numbered lists to emphasize lab goals and objectives.
- Ensure lists are expressed in parallel grammatical format and start with verbs to provide greater emphasis and clarity.
- Provide a summary of the entire lab.
- Ensure that goals are focused on what the user gains from doing the lab.
- Use a scenario to provide more general background information and context.

#### Completion message

A completion message provides a brief summary and congratulatory message to the lab user. This is accomplished by creating a dedicated page in the lab instructions, using Markdown. This should be the last or next to last section in the lab. As a best practice, you should indicate that the user should click Continue to proceed to next page.

#### Lab Instruction Placement

You have multiple lab instructions, you can change the order from within the user interface. To change the order of a task, copy the syntax of the lab instruction and paste into the correct location, using keyboard shortcuts (CTRL+C, CTRL+V).

![](images/move-lab-instruction.gif "Moving lab instructions")

#### Tasks

For task titles, you should use sentence case (see [Common Style Guidelines](#common-style-guidelines) for a definition of sentence case).
Your titles should be as concise as possible. The following are some best practices for task titles:

- Keep title under 50 characters
- Start with a verb
- Use telegraphic style. Remove words, such as “a”, “an”, “the”, “is”
  or “are”, that are not required to convey accurate meaning. For
  example, write “Verify account listed”, rather the “Verify account
  is listed.”

The following are some best practices for creating tasks:

- Avoid creating a single task for actions such as completing wizards that use multiple screens. Try to limit tasks to actions performed in single screens, pages, or dialog boxes.
- If the task requires users to type in a long command or series of commands, place the commands in Command syntax or a Code Block. In the task, ask users to click the Command button that is generated by the Command syntax or clicking the code block. Clicking these items in the lab instructions will copy to the user's local clipboard, so they can past into the appropriate section of the lab.  
- Use bolding to: 
    - Emphasize the user interface elements the user interacts with,
    - Highlight what the user types into a field or clicks.
      For example, “Type **Passw0rd!**” or “Click **Submit**.” 

#### Screenshots

Screenshots add clarity by providing a visual representation of what a completed task should look like. Screenshots are also beneficial for people who are visual learners or do not speak the authored language as their first language. This helps to mitigate the risk of configuration errors. When the user clicks the screenshot in the lab instructions, it will open in a new window, at full resolution. Opening the screenshot in a new window is useful if the screenshot is large and may obstruct the view of the lab. If the screenshot is particularly important or noteworthy, students can save or bookmark the URL of the image for later use.

To create a screenshot:

1. Make sure the lab profile is **checked out** on the lab profile page.

1. **Launch** the lab.

1. Click the **menu** button in the upper-right corner of the lab UI.

1. Click **Edit instructions**.

1. When the new window opens, place the mouse cursor where the screenshot will go in the lab instructions.

1. Adjust the size of the Resource Portal, as well as the placement any windows in the Resource Portal, before taking the screenshot. 

1. Take a screenshot by **clicking the Screenshot button**, in the UI, as shown below.

    ![](images/screenshot-icon.png "Screenshot Button")

    >[!KNOWLEDGE]the screenshot is captured at the size that the VM is sized to,  when screenshot button is clicked. 

If you use this method, the screenshot is stored in LOD and automatically added in the lab instructions where your mouse cursor is. Please keep in mind that when you take a screenshot using this method, you take a screenshot of the entire desktop of the VM, which may not be desirable. 

Screenshots can also be added by pasting from your local clipboard, dragging images into the lab editor interface or using the Upload files feature. 

To add a screenshot by pasting from your local clipboard:

1. Open the **Windows Snipping Tool** or **screen capture application** of your choice. 

1. Capture the screenshot

1. Press **CTRL+C** to copy the screenshot to the local clipboard

1. **Place the mouse cursor** in the lab instructions, **where the screenshot should be inserted**.

1. Press **CTRL+V** to paste the screenshot into the lab instructions. 

1. A **Dialog** will appear, asking to **choose options** for the content:
    - **Display Inline** or **As a link**: Inline will **render the image with lab instrucitons**, As a link **provides a link** that the user can click, to view the image in a new window.
    - **Format**: JPG or PNG. Choose the format you wish to use for the screenshot.
    - **File Name**: You can provide a file name for the screenshot. If a file name is not provided, the screenshot will be assigned a randomly generated name and stored in Lab on Demand.
    
    **Note**: Pasting images into the lab instructions is not supported in Internet Explorer 11.

![](images/paste-image-dialog.png)

To Add a screenshot by dragging an image into the lab instructions window:

1. Open the **Windows Snipping Tool** or **screen capture application** of your choice. 

1. Capture the screenshot

1. **Open the directory** where the screenshot is saved, on your local machine. 

1. **Drag the screenshot** into the lab editor interface.

1.  A **Dialog** will appear, asking to **choose options** for the  content:
    - **Display Inline** or **As a link**: Inline will **render the image with lab instrucitons**, As a link **provides a link** that the user can click, to view the image in a new window.
    - **Overwrite existing files**: chosing this option will **overwrite files with the same file name**, that are currently saved in Lab on Demand. This is useful when the wrong file gets uploaded and needs to be replaced with the correct file. 

**Note**: Other media types such as videos and documents can be added using this method. 

![](images/drag-and-drop-screenshots.png)

The following are some best practices for incorporating screenshots into your lab:

- Compose the various elements (dialog boxes, etc.) before taking the screenshot so that all the important fields are visible.
- Avoid taking screenshots of the entire desktop. For example, if the focus of interest is a dialog box or a page, maximize the element to avoid including too many other elements in the screen that may distract from the object being configured in the task.
- Do not cover menu labels with context menus that appear when you right-click.
- Consider highlighting elements in the screenshot that are of particular importance.
- Make sure that titles of items, dialog boxes, pages, etc. are clearly visible.
- You should enter alt text and title to the image, so that when a user mouses over it, a description will appear. You can add alt text and a title with the following syntax: `!IMAGE[image alt text](Image.jpg "image title text")`.


#### Virtual Machine Select

During a lab, a lab user may be required to perform configuration steps on two or more VMs. A common source of errors in labs is performing lab tasks on the wrong VM. The IDLx platform mitigates this risk by providing the means to change to the correct VM within a task, by clicking a link in the lab instructions or selecting the appropriate VM from the Resources tab.

The virtual machine Replacement Token allows the user to make a different VM active, by clicking a link in the lab instructions. Although this functionality is also available from the Resources tab, the advantage of using the virtual machine Replacement Token is that the lab user can switch the active VM from within the task itself.

###### VM displayed **in lab instructions** using a Replacement Token.

![](images/vm-instructions-tab.png "VM Replacement Token")

To add a virtual machine to the lab instructions using a Replacement Token:

1. Place the cursor where the link to the VM will go in the lab instructions. 
1. Click **&commat;Lab** at the top of the text editor.
1. Select the virtual machine to be used. (refer to the description column of the Replacement Token menu for VM details).
1. Click **Insert**.

###### VMs are displayed on the Resources tab.

- VMs that are configured to the lab profile will automatically be added to the Resources tab. 

![](images/vm-select-from-resources-tab.png "VMs on Resource tab")

#### Removable Media

The **Floppy Drive Replacement Token** provides a link for the lab user to insert a virtual floppy disk into (or eject from) the VM. The advantage of using the Replacement token, is the user can insert the virtual floppy disk from within the task itself.

The **DVD Drive Replacement Token** provides a link for the lab user to insert a virtual DVD (ISO file) into (or eject from) the VM. The advantage of the using the Replacement token, is the lab user can insert the virtual DVD from within the task itself.

To add removable media to the lab instructions using a Replacement Token:

1. Place the cursor where the link to the removable media will go in the lab instructions. 
1. Click **&commat;lab** at the top of the text editor.
1. Select the removable media to be used. (refer to the description column of the Replacement Token menu for media type and details).
1. Click **Insert**.

## Markdown Syntax

Markdown is an easy to use markup language to format text, that offers multiple ways to achieve the same result. Markdown was designed to be easy to learn as well as be easy to read and write. When creating IDLx lab content, you may use Markdown to format text. Markdown allows the author to keep their hands on the keyboard and focus on writing content. Markdown supports HTML, and HTML syntax can be used in combination with Markdown. You can use the following Markdown syntax  to perform formatting.

### Headings

Markdown allows for text to be resized by typing 1-6 # (hash or pound) symbols in front of the text that is to be resized, followed by a space. One # renders the largest text size, while six # symbols renders the smallest text size.Typically this is used at the beginning of a paragraph or section in a document, to make the title stand out from the rest of the text. 

> # Heading1
>
> ## Heading2
>
> ### Heading3
>
> #### Heading4
>
> ##### Heading5
>
> ###### Heading6

### Text Formatting

- **Indent size**: pressing the tab key will indent 4 spaces. 

- **Single space**: pressing the tab key at the end of a line will single space the next line. Alternatively, pressing the space bar four times will single space the next line. 

- **Double space:** leaving no spaces at the end of the line will double space the next line. 

- **Bold**: used to show emphasis. Type two * (asterisk) symbols on each side of the text that is to be bolded.

    > `**Bold text**`

- **Italic**: used to show emphasis or distinction. Type two _ (underline) on each side of text that is to be emphasized.

    > `_Italic text_`

- **~~Strikethrough~~**: used to mark text that should not be included, but should not be removed from the document. Type two ~ (tilde) symbols on each side of text that should show a strikethrough.

    > `~~Strikethrough text~~` 

- **Escape character**: used to prevent text from being formatted into Markdown. Type a \ (backslash) at the beginning of the text that is to be escaped. 

    > \escaped text

- **Bullet**: used to separate and order  items in a list without using numbers

    > `-`

- **Inline code block**: used to provide a snippet of code that can be copied and pasted. Type a ` (backtick) on each side of the text that is to be displayed in the code block. The backtick is located above the tab key, to the left of the 1 key on the keyboard.

    > <code>`code block`</code> 

    ![](images/code-block.png "Code Block")

- **Fenced code block**: used to provide a programming language-specific code snippet. Type three ` (backticks) on each side of the text that should be displayed in the fenced code block. This should consume at least 3 lines in the text editor; the first line should display three backticks followed by the programming language name, the second line should display the code snippet, and the last line should only display three backticks. Markdown allows for more than one line to be used to display the code snippet. 

    > ~~~fenced_code_block
    > ```PowerShell
    > get-service | stop-service -whatif
    > ```
    > ~~~

    ![](images/fenced-code-block.png "Fenced Code Block")

- **Code Block Modifiers**

    Code block modifiers change the way that code blocks are displayed. The below syntax can be used with or without a language directive. Simple leave out the language directive and only include the code block modifier.
    
    - Prevents code from being highlighted.

    ~~~
      ```powershell-nocolor
      Code Block
      ```
    ~~~
    
    - Prevents the code block from rendering with a tab that displays the language used.

  ~~~
   ```powershell-notab
   Code Block
   ```
   ~~~

    - Prevents the code block from being highlighted, no language tab and is not copyable.
    ~~~
    ```powershell-nocode
    code block
    ```
    ~~~
    
    - Code is highlights but is not copyable.

    ~~~
   ```PowerShell-nocopy
   code block
   ```
   ~~~


    - Multi line commands wrap to the next line.
    
    ~~~
   ```PowerShell-wrap
   code block
   ```
   ~~~
   
    - Adds line numbers in the code block.
    ~~~
   ```PowerShell-linenums
   code block
   ```
   ~~~
   
### Link formatting

>[!KNOWLEDGE] You should enter alt text and title to the link, so that when a user mouses over it, a description will appear. You can add alt text and a title with the following syntax: `!IMAGE[image alt text](Image.jpg "image title text")` 

- **Internal link**: Used to link to a specific section within a document. 

    > \[text to display](#link-location "optional link title")

- **External link**: Used to link to a page outside of the document.  

    > \[text to display](url "optional link title)

- **Relative link**: used to link to a page in the same directory without the need to display the full URL of the page.

    > \[text to display](../folder/file.htm "optional link title")

- **Reference link**: used to provide a link that will be referenced multiple times. The link can be referenced by typing the text value between the [ ] (square brackets). It is not necessary to include the full URL, as long as the text value in both sets of brackets is the same. 

    - **_Text lookup_**: 

        > \[Reference link text value]
        > \[Reference link text value]: URL "Optional link title"

    - **_Label lookup_**:

        > \[Reference link][Name of URL]
        > \[Name of URL]: URL "Optional link title"

    - **_Footnote style_**:

        > \[Reference link][1]
        > \[1]: URL "Optional link title"

- **Help Link**: used to provide a link that will help the student with the section of the lab they are working on. 

        > help[help text here](https://URL.com)

- **Hint Link**: used to provide a hint that will help the student with the section of the lab they are working on. This is most effective as a dialog (see [Link Behavior Prefixes](#link-behavior-prefixes)).
       
        > hint[hint text here](https://URL.com)

- **Knowledge Link**: used to provide a link, that will give the student additional knowledge about with the section of the lab they are working on.

        > knowledge[knowledge text here](https://URL.com)

### Link Behavior Prefixes

- **Open in a Dialog**: used to open a link in a dialog window, that will overlay on the lab. This is useful to show students information, without leaving the lab environment.

    > `^[link text](https://URL.com)`

- **Open in portal window** (or a new window if there is no portal window): used to open a link in a the Portal window of the lab, or a new window if there is no portal window in the lab. 

    > `<[link text](https://URL.com)`

- **Open in a New Window**: used top open a link in a new window.

    > `[link text](https://URL.com)`

### Page formatting

- **Page break**: Used to separate content into pages. Separating into pages creates a next button that the student must click to navigate to the next page. This is useful for displaying small sections of instruction to the student at a time, rather than all instructions on the same page within the lab. Type three = (equals) symbols on the line where the current page should end. The new page will begin on the line following the three = symbols.

    > ===

- **Horizontal Line**: Used to separate content on the same page. Type three --- (dash or hyphen) on the line where the horizontal line should appear. 

    > \---

- **Block quote:** Used to quote information from other sources. Block quote text appears indented from other content in the document. Type a > (greater-than sign) before text that should appear in the block quote. Most Markdown syntax will render inside of block quotes.

    > \> text here
    >
    > \> additional text here

### Embedded content

>[!KNOWLEDGE] You should enter alt text and title to the embedded content, so that when a user mouses over it, a description will appear. You can add alt text and a title with the following syntax: `!IMAGE[image alt text](Image.jpg "image title text")`  

- **Image**: Used to embed an image inline with other content. When images are clicked, they will open in a new window and display at the images full resolution.

    > \![text to display]\(url)

- **Image Dimensions**: You can specify image dimensions in your lab. Dimension values are in pixels and are placed inside curly braces, immediately after the end of the link URL syntax. Height and width are separated by a "x" in this format:{widthxheight}
It's also possible to simply supply the width: {width}. In this case, the height is automatically calculated for you to be proportional to the provided width.

    > `![](image url){heightXwidth}` or `{height}`

- **Video:** Used to embed a video inline with other content. The syntax format should look the same as an image, except the video should begin the word VIDEO (all caps).

    - Videos are used to provide rich media content, such as short, step-specific videos, that can serve a variety of purposes: to demonstrate a series of steps, to assist visual learners, to provide clarity, to provide additional information and others. Videos showing the steps in the task are particularly useful for difficult and complex tasks as well. 
    - The video can be any URL that points to a video. Videos that are hosted on YouTube will be embedded in the lab instructions, and do not need to open in a separate window, for the video to play. Alternatively, you can link videos hosted by other sources in the lab instructions, using Markdown syntax.

    The following are some guidelines for creating videos that are associated with lab tasks:

    - Keep the video short, between 30 – 60 seconds at most.
    - Make sure the video covers only the relevant step.

    > \!video[text to display]\(url)
    
 - **Audio:** Used to embed an inline audio player, or a link to an audio recording.The syntax format should look the same as a video, except the audio should begin with a ! (explanation mark), followed by the word audio.

    > \!audio[text to display]\(url)

- **Image with link:** Used to embed an image that can be clicked to navigate to a specific URL (internal or external). 
    
    > \[![text to display]\(url or filepath "Optional image title")](url "Optional link title")
    
- **Portal Link:** used to launch a hyperlink. In the Cloud Client, this will open the hyperlink in the left window (Resource Portal). In the traditional virtualization client (vm-based labs), this will open the hyperlink in a new local browser window.

    > `<[text to display](URL)`

- **Image Link:** used to display a link with a camera icon, to suggest that the hyperlink opens an image. Opens in a new window.

    > `image[text to display](URL to image)`

    ![](images/image-link.png "Image Link")

- **Video Link:** used to display a link with a videocamera icon, to suggest that the hyperlink opens a video. Opens in a new window.

    > `VIDEO[text to display](URL to video)`

    ![](images/video-link.png "Video Link")

### Task and List formatting

- **Unordered list:** Used to list items in no particular order, separated by bullets rather than numbers. Type a - (dash or hyphen) followed by a space and then the text to be listed. Pressing enter at the end of the text will start the next line with a bullet. 
- **Ordered list:** Used to list items in a particular order, separated by numbers rather than bullets. Type the number 1, followed by a space and then the text to be listed. Pressing enter at the end of the text will start the next line with number 2.
- Both Unordered and Ordered lists can contain Task Checkboxes for the student to check off steps as completed. Both list types can be combined in the same list. Task Checkboxes are used track and report lab progress to LOD and TMS, as well as a visual marker for students. Lab progress is calculated by the percentage of Task Checkboxes that are checked in the lab instructions.

```Unordered_Task_List
- [] Item 1
- [] Item 2
- [] Item 3
- [] Item 4
- [] Item 5
```

```Ordered_Task_List
1. [] Item 1
1. [] Item 2
1. [] Item 3
1. [] Item 4
1. [] Item 5
```

### Table formatting

- Tables can be aligned left, right or center by placing a : (colon) on the head row of the table. Placing a colon on the left side, right side or both sides of the dashes in the header row, will align the text in the table accordingly. 

**Left-aligned text**

```
| column 1 | column 2 |
|:---------|:---------|
| data 1   | data 2   |
| data 3   | data 4   |
```

**Right-aligned text**

```
| column 1 | column 2 |
|---------:|---------:|
| data 1   | data 2   |
| data 3   | data 4   |
```

**Center-aligned text**

```
| column 1 | column 2 |
|:--------:|:--------:|
| data 1   | data 2   |
| data 3   | data 4   |
```

### Special formatting

- **Variables**: Used to store information that is not known at the time of lab authoring. Variables use two Replacement tokens; **&commat;lab.textbox(name)** and **&commat;lab.Variable(name)**. **Use &commat;lab.texbox(name) to define** the variable in the (name). **Use &commat;lab.Variable(name) to recall** the information store in the variable. For example, you could create a variable with &commat;lab.textbox(studentPassword) and ask the student to enter a password in the field. Later in the lab you could call back the student's password with &commat;lab.Variable(studentPassword). This prevents the student from having to remember or write down their password, since it is stored in the lab by a variable. 

    - Defining Variable in lab instruction editor view:
  
   ![](../../lod/images/variables-in-lab-instruction-editor.png)
  
    - Defining Variable in lab from Student view in the lab:
  
   ![](../../lod/images/variables-in-lab.png)
  
    - The student enters their password in the lab:
  
    ![](../../lod/images/variables-enter-password.png)
  
   The password is recalled in later lab steps using the Replacement Token below
  
    - Calling Variable in lab instruction editor view:
   
    ![](../../lod/images/variables-callback-variable-instruction-editor.png)
  
    - Calling Variable in lab from Student view in the lab:
  
    ![](../../lod/images/variables-callback-variable-in-lab.png)
  
- **Knowledge Block:** Used to provide additional information, to help students better understand lab steps or lab content. It can also be used to provide alternative instructions or store commands that you want users to enter. Knowledge blocks are limited to only show 4 lines of the lab content. After 4 lines, a _more_ link will be shown, allowing the student to expand the Knowledge Block and review additional information.

    -  If you use the Knowledge box for lab steps or a series of commands, please make sure you include a note directing users to execute the steps or commands there. (For example, “At the PowerShell prompt,type the commands listed in the Knowledge box, pressing ENTER after each one.”)

    > \> [!knowledge] knowledge text here.

    ![](images/idl2-knowledge.png "Knowledge Block")

- **Alert:** Used to draw attention to important issues, such as showing additional information or steps that the student may need complete to avoid other issues. Alerts are useful whenever you want the users to pause and take note of additional and important information. From the user’s perspective, alerts are mandatory because they will appear inline in lab instructions. 

    > \> [!alert] alert text here.

    ![](images/idl2-alert.png "Alert Block")

- **Hint Block:** Used to provide a hint for the for the section of the lab that the student is working on.  

    > \> [!hint] hint text here.
 
    > ![](images/hint-block.png "Hint Block")

- **Help Block:** Used to provide help, such as showing additional about the section of the lab that the student is working on.

    > \> [!help] help text here.
  
    > ![](images/help-block.png "Help Block")

- **Note Block:** used to provide additional information, similar to a Knowledge Block, with the only difference being that Notes do not collapse and show a _more_ link to expand the section. 

     > \> [!note] note text here.
  
    > ![](images/note-block.png "Note Block")

- **Sections:** used to group lab instructions and elements together so they may be called up on and manipulated as one. This is done by assigning a lab variable that has been set via LCA, ABA, an IDLx textbox  or an IDLx drop-down menu.

    > :::sectionName(variableName-variabelValue)

    > section text or markdown elements

    > :::

    > ![](images/section-in-lab-instructions.png "Sections")




- **Dialog:** Used to open a dialog popup, to display additonal information. This can be useful to make additional information available to the student. Dialogs **should not be used to display websites that are in an iFrame**, as this can cause some abnormal page rendering in the dialog. 

    > ^[Text to display in lab  instructions][Reference Link]

    > \>[Reference Link]:

    > \>This appears in the Dialog

- **Instruction Dialog:** Used to open a dialog popup, to display rendered Markdown or IDLx content that is located anywhere on the internet and accessible from a URL. This can be useful to provide additional information, from external sources on the internet.

    > ```^instructions[text](url)```

- **Reference Instruction Blocks:** Used to reference content multiple times throughout the lab instructions. First, Define the content, then reference the content using the syntax below. Defined content can be text, links, copyable text, code blocks or rich media content such as images and videos. Defined content will not appear in lab instructions until it is referenced using the Reference Content syntax. 

   - Define content
        > ```>[reference label]: Content goes here```

   - Reference Content
        > ```!instructions[][label]```

        ![Refernce Instruction Block](images/reference-instruction-blocks.png)

- **Commands:** Used to target the current resource in the Resource Portal to input commands. To mitigate risk of error and to enhance the overall experience of the lab, the IDLx platform supports executing commands directly in the area of focus of the Resource Portal. Clicking the text in the lab instructions will input the command into the item in focus, on the Resource Portal. Commands can be a single line (shown below) or multi-line. 

    There are 4 different kinds of commands that you can configure:

   - **Type Text**. This is not a command per se. Rather, this command type allows the user to input a predetermined string. To use this, simply add ```+++``` on each side of the text that you wish to have typed.

   - **PowerShell**. This allows the user to execute a PowerShell command in the background. The user does not see the execution of the command. To use this, simply add ```{PowerShell}``` to the end of the command.

   - **PowerShell with UI**. This opens a command prompt window in the VM and shows the command execution. To use this, simply add ```{PowerShell visible}``` to the end of the command.
    
   - **Shell**. This causes a command to be executed in the background. The user does not see the execution of the command. To use this, simply add ```{Shell}``` to the end of the command.

   - **Shell with UI**. This command opens a command prompt window in the VM and shows the command execution. To use this, simply add ```{Shell visible}``` to the end of the command.

Commands require Integration Services to be installed on the VM. After installing Integration Services, you must save a differencing disk for Integration Services to be installed on all future launches of the lab.

   - **Single Line Command:**
       
  <!-- The following code block _must_ be indented instead of wrapped in ~~~ to prevent
     our preprocessor from preprocessing the code. Do not change this formatting. -->
     
    @[Text to display][`command`]
    
  - **Multi Line Command:**
  
  <!-- The following code block _must_ be indented instead of wrapped in ~~~ to prevent
     our preprocessor from preprocessing the code. Do not change this formatting. -->

    @[Text to display][multi-line-command]

    Multi-line-command-id:
    ```
    Multi-line-command-id
    Command-goes-here
    ```
    
Below is an example of how a multi line command would look for a **PowerShell cmdlet, with no UI**. Shell commands can be executed the same way, by replacing ```PowerShell``` with ```Shell```.

    @[Click this to run the get-service cmdlet][Get Service]{PowerShell}

    [Get Service]:
    ```PowerShell
    get-service | stop-service -whatif
    ```
    
Below is an example of how a multi line command would look for a **PowerShell cmdlet with UI**. Shell commands can be executed the same way, by replacing ```PowerShell visible``` with ```Shell visible```.

    @[Click this to run the get-service cmdlet][Get Service]{PowerShell visible}

    [Get Service]:
    ```PowerShell
    get-service | stop-service -whatif
    ```
> [!KNOWLEDGE] PowerShell commands are executed in a CMD prompt, in the lab. The command will still function as intended.

Commands can perform any action that is possible to do from a command or Windows PowerShell prompt. For example, the command could open File Explorer at a particular location within a directory structure, open dialog boxes, start scripts, open documents and web pages, and many others. 

Although potentially any task could be reduced to an action that can be executed as a command shell or Windows PowerShell command, you should use this feature judiciously. Users should still know how to open File Explorer and perform other basic actions. This feature is most useful for a complex task that involves numerous steps, opening file locations deep down in directory structures, opening specific Web pages, and other similar activities.
   
- **Include:**  Used to input text from a GitHub raw link. This is useful to use to pull in content hosted on GitHub. Navigate to the GitHub page containing the content to be used, click the Raw button, then copy the URL of that page and include it in the below syntax. 

    - **Note**: GitHub hosted content can be changed by the repo maintainer of the content and will change the instructions displayed in the lab that is using the Include syntax. 

    > `[!include [label](url)]`

- **Copyable Text:** Used to make text copy to the local clipboard when the student clicks the text. Type two + (plus) symbols on each side of the text that should be made copyable. 

    > \++copyable text++

    ![](images/copyable-text.png "Copyable Text")

- **Type Text:** Used to input text into the current cursor location inside of a managed virtual machine showing in the Resource Portal. Clicking the text in the lab instructions will automatically type the text into the managed virtual machine. When authoring lab instructions, use three + (plus) symbols on each side of text to convert it into Type Text.

    > \+++Type Text+++

    ![](images/type-text.png "Type Text")

- **Copyable and Type Text:** used to make text copy to the local clipboard and type into a virtual machine when the student clicks the text. Type four + (plus) symbols on each side of the text that should be made copyable and type text. 

  > \++Click to copy to clipboard and type into a VM++
  >
  > ![](images/copyable-and-type-text.png "Copyable Text")

- **Embed YouTube video:** Used to embed a YouTube video inline with the lab instructions. URLs from YouTube.com automatically embed. Videos from any other URL will not embed.

    > `!video[text to display](url)` 

- **Replacement Token:** Used to replace text in lab instructions with a variable that is unknown at the time of authoring the lab instructions. These variables may not be generated or created until the lab is launched by the student. These can include usernames, user first name, user last name, running lab instance ID number, etc. 

    Replacement tokens use the syntax &commat;lab._replacementTokenName_. You can see the list of all &commat;lab replacement tokens available to your lab by simply editing the instructions, and clicking on the &commat;lab button. 

   > |Lab Replacement Token|Description|
   > |--|--|
   >|`@lab.Activity(Automated1)`|Inserts activity Automated1 into the instructions.|
   >|`@lab.LabInstance.Id`|The unique ID of the running lab instance.|
   >|`@lab.LabInstance.GlobalId`|The globally unique ID of the running lab instance.|
   >|`@lab.LabInstance.StartDate`|The UTC start date of the running lab instance. Format: yyyyMMdd|
   >|`@lab.LabProfile.Id`|The unique ID of the lab profile.|
   >|`@lab.User.Id`|The unique ID of user running the lab.|
   >|`@lab.User.FirstName`|The first name of the user running the lab.|
   >|`@lab.User.LastName`|The last name of the user running the lab.|
   >|`@lab.User.Email`|The e-mail address of the user running the lab.|
   >|`@lab.User.ExternalId`|The external ID of the user running the lab (if launched via    API).|
   >|`@lab.User.Organization.Id`|The ID of the organization the user belongs to.|
   >|`@lab.User.Organization.Name`|The name of the organization the user belongs to.|
   >|`@lab.Tag`|The tag associated with the lab instance (if specified when launched via    API).|
   >|`@lab.CloudSubscription.Id`|The unique ID of the subscription backing the lab    instance.|
   >|`@lab.CloudSubscription.Name`|The name of the subscription backing the lab instance.|
   >|`@lab.CloudSubscription.TenantName`|The tenant name of the subscription backing the    lab instance.|
   >|`@lab.CloudResourceGroup(1).Name`|The instance name of the ResourceGroup1 resource    group.|
   >|`@lab.CloudResourceTemplate(Template1).Name`|The instance name of the VNET resource.|
   >|`@lab.CloudResourceTemplate(Template1).DeploymentLink`|A deployment link for the    VNET resource.|
   >|`@lab.CloudResourceTemplate(Template1).DeploymentUrl`|A deployment URL for the VNET    resource (rendered as text, not a link).|
   >|`@lab.CloudResourceTemplate(Template1).Parameters[complex-VNETName]`|The value sent    for the complex-VNETName parameter when creating the VNET resource.|
   >|`@lab.CloudPortalCredential(User1).Username`|The username of the User1-* cloud    portal user account.|
   >|`@lab.CloudPortalCredential(User1).Password`|The password of the User1-* cloud    portal user account.|
   >|`@lab.CloudCredential(PoolName).Username`|The Username assigned from the PoolName credential pool.|
   >|`@lab.CloudCredential(PoolName).Password`|The Password assigned from the PoolName credential pool.|
   >|`@lab.CloudCredential(PoolName).TenantName`|The TenantName assigned from the PoolName credential pool.|
   >|`@lab.CloudCredential(PoolName).TenantPrefix`|The TenantPrefix assigned from the   PoolName credential pool.|
   >|`@lab.CloudPortal.Link`|A link to the cloud portal.|
   >|`@lab.CloudPortal.Url`|The cloud portal URL (rendered as text, not a link).|
   >|`@lab.CloudPortal.SignInLink`|A cloud portal sign-in link.|
   >|`@lab.CloudPortal.SignInUrl`|The cloud portal sign-in URL (rendered as text, not a    link).|
   >|`@lab.CloudPortal.SignOutLink`|A cloud portal sign-out link.|
   >|`@lab.CloudPortal.SignOutUrl`|The cloud portal sign-out URL (rendered as text, not a    link).|
   >|`@lab.TextBox(name)`|A text box that allows the user to set the value of a named    variable. This variable value can then be displayed elsewhere using @lab.Variable(name)   .|
   >|`@lab.DropDownList(name)[val1,val2]`|A dropdown list that allows the user to set the    value of a named variable. This variable value can then be displayed elsewhere using    @lab.Variable(name).|
   >|`@lab.Activity(Question1)`|Inserts activity Question1 into the instructions.|

# Activities

 Activities are configured in the lab instructions, using the lab instruction editor. Activities can be modified at anytime, by anyone that has access to edit the lab instructions. When an Activity is created, it is represented in the lab instructions by a Replacement Token. 

Activities fall into two broad categories: Questions and Automated. 
- Questions are simply multiple choice or short answer questions. 
- Automated Activities have a script configured to run against a cloud subscription or Windows-based virtual machines running on Hyper-V in the lab.  

> [!KNOWLEDGE] If your lab profile does not use a Cloud Subscription, or if it does not have virtual machines configured, Automated Activities are not available in the Activities menu. 

To get started with Activities:

1. Navigate to your **lab profile**.

1. Click **Edit Instructions**.

1. Click the **Activities icon** to enter the settings Activities menu in your lab instructions. 

![](../../lod/images/activity-icon.png)

1. Next, you should decide what type of Activity you would like to create -- Question, or an Automated Activity that targets a Cloud Subscription or a Windows-based virtual machines running on Hyper-V, with a PowerShell or Shell script. 

Click to go to a specific section, or continue reading to learn more about creating Activities in your lab. 

- [Automated Activity](#automated-activity)
- [Multiple Choice Question](#multiple-choice-questions)
- [Short Answer Question](#short-answer-questions)
- [Edit Activities](#edit-activities)
- [Scoring](#scoring)

## Automated Activity

Automated Activities are PowerShell or Shell scripts that target a Cloud Subscription, or a Windows-based virtual machine running on Hyper-V in the lab. Cloud Subscriptions are targeted by a PowerShell script, and Windows-based virtual machines can be targeted by both PowerShell and Shell. Automated Activities can be used to help make sure the student has configured their lab environment correctly, help the student understand mistakes that are made in their lab, as well as give the student confirmation that they are completing the lab instructions correctly. Automated Activities can also be used to automate any configuration or lab steps that you wish to automate. 

1. If you would like the lab to be scored, Click the **switch** next to _Enable Scoring_. If you would not like the lab to be scored, simply leave the **Switch** turned off. 

1. Click **New Automated Activity**.

![](../../lod/images/new-automated-activity.png)

- **Name**: this will be the title of the automated Activity, and will be displayed in the lab instruction editor, in the activities menu.

- **Instructions**: this is where instructions for the Activity are entered, and will be displayed to students, in the lab instructions. 

- **Scored**: enables the question to be scored. Scoring must be enabled in your lab. [Scoring is covered below in this document](#scoring).

- **Display Scripts as Task List**: enables the script to be displayed as a Task List. This is useful when there is more than one script configured on an Activity. 

    > [!KNOWLEDGE] If **Display Scripts as Task List** is checked, On-Demand Evaluation will no longer be available for this Activity. 

- **On-Demand Evaluation**: enables a button that the user can click to check their answer to a question, or to score their answer if Activities are set to be scored.
 
- **Allow retries**: allows the user to retry a question if they enter or select an incorrect answer. This option is not available when On-Demand Evaluation is disabled. 

- **Required for submission**: requires the student to perform the Activity, to submit their lab for grading.

- **Blocks page navigation**: checking this box prevents the student from navigating to the next page in the lab instructions, unless they have entered or selected an answer to this question. 

- **Correct answer feedback**: this will be displayed to the user upon entering or selecting a correct answer to a question. 

- **Incorrect answer feedback**: this will be displayed to the user upon entering or selecting a incorrect answer to a question. 

- **Script 1**:
    - **Score Value**: the score value the student will recieve for completing the Activity correctly. This score contributes to their overall score in the lab.
    - **Target**: the virtual machine or cloud subscription that the script will target. Cloud subscriptions must be targeted by PowerShell, and Windows-based virtual machines running on Hyper-V can be targeted by PowerShell or Shell.
    - **Language**: the scripting language that will be used. PowerShell and Shell are supported. 
    - **Script**: enter the script that will be executed.

    - **New Script**: click to add an additional script to this Activity. The new script will be represented by a button, in a Task List. 

    The following two options are **only available if Display Scripts as Task list is checked**, and are located in the section for the script they belong to. This allows you to provide custom feedback on each Automated Activity. 

    - **Correct answer feedback**: you can enter text here, or you can use scripts to generate a response to the student.  

    - **Incorrect answer feedback**: you can enter text here, or you can use scripts to generate a response to the student.  

### Automated Activity Best Practice and Guidelines

- Use Automated Activities in areas of your lab when students are prone to making mistakes. A PowerShell script, such as the example shown below, helps students to make sure their lab is configured appropriately so that they do not get an error when trying to complete steps later in the lab.  

- Provide the student feedback with your scripts where possible, to help them complete the lab instructions correctly. An if/else statement in your script works very well in this situation, to provide unique feedback depending on if the student gave the correct answer or not. 

- If more than one script is configured on an Activity, the scripts will execute in sequential order. If one of your scripts is relying on another script to be completed, make sure you order the scripts appropriately to prevent your Automated Activity from not working correctly. 

- Automated Activities support PowerShell and Shell. Cloud Subscriptions must be targeted by a PowerShell script, and Windows-based virtual machines running on Hyper-V can be targeted by PowerShell or Shell.


### Example Automated Activity 

The lab instructions ask the student to create a few storage accounts in a Cloud Subscription that will be used later in the lab. You could write a PowerShell script that will check if the storage accounts were created correctly.

This script is to make sure the student has created a storage account correctly, to prevent errors with later lab instructions:

```
param($LabInstanceId)
$result = $false
$resourceGroupName = "CSSTlod${LabInstanceId}"
$storAccount = Get-AzureRmStorageAccount -ResourceGroupName $resourceGroupName -Name "sa${LabInstanceId}" -ErrorAction Ignore
if ($storAccount -eq $null){
    "The Storage Account has not been created"
} else {
    $result = $true
    "You successfully created the storage account."
}
$result
```

This is what the student will see in the lab:

![](../../lod/images/scripts-in-lab-instructions.png)

- The student clicks the Score button, and the scripts will begin executing:

    - If the student **created the storage accounts correctly**, they will receive a message that says "You successfully created the storage account."
    
    - If the student **did not create the storage accounts correctly**, they will receive a message that says "The Storage Account has not been created". 

> [!KNOWLEDGE] You can provide a hint to students based on the outcome of the script. For example, if the script is to check if a specific directory has been created, you script could output a hint to help the student create the appropriate directory. 

## Questions

Activities in your lab can be configured to use the following types of questions:
- Multiple choice
    - Single answer
    - Multiple answers
- Short answer
    - Exact match
    - Regex match

Optionally, you can enable scoring for Questions in your lab. Once scoring is enabled:

- You will be presented with a text field where you can enter the passing score the student will need to achieve in the lab. 
- You can enable scoring only on the questions you wish to be scored. Questions that are not scored, are considered practice or review and do not contribute to the student's overall score in the lab. 
- Each question that is scored is given a score value, and that value is awarded to the student by selecting the correct answer to the question.   
- If Scoring is not enabled, you do not need to decide which questions will be scored and which will not be scored.

### Multiple Choice Questions 

1. If you would like the lab to be scored, Click the switch next to _Enable Scoring_. 

1. Click **New Question**.

![](../../lod/images/activities-menu.png)

![](../../lod/images/multiple-choice-question.png)

- **Text**: This is where the multiple choice question is entered. This will also be the text that is displayed in the Activities editing menu.

- **Format**: the format can be changed by clicking the drop-down menu. Format options for multiple choice include:
    - Multiple choice, single answer:
    - Multiple choice, multiple answer

- **Add Answer**: click to add an answer to the multiple choice question. 

- **Scored**: enables the question to be scored. Scoring must be enabled in your lab. [Scoring is covered below in this document](#scoring).

- **Score Value**: the value the student will receive upon selecting a correct answer.

- **On-Demand Evaluation**: enables a button that the user can click to check their answer to a multiple choice question in the lab, or to score their answer if Activities are set to be scored.
 
- **Allow retries**: allows the user to retry a question if they select an incorrect answer. This option is not available when On-Demand Evaluation is disabled. 

- **Blocks page navigation**: checking this box prevents the student from navigating to the next page in the lab instructions, unless they have selected an answer to this question. 

- **Required for submission**: click to make this multiple choice question required, for the student to submit their lab. 

- **Correct answer feedback**: this will be displayed to the user upon selecting a correct answer to a multiple choice question. 

- **Incorrect answer feedback**: this will be displayed to the user upon selecting a incorrect answer to a multiple choice question. 

### Short Answer Questions

1. If you would like the lab to be scored, Click the switch next to _Enable Scoring_. 

1. Click **New Question**.

![](../../lod/images/activities-menu.png)

![](../../lod/images/new-question-scoring-enabled-window.png)

- **Text**: This is where the short answer question is entered. This will also be the text that is displayed in the Activities editing menu.

- **Format**: the format can be changed by clicking the drop-down menu. Format options include:
    - Short answer, exact match
    - Short answer, regex match

- **Answer**: the answer to a short answer question.

- **Case-sensitive**: enables case-sensitivity on the students answer to short answer questions. 

- **Scored**: enables the question to be scored. Scoring must be enabled in your lab. [Scoring is covered below in this document](#scoring).

- **Score Value**: the value the student will receive upon entering a correct answer.

- **On-Demand Evaluation**: enables a button that the user can click to check their answer to a short answer question in the lab, or to score their answer if Activities are set to be scored.
 
- **Allow retries**: allows the user to retry a question if they enter an incorrect answer. This option is not available when On-Demand Evaluation is disabled. 

- **Blocks page navigation**: checking this box prevents the student from navigating to the next page in the lab instructions, unless they have entered an answer to this question. 

- **Required for submission**: click to make this short answer question required, for the student to submit their lab. 

- **Correct answer feedback**: this will be displayed to the user upon entering a correct answer to a short answer question. 

- **Incorrect answer feedback**: this will be displayed to the user upon entering a incorrect answer to a short answer question. 

## Scoring

Scoring allows the student to be given a score for each Activity they complete correctly, and those scores contribute to the student's overall score in the lab. As the lab author, you set the passing score for the lab after you enable scoring in the lab. 

> [!KNOWLEDGE] When Scoring is enabled, it is not required to make each question scored. As a lab author, you are free to decide which Activities have a score value associated, and only score the questions that you wish to.

To enable Scoring in your lab:

1. Click the **Activities icon** to enter the settings menu for Activities.

1. Click the **switch** to enable Scoring. 

1. Enter a **passing score** for the lab. You may change this at anytime, as often as you would like. 

    ![](../../lod/images/activities-menu-scoring-enabled.png)

1. After Scoring is enabled, you will see the Score checkbox available to select on all Activities you have created, while editing that Activity.

1. Click the checkbox to enable scoring, and enter a score for that Activity. 

    ![](../../lod/images/score-scored-checkboxes.png)

1. The student will be given the score value upon completing the Activity correctly. 

## Edit Activities

After Activities are created, they can be modified at any time, using the Activity editing menu. 

To access this menu, simply click the **Activities Icon**

![](../../lod/images/activity-icon.png)

![](../../lod/images/activities-edit-menu.png)

- **Enable Scoring**: this enables Activities to be given a score value that will be given to the student by selecting the correct answer, or completing the Activity correctly. 

- **Activity**: this will display the text you entered as the Name of your Activity. 

- **Type**: this displays the type of Activity. 

- **Score**: this displays the score value of the Activity. This will display _Practice_ for non-scored Activities, and a the score value of the Activity for scored Activities. 

- **Token**: this is the replacement token that is used in lab instructions to represent this Activity in the lab. Simply place this Replacement Token where you would like the Activity to appear in the lab instructions. 

- **Edit**: click this to edit the Activity. 

- **Delete**: click to delete the Activity. Once it is deleted, there is no way to recover the Activity. 

- **Insert**: click to insert the Activity in your current position in the lab instruction editor. 

<!--
## Add Review Questions as an Assessment Exam to a Lab

Each lab, regardless of whether it has content, can provide an optional exam at the end of lab. This can serve a number of purposes: to reinforce learning, to measure retention of concepts, to provide metrics on effectiveness of lab delivery, etc. Exams are categorized by the type of scoring used; there are three to choose from:

1. **Assessment** - Traditional multiple choice test that is scored automatically.

1. **Manual** - The user submits screenshots.The screenshots are later evaluated and marked by an examiner.

1. **Automated** - Performance-based test (the user has to make required configuration changes in the lab based on directions in the exam questions) that are evaluated using scripts to verify correct configuration within the lab or in code. 

Review questions can be added to a lab as an assessment. The assessment will appear when the user has completed all the lab steps. It is created on the Exam tab of the lab profile. To create an assessment, click the
**Exam** tab, and then check **Has Exam**. 

![](images/exam-tab-has-exam.png "Has exam")

To create a multiple choice review, in the Scoring Type drop-down, select **Assessment**, set the **Passing Score**, and then click **Add Page**. Pages provide a way to organize the review content into categories that, for example, might follow the lab exercises or topics. Enter a page name and click **Add Question**. Type the question, add the multiple choice selections, select the correct answer(s), and set the **Score Value** so that the exam can be scored.

![](images/exam-example-questions.png "Example multiple choice assessment")
-->
## Additional Features

### Create and Incorporate Advertising Campaigns

An advertising campaign allows you to provide introductory content across multiple labs that are grouped by lab series, organization or event. This topic describes how to add an advertising campaign to a lab profile or a lab series. The advertising campaign must first be configured from the Lab on Demand Admin page, as show below.

_You will require special permissions to see this tile._

![](images/advertising-tile.png "Advertising Campaign Tile from Admin screen")

To create an advertising campaign, click **Create Advertising Campaign**. On the edit, enter a name for the campaign, as shown below.

![](images/advertising-campaign-basic-info.png "Create Advertising Campaign")

Click the **Intros** tab and enter the URL source for the video, graphics presentation, or other information you wish to display. Multiple URLs can be entered on separate lines and will display randomly. If wanted, check the box and set the minimum amount of time to show the content. With this configured, the users will not be able to close the presentation early.

![](images/advertising-campaign-intro.png "Advertising Campaign Intro")

To configure a lab profile with an advertising campaign, on the lab profile page, click **Edit**.

![](images/lab-profile-edit-button.png "Edit lab profile")

Beside Advertising Campaign, click **Choose**, then locate and select the advertising campaign.

![](images/advertising-campaign-in-lab-profile-edit.png "Select Advertising Campaign")

The advertising campaign can also be associated with a lab series or a lab profile. The following screenshot shows the configuration page for an example lab series.

![](images/advertising-campaign-in-lab-series.png "Add Advertising Campaign to Lab Series")

### Incorporate Rich Media Content as Part of Lab Introduction

Although you can use Advertising Campaigns at the level of the lab profile, it is more practical and easier to use the Introduction Content URL to provide a lab-specific video or other rich media content.

To do this, on the Edit Lab Profile page, scroll down and type the URL for the rich media content in the **Introduction Content URL** field. Like the advertising campaign, you can also force the rich media to be displayed for a minimum amount of time by checking the box to Show for at least **__** seconds.

![](images/introduction-content-url.png "Introduction Content URL")

## Common Style Guidelines

This section includes guidelines for preventing common errors in word choice and sentence formation. The list contains some of the most common errors in grammar, language, style, and formatting. Use this section as a quick reference as you write or edit. For more comprehensive information on, and guidelines for writing about technical information, please see the Microsoft Manual of Style (MMS), 4<sup>th</sup> edition.

| Use                                      | Do Not Use                               | Comments                                 |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| VMs                                      | VM's                                     | Do not use an apostrophe when you mean plural.<br/><br/>This is the possessive form. |
| Red, white, and blue                     | Red, white and blue                      | Always include the serial comma, which is the comma before a coordinating conjunction such as "and" or "or." |
| In Server Manager, click **Manage**, and click **Add Roles and Features**. | In Server Manager, click **Manage**, then click **Add Roles and Features**. | *Then* is not a coordinate conjunction and thus cannot correctly join two independent clauses. Use *and* or another coordinate conjunction or *then* with a semicolon or another conjunctive adverb to connect independent clauses in, for example, two-part procedural steps.<br/><br/>This is one of the most common grammatical errors in lab documents. |
| Some applications are unable to use expanded memory. | Some applications are unable to utilize expanded memory. | Do not use *utilize* as a synonym for *use*. *Utilize* means "to find a practical use for." |
| On the File menu, click **Open**.        | On the File menu, select **Open**.       | Use *click* rather than *choose* or *select* to refer to the user action of issuing a command or setting an option. |
| On the View menu, point to **Toolbars**, and then click **Formatting**. | On the File menu, choose **Open**.<br/><br/>Click on **Save**. | When dealing with menus and submenus, do not use *click on*, only *click*. |
| Check the **Print all pages** check box. | Check the **Print all pages** checkbox.  | If using the term check box, this is two words. |
| For more information about...            | For information on...                    | In cross-references, use *about*, not *on*. |
| To ..., click ….                         | Click … to....                           | Begin the sentence with "To".            |
| web, website                             | Web, web site                            | Change to MMS, 4^th^ edition, is web in lower case, and website all one word. |
| All caps for A.M., P.M., and key names, such as CTRL, ALT, and DELETE | Small caps, or title case.               | Note use of periods in A.M. and P.M., per MMS. |
| The **Save as** dialog box appears.      | The **Save as** dialog box displays.     | Do not use *display* as an intransitive verb. Use *appears* or, only if necessary, the passive *is displayed*. |
| Type the following code, and then press ENTER. | Type the following code, and then press ENTER: | End the introductory sentence with a period, not a colon. This is a recent change to the MMS.<br/><br/>Sentences introducing code samples are now always ended with a period, not a colon. |
| To install the program, do the following: | To install the program, perform the following steps: | If *following* is the last word before what it introduces, follow it with a colon.<br/><br/>This is a recent change to the MSTP. |
| Use Intense Emphasis style for user interface elements with which a user interacts. | Do not use bold for emphasis.            | See the relevant section in this style guide for complete guidelines regarding bold font.<br/><br/>Do not use bold for UI elements that are used as reference. |
| Spell out acronyms at first mention      | None                                     | You can find references to product names and acronyms in the MMS, on [www. Technet.microsoft.com](http://www.microsoft.technet.com), or on <https://worldready.cloudapp.net/StyleGuide/Read?id=1413> (requires Microsoft credentials) |
| computer                                 | machine                                  | Do not use *machine* when you mean *computer*. While this term is common among software developers and IT Pros, it is not acceptable per MMS. |
| You will need to supply information about applications that you want to run with Windows. | You will need to supply information about applications which you want to run with Windows. | *That* and *which* are often confused. Be sure to use the appropriate word. *That* introduces a restrictive clause, which is a clause that is essential for the sentence to make sense. A restrictive clause often defines the noun or phrase preceding it and is not separated from it by a comma. In general, do include the word *that* in restrictive clauses, even though in some clauses the sentence may be clear without it. Including *that* prevents ambiguity and helps translators understand the sentence. |
| Your package contains the subsidiary information card, which you can use to obtain device drivers or local technical support. | You will need to supply information about applications you want to run with Windows. | *Which* introduces a nonrestrictive clause, which is a clause that could be omitted without affecting the meaning of the sentence. It is preceded by a comma. Nonrestrictive clauses often contain auxiliary or parenthetical information. |
| Type your password, and then press ENTER. | Enter your password, and then click **OK**. | Do not use as a synonym for *type* except to indicate that a user can either type or click a selection from, say, a list in a combo box. |
| Wait for the computer to restart, and then log on as **Administrator** with the password **Passw0rd**. | Wait for the computer to restart, and then logon as **Administrator** with the password **Passw0rd**. | The verb form is two words, *log on* or *log off*. As a noun or adjective, use one word, no hyphen: *logon* or *logoff*. |
| Windows Server® 2008 R2 Hyper-V™         | Note the use of ® and TM. Once this has been spelled out correctly, you can then reference Hyper-V, or Windows Server Hyper-V. | Refer to the Trademarks section for a link to how to use MS trademarks. |
| cloud                                    | Cloud                                    | The MMS now has a detailed section on cloud technology. Note that cloud is lower case. |
| On the Start menu, navigate to **All Programs\\Microsoft Forefront UAG\\Forefront UAG Management**. | On the Start menu, navigate to **All Programs/Microsoft Forefront UAG/Forefront UAG Management**. | Do not use / for Start menu commands.    |
| In the Navigation pane, expand **contoso.com/branch offices/Vancouver/sales**, and then in the Details pane, click **Tom**. | In the Navigation pane, navigate to **contoso.com\\branch offices\\Vancouver\\sales**, and then in the Details pane, click **Tom**. | In a Management Console, use *expand* for navigating tree structures, and use a /.<br/><br/>Make sure you reference the Navigation pane and the Details pane.<br/><br/>Do not use a \\. |
| On the File menu, click **Open**.        | On the File menu, click **Open...**.<br/><br/>On the File menu, click **Open(...)**. | In the user interface, an ellipsis is typically used to show truncation, as in a program name, or to indicate on menus and in dialog boxes that a dialog box will appear to obtain more information from the user. Do not use an ellipsis in this context in documentation. |
| Right-click **XXX**, and then click **Properties**. | Right-click **XXX**, and then select **Properties**.<br/><br/>Right-click **XXX**, and then choose **Properties**. | When you right-click something, you are presented with a context menu. You *click* items on a context menu, rather than choosing or selecting them. |

## Acronyms and Initialisms

The term, acronym, is used when the letters can be pronounced as a word. Initialism is the correct term to use when the first letters cannot be pronounced as a word. HOL or ILL can be either.

Spell these out at first mention, for example: System Center Virtual Machine Manager (VMM). Note that, in this example, the Microsoft initialism is VMM, not SCVMM. One often sees both, but by visiting Microsoft TechNet pages, you can see that the correct initialism is VMM. Additional common Microsoft acronyms can be found in the MMS.

### Trademarks

You can confirm trademarks at [Microsoft Trademark & Brand Guidelines](https://www.microsoft.com/en-us/legal/intellectualproperty/trademarks/usage/general.aspx).

### Bold Formatting

In this document style, only UI elements that a user interacts with should be bold. Ensure that the UI element is bold, but any punctuation following the UI term is not bold.

### Initial Caps

Initial caps mean capitalizing the first letter of a word. Use initial caps for:

-   File names. Internal caps are OK for readability, as in MyFile.doc.
    The file extension should be lowercase.
    Examples: MyTaxFile.doc, Oleaut.dll.

-   Agenda items in slide presentations

-   Folder names (internal caps are OK for readability)

-   Mode names (Break mode)

-   Named views (Gantt view)

-   Named windows (the Edit window)

-   Proper names (the Insert menu)

-   “Wizard” when used as part of a proper name of a wizard (for
    example, the Answer Wizard)

### Sentence Case

In sentence case, you capitalize only the first letter in a sentence or phrase. Use sentence case for all task titles.

### Title Case

Use this for the exercise titles and lab titles.

-   Capitalize all nouns, verbs (including *is* and other forms of
    *be*), adverbs (including *than* and *when*), adjectives (including
    *this* and *that*), and pronouns (including *its*).

-   Capitalize the first and last words, regardless of their parts of
    speech ("The Text to Look For").

-   Capitalize prepositions that are part of a verb phrase ("Backing Up
    Your Disk").

-   Do not capitalize articles (*a*, *an*, *the*) unless the article is
    the first word in the title.

-   Do not capitalize coordinate conjunctions (*and*, *but*, *for*,
    *nor*, *or*, *yet*, *so*) unless the conjunction is the first word
    in the title.

-   Do not capitalize prepositions of four or fewer letters unless the
    preposition is the first or the last word in the title.

-   Do not capitalize “to” in an infinitive phrase ("How to Format Your
    Hard Disk") unless the phrase is the first word in the title.

-   Capitalize the second part of a hyphenated compound if it would be
    capitalized without the hyphen. Always capitalize the second part of
    a hyphenated compound if it is the last word of a heading or title.

## Describing the User Interface

Refer to the user interface section of the Microsoft Manual of Style for examples of how to describe user interface elements.

## Appendix: Advanced Settings in Lab Profiles

In lab profiles, there are many settings on the Advanced tab that are relevant to the lab client user experience.

To view/modify these settings, do the following:

1. Navigate to your lab profile.
1. Click **Edit** on the lab profile page.
1. Click **Advanced**. 

The following settings on the advanced tab allow you to customize the client user experience:

- **Custom Cascading Style Sheets (CSS).** You can use CSS to modify the appearance of the lab text in the navigation and task bars. CSS markup that will be included in the lab client, making it possible to control the styles of custom content that is added to the lab. This should just be the style definitions, including a style tag is not necessary.

    For more information on Custom CSS in Lab on Demand, see our guide here: [Custom CSS Guide](../../lod/feature-focus/lab-profiles/custom-css.md).

- **Custom CSS URL:** A URL to an externally hosted CSS stylesheet. The stylesheet will be referenced in the lab client.

    Note: HTTPS is **required** for external URLs to CSS stylesheets.

- **End Redirect URL:** If this value is set, users will be redirected to the specified URL when the lab ends. This feature isn't used often, but can help a lab fit into an external workflow.

- **Show Timer:** If this is checked, the lab will display a countdown timer, showing the user how much time they have left to complete the lab.

- **Navigation Bar Width:** This sets the width of the navigation bar in the lab UI. Options include:

    - Default (250 pixels)
    - Large (400 pixels)
    - XL (600 pixels)
    - Custom

- **Show Content Tab:** Checking this box enables the Instructions tab to be displayed in the lab environment.

- **Show Machines Tab:** Checking this box enables the Resources tab to be displayed in the lab environment.

- **Show Support Tab:** Checking this box enables the Help tab to be displayed in the lab environment.

- **Custom Content Tab label:** Custom label to be used in lab UI, in place of the Instructions label.

- **Custom Machines Tab label:** Custom label to be used in lab UI, in place of the Resources label.

- **Custom Support Tab label:** Custom label to be used in lab UI, in place of the Help label.

- **Enable Type Text:** Enables Type Text support in the lab.

- **Show Virtual Machine Power Options:** Checking this box enables virtual machine power options to be available to users.

- **Require Hyper-V Enhanced Controller:** Checking this box requires the user to use the Hyper-V Enhanced controller to work in the lab. If this box is checked, users will not be able to use any other machine remote controllers. Note that the Hyper-V enhanced controller only allows one user to access the lab at a time. 

- **Save/Cancel Options:** 

    - **Allow User to Cancel Labs:** allows the user to cancel the lab at any point
    - **Allow user to Save labs:** allows the user to save the lab in it's current state and return at a later time. Note that saved labs are only saved for 48 hours. Users can extend the saved lab expiration by resuming the lab and saving again. Each save sets the timer back to 48 hours. After 48 hours has passed, the lab progress and components are discarded and cannot be recovered. 
    - **Allow User to Extend Time Remaining:** Allows the user to extend the time remaining in the lab environment. 
    - **Auto-Save incomplete Labs:** Enables the lab to automatically save incomplete labs after a specified amount of time has passed.
