---
title: "Themes"
description: "Create themes to customize the look and feel of labs using CSS, and JavaScript."
isPublished: true
---

# Lab on Demand Themes

Themes allow you to add cascading style sheets (CSS) to your lab profiles, to customize the look and feel, as well as using custom JavaScript. CSS and JavaScript can target lab instructions or the virtualization window in a lab. 

## Table of Contents

- [Basic Information](#basic-information)
- [CSS](#css)
- [JavaScript](#javascript)
- [Examples](#examples)
  * [CSS Example](#css-example)
  * [JavaScript Example](#javascript-example)

## Basic Information 
|Field|Description|
|--|--|
|Name | display name of the theme. enter a description of the theme.| 
|Description| enter a description of the theme. If the theme will be configured to lab profiles by multiple people, adding as much detail as possible is recommended.|
|Organization|select the organization that the them will be available to use.|
|Base theme|Select a base theme that will be applied to labs. The base theme will style anything that you has not styled with custom CSS. Base themes include: blue, gray, green, orange, purple, red, or high contrast. These are the same themes that cab be selected on the _Help_ tab in an IDLx lab.|
|Enabled| enables the theme for use. If the theme is configured on a lab profile, and then disabled, the lab profile will be styled using the them the user has chosen on the _Help_ tab of the lab profile.|

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

```linenums
/* This Instructions CSS controls the look and feel of the right hand panel in LOD
Below are some examples of customisation that can be performed.
*/

/*a controls the link color in, b controls the color of Bold text */

a, b{
    color:#12eae7;
}

/* This section sets the colors of the header text */

h1, h2, h3, h4, h5, h6{
    color: #1e377f;
}

/* This section controls the font to be used for the body */
body{
font-family: verdana;
}

/* This section will apply additional formating to any text that has the Strong tag applied */

strong {
    color: #12EAE7;
}

/* This section demonstrates putting a company logo at the top of the Instructions
#header{
    background-image: url(<full url to picture here>);
    background-repeat: no-repeat;
	font-family: calibri;
    background-position: 5% center;
    background-size: 25%;    
}
*/
/* This section stops the lab name from being displayed.  This must be used if the logo above is used as they occupy the same screen area
#labName{
    font-size: 0px;
}
*/

/* Allows settings to be applied to control the lab timer position, font, size, etc
#timerWrapper{
  margin-left: 30%;
  margin-top: -4%;
  text-align: center;
  float: left;
  padding: 10px;
}
*/
/* This sets the color of the TypeText.  Note class names like .typeText are case sensitive */
.typeText{
    color: #EA570F;
}

/* This section allows customization of the Instructions/Resources/Help menu bar.  
For example these settings control the underline thinkness and color when one of them is clicked
*/

.tabHeading.selected{
	border-bottom: 4px solid #12EAE7;
}

/* This section can be used to turn off various elements on the Help page
.supportIcon {
    display: none;
    }

.supportChatIcon {
    display: none;
    }
    
.questionIcon {
    display: none;
    } 
*/
/* ensures elements like company names are not flagged as spelled incorrectly */
.help 
{spellcheck:"false"}
```

### JavaScript Example

```
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
li.setAttribute("class", "lodsupport");
ul.appendChild(li);

//This section shows the ability to load a graphic onto the help page to give users further guidance.

var b = document.createElement('img');  
b.src="<url to picture>"
b.alt="Alternative text to help screen readers goes here"

*/
```
