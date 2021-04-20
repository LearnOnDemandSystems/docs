---
title: "AWS Permission Boundary"
description: "Following the principle of least privilege, the permissions boundary ensures that users you create have only the permissions they require to perform lab tasks."
isPublished: false
---

# AWS Permission Boundary 

Permission boundaries are needed in AWS labs where user accounts are created.
Following the principle of least privilege, the permissions boundary ensures that users you create have only the permissions they require to perform lab tasks.  

- [Create a Group](#create-a-group)
- [Create Users and Assign Them to their Respective Group](#create-users-and-assign-them-to-their-respective-group)

## Create a Group

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

## Create Users and Assign Them to their Respective Group

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
1. In the search box, enter `LODS` and select the policy.
1. Select **Next: Tags**.
1. Select **Next: Review**.
1. Select **Create User**.

