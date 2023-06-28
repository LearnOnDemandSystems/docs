---
title: "Lab Profile Instruction Sets"
description: "provides detailed information about each instruction set belonging to the lab profile, allowing you to efficiently manage and update instructions as needed."
isPublished: true
---

# Lab Profile Instruction Sets

 This feature allows API administrators to efficiently retrieve and update specific instructions for any given lab using an API. This document will guide you through the usage of the API method and provide examples for different scenarios.

 ## Table of Contents

 [Overview](#overview)

 [Response Structure](#response-structure)

 [Retrieving Instruction Sets for a Lab Profile](#retrieving-instruction-sets-for-a-lab-profile)
 
*   [API Endpoint: /LabProfile](#api-endpoint-labprofile)

*   [Example Scenarios](#example-scenarios)

[Conclusion](#conclusion)


 ## Overview

 As an API administrator, you can now use the /LabProfile API to retrieve the full list of instruction sets for a specific lab profile. The API method provides detailed information about each instruction set belonging to the lab profile, allowing you to efficiently manage and update instructions as needed.

 ## Response Structure

The response from the /LabProfile API will include an array called 'instructionSets'. 

This array contains the details of each instruction set associated with the lab profile.

Each instruction set in the array will have the following fields:

InstructionSetId: Unique identifier for the instruction set.

Name: Name of the instruction set.

Description: Description of the instruction set.

LanguageCode: Language code for the instruction set. Current supported language codes include:

en: English

es: Spanish

fr: French

de: German

pt: Portuguese

ja: Japanese

zh: Simplified Chinese

ko: Korean

 ## Retrieving Instruction Sets for a Lab Profile

 ### API Endpoint: /LabProfile

 To retrieve the instruction sets for a specific lab profile, you can make a GET request to the /LabProfile API endpoint. The response will contain an array called instructionSets, which provides information about the instruction sets associated with the lab profile.

### Example Calls

Instructions Sets

    [
        {
            "Id": "Base-01",
            "Language": "en",
            "Description": "Base Instructions Set",
            "LabTitle": "246354: Multiple Instructions",
            "DurationMinutes": 60,
            "OrganizationId": 15
        },
        {
            "Id": "02",
            "Language": "en",
            "Description": "02 Instructions Set",
            "LabTitle": "246354: Multiple Instructions 02",
            "DurationMinutes": 60,
            "OrganizationId": 15
        },
        {
            "Id": "05",
            "Language": "ko",
            "Description": "05 Instructions Set",
            "LabTitle": "246354: Multiple Instructions 05",
            "DurationMinutes": 60,
            "OrganizationId": 15
        }
    ]

Lab Profile

    GET /LabProfile/12345

 Result

    {
    "labProfileId": "12345",
    "labName": "Lab A",
    "instructionSets": [
        {
        "instructionSetId": "1001",
        "name": "Introduction",
        "description": "Basic introduction to the lab",
        "languageCode": "en"
        },
        {
        "instructionSetId": "1002",
        "name": "Advanced Techniques",
        "description": "Advanced techniques for the lab",
        "languageCode": "en"
        }
    ]
    }




### Example Scenarios

Let's go through some example scenarios to understand how the API works in different situations:

**Scenario 1: Lab Profile with a Single Enabled Instruction Set**

If you are looking for the instruction sets of a lab profile that has only one enabled instruction set, follow these steps:

1.  Run the '/LabProfile' API with the appropriate parameters to retrieve the lab details.
1.  In the API response, you will find the 'instructionSets' array, which will contain a single set of fields and values for the enabled instruction set.
1.  Verify that all the values in the array are correctly returned for the instruction set.

**Scenario 2: Lab Profile with Multiple Enabled Instruction Sets**

In the case of a lab profile with multiple enabled instruction sets, you can retrieve the instruction sets using the following steps:

1.  Execute the '/LabProfile' API to retrieve the lab details for the desired lab profile.
1.  In the API response, locate the 'instructionSets' array, which will contain multiple sets of fields and values, each corresponding to an enabled instruction set.
1.  Verify that all the values in the array are correctly returned for each instruction set.

**Scenario 3: Lab Profile with Multiple Sets of Instructions (Not All Enabled)**

If the lab profile has multiple sets of instructions, but not all of them are enabled, follow these steps:

1.  Make a GET request to the '/LabProfile' API to retrieve the lab details.
1.  Find the 'instructionSets' array in the API response, which will contain sets of fields and values only for the enabled instruction sets in the lab profile.
1.  Note that the 'instructionSets' array will not include any fields or values for instruction sets that are not enabled.
1.  Verify that all the values in the array are correctly returned.

## Conclusion

With the new enhancements to the Lab Profile API, you can now retrieve the list and details of instruction sets for specific lab profiles. This feature enables API administrators to efficiently manage and update instructions for labs using the API. If you have any further questions or need assistance, please reach out to our support team.

