## How Do I Create A Lab Profile?

A Lab Profile is used to provide the lab interface, the virtual machines, and other items used in the lab to the user. A Lab Profile is a required component of all labs.

For LOD lab component terminology and guidelines for building Lab Series and Lab Profiles, please read the [LOD Terminology and Guidelines for Building a Lab article](lod-terminology-and-guidelines-for-building-a-lab.md).

There are two locations to create a Lab Profile: 

- From the Lab Series page you want to add the Lab Profile to (automatically associates the Lab Profile to the series) 

- From the Admin page on the Lab Profile tab (not automatically associated with any Lab Series). This blog will be from the Lab Series page.

Once you are logged in:
1. Navigate to the Lab Series page.
1. Click **Create Lab Profile** in the link bar towards the top of the page. 
1. The profile will open to the **Basic Information** tab with the following fields.

|Field|Req.|Type of Information|
|--- |--- |--- |
|Number|Y|Number to order the Lab Profile within the series|
|Name|Y|Name of lab|
|Series|Y|Automatically filled in from the Lab Series where the process stared|
|Organization|Y|Automatically filled in from the Organization in your User's Profile|
|Platform|Y|Drop-down with Virtual Server, Hyper-V, vSphere, and Azure platforms|
|Storage Reservation|Y|Amount of storage you feel the launched lab will take (see explanation under the question mark in the Lab Profile)|
|Development Status|Y|Drop-down for your use - only Complete labs can be published|
|Duration|Y|Amount of time the launched lab will provide the user|
|Language|Y|Language the lab uses|
|Level|Y|Set by default|
|Evaluation|N|Field to associate an evaluation with the lab|
|Advertising Campaing|N|Field to associate an advertising campaign with the lab|
|Description|N|Brief description of the lab; seen in the TMS when the Lab Profile is associated with a course|
|Objective|N|Place for the objectives of the lab; if filled out, seen in a window when the lab first launches|
|Scenario|N|Place for the scenario of the lab; if filled out, seen in the same window as the objectives|

### The fields and checkboxes at the bottom will be covered in later articles and videos.

The rest of the tabs are listed below and will covered in later articles and videos where needed (not all tabs may be available to you).

|Tab|Use to|
|--- |--- |--- |
|Networks|Add the network switch(es) for the lab|
|Virtual Machines|Add the VM Profiles for the virtual machines|
|Removable Media|Add media to be used in the lab either in development or by end-user|
|Cloud|Add Cloud credential pools and/or orchestration|
|Resources|Add resources for end-user|
|Save/Cancel Options|Most set by default; can change some fields as needed such as the amount of time a saved lab is given when resumed and the number of snapshots the user can take in a launched lab|
|Errata|Add information the user may need before interacting with the virtual machines; if filled out, will be the first window the user sees when the lab interface opens.|
|Exam|Set lab as an exam|
|Pre-instancing|Set pre-instancing options|
|Storage|Set storage options|
|Advanced|Add customization to lab|

4. When you have filled out the required information on the Basic Information tab and the other tabs (if needed), click Save.

!IMAGE[How do I create a Lab Profile](../../images/lab-profile.png)

!VIDEO[How do I create a Lab Profile?](https://www.youtube.com/watch?v=KzdoZoQgGw0)