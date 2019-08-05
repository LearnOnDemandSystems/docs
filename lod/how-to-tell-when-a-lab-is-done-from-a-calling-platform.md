# How To Tell When A Lab Is Done From A Calling Platform

## Server-side

You can use a Life Cycle Action on the Tearing Down event, to call to an external endpoint, and notify once the lab is torn down. 

If you would like additional information, such as a scoring result, you could configure your external service to call the [Details API](../lod/lod-api/lod-api-details.md).

## Client-side

There is an option if the student opens the lab from another window. The opener will be sent a **labDone** message from our lab client when the lab is torn down. 

You can listen for the message using the below:

```linenums
window.addEventListener("message", receiveMessage, false);

function receiveMessage(e) {
     if (e.data === "labDone") {
          //do something
      }
}
```

The **opening window must be open in order for it to receive the message**. For instance, if you launch from a Training Management System (TMS) and the user closes the TMS window or navigates to another page in that window, the lab will run just fine, but your TMS cannot receive the “labDone” message. You should not use the messaging system to do anything mission critical unless you have 100% control over the client environment and can guarantee the opening window will always be available. 

>[!KNOWLEDGE] In general, this approach is used to update the UI in the opening app (such as changing a “running” icon in the TMS), but not for triggering a critical step in a workflow.
