# How can I create multiple user accounts at once?

If you have several users you want to create and want to save time from doing them individually, you can use the Import Users feature. This will allow creating up to 10,000 users at a time through the use of a CSV (comma-separated values) formatted file. Guidance on this file and the required/optional fields are provided on the Import Users page.  

To create multiple users:
1. On the **Admin** menu in the **Users** group, click **Import Users**. 
1. This opens the Import Users page which contains helpful instructions. Read the entire page carefully.
1. Click **user import template** to download the template to build the CSV file for your users. 
1. Once the file is built and the data is verified for accuracy, return to the **Import Users** page (if you have left it) and complete the fields at the top of the page. 

> [!ALERT] IMPORTANT! These fields will apply to all users that are part of the import. If a subset of the users you wish to import do not match all the same field settings, you have two choices: 1) correct each of them after import or 2) do separate imports for user(s) that have different values. The following is a table explaining the fields to be completed: 

| **Field** | **Explanation** |
|:----- |:----- |
| **Organization** | Defaults to your organization; can be changed to other organizations or child organizations you manage. |
| **Time Zone** | Defaults to your time zone; can be changed. |
| **Company** | Optional |
| **Account Executive** | Optional |
| **Roles** | Defaults to Basic User. This is the basic user role in the TMS and users cannot function correctly without it. Other roles may be added as needed. All included roles will be added to each user imported. |
| **Groups** | Optional |
| **Force Password Change** | Check this box to require the user to change their password when they access their user account for the first time. |
| **Process Notifications** | This option will only show if your organization has an automated notification set up to be sent when a new user account is created. Checking the box will send the notification to your newly created users. |

Once you have set the field values: 
1. Click **Choose File** next to **CSV File**. 
1. In the **Explorer** window, navigate to where you saved your CSV file of users, select it, and click **Open**. 
1. Click **Go** to start the import process. 

The system will review the file for errors in the data and provide you with a list of errors it finds including the row and error found.
1. Review the errors.
1. If you want to import the users that do not have errors, check **Ignore these errors and import anyway (records with errors will be skipped)** and click **Import**.
1. If you want to correct the errors before proceeding, click **Try Again**. This will take you back to the Import Users page.
     1. Correct the errors in the CSV file and upload it again.
     1. Click **Go** again.
     
Once the import completes you will be provided with a list of users that have been imported. You can click **Import More** to do another set of users with different data. 

## Related Article
If you receive a  message that usernames or emails have already been used, please read:

- [What do I do if an email address is unavailable when I am creating a user account?](email-address-unavailable.md)  
