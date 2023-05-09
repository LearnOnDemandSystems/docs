---
title: "google cloud platform gcp bucket retention policy restrictions"
description: "gcp challenge lab automatically gets deleted automatically on completion"
isPublished: true
---

# Google Cloud Platfform (GCP) Bucket Retention Policy Restrictions

## Table of Contents

* [Introduction](#introduction)

* [How it works](#how-it-works)

* [When will the project be deleted](#when-will-the-project-be-deleted)

* [What will happen to the GCP resources associated with the project](#what-will-happen-to-the-gcp-resources-associated-with-the-project)

* [What will happen to my user account](#what-will-happen-to-my-user-account)

* [Conclusion](#conclusion)

## Introduction

When you complete a GCP challenge lab, you want your project to be deleted so that all resources associated with the project are cleaned up, and your user account is no longer associated with the GCP project. To meet this requirement, we have implemented a new feature in our system - "GCP Cleanup: Project Deletion".

With this feature, when you complete a GCP challenge lab, the system will automatically delete the project associated with the lab, and all the GCP resources associated with the project will be cleaned up. Once the deletion process is complete, your user account will no longer be associated with the GCP project.

## How it works

When you complete a GCP challenge lab, the system will check if the lab is associated with a project. If a project is associated with the lab, the system will trigger a project deletion process. During this process, all the GCP resources associated with the project will be cleaned up, and your user account will be disassociated from the project.

## When will the project be deleted

The project associated with the GCP challenge lab will be deleted once the lab is completed. The deletion process may take some time, depending on the size of the project and the number of resources associated with it. Once the deletion process is complete, you will receive a confirmation message.

## What will happen to the GCP resources associated with the project

All the GCP resources associated with the project will be cleaned up during the project deletion process. This includes Compute Engine instances, Cloud Storage buckets, and other GCP resources associated with the project. You don't need to worry about manually deleting any resources associated with the project.

## What will happen to my user account

Once the project deletion process is complete, your user account will no longer be associated with the GCP project. This means that you won't be able to access any of the GCP resources associated with the project.

## Conclusion

The "GCP Cleanup: Project Deletion" feature ensures that your GCP challenge lab experience is seamless and hassle-free. With this feature, you don't need to worry about manually deleting any GCP resources associated with the project, or disassociating your user account from the project. 

The system will take care of everything for you, making your GCP challenge lab experience stress-free and enjoyable.