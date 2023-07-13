---
title: "Google Cloud Platform: Projects Available Pool Logic Change; Replenishment"
description: "Implements automatic project replenishment and tests project deletion, lab users can seamlessly continue their work without interruption."
isPublished: true
---

# Google Cloud Platform: Projects Available Pool Logic Change; Replenishment

## Overview

This documentation provides instructions on the functionality and usage of the replenished Projects Available Pool Logic in our GCP (Google Cloud Platform) environment. The objective of this feature is to automatically create a new project in the subscription pool after a lab user completes their GCP lab and their previous project is deleted. This implementation ensures a continuous availability of projects, following a "rolling" strategy instead of depleting the total number of available projects over time. Please follow the instructions below to understand and utilize this feature effectively.

## Table of Contents

- [Introduction](#introduction)
- [Enabling the Projects Available Pool Logic Change](#enabling-the-projects-available-pool-logic-change)
- [Replenishing Projects in the Pool](#replenishing-projects-in-the-pool)
- [Additional Information](#additional-information)

## Introduction

The Projects Available Pool Logic Change - Replenishment feature enhances the project management capability in our GCP environment. It automatically creates a new project in the subscription pool whenever a lab user's previous project is deleted after completing a GCP lab. This ensures that there is a continuous availability of projects, facilitating a seamless experience for lab users.

## Enabling the Projects Available Pool Logic Change

To enable the Projects Available Pool Logic Change feature, follow these steps:

1.  Access the administration settings or configuration panel of our GCP platform.

1.  Locate the "Projects Available Pool Logic" section or a similar setting related to project management.

1.  Enable the "Replenishment" option or a similar feature that indicates the automatic creation of new projects in the subscription pool.

1.  Save the settings to apply the changes.

Once enabled, the system will automatically create new projects in the subscription pool whenever a user's previous project is deleted.

## Replenishing Projects in the Pool

With the Projects Available Pool Logic Change feature enabled, the system will automatically replenish the projects in the pool. Follow these instructions to understand the process:

1.  As a lab user, complete your GCP lab as usual.

1.  Once you have finished the lab and your project is deleted, the system will automatically create a new project in the subscription pool for you.

1.  Access your lab environment again, and you will be assigned the newly created project.

1.  Continue using the GCP services and resources within your lab using the newly assigned project.

By automatically replenishing the projects in the pool, this feature ensures that you always have a project available for your GCP labs without any manual intervention.

## Additional Information

*   This feature is implemented within our Cloud Factory environment to provide a seamless experience for lab users.

*   It is recommended to regularly review and manage the project pool to optimize resource allocation and ensure efficient utilization.

*   If you encounter any issues or have questions regarding this feature, please reach out to our support team for assistance.

When utilizing the Cloud Factory and GCP labs, please consider the following:

*   Project Allocation: The availability of projects may still be subject to any restrictions or allocation policies set by your organization or lab administrators.

*   Lab Completion: Ensure that you properly complete GCP labs to trigger the replenishment process and ensure the availability of new projects.

*   Project Usage: Make sure to utilize GCP projects responsibly and in accordance with your organization's policies and guidelines.

Thank you for utilizing the Projects Available Pool Logic Change - Replenishment feature. We hope this enhancement enhances your experience and simplifies project management in our GCP environment.
