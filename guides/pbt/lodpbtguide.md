**Learn on Demand Systems Performance Based Testing Guide**

**Revision History**

  **Version**   **Date**      **Edited By**     **Comments**
  ------------- ------------- ----------------- -------------------------
  0.1           May 4, 2017   Stephanie Clark   Unreleased; first draft

**Disclaimer**

This document supports a ~~preliminary~~ release of a software product
that may be changed substantially in the future. ~~This document~~ It is
provided for informational purposes only and Learn on Demand Systems,
LLC, makes no warranties, either express or implied, in this document.
Information in this document, including URL and other Internet Web site
references, is subject to change without notice. The entire risk of the
use or the results from the use of this document remains with the user.
Unless otherwise noted, the companies, organizations, products, domain
names, e-mail addresses, logos, people, places, and events depicted in
examples herein are fictitious. No association with any real company,
organization, product, domain name, e-mail address, logo, person, place,
or event is intended or should be inferred. Complying with all
applicable copyright laws is the responsibility of the user. Without
limiting the rights under copyright, no part of this document may be
reproduced, stored in or introduced into a retrieval system, or
transmitted in any form or by any means (electronic, mechanical,
photocopying, recording, or otherwise), or for any purpose, without the
express written permission of Microsoft Corporation.

Learn on Demand Systems, LLC may have patents, patent applications,
trademarks, copyrights, or other intellectual property rights covering
subject matter in this document. Except as expressly provided in any
written license agreement from Learn on Demand Systems, the furnishing
of this document does not give you any license to these patents,
trademarks, copyrights, or other intellectual property.

Copyright 2017 © Learn on Demand Systems, LLC. All rights reserved.

All other trademarks are property of their respective owners.

**Introduction**

This guide provides information on building Performance-Based Testing
(PBT) exam labs in Lab on Demand.

**Intended Audience**

This guide assumes that the reader:

-   Has a developer account with sufficient permissions to create a lab
    guide and modify select properties of a Lab Profile.

-   Has existing labs hosted by LODS.

-   Has a help desk support contract to pay for additional custom
    contract work.

The guide further assumes that the reader has knowledge of how to build
labs in LOD and knowledge of performance-based testing design.

**Getting Started**

Lab on Demand supports performance-based exams in addition to Integrated
Digital Lab (IDL) content. Our Performance Based Testing platform
enables you to create multiple types of assessments including automated
VM Scoring of Windows and Linux, scoring of Azure subscription
configuration, multiple choice exploration assessments, and even exam
sessions which include screenshots of user work. You can deliver exams
as a standalone offering or integrated as part of a lab or larger exam
delivery engine.

**Designating a Lab as an Exam**

For a lab to be an exam, it needs to be designated as an exam on the
Exam tab in the Lab Profile.

![](/media/image1.png)

This can either be done in an already created lab or from the Admin
page, click Create Exam on the Exams tile.

![](media/image2.png){width="2.134222440944882in"
height="1.5679997812773403in"}

Once you have marked the lab as an exam, you will be presented with new
options regarding the type of scoring the lab will use. There are
currently three types of scoring exams available in LOD:

-   Assessment – Used for multiple choice exams and is fully automated.

-   Manual – Used for exams where a scorer needs to evaluate what the
    user has done in the VM environment. There are two types of
    submissions for these exams:

-   Screenshots – users are asked to take screenshots of the VM desktop
    > at predetermined points. These screenshots are submitted for
    > manual scoring by a grader;

-   Saved Environment – users are asked to perform any number of actions
    > and then asked to submit their exam for grading. This saves the
    > exam for up to 30 days. During this time, a grader can find user’s
    > submitted exam item and grade it.

-   Automated – Used for exams where a user is asked to do or fix
    something and submit the exam for grading. The system will then
    automatically verify that the work was done correctly through a
    script written by the exam author.

Each of these will covered in their own sections.

**Setting Save/Cancel Options**

Lab profiles by default allow a user to save, cancel, or extend the lab.
These choices may not be appropriate for your exam lab profile. You can
change these choices on the **Advanced** tab of the Lab Profile under
**Save/Cancel Options** towards the bottom of the page:

1.  Uncheck **Allow User to Cancel** **Labs** if you do not want the
    user to be able to cancel a running exam.

2.  Uncheck **Allow User to Save Labs** if you do not want the user to
    be able to save a running exam that they can resume later.

3.  Uncheck **Allow User to Extend Time Remaining** if you want do not
    want the user to be able to extend the time of the running lab.

**Creating Exam Content**

**Creating an Assessment Exam**

An assessment exam has pages that can contain the following types of
questions: single or multiple-answer multiple choice or open-ended
questions looking for either exact matches or various possible (regular
expression) answers. One page of questions will be presented at a time
to the end user.

**Adding Pages and Questions**

To create an Assessment exam, follow these steps:

1.  On the **Exam** tab, set **Scoring Type** to **Assessment** and
    under **Questions** click **Add Page**.

> ![](media/image3.png){width="1.1992027559055118in"
> height="1.3247003499562555in"}

1.  In the **Page 1** field, type the name you would like to give the
    page. This is optional and will be used as the Tab title in the lab
    interface.

2.  Click **Add Question**.

> ![](media/image4.png){width="6.5in" height="1.1770833333333333in"}

1.  In the Text field, enter the first question.

2.  From the **Format** dropdown, select the format for the answer:

    a.  **Multiple Choice, Only One Answer**

    b.  **Multiple Choice, Multiple Answers**

    c.  **Text Response, Exact Match**

    d.  **Text Response, Regex Match**

> ![](media/image5.png){width="3.2556528871391075in"
> height="1.9913046806649168in"}

1.  Click **Add Answer**.

**Adding Multiple Choice Answers**

1.  []{#_Hlk487019805 .anchor}In the field that appears, type the first
    multiple choice possible answer and click **Add Answer**.

2.  Repeat for additional answer options. The answers can be rearranged
    or deleted using the buttons to the right of each answer.

> ![](media/image6.png){width="4.9in" height="1.961046587926509in"}

1.  Select which answer(s) is/are correct.

> ![](media/image7.png){width="4.9in" height="1.791431539807524in"}

[]{#_Hlk487020097 .anchor}**Adding Text Match Answers**

1.  In the field that appears, type the:

    a.  Exact answer wanted

> ![](media/image8.png){width="3.7024453193350833in"
> height="2.0608694225721784in"}
>
> - OR -

a.  Regular expression the answer must match

    i.  Start the regular expression with the \^ character

    ii. Put the possible answers in parenthesis with the | character
        separating them

    iii. End the expression with the \$ character

> ![](media/image9.png){width="4.429861111111111in"
> height="2.2400142169728783in"}
>
> Note: The answers are not case sensitive.

**Setting Scoring Value, Explanation, and Reference**

1.  Set the **Score Value** for the question. This is how many points
    the question is worth.

2.  Provide an optional **Explanation** for the answer and an optional
    **Reference URL**. These will be displayed in the exam results
    report.

3.  Click **OK**.

> ![](media/image10.png){width="5.436000656167979in"
> height="1.6633234908136483in"}

**Completing the Exam Structure**

1.  Repeat this process for the number of pages and questions you need.

2.  When you finish adding the pages, at the top of the **Exam** tab,
    enter the score the user needs to pass the exam in the **Passing
    Score** field. It will show the total number of points available
    automatically.

3.  Uncheck **Show Results** if you do not want the results to be shown
    to the student when the exam is graded.

> ![](media/image11.png){width="1.6427755905511812in"
> height="1.072707786526684in"}

1.  Save the lab profile to save the exam structure.

**Creating a Manual Exam**

A manual exam contains scoring items with instructions for a user to
manipulate the environment. The user then either takes screenshots after
each set of instructions or submits the saved lab for grading, depending
on the Submission Type set.

**Submission Type: Screenshots**

To create a Manual – Screenshots exam, follow these steps:

1.  On the **Exam** tab, set **Scoring Type** to **Manual** and
    **Submission Type** to **Screenshots**.

2.  Under **Scoring Items**, click **Add Scoring Item**.

> ![](media/image12.png){width="2.130184820647419in"
> height="1.8152384076990375in"}

1.  In the **Add Scoring Item** dialog, enter an optional name for the
    item.

2.  Under **Instructions For User**, enter the details of how the user
    is to manipulate the exam environment to be captured by the first
    screenshot. Ensure to include the name of the machine the student
    should use.

3.  Under **Scoring Instructions (Optional)**, provide any guidelines
    such as a rubric for the person who will be grading the screenshot.

4.  Set the total **Score Value** for this scoring item.

5.  To provide the grader with a reference screenshot image for what to
    look for when grading, click **Choose File** under **Reference Image
    (Optional)** and select a picture file. This will be displayed in
    the exam results report.

6.  Click **OK**.

> ![](media/image13.png){width="5.2927515310586175in"
> height="4.572916666666667in"}

1.  Repeat this process for the number scoring items you need.

2.  When you are done adding the scoring items, at the top of the
    **Exam** tab, enter the score the user needs to pass the exam in the
    **Passing Score** field. It will show the total number of points
    available automatically.

> ![](media/image14.png){width="1.9445155293088363in"
> height="1.0959995625546806in"}

1.  Save the lab profile to save the exam structure.

**Submission Type: Saved Environment**

To create a Manual – Saved Environment exam, follow these steps:

1.  On the **Exam** tab, set **Scoring Type** to **Manual** and
    **Submission Type** to **Saved Environment**.

2.  Under **Scoring Items**, click **Add Scoring Item**.

> ![](media/image15.png){width="2.037564523184602in"
> height="1.8391699475065617in"}

1.  In the **Add Scoring Item** dialog, enter an optional name for the
    item.

2.  Under **Instructions For User (Optional)**, enter the details of how
    the user is to manipulate the environment for this scoring item.
    Ensure to include the name of the machine the student should use.

3.  Under **Scoring Instructions**, provide guidelines such as a rubric
    for the person who will be grading the saved environment.

4.  Set the total **Score Value** for this scoring item.

5.  To provide the grader with a reference screenshot image for what to
    look for when grading, click **Choose File** under **Reference Image
    (Optional)** and select a picture file. This will be displayed in
    the exam results report.

6.  Click **OK**.

> ![](media/image16.png){width="5.6913604549431325in"
> height="3.628850612423447in"}

1.  Repeat this process for the number scoring items you need.

2.  When you are done adding the scoring items, at the top of the
    **Exam** tab, enter the score the user needs to pass the exam in the
    **Passing Score** field. It will show the total number of points
    available automatically.

3.  Check **Allow User Notes**, if appropriate. This allows the user to
    include a note when submitting the exam for grading.

> ![](media/image17.png){width="2.1563549868766403in"
> height="1.456000656167979in"}

1.  Save the lab profile to save the exam structure.

**Creating an Automated Exam**

An automated exam is similar to a manual exam. However, it does not need
someone to grade it; it uses scripts to check if the user manipulated
the environment as directed. It is graded automatically upon submission
for grading. One major difference however is that for the scoring
scripts to work, the VMs in the exam that the scripts will run against
*must* have the LOD integration service installed on them.

**Installation of LOD Integration Service on VMs**

This service should be installed before you build your exam questions.
To do this follow these steps after you have created the lab profile,
added the VMs and networks, and save it:

1.  Click **Launch** on the **Lab Profile** page.

> ![](media/image18.png){width="2.143455818022747in"
> height="1.3645833333333333in"}

1.  When the lab is running, sign into the first VM that will have a
    scoring script ran against it.

2.  Once at its desktop, click the **Developer** icon in the lab
    interface and click **Install Integration Service**.

> ![](media/image19.png){width="6.5in" height="4.209027777777778in"}

1.  The Install Integration Service dialog box will appear with an
    explanation of the service and its requirements. Click **Yes** to
    continue with the installation.

> ![](media/image20.png){width="5.344890638670166in"
> height="3.1458333333333335in"}

The service will briefly show it is loading and then the dialog box will
close.

1.  Repeat steps 2 through 4 on each machine that will have a scoring
    script ran against it.

You will now need to save differencing disks of the VMs.

1.  Click the **Developer** icon in the lab interface and click
    **Differencing Disks**.

> ![](media/image21.png){width="6.5in" height="0.5763888888888888in"}

1.  The Save Differencing Disks dialog opens with an explanation. Select
    whether you want to create a new lab profile or update the current
    VMs and click **Next**.

> ![](media/image22.png){width="5.123853893263342in" height="4.0in"}

1.  Select the VMs to which to add a differencing disk, set a short name
    for the disk, and add a note of the changes made in the differencing
    disk and click **Next**.

> ![](media/image23.png){width="4.619496937882765in"
> height="3.609722222222222in"}

1.  Wait for the Saving Differencing Disks banner to close. In the
    **Save Successful** dialog, click **OK**.

> ![](media/image24.png){width="6.5in" height="1.9944444444444445in"}

1.  Click the **Exit** icon and click **Cancel** **Lab**.

> ![](media/image25.png){width="2.22788167104112in"
> height="1.2052482502187227in"}

1.  In the **Cancel Lab** dialog, click **Yes, cancel my lab** and close
    the lab window.

> ![](media/image26.png){width="4.913888888888889in"
> height="1.9356310148731408in"}

**Creation of Automated Exam**

To create an Automated exam, follow these steps:

1.  On the **Exam** tab, under **Scoring Items** click **Add Scoring
    Item**.

> ![](media/image27.png){width="1.5861898512685915in"
> height="1.7280008748906386in"}

1.  In the **Add Scoring Item** dialog, enter an optional name for the
    item.

2.  Under **Instructions For User (Optional)**, enter the details of how
    the user is to manipulate the environment for this scoring item.

3.  Set the total **Score Value** for this scoring item.

4.  Select the VM to run the script against from the **Machine**
    dropdown. Note: The script will fail and the grading will time out
    if the wrong machine is chosen.

5.  Select the type of script from the **Type** dropdown:
    **PowerShell**, **Shell**, **Visual Studio Unit Test**.

6.  In the **Scoring Script** field, enter the script to run against the
    VM to grade the scoring item.

7.  Click **OK**.

> ![](media/image28.png){width="6.190183727034121in"
> height="3.3364829396325457in"}

1.  Repeat this process for the number scoring items you need.

2.  When you are done adding the scoring items, at the top of the
    **Exam** tab, enter the score the user needs to pass the exam in the
    **Passing Score** field. It will show the total number of points
    available automatically.

3.  Check **Allow User Notes**, if appropriate. This allows the user to
    include a note when submitting the exam for grading.

4.  Uncheck **Show Results** if you do not want the results to be shown
    to the student when the exam is graded.

> ![](media/image29.png){width="2.0250863954505687in"
> height="1.3018416447944008in"}

1.  Save the lab profile to save the exam structure.

Best Practice: You should launch the lab to test/edit your scoring
scripts. To do this,

1.  Click **Launch** on the Exam profile page.

> ![](media/image30.png){width="3.241071741032371in" height="2.0625in"}

1.  Proceed through the lab and take the exam as if you were a student.

<!-- -->

1.  For each question,

    a.  Click **Test This** to test the scoring script

> ![](media/image31.png){width="1.670932852143482in"
> height="2.547826990376203in"}

a.  The Test Scoring Item dialog will appear and will show a progress
    bar during testing.

> ![](media/image32.png){width="3.6060608048993874in"
> height="3.0320352143482063in"}

a.  When the testing is complete, a dialog will show the scoring script
    output. After reviewing the script to ensure it worked as planned,
    click **Close**.

> ![](media/image33.png){width="3.963548775153106in"
> height="3.2424245406824146in"}

a.  If necessary, click **Edit Scoring Script** to make changes to your
    script and then click **OK**.

> ![](media/image34.png){width="5.143939195100613in"
> height="2.986340769903762in"}

1.  After you have tested the script for each question, on the **Exit**
    menu, click **Cancel Exam**.

> ![](media/image35.png){width="2.613636264216973in"
> height="0.8191983814523185in"}

1.  In the **Cancel Exam** dialog, click **Yes, cancel my exam**.

> ![](media/image36.png){width="4.4929549431321085in"
> height="1.7467804024496938in"}

**Taking an Exam (Student Perspective)**

All exams will launch as normal labs; the exam content will be at the
end of any existing content such as the Objective/Scenario information
and/or IDL content. The following section will show what a student will
experience with each type of exam. Any options made available in the
Exam profile will be noted.

**Taking an Assessment Exam**

The exam’s first page will appear on the Content tab. To take the exam,
the student will follow these steps:

1.  For multiple choice questions, select the answer(s) to each
    question.

    a.  When there are multiple correct answers, the student must select
        all correct answers and no incorrect answers to receive the
        points for the question. No partial points are awarded.

> ![](media/image37.png){width="6.5in" height="4.00625in"}
>
> NOTE: In the above image, the numbers designate the following
> components of the exam:

a.  Page title

b.  Questions and answer choices from that page

<!-- -->

1.  For text match questions, type the answer to the question in the
    answer box. The answers are not case-sensitive.

    a.  When the question is set to the format of Text Response, Regex
        Match, the student must enter only one of the possible answers
        to receive the points for the question. No partial points are
        awarded.

> ![](media/image38.png){width="6.173912948381452in"
> height="3.7966929133858267in"}

1.  If the exam has more than one page, click the **&gt;** arrow at the
    bottom to advance to the next page or the **&lt;** arrow to go back
    to a previous page.

2.  When finished with the exam, click **Submit for Grading**.

> ![](media/image39.png){width="1.4141929133858269in" height="2.8in"}

1.  In the **Submit For Grading** dialog, select **Yes** if ready to
    complete exam or **No, not yet** to go back and possibly change any
    answers.

> ![](media/image40.png){width="4.495678040244969in" height="2.0in"}
>
> Once **Yes** is clicked, the exam is submitted. If you had selected
> the **Show Results** option on the **Exam** tab of the lab profile, a
> scoring message will appear notifying the student whether they passed
> or not and their score.
>
> ![](media/image41.png){width="3.265404636920385in"
> height="1.6441590113735782in"}
>
> If you chose not to **Show Results**, they would receive the following
> message:
>
> ![](media/image42.png){width="5.865435258092738in" height="1.9in"}

**Taking a Manual – Screen Shot Exam**

The exam’s instructions for the first screenshot will appear on the
Content tab. To take the exam, the student will follow these steps:

1.  Follow the instructions and when ready, click **Take Screenshot** to
    take a screenshot of the active VM.

> ![](media/image43.png){width="6.5in" height="3.957638888888889in"}

1.  A dialog will open showing the screenshot that was taken. Review the
    screenshot and either click **Cancel** to go back to the VM or add a
    note in the **Note (optional)** field to include a note with the
    screenshot, if wanted, and click **Use this screenshot** to keep the
    screenshot.

> ![](media/image44.png){width="4.765468066491689in" height="4.6in"}

1.  The lab interface will return to the first instructions. Select
    **Discard / Retake** to receive another opportunity to make changes
    and take another screenshot or click the **Advance** arrow to get to
    the instructions for the next screenshot.

> ![](media/image45.png){width="1.3985695538057743in" height="4.5in"}

1.  When finished with the exam, click **Submit for Grading**.

> ![](media/image46.png){width="1.3529910323709535in" height="4.3in"}

1.  In the **Submit For Grading** dialog, select **Yes** if ready to
    complete exam or **No, not yet** to go back and possibly change any
    screenshots.

> ![](media/image47.png){width="3.4262292213473318in"
> height="1.543999343832021in"}
>
> Once **Yes** is clicked, the exam is submitted for grading.
>
> ![](media/image48.png){width="4.96248031496063in" height="1.3in"}

**Taking a Manual – Saved Environment Exam**

The exam’s instructions for the first scoring item will appear on the
Content tab. To take the exam, the student will follow these steps:

1.  Follow the instructions, add an optional note in the **Note
    (optional)** field, and click **&gt;** to advance to the next
    scoring item.

2.  When finished with the exam, click **Submit for Grading**.

> ![](media/image49.png){width="1.4439129483814523in"
> height="4.095999562554681in"}

1.  In the **Submit For Grading** dialog, select **Yes** if ready to
    complete exam or **No, not yet** to go back and change something.

> ![](media/image47.png){width="3.4262292213473318in"
> height="1.543999343832021in"}
>
> Once **Yes** is clicked, the exam is saved and submitted for grading.
>
> ![](media/image48.png){width="4.96248031496063in" height="1.3in"}

**Taking an Automated Exam**

The exam’s instructions for the first scoring item will appear on the
Content tab. To take the exam, the student will follow these steps:

1.  Complete the tasks in the instructions and click **&gt;** to advance
    to the next scoring item.

2.  When finished with the exam, click **Submit for Grading**.

> ![](media/image50.png){width="1.523982939632546in"
> height="2.4270833333333335in"}

1.  In the **Submit For Grading** dialog, select **Yes** if ready to
    complete exam or **No, not yet** to go back and change something.

> ![](media/image51.png){width="3.90625in"
> height="1.6351159230096237in"}
>
> Once **Yes** is clicked, a dialog will appear while the exam is being
> graded by the scripts.
>
> ![](media/image52.png){width="3.84375in"
> height="1.0106266404199475in"}
>
> Once the grading is complete, if you had selected the **Show Results**
> option on the **Exam** tab of the lab profile, a scoring message will
> appear notifying the student whether they passed or not and their
> score.
>
> ![](media/image41.png){width="3.265404636920385in"
> height="1.6441590113735782in"}
>
> If you chose not to **Show Results**, they would receive the following
> message:
>
> ![](media/image42.png){width="5.865435258092738in" height="1.9in"}

**Grading a Manual Exam**

When a Manual exam is submitted for grading, it can be found from two
locations:

-   Click **Find Submitted Exams** link on the **Exams** tile on the
    **Admin** page.

> ![](media/image53.png){width="1.9120002187226597in"
> height="1.3419313210848645in"}
>
> This shows all submitted exams for your organization.
>
> ![](media/image54.png){width="6.5in" height="3.6125in"}
>
> -OR-
>
> Click **Find Submitted Exams** link on the **Exam Item Profile** page.
>
> ![](media/image55.png){width="6.5in" height="0.9729166666666667in"}
>
> This will only show submitted exams for this exam.
>
> ![](media/image56.png){width="6.5in" height="2.48125in"}
>
> Grading is done from the Exam Result page. To open this page, click
> **Details** for the exam instance you want to grade.
>
> ![](media/image57.png){width="6.5in" height="0.42054899387576555in"}

**Grading a Screenshot Exam**

1.  On the **Exam Result** page, in the **Scoring** section, review each
    scoring item’s description, **Reference Image**, **User Notes** (the
    notes submitted by the student), and **Scoring Instructions**.

> Description
>
> ![](media/image58.png){width="2.6041666666666665in"
> height="1.073941382327209in"}
>
> Reference Image
>
> ![](media/image59.png){width="6.5in" height="3.0097222222222224in"}
>
> User Notes
>
> ![](media/image60.png){width="2.4375in" height="0.5525820209973753in"}
>
> Scoring Instructions
>
> ![](media/image61.png){width="5.375in" height="0.5673611111111111in"}

1.  Compare the **Submitted Image** to the **Reference Image** and the
    **Scoring Instructions**.

> ![](media/image62.png){width="5.09375in" height="4.399346019247594in"}

1.  Click **Correct** or **Incorrect** in the upper right corner of the
    scoring item.

> ![](media/image63.png){width="6.5in" height="1.851388888888889in"}

1.  Repeat this process for each scoring item.

> The Passing Score, Score, and whether the student Passed is displayed
> at the bottom of the Exam Result page.

1.  When finished scoring, click Save Score at the bottom of the page.

> ![](media/image64.png){width="1.4366491688538932in"
> height="1.1723600174978128in"}
>
> Once an exam is scored, the score can still be edited. To do this,
> click **Edit Score** on the **Exam Result** page.
>
> ![](media/image65.png){width="4.5625in" height="0.903238188976378in"}

**Grading a Saved Environment Exam**

1.  On the **Exam Result** page, click the **Grade Environment** button.

> ![](media/image66.png){width="3.5416666666666665in"
> height="3.345867235345582in"}
>
> The exam will resume. The Content tab will contain the scoring items.

1.  Review the information under **Application** including any **User
    Notes**.

> ![](media/image67.png){width="1.9777263779527559in"
> height="3.613313648293963in"}

1.  Read the **Scoring Instructions** and then evaluate the saved
    environment.

2.  Add an optional **Scoring Note** to be included with the Exam
    Results. This note can be used to help explain the score given or
    for other uses.

> ![](media/image68.png){width="1.75in" height="2.503074146981627in"}

1.  At the top of the **Content** tab, click **Correct** or
    **Incorrect**.

> ![](media/image69.png){width="2.030133420822397in"
> height="1.262435476815398in"}

1.  Repeat this process for each scoring item.

> The Passing Score, Score, and whether the student Passed is displayed
> at the bottom of the Exam Result page.

1.  When finished scoring, click **Save Score** at the bottom of the
    page.

> ![](media/image70.png){width="1.8333333333333333in"
> height="0.9469695975503062in"}

1.  In the **Save Score** dialog box, select **Yes** if ready to save
    the score or **No, not yet** to go back and change something. NOTE:
    You cannot edit a score once it is saved. The environment will be
    torn down and no longer available for reference.

> ![](media/image71.png){width="4.59375in"
> height="1.8522233158355206in"}
>
> Once **Yes** is clicked, the exam score is submitted.
>
> ![](media/image72.png){width="4.260416666666667in"
> height="1.6544619422572178in"}

**Reviewing Exam Results**

Once an exam is graded, you can review the exam results from two
locations:

-   Click **Find Exam Results** link on the **Exams** tile on the
    **Admin** page.

> ![](media/image73.png){width="1.7915496500437444in" height="1.2in"}
>
> This shows all graded exams for your organization.
>
> ![](media/image74.png){width="6.5in" height="2.970138888888889in"}
>
> - OR-

-   Click **Find Exam Results** link on the **Exam Item Profile** page.

> ![](media/image75.png){width="6.5in" height="0.7041666666666667in"}
>
> This will only show graded exam results for this exam.
>
> ![](media/image76.png){width="6.5in" height="2.995138888888889in"}
>
> You can look at individual exam results to see the student’s answer to
> each question. To do this click **Details** to open that Exam Results
> instance.
>
> ![](media/image77.png){width="6.5in" height="0.3840277777777778in"}

The following are examples of scoring results you will see:

-   *Assessment exam*: Correct answers are underlined in green. Selected
    wrong answers are underlined in red.

> ![](media/image78.png){width="6.1503083989501315in" height="3.2in"}

-   *Manual exams (Both Screenshot and Saved Environment)*: The
    Correct/Incorrect buttons will be highlighted to indicate the score
    on each question.

> ![](media/image79.png){width="6.5in" height="2.8819444444444446in"}
>
> ![](media/image80.png){width="6.5in" height="2.5548611111111112in"}
>
> Note: You can edit the score of a Screenshot exam from the Exam
> Results page. To do this, click Edit Score in the upper right corner.
> This is the only exam where the score can be edited after it has been
> submitted.

-   *Automated exams*: The Correct/Incorrect buttons will be highlighted
    to indicate the score on each question.
