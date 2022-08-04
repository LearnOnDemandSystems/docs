---
title: "Accessibility Best Practices"
description: "Accessibility best practices when authoring lab profiles and lab instructions."
isPublished: true
---

# Accessibility Best Practices

## Overview

Accessibility features and considerations allow people to understand and navigate electronic information and systems. Implementing the best practices described in this document will help users maximize their lab experience.

## Table of Contents 
- [Labeling](#labeling)
- [Sizing and Visibility](#sizing-and-visibility)
- [Layout](#layout)
- [Additional Resources](#additional-resources)

## Labeling
- All buttons, links, and detail sections in lab instructions should be labeled to make it clear what the intention of the button is.
- Unit of measurement should be written in simple terms. (e.g., use 1 hour, 30 minutes, instead of 90 minutes)
- Start each page of lab instructions with a header that clearly describes the page. This will make the _Next_ button identify the page. 
- Highlight key differences between similar answer choices.
- Don't use color as your only indication of a message, include a written message as well. (e.g. red means indicates an incorrect answer, green indicates a correct answer)
- When a user is expected to interact with a button, be clear about the location and name of the button. The location should also include cues for learners who are visually impaired.
    - For example, use “in the panel on the right hand side of the screen” instead of simply “on the right-hand side of the screen.”
- If images are being included, always use alt text with clear a description, and consider how a screen reader will read the image's alt text. 
- Avoid using an ampersand (&) instead of the word “and”, to ensure screen reader software is able to read it correctly. 

## Layout
- When using tables, consider the instruction window width and ensure there is adequate spacing between the table column lines. 
    - Is is recommended to use no more than 3 columns in tables. 
- When referencing UI or UI elements, add images to aid in understanding the UI or UI element. 
- Balance the use of succinct language structures while still being inclusive of all necessary information. 
- When possible, limit the amount of information presented per line and provide spacing between lines. 
- Use consistent writing style and format across lab instructions of the same type. 
- Clearly delineate between elements of a problem (information, question, link or instructions for answering the question). 
    - Use IDLx Knowledge, Alert, Note, Help and Hint blocks. 
    - Use IDLx Knowledge, Help and Hint links.
    - For more information about IDLx blocks and links, see our [Markdown User Guide](https://docs.skillable.com/guides/idl2/markdown-user-guide.md).
- When displaying multiple items that are of the same topic, uses lists to make it easier for users to read quickly and easily. 

## Sizing and Visibility 
- Ensure a foreground:background contrast ratio is at least 4.5:1
    - Check for difficulty with URL elements while in high contrast color themes.
    - Check for difficulty in differentiating between bold and normal text.
- If a custom theme is used in lab instructions, all buttons should be sized for optimal precision. 
    - Use appropriate header sizes to differentiate between page/section titles and lab instruction content. 

## Additional Resources

- [Accessibility Basics: Designing for Visual Impairment](https://webdesign.tutsplus.com/articles/accessibility-basics-designing-for-visual-impairment--cms-27634)
- [Blindness and Vision Impairments in the Workplace and the ADA](https://www.eeoc.gov/laws/guidance/blindness-and-vision-impairments-workplace-and-ada)
- [Section 508 Compliance](https://508-compliance.org/)
- [Google Material Design Accessibility Guidelines](https://material.io/design/usability/accessibility.html)