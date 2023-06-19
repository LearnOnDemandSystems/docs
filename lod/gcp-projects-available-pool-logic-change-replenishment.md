---
title: "Google Cloud Platform: Projects Available Pool Logic Change; Replenishment"
description: "Implements automatic project replenishment and tests project deletion, lab users can seamlessly continue their work without interruption."
isPublished: true
---

# Google Cloud Platform: Projects Available Pool Logic Change; Replenishment

## Overview

This documentation explains the enhancement made to the GCP Projects Available Pool logic in the Cloud Factory. As a lab user, you will now experience an automatic project replenishment process after completing a GCP lab and having your project deleted. This enhancement implements a strategy where there is a "rolling" number of available projects, ensuring a continuous supply of projects instead of a fixed total number that depletes over time. Read on to learn more about this feature and how it improves the availability of GCP projects in the Cloud Factory.

## Table of Contents

[Introduction](#introduction)

[GCP Projects Available Pool Logic Change](#gcp-projects-available-pool-logic-change)

[Replenishment Process](#replenishment-process)

[Benefits](#benefits)

[Considerations](#considerations)

## Introduction

To enhance the availability of GCP projects in the Cloud Factory, we have made improvements to the Projects Available Pool logic. This update ensures a continuous supply of projects by automatically creating new projects after a lab is completed and the associated project is deleted. With this enhancement, you can seamlessly continue working on GCP labs without interruptions caused by project unavailability.

## GCP Projects Available Pool Logic Change

The Projects Available Pool logic has been modified to implement a "rolling" number of available projects instead of a fixed total number that depletes over time. This change ensures a continuous supply of projects in the Cloud Factory, improving the user experience and minimizing potential delays caused by project unavailability.

## Replenishment Process

After you complete a GCP lab and your project is deleted, the replenishment process is triggered automatically. The Cloud Factory will create a new project for you, ensuring that you have a fresh project available to continue working on GCP labs. This automated process eliminates the need for manual intervention and provides a seamless experience for lab users.

## Benefits

The enhancement to the GCP Projects Available Pool logic offers several benefits:

*   Continuous Availability: The rolling number of available projects ensures that there is always a sufficient supply of projects for lab users, minimizing delays caused by project unavailability.
*   Seamless Workflow: Lab users can seamlessly transition from one lab to another without waiting for project creation or facing interruptions due to project depletion.
*   Improved Efficiency: The automated replenishment process eliminates the need for manual intervention, saving time and effort for lab users and administrators.

## Considerations

When utilizing the Cloud Factory and GCP labs, please consider the following:

*   Project Allocation: The availability of projects may still be subject to any restrictions or allocation policies set by your organization or lab administrators.
*   Lab Completion: Ensure that you properly complete GCP labs to trigger the replenishment process and ensure the availability of new projects.
*   Project Usage: Make sure to utilize GCP projects responsibly and in accordance with your organization's policies and guidelines.

By implementing the new Projects Available Pool logic with automatic replenishment, we aim to provide a seamless and uninterrupted experience for GCP lab users in the Cloud Factory.

If you have any questions or require further assistance, please reach out to your lab administrator or support team.