# How do I assign user roles using an authentication provider?

Roles can be assigned to users in several ways: by editing a user account, through an API call, by having default roles set for new users created in your organizatio, and by login through a specified authentication provider (AP). Your organization can enable Authentication Providers (APs) to use, and each different AP can have specific user roles associated with it. When a user logs in via the authentication provider, the role(s) are automatically added to the user. If the role is later removed from the user’s profile by an administrator, the next time the user logs in using the AP, the role will again be assigned to the user.

If you want to use this feature, you will need to work with Operations to set up your AP(s). If only a subset of users for the organization should receive the role upon sign in, you may need two identical APs. One will be the standard AP with no roles associated. The other will need the roles to be assigned associated with it. For help setting your APs, please submit a support ticket from our [Customer Support](https://www.learnondemandsystems.com/customer-support/) page.

All Authentication Providers you want to use must be added to your site for them to appear when the user clicks Sign In.
