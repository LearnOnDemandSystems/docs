---
title: "Themes"
description: "Create themes to customize the look and feel of labs using CSS, and JavaScript."
isPublished: true
---

# Lab on Demand Themes

Themes allow you to add cascading style sheets (CSS) to your lab profiles, to customize the look and feel, as well as using custom Javascript.

### Basic Information 
|Field|Description|
|--|--|
|Name | display name of the theme. enter a description of the theme.| 
|Description| enter a description of the theme. If the theme will be configured to lab profiles by multiple people, adding as much detail as possible is recommended.|
|Organization|select the organization that the them will be availble to use.|
|Base theme|Select a base theme that will be applied to labs. The base theme will style anything that you has not styled with custom CSS. Base themes include: blue, gray, green, orange, purple, red, or high contrast. These are the same themes that cab be selected on the _Help_ tab in an IDLx lab.|
|Enabled| enables the theme for use. If the theme is configured on a lab profile, and then disabled, the lab profile will be styled using the them the user has chosen on the _Help_ tab of the lab profile.|

**Instructions CSS:** CSS added to this tab will style the lab console, the portion of the lab window that houses the lab instructions.

**Instructions Script:** Javascript can be inserted into the lab console, the portion of the lab window that houses the lab instructions.

**Virtualization CSS:** CSS added to this tab will style the portion of the lab window that houses virtual machines. 

**Virtualization Script:** Javascript can be inserted into the portion of the lab window that houses virtual machines.

## Examples

### CSS

Example: increases font size and changes the font color to gray

```linenums
{
  font-size: 120%;
  color: dimgray;
}
```

### Script

Example: sends a popup notification from the web browser.

```linenums
alert("Hello! I am an alert box from the instructions!!");
```
