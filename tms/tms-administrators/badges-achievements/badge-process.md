---
title: "What is involved in creating external badges?"
isPublished: true
---

# What is involved in creating external badges?

> [!Alert] Please be aware that not all functionality covered in this and linked articles may be available to you.

Your students can now earn externally supported badges through their activities/achievements in the TMS. This will give your users an additional sense of accomplishment, and they will be able to share that accomplishment with others outside the TMS.

You create the badges in the external badge provider and attach them to achievements you have created in the TMS. This feature has the following components: 
- **Badge Provider** - a repository to distribute badges. This is a third-party vendor that will issue the badge to the user. Currently the TMS only supports badges from Credly/Acclaim.
- **Badge** - the token given by a Badge Provider to a student to share based on the achievement earned.
- **Achievement** - the criteria needed to earn the badge. An achievement is given to users who complete a specific task(s) in the TMS. When the achievement is earned, the badge associated with it is issued.

The process to create badges and associate them to achievements has four steps. The first one is completed in the Badge Provider’s system. The final three steps are inside the TMS:
1. Create your badge templates. 
1. [Create the Badge Provider entity](create-badge-provider.md).
1. [Create the Badge entity](create-badge.md).
1. [Associate the badge](associate-badge.md) with an existing or new [Achievement](create-achievements-to-motivate-learners.md).
