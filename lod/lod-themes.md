---
title: "Themes"
description: "Create themes to customize the look and feel of labs using CSS, and JavaScript."
isPublished: true
---

# Skillable Studio Themes

Themes allow you to add cascading style sheets (CSS) to your lab profiles, to customize the look and feel, as well as using custom JavaScript. CSS and JavaScript can target lab instructions or the virtualization window in a lab.

## Table of Contents

- [Basic Information](#basic-information)
- [CSS](#css)
- [JavaScript](#javascript)
- [Examples](#examples)
  * [CSS Example](#css-example)
  * [JavaScript Example](#javascript-example)
- [Easier Lab Client Theming](#easier-lab-client-theming)
  * [Editing Themes in Real-time](#editing-themes-in-real-time)
  * [Theme Inheritance](#theme-inheritance)

## Basic Information 
|Field|Description|
|--|--|
|Name | Display name of the theme. enter a description of the theme.| 
|Description| Enter a description of the theme. If the theme will be configured to lab profiles by multiple people, adding as much detail as possible is recommended.|
|Organization|Select the organization that the them will be available to use.|
|Base theme|Select a base theme that will be applied to labs. The base theme will style anything that you has not styled with custom CSS. Base themes include: blue, gray, green, orange, purple, red, or high contrast. These are the same themes that cab be selected on the _Help_ tab in an IDLx lab.|
|Enabled| Enables the theme for use. If the theme is configured on a lab profile, and then disabled, the lab profile will be styled using the them the user has chosen on the _Help_ tab of the lab profile.|

## CSS

- Instructions CSS: 
  CSS added to this tab will style the lab console, the portion of the lab window that houses the lab instructions.

- **Virtualization CSS**: 
  CSS added to this tab will style the portion of the lab window that houses virtual machines.

## JavaScript

- **Instructions Script**:
  
  JavaScript can be inserted into the lab console, the portion of the lab window that houses the lab instructions.

- **Virtualization Script**

  JavaScript can be inserted into the portion of the lab window that houses virtual machines.

## Examples

### CSS Example

```CSS-linenums
/* This Instructions CSS controls the look and feel of the right hand panel in Skillable Studio
Below are some examples of customisation that can be performed.
*/

/*a controls the link color in, b controls the color of Bold text */

.instructions a, b{
    color:#12eae7;
}

/* This section sets the colors of the header text */

.instructions h1, h2, h3, h4, h5, h6{
    color: #1e377f;
}

/* This section controls the font to be used for the body */
.instructions body{
font-family: verdana;
}

/* This section will apply additional formating to any text that has the Strong tag applied */

.instructions strong {
    color: #12EAE7;
}

/* This section demonstrates putting a company logo at the top of the Instructions
.instructions #header{
    background-image: url(<full url to picture here>);
    background-repeat: no-repeat;
	font-family: calibri;
    background-position: 5% center;
    background-size: 25%;    
}
*/
/* This section stops the lab name from being displayed.  This must be used if the logo above is used as they occupy the same screen area
.instructions #labName{
    font-size: 0px;
}
*/

/* Allows settings to be applied to control the lab timer position, font, size, etc
.instructions #timerWrapper{
  margin-left: 30%;
  margin-top: -4%;
  text-align: center;
  float: left;
  padding: 10px;
}
*/
/* This sets the color of the TypeText.  Note class names like .typeText are case sensitive */
.instructions .typeText{
    color: #EA570F;
}

/* This section allows customization of the Instructions/Resources/Help menu bar.  
For example these settings control the underline thinkness and color when one of them is clicked
*/

.instructions .tabHeading.selected{
	border-bottom: 4px solid #12EAE7;
}

/* This section can be used to turn off various elements on the Help page
.instructions .supportIcon {
    display: none;
    }

.instructions .supportChatIcon {
    display: none;
    }
    
.instructions .questionIcon {
    display: none;
    } 
*/
/* ensures elements like company names are not flagged as spelled incorrectly */
.instructions .help 
{spellcheck:"false"}
```

### JavaScript Example

```JavaScript-linenums
/*  All content is commented out

//This highlights two of many things that can be customised within the Lab Client

//This section allows for the customization of the support url and text on the Help page in the lab client.  The text and url can be changed to meet the customers requirements

var a = document.createElement('a');  
var link = document.createTextNode("Submit a Support Request to Skillable Support"); //Text displayed on Help page
a.appendChild(link);  
a.title = "Skillable Support";  //Tool tip on link
a.href = "https://supportrequest.skillale.com/";  //URL to navigate user to if link clicked
a.target= '_blank';
ul = document.getElementsByClassName('iconLinksList')[0]
li = document.createElement("li")
li.appendChild(a);
li.setAttribute("class", "SkillableStudioSupport");
ul.appendChild(li);

//This section shows the ability to load a graphic onto the help page to give users further guidance.

var b = document.createElement('img');  
b.src="<url to picture>"
b.alt="Alternative text to help screen readers goes here"

*/
```

## Easier Lab Client Theming

The Easier Legacy Lab Client Theming feature provides the following benefits:

1.  Real-time Theme Updates: You can now make changes to the theme's CSS and scripts without requiring a full form submission. This allows for more real-time editing and immediate visualization of the theme changes.

1.  Theme Inheritance: With theme inheritance, you can easily inherit styles and scripts from other themes. This eliminates the need for excessive copy-pasting, making it more efficient to create customized themes that build upon existing ones.

### Editing Themes in Real-time

To make real-time changes to a theme, follow these steps:

1.  Log in as an administrator and ensure you have access to a running lab.
1.  Open a separate browser tab or window to edit the theme that the lab uses.
1.  Modify the theme settings, including CSS and scripts, as desired.
1.  Save the changes without the need for a full form submission.
1.  Refresh the lab in your browser.
1.  You will now see the updated theme applied in the lab, reflecting the changes you made.

This real-time editing capability allows you to fine-tune the theme appearance and quickly see the results in the running lab.

### Theme Inheritance

To create a new theme that inherits styles from another theme, follow these steps:

1.  Log in as an administrator.
1.  Access the theme creation feature.
1.  Specify the new theme's settings, including the desired inheritance.
1.  Set the specific styling you want to override from the inherited theme.
1.  For example, if you want to style H1 headers in pink, ensure that you define this styling in the new theme, overriding any inherited values.

By leveraging theme inheritance, you can avoid excessive copy-pasting and easily modify specific styles while building upon existing themes.
