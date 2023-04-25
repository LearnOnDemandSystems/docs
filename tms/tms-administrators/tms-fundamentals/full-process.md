---
title: "Getting Started with Skillable - Lab creation to lab consumption"
description: An overview of the steps that take you from creating your own lab to getting that lab into your learners' hands.
ispublished: Yes
---

# Getting Started with Skillable - Lab creation to lab consumption

### The process from creating a lab to a learner’s lab launch
Are you planning to produce and publish labs using Skillable Lab on Demand? Let’s look at the big picture of the process from start to finish; this is an overview of the steps taken from creating a lab to placing that lab in the hands of your learner. 

![](/tms/images/full_process.png)

_Diagram shows the full process from creating a lab to publishing it in Skillable TMS or your own LMS_

## Skillable Lab on Demand

![](/tms/images/lab-process1.png)

The Skillable Lab on Demand platform features flexible lab authoring and configuration tools. This is our lab development platform where you can design and build your lab using the lab fabric of your choice. You have many options for the labs you want for your learners. You can put dynamic instructions in your lab that directly interact with the learning environment. You can create scored labs with knowledge checks, scripted activity-based assessments, and performance testing. You can add lab components that automatically perform tasks, such as invoking a web API, sending notifications to students, and executing scripts against virtual machines or a cloud environment.

You can also set up cloud or shared labs. A shared lab has shared resources that enable multiple users to work cooperatively, competitively, individually or in teams. Create cloud labs and use our Cloud Slice; a technology that allows you to slice a cloud vendor’s environment and supply access per user in a highly managed, highly secure way, driving lower costs, better scale and faster setup while preventing fraud and abuse. 

### Create your lab  

![](/tms/images/create_lab.png)  
The first step is to create your Lab Profile(s). Labs in Skillable Lab on Demand are housed in a lab profile; a lab profile is where lab settings are configured. Settings may include resource configuration, virtual machines, network configuration, cloud configuration, Life Cycle Actions and much more. Lab profiles can exist on their own or they can be part of a Lab Series that has multiple lab profiles.

#### Build your Lab Profiles 
Use the Skillable Studio Template Gallery’s pre-created labs to use for a new base lab. Or create a Lab Profile from scratch.
•	Add Hyper-V or ESX lab virtual machines. View Best Practices.
•	Add containers hosted in Docker Hub or another container registry you manage or have access to.
•	Set up a cloud lab using Azure or AWS and you can use Cloud Slice to manage it. 

![](/tms/images/finish_lab.png)

### Finish your lab
Add instructions, include quizzes, assessments, or performance-based testing. Then create a lab series to publish your lab profile(s).

#### Write Instructions
Use our Integrated Lab eXperience (IDLx) platform to integrate your lab instructions into your lab environment. With IDLx, instructions are formatted in Markdown, and you can add tasks, links, Activity Based Assessments screen shots, or video. View Best Practices. 

#### Add Quizzes, Exams, Activity Based Assessments, and/or Performance Based Testing 
Include multiple choice or short answer questions through quizzes or exams. You may also validate or teach skills with Activity Based Assessments in which the learner completes a challenge or answers a question, then manually triggers an automated evaluation of the item for immediate feedback. Or use Performance Based Testing allowing the learner to develop and show their skills by completing a series of tasks and submitting everything at the end for a score. 

#### Create a Lab Series 
Lab Profiles must be contained within a Lab Series to publish; the Lab Series holds the Lab Profile(s) and allows you to configure and publish them as a lab to an API to be launched in your LMS or our Skillable TMS. 

![](/tms/images/publish_lab.png)

### Publish your lab
To publish your lab, the lab profile(s) must be added to a Lab Series, launched, and have the development status set to Complete. Then you can choose if you will publish your lab in the Skillable TMS or to your API. 

#### Save the Lab Series
Your Lab Series needs to be saved in your production organization. When doing this you will choose the lab profiles you want to publish from your development organization. Once your lab profiles are in the production organization, you will need to launch each lab profile and set the development status to complete. This ensures that the lab does not have any issues launching, and allows you to make sure the lab looks and performs like you expect.

#### Publish Lab Series 
You can proceed to choose which API to publish your lab to, this can be published to our Training Management System (TMS) or to an API to launch labs in your platform.

## Skillable Training Management System (TMS)

Skillable TMS is our integrated LMS platform to deliver labs to your learners. You can manage learners and instructors, schedule classes and assign self-paced training. You can check lab instances to see your learners’ progress, instructors can virtually view and interact with learners by monitoring their labs as they work on them. Have learners and instructors launch all the course content, labs, courseware, and your virtual meeting from a single web page. You can add multiple choice assessments, surveys for students, instructors or organizations and you have many options for automatically triggered notifications. You can also validate and recognize your learners’ achievements with certificates and badges. 

### Publish to our TMS

![](/tms/images/tms-process1.png)

After your lab is published to the Skillable TMS, you must add it into a course to be delivered to your learners. A course is then added to a class for instructor led delivery or to a course assignment, training key pool or subscription for self-paced delivery. Once a class is set up, students are enrolled manually or through training keys. When self-paced training is set up, a course assignment or subscription can be manually assigned or given access through a training key.

![](/tms/images/create_course.png)

### Create a Course
Courses are the delivery container for labs in the TMS, labs must be added into courses, courses are added to a delivery method, and the delivery mechanism is assigned to a learner. A course holds the content to deliver to your learner; it is a container with many settings which holds labs and other activities. After creating a course, you must add a publishing group to make it available to add to a class, course assignment or subscription. Once the course and publishing group are set up, you can choose delivery methods.

![](/tms/images/delivery_mech.png)

### Determine Delivery Mechanism
Labs are contained within a course then courses are added to delivery mechanism to place the labs into your learner’s hands. Delivery can be instructor-led training through a class or self-paced training through a course assignment. 

A class is a set date and time when the instructor and students meet. When scheduling a class, a course is added to give access to the content and labs. Instructors have access to the course and labs when they are assigned to teach a class. Learners can access labs once class starts.
Self-paced learners can be assigned a single course through a course assignment or a set of courses through a subscription; a subscription gives a learner access to multiple courses which can be taken and retaken for a limited amount of time. Each course launched within a subscription is opened as a course assignment. 

![](/tms/images/deliver_training.png)

### Deliver your Training
You can choose to assign training manually, use the Skillable Connect TMS API, or use training keys for learners to self-register and access their training.
Instructor-led learners can be enrolled manually one at a time or in groups. You can also use training keys to allow students to self-register and access their class. Learners have access to class labs from the start of the class through any post class lab access set for the course, normally 180 days. Students and instructors can connect directly to your virtual meeting host through the class. Instructors can monitor all student labs virtually during classes. 

Self-paced learner’s access to a course assignment is normally 180 days from the time it is created but may be set to less. You can manually create a single course assignment, multiple course assignments or use a training key pool to allow students to self-register and open a course assignment. 

Subscriptions can be assigned manually to a single learner, multiple learners or through training keys which allows students to self-register and open their subscription. A learner views all the available courses in a subscription catalog, showing each course as a tile with the course name and information; then when a course is selected it opens as a course assignment to the learner. Learning paths can also be set up to direct learners through a set of courses. 

## Skillable Connect

Skillable Connect provides API and LTI capabilities to integrate into your existing LMS, CRM, BI and/or learning system.

### Publish to your Platform

![](/tms/images/api-process1.png)

Use Skillable Connect to have either API or LTI capabilities integrated into your existing platform.

![](/tms/images/implement_api.png)

### Implement API in your Platform’s Code
Use Skillable Connect LOD API  to deliver your labs directly from your platform. Skillable Connect is your door into SkillStack, our full-stack lab platform, providing OpenAPI compliance, with clear, searchable documentation on how to consume APIs. We provide sample responses and examples along with self-serve testing tools. For LTI activities, you will publish in LOD to your LTI’s API consumer with an assigned API key that is used as authentication for every API call from your platform.
Implement API in your Platform’s Code; 

[View API Best Practices](https://customersupport-qa.skillable.com/)  

![](/tms/images/create_lti.png)

### Create an LTI Activity to Deliver your Training
Learning Tools Interoperability (LTI) allows you to integrate your labs from Skillable SkillStack directly into your learning management system (LMS). This gives your learners a seamless experience, opening a lab directly from an activity in your LMS.

View LTI 1.3, LTI 1.1, EdX, Blackboard and other options under the [Other Integration](https://docs.skillable.com/lod/home-landing-pages/lod-integration-landing.md) heading.
 
![](/tms/images/trigger.png)

### Trigger the Launch
Once your set up is complete, learners can launch your labs with the click of a button.


