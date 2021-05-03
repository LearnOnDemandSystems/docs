---
title: "AWS Permission Boundaries"
description: "Following the principle of least privilege, the permissions boundary ensures that users you create have only the permissions they require to perform lab tasks."
isPublished: true
---

# AWS Permission Boundaries

Permission boundaries are needed in AWS labs where user accounts are created.
Following the principle of least privilege, the permissions boundary ensures that users you create have only the permissions they require to perform lab tasks.  

- [Use the IAM Dashboard to Create a Group](#use-the-iam-dashboard-to-create-a-group)
- [Use the IAM Dashboard to Create Users and Assign Them to their Respective Group](#use-the-iam-dashboard-to-create-users-and-assign-them-to-their-respective-group)

## Use the IAM Dashboard to Create a Group

IAM users belong to user groups and user groups are assigned policies. 

Create a group: 

1. In the AWS Management Console, **navigate to IAM**. 
1. From the IAM dashboard, select **Groups** from the menu on the left. 
1. Select **Create New Group**. 

    ![Create New Group](images/aws-create-new-group.png){600}
1. For the **Group Name**, enter a name and then select **Next Step**. 
1. Select the **checkbox next to any policies** you wish to apply to the group and then select **Next Step**. 
1. Review the details of the group and select **Create Group**. 

If you need additional groups, repeat the steps above. 

## Use the IAM Dashboard to Create Users and Assign Them to their Respective Group

1. From the IAM dashboard, select **Users** from the menu on the left.
1. Select **Add User**.
1. For the **User name**, enter a name for the user.
1. (**Optional**) If you would like additional users created, select **Add another user**. 
    1. For the 2nd User name, enter another name and select **Add another user**                              .
    1. For the 3rd User name, enter another name.
1. Select the **checkbox next to AWS Management Console access**.

    ![AWS Management Console access](images/aws-management-console-access.png){800}
1. Select **Next: Permissions**.
1. Select the **checkbox next to the group** created in previous steps.
1. Select on the **arrow next to Set permissions boundary** to expand the available selections.

    ![Set permission boundary](images/set-permission-boundary.png){300}
1. Select **Use a permissions boundary** to control the maximum user permissions.
1. In the search box, enter `LabSecureAccess` and select the policy.
1. Select **Next: Tags**.
1. Select **Next: Review**.
1. Select **Create User**.

## Use the AWS PowerShell to Create Users 

  >NOTE: This procedure requires that you know the access key and the secret key for the AWS account you will use to create the user account. 

1. Open Windows PowerShell and run the following command to sign in to AWS.

    ```
    Set-AWSCredential -AccessKey [AccessKey] -SecretKey [SecretKey]
    ```
 
 1. Run the following command to create the IAM user with the permissions boundary..

    ```
    New-IAMUser -UserName [UserName] -PermissionsBoundary "arn:aws:iam::@lab.CloudSubscription.Id:policy/LabSecureAccess"
    ```
    
    >Note that @lab.CloudSubscription.Id is variable that contains the AWS account ID.
    
  ## Use the AWS CLI to Create Users 

  >NOTE: This procedure assumes that you have properly configured AWS CLI and have connected to the AWS account by using your access and secret keys. 

1. At the shell prompt, enter the following command to create the IAM user with the permissions boundary.

    ```
    aws iam create-user --user-name [UserName] --permissions-boundary "arn:aws:iam::@lab.CloudSubscription.Id:policy/LabSecureAccess"
    ```
 
 
