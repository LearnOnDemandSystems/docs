# Execute Subscription Command

> [!ALERT] You are currently viewing the third entry in a series of Quick Starts about Life Cycle Actions.
>
> To complete this quick start, you must have the following:
> * a lab profile created in One Learn Lab on Demand platform (LOD);
> 
> If you have not yet created a lab profile, If you have not created a lab profile, have a look at our [documentation for creating a lab profile](URL).

Estimated time to completion: **10 minutes**.

1. **Navigate** back to your lab profile.

1. Click **edit profile** in the upper-right corner.

1. Click the **Life Cycle** tab.

    !IMAGE[](\docs\lod\images\life-cycle-tab.png)

1. Click **Add Life Cycle Action**.

    !IMAGE[](\docs\lod\images\add-life-cycle-action.png)

1. From the **Action** drop-down menu, select **Execute Subscription Command**.

1. From the **Event** drop-down menu, select **Running**. The is allow the notification to be displayed once the lab is fully built.

1. Leave the **Delay** at 0. 

    >[!KNOWLEDGE] The **Delay** field is **optional**, and is used to introduce a delay between the moment the life cycle event occurs and the action is executed. 

1. Leave the **Error Action** as _Default_.

    > [!KNOWLEDGE] The **Error Action** drop-down menu is used to set how errors will be handled in the lab. The default setting is to save errors to the lab instance in LOD. Alternatively you can set errors to notify the user, or end the lab.

1. Check the **Enabled** box. If this is unchecked, the life cycle action will not be exectued.

1. Click to copy this message and paste into the text field; +++Example Subscription Command+++. 

1. Click **OK**, and then click **Save**. 

1. **Add a note**, describing the changes you've made to the lab profile, and **click OK**.

1. Click **launch**, to launch the lab.

[Send Web request](/lod/quick-starts/life-cycle-actions/web-request.md)
