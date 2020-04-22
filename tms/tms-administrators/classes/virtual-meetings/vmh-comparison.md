# Virtual Meeting Host Comparison

Virtual meeting host providers (VMH) can be added to a class using two different methods: a custom VMH or integrated VMH. Class creators can specify delivery by custom virtual classroom and then add the meeting URL from your preferred VMH or use one of the two supported integrable VMHs. You can have multiple VMHs options associated to with your organization, but only a single VMH can be associated to each class.

Scheduling a virtual meeting is from the Delivery section when creating or editing a class. When the Delivery Type of Virtual or Physical and Virtual is chosen virtual meeting options display. If you have an integrated VMH it will be selected by default, but you can select another option like a custom VHM. If you do not have an integrated VMH, you will only see the option for custom Virtual Classroom with a field to enter a URL. Only one VHM can be used per class. For multiple day classes, set up a session for each day using the Add Multiple Session Times link in the Session Times section. 

Below is a comparison chart of features in the custom VMH, integrated Adobe Connect VMH, and integrated Zoom VMH. Below the chart is more information on the differences in using these features.

**Features** | **Custom VMH** | **Integrated Adobe Connect VMH** | **Integrated Zoom VMH**
-------------|----------------|----------------------------------|------------------------
**Create a class in TMS and meeting in VHM**
Manually create meeting in VMH and then input meeting URL in TMS class | X |   |   |
Creating a class in TMS automatically creates a meeting in VMH |   | X | X |
**Contracts**
Contract or License required |   | X | X |
Requires LODS staff to set up integration |   | X | X |
**Entering Class**
Instructor and students launch virtual classroom and class activities from one page | X | X | X |
Enter classroom link available from the time of set up until link is removed from class, can be launched anytime  | X |   |   |
Enter classroom link available to instructor 60 minutes before class session starts until class session end time  |   |   | X |
Enter classroom link available to students 15 minutes before class session starts until class session end time  |   |   | X |
Enter classroom link access before and after class session is customizable for instructors and students  |   | X |   |
**Recording Classes**
Class session recording links available in TMS to instructors and students |   | X | X |

## Custom Virtual Meeting Host

The custom VMH is available to all organizations anytime you schedule a class. You need to set up a meeting in your preferred VHM, then add the meeting URL to the Delivery section of your TMS class. Once the meeting URL is added to the class, the students and instructor have an Enter Classroom button, the button is available to them for as long as the URL is on the class. For this reason, you should either use unique meeting URLs for each class or remove the URL from the class once it is completed to prevent students from accessing a class they are not enrolled in. 

The TMS passes along the classId, studentLastName, studentFirstName, and studentEmail to the receiving site. 
No recordings are available through the TMS.

## Adobe Connect Virtual Meeting Host Integration

Once you have an Adobe Connect contract, you will need to send information to our LODS staff to implement the [integration.](/tms/tms-administrators/classes/virtual-meetings/integrated-virtual-meetings.md) Once in place, your Adobe Connect VMH is the default selection for virtual delivery. Scheduling a class automatically creates an Adobe Connect meeting. 

You can customize pre-class and post class access to the virtual classroom. If you do not specify these settings, they default to allowing the instructor to enter the meeting 60 minutes before the class session begins and students to enter 15 minutes beforehand. The default is set to zero minutes after the session ends for the instructor and students. Your settings apply to all classes. When setting the pre-class access, consider how much time instructors may need to set up the meeting and load materials; and how soon you want students in the meeting. When deciding on the post class meeting access, consider the amount of time that the class still be discussing after the schedule session end time. This time does not end the meeting session, it will continue while the host is there. However, if someone is bumped out after the schedule end time, they cannot re-enter the meeting.

All instructors enter the meeting as hosts. Once a student selects the Enter Classroom button, they may need to load software prior to entering the meeting. All students enter the meeting and are added as participants.

Your licenses in your contract cover any instructor scheduled for a class as a host for a meeting. The number of licenses in your contract affects the number of hosts (instructors) that can be scheduled. If you have multiple licenses, then TMS can automatically add them as meeting hosts. If you have one license, then you must manually remove and add your host in Adobe to schedule a different instructor into a class.

Recordings are available for each recorded class session. Class recordings are available for 180 days after the last day of class to students through their enrollment. Adobe makes the recording available for as long as you maintain your contract. 

## Zoom Virtual Meeting Host Integration

Once you have a Zoom contract, you will need to set up a JSon Web Token application through Zoom, and send information to our LODS staff to implement the [integration.](/tms/tms-administrators/classes/virtual-meetings/integrated-virtual-meetings.md) Once in place, your Zoom VMH is the default selection for virtual delivery. Scheduling a class automatically creates a Zoom meeting when a licensed Zoom user is added as an instructor. When a Zoom meeting scheduled through the TMS is opened, it will show in the UTC time zone.

The account used to set up the JWT application is where the meetings will be located. The primary instructor in a class must be licensed from the same account that is set up on the JWT application in order to be verified through the API. Your instructor's email address in their TMS profile must match the email address in your Zoom account for them to be verified. Your contract with Zoom provides a pool of licenses that are not owned individually, they can be assigned to different users. You may switch out instructors on the licenses in your contract.  

The primary instructor added to a class must be a licensed Zoom user or the class will not save. A class can be created without any instructor added, but you will receive a warning and the meeting in Zoom will not be scheduled until an instructor is added. Students will still see the Enter Classroom button 15 minutes before class but will receive an error if they click it prior to a licensed instructor being added to the class. 

Pre-class and post class access to the virtual classroom defaults to allowing the instructor to enter the meeting 60 minutes before the class session begins and students to enter 15 minutes beforehand. The default is set to zero minutes after the session ends for the instructor and students. 

The first licensed Zoom instructor to enter the meeting becomes the host, any other instructor entering the meeting will be a participant but enters the meeting directly. A host in Zoom can promote any other participant to be Host. By doing this, the original host loses the privileges and the new host gains them. Prior hosts can always take back hosting duties. 

Once a student selects the Enter Classroom button, they may need to load software prior to entering the meeting. All students enter a lobby where they wait until the instructor adds them to the meeting. This gives the instructor the control of who is in the class, they can verify students against the class roster. The API enforces use of the lobby since Zoom does not prevent anyone access to enter a meeting. 

Students and Instructors may not be identified with their TMS username when they enter a Zoom meeting. This depends on how Zoom identifies them; different factors include if they have attended a Zoom meeting before, the username on their devise, or using multiple instructors in a class. 

If the host exits or is bumped out of the meeting without ending it, someone else will be promoted to host. The new host is set with no regard for whether or not the user is an instructor. 

Instructors need to save the recording to the cloud to make it available to the TMS. The recording is available as soon as it is compiled in Zoom after the meeting has ended; the instructor is emailed a notification when the recording becomes available. Recordings are not available until after the meeting ends, regardless of if the recording was stopped before the meeting ended. The recording ends when the session ends; the instructor should end the session when class is over otherwise the session ends itself after 24 hours. Recording length may be limited based on your contract with Zoom. If the storage limit is reached during a recording, the meeting will continue to record until it is ended. 

Students have access through their enrollment for each recorded class session. Class recordings are available for 180 days after the last day of class. You cannot impersonate a student to access recordings only users associated with the class as students or instructors can watch recordings.

### Additional Resources
 
[How can I set up a class using a VMH?](https://docs.learnondemandsystems.com/tms/tms-administrators/classes/virtual-meetings/integratevirtualmeetingprovider.md) 

[How can I set up an integrated virtual meeting host?](/tms/tms-administrators/classes/virtual-meetings/integrated-virtual-meetings.md)

#### How to Find Meeting URLs from your Virtual Meeting Provider 

[How can I use Adobe Connect in a TMS class?](/tms/tms-administrators/classes/virtual-meetings/streaming-adobeconnect.md)

[How can I set up Google Meet directly in a class?](/tms/tms-administrators/classes/virtual-meetings/streaming-googlemeet.md)

[How can I set up GoToMeeting directly in a class?](/tms/tms-administrators/classes/virtual-meetings/streaming-gotomeeting.md)

[How can I set up Microsoft Teams directly in a class?](/tms/tms-administrators/classes/virtual-meetings/streaming-teams.md)

[How can I set up Webex directly in a class?](/tms/tms-administrators/classes/virtual-meetings/streaming-webex.md)

[How can I set up Zoom directly in a class?](/tms/tms-administrators/classes/virtual-meetings/streaming-zoom.md)

