# Variables

Variables are used to store information that is not known at the time of lab instruction authoring. Variables store information and then that information can be recalled in later lab steps using a Replacement Token. Variables support alphanumberic characters with no spaces.

For example, you could create a variable with @lab.textbox(studentPassword) and ask the student to enter a password in the field. Later in the lab you could call back the student's password with @lab.Variable(studentPassword). This prevents the student from having to remember or write down their password, since it is stored in the lab by a variable. 

 Variables use two Replacement tokens; **@lab.textbox(name)** and **@lab.Variable(name)**. 

```@lab.texbox(name)``` is used to define the variable in the (name). 

```@lab.Variable(name)``` is used to to recall the information stored in the variable. 

- Defining Variable in lab instruction editor view:

    ![](../lod/images/variables-in-lab-instruction-editor.png)

- Defining Variable in lab from Student view in the lab:

    ![](../lod/images/variables-in-lab.png)

- The student enters their password in the lab

    ![](../lod/images/variables-enter-password.png)

- Calling Variable in lab instruction editor view:

    ![](../lod/images/variables-callback-variable-instruction-editor.png)

- Calling Variable in lab from Student view in the lab:

     ![](../lod/images/variables-callback-variable-in-lab.png)
