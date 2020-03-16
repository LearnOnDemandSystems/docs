# Lab on Demand Experience

## Admin

The OneLearn Lab on Demand Admin page consists of several tiles. Each tile contains links to accomplish tasks related to the same topic. For example, the Lab Profiles tile only contains links for tasks related to a Lab Profile. 

In LOD, you will see different icons on buttons or links. These icons are associated with the appropriate action. For example, the magnifying glass icon is always associated with searching or finding a particular item, while the + (plus) icon is always associated with creating a new item. 

<!--
See the below table for an explanation of each icon. 

|Action|Icon|
|--|--|
| **Find** | <span class="lod-icon lod-search"></span> | 
| **Create** | <span class="lod-icon lod-create"></span> |       
| **Edit** | <span class="lod-icon lod-edit"></span> |         
| **Delete** | <span class="lod-icon lod-delete"></span> |      
| **Favorite on** | <span class="lod-icon lod-favorite-on"></span> |  
| **Favorite off** | <span class="lod-icon lod-favorite-off"></span> |

-->

### Admin Tiles 
The tiles on the Admin page can be moved and re-ordered any way you would like. To move a tile, simply left-click and drag to the position on the Admin page where you would like the tile to be located. 

Tiles contain links that are relevant to the name of the tile. Links on the tiles include, but are not limited to:

- **Find links**: used to find items relevant to the name of the tile. For example, the Find Lab Profile link on the Lab Profiles tile is used to find Lab Profiles that are already created in Lab on Demand. 

- **Create links**: used to create items relevant to the name of the tile. For example, the Create a Virtual Machine tile on the Virtual Machines tile is used to create new Virtual Machine Profile.

Optionally, you can create new items from the respective Find page. After you click a Find link, there will be a Create link in the upper-right corner. 

>[!KNOWLEDGE] If a tile does not have a Find or Create link, click a link for the item you wish to find or create, on the tile. For example, the Cloud Services tile does not contain Find or Create links. If you wish to find or create a new Cloud Subscription, click the Cloud Subscriptions link. The next page will allow you to Find Cloud Subscriptions, and a Create link will be located in the upper-right corner.

Tiles may contain other links, than Create and Find. Those links are related to the tile where they are located. Check our [Feature Focus Section](/lod-home.md/#feature-focus) for more information. If you've already read through all of the documentation that is available on that topic, and you are still looking for more information, or have questions, please visit our [Contact Us](/docs/contact-us.md/#contact) page.

### Details View

When you click an object in LOD, such as a Lab Profile, Lab Series, Cloud Subscription, etc, you will be brought to the Details View page. 

In the Details View, you have various options that can be used on the object you are looking at. For example, if you are looking at a Lab Profile details page, there is an option to mark the Lab Profile as a Favorite, edit the Lab Profile, delete the Lab profile, etc. 

Options on the Details View page include, but are not limited to: 
- Edit
- Delete
- Search

There may be other options available, such as Favorite, depending on the Details View page you are on. 

## My labs

The My Labs page contains all of your Lab on Demand activity. You can get to the My Labs page by clicking the button at the top of the page in LOD.

This page includes, but is not limited to:

- **Running and Saved Labs**: labs that you currently have running or saved. Labs are saved from within the lab environment. 

- **Favorites**: labs that you have marked favorite, by clicking the Favorite button at the top of any Lab Profile page. 

- **Checked Out Labs**: labs that you have checked out for content editing. Labs are checked out by clicking the Check Out button from any Lab Profile page. 

- **Assignments**: Lab Series Assignments that have been assigned to you will be listed here.

- **Recent Lab Instances**: lab instances for recent labs you have launched will be listed here. This includes labs that have been cancelled, completed, and saved. 

>[!KNOWLEDGE] Labs you create will not automatically appear on the My Labs page. You must add them as a favorite, launch, check out, or be assigned a lab series, to appear on this page.

## News

Click the News button at the top of the page in LOD, to navigate to the Lab on Demand Blog, where you can read about what's new in Lab on Demand. 

## Help

Click the Help button at the top of the page in LOD, to use our Integrated Help to see documentation about the topic you are working on in Lab on Demand. 

- If you are at the LOD Admin page and click the Help button, you will be presented with a list of topics that you can choose from to see various documentation. 

- If you are on a page other than the Admin page, you will be presented with documentation (if available) for the page you are on. If the documentation presented is not what you are looking for, click the Home icon at the top of the page, and you will be directed to a list of topics to choose from. 

<!-- The below styling is to make the icon glyphs render properly-->

<style type="text/css">
    @font-face {
        font-family: "lod-icons";
        src: local("lod-icons");
        src: url("/fonts/lod.woff?v=13") format("woff"),
           url("/fonts/lod.ttf?v=13") format("truetype"),
           url("/fonts/lod.svg?v=13") format("svg");
        font-style: normal;
        font-weight: normal;
    }
    .lod-icon {
        font-family: 'lod-icons';
        display: inline-block;
    }
    .lod-search:before {
        content: "\E721";
    }
    .lod-create:before {
        content: "\E710";
    }
    .lod-edit:before {
        content: "\E70F";
    }
    .lod-edit:before {
        content: "\E70F";
    }
    .lod-delete:before {
        content: "\E711";
    }
    .lod-favorite-on:before {
        content: "\e735";
    }
    .lod-favorite-off:before {
        content: "\e734";
    }
</style>

