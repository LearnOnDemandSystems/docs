---
title: "Save Container Changes"
description: "Allows you to permanently save container changes so that they are used in future lab launches."
isPublished: false
---

# Save Container Changes

This feature allows you to permanently save container changes so that they are present in future lab launches.

## Saving Changes

To save changes to a container image:

1. Ensure the container image you wish to make changes to belongs to a container registry that you have access to push to. For more information about Container Registries, read [LOD Container Registries](container-registries.md).

1. **Launch the lab** you that contains the container you wish to make changes to. 

1. **Perform any configuration or any other changes** that you wish to save to the container image. 

1. In the running lab, select the **Hamburger menu in the top right** and choose the **Save** option.

1. **Select an option** to save: 

    - **Commit my changes and update this lab profile**

        - **New container image:** 

            1. Select the container images that should be created.

            1. Select the Container Registry that the new container image will be saved to. 

            1. Enter a tag for the new container image. This helps ensure that the  same container image will be used over time, by using a  version-specific tag. 

            1. Add a note summarizing the changes made or configuration of the container image. This is optional but highly recommended.

            1. Select **OK**.

        - **Current container images**

            >[!alert] Other lab profiles that use the same container images will be affected.

            1. Select the container images to update. You may only push changes to containers that belong to a container registry that you have push rights to. 

            1. Add a note summarizing the changes made or configuration of the container image. This is optional but highly recommended.

            1. Select **OK**.

    - **Commit my changes and create a new lab profile**

        - **Create Lab Profile**

            >[!knowledge] This option will create a new container images in the new lab profile. 

            1. Enter a **Number** for the new lab profile. 

            1. Enter a **Name** for the new lab profile. 

            1. The new lab will be placed in the current **Lab Series**. If the new lab profile should be placed in a different Lab Series, select **Choose** to select a different Lab Series. 

            1. The new lab will be placed in the current **Organization**. If the new lab profile should be placed in a different Organization, select **Choose** to select a different Organization. 

            1. Enter a tag for each new container image. This helps ensure that the  same container image will be used over time, by using a  version-specific tag. 

            1. Select **OK**.