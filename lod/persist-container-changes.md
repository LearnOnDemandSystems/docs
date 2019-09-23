# Persist Container Changes

This feature allows you to permanently persist container changes so that they are used in future lab launches.

## Persisting Changes

To persist changes to a container image:

1. Ensure the container image you wish to make changes to belongs to a container registry that you have access to push to. For more information about Container Registries, read [LOD Container Registries](container-registries.md).

1. Launch the lab you that contains the container you wish to make changes to. 

1. Perform any configuration or any other changes that you wish to persist to the container image. 

1. Click the **Resource** tab in the lab instruction window. 

1. Click **Persist Changes**. 

1. Select an option for how the container changes will be persisted:

    - **Create new container images**: Changes will be committed to new container images and the current lab profile will be updated to use them.

        1. Select the container images that should be created.

        1. Select the Container Registry that the new container image will be persisted to. 

        1. Enter a tag for the new container image. This helps ensure that the same container image will be used over time, by using a version-specific tag. 

    - **Create a new lab profile and new container images**: Changes will be committed to new container images and added to a clone of the current lab profile.

        1. Enter a **Number** for the new lab profile.

        1. Enter a **Name** for the new lab profile.

        1. If you would like to copy lab instructions to the new lab profile, check the box to **Include Instructions**. This will copy all lab instructions to the new lab profile, including Activities. 

        1. A list of all containers used in the lab will be listed. Select the container images that should be created and included in the new lab profile. Any containers not selected will not be created and the new lab profile will use the original containers. 

        1. Click **OK** to create the new lab profile and new container images. A link to the new lab profile will be displayed. 

    - **Update current container images**: Changes will be committed to the current container images. 
    
        >[!alert] Other lab profiles that use the same container images will be affected.

        1. Select the container images to update. You may only push changes to containers that belong to a container registry that you have push rights to. 

        1. Add a note summarizing the changes made or configuration of the container image. This is optional but highly recommended. 