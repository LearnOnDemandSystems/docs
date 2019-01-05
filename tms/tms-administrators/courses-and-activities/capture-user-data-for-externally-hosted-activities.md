# How can I capture user data for users who access my externally hosted activities from the TMS?

Need to collect data on the users that are accessing your externally hosted course activities? You can add parameters to your external URL that will cause the TMS to pass the requested information about the user to you. Externally hosted activities include any course activity using an external link such as: Add Video, Add Document or Add External Link.

There are four user fields that can pass information to you:

1. **User ID** - userId={userID}
1. **Email** - email={email}
1. **First Name** - firstName={firstName}
1. **Last Name** - lastName={lastName}

To have this information passed to you, type the parameters for the fields you want at the end of the URL of the activity connected with an ampersand. For example, if you added

> **userId={userId}&email={email}&firstName={firstName}&lastName={lastName}**

to the end of a URL accessing an external video module, the URL would look like this:

> **https ://videoplayer.yourorganization.com/player/Mod101_AM01?userId={userId}&email={email}&firstName={firstName}&lastName={lastName}**

When Student X watches the video from the TMS, you would be given the following information from Student X's account:

- TMS User ID: **111111**
- Email: **studentx @anywhere.none**
- First Name: **Student**
- Last Name: **X**