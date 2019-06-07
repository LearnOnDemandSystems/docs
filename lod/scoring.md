# Scoring

In Lab on Demand (LOD) there are multiple ways to score a student's performance in a lab. 

- [Activity Based Assessment (ABA)](#activity-based-assessment) (only available in IDLx)
    - Question and Automated activities
    - [Partial scoring](#partial-scoring)
- Scoring Bot

## Activity Based Assessment

Activity based assement scoring is available in IDLx labs. To score a lab using ABA, configure an automated activity or question activity and give the activity a score value. Next, you should set the passing score for the lab. The passing score should be the sum of all activity scores. You may repeat these steps as many times as you would like, for more scored items in the lab. 

For more information on how to configure Automated Activities, see our [Activities Guide](activities.md).

### Partial Scoring

Partial scoring allows a student to recieve partial credit for a task in the lab, instead of the score being all or nothing. 

For example, if the lab instructions had a task to create a directory and name it "MyDirectory", and the student created the directory but didn't name it properly -- they could recieve partial credit for creating the directory, even though they didn't name it properly. 

Partial scoring is achieved with automated Activities in IDLx. To configure partial scoring for the example above:

1. Edit the **lab instructions**.
1. **Enable scoring** from the Activities menu.
1. **Add** an automated Activity.
1. In the **Script 1** field, enter a PowerShell script to check for the directory the studnet created.
1. Assign a score value for script 1. This will be the partial score the student will receive if the directory is created. 
1.  Click _New Script_.
1. In the **Script 2** field, enter a PowerShell script to verify the directory is named properly. 
1. Assign a score value for script 2. This will be the partial score the student will receive if the directory is name properly.

## Scoring Bot

Scoring bots are hidden Lab on Demand hosted Windows 10 virtual machines in a Hyper-V Lab. Scoring bots work by executing PowerShell scripts in an automated activity in the lab, using a VM that is not displayed to the student. 

Scoring bots do not require the VM to be logged in. The scoring bot VM is used to execute commands against other VMs in the lab, and will return the result to LOD. The results can be sent to an LTI consumer. 

To configure a scoring bot into a lab:

1. Ensure your lab has at least two Hyper-V virtual machines.

1. Ensure the VM that will be the scoring bot is not visible to the student. 
This option is set on the Virtual Machines tab on the lab profile. 

1. Edit the lab instructions, and click the Activities menu. 

1. Add a new automated activity. 

1. In the script 1 field, change the target to the VM that will be used as a 
scoring bot. 

1. Add any additional scripts, and set the target to the scoring bot VM. 

1. Use the following syntax in your script, to return the result: 

    `$score = "score value of 10"
Set-ActivityResult -Percentage @score`

`$Score` can be anything 


>[!knowledge] Scoring bot VMs must be Windows 10, and must use Hyper-V for the hypervisor. vSphere scoring bot VMs are not suppported at this time. 

