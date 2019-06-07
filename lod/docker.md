# Using Docker in Lab on Demand

When using Docker to host containers in labs, there are several considerations to keep in mind.

## Configuration

>[!alert] Docker images often require large downloads. It is advised that all necessary images are downloaded into the lab during development to prevent delays during live courses.

The following Docker configurations are supported:

- Linux containers running in Docker for Linux
- Windows containers running in Docker for Windows
- Linux containers running in Docker for Windows on a Dv3, Dsv3, or Ev3 Azure VM

The following configurations are not supported:

- Linux containers running in Docker for Windows<sup>1</sup>
- Containers running in nested virtualization scenarios<sup>2</sup>

<sup>1</sup> Any legacy labs that used Docker for Windows Linux images prior to 04/2018 are no longer supported as docker for windows uses nested virtualization to host Linux images. Please [contact support](https://www.learnondemandsystems.com/customer-support/) if you have any questions or concerns.

<sup>2</sup> While in some scenarios Docker may function when in a nested environment, LOD and support staff do not provide support for this scenario.

>[!knowledge] For more information on unsupported configurations, please see [Docker's documentation](https://docs.docker.com/docker-for-windows/troubleshoot/#running-docker-desktop-for-windows-in-nested-virtualization-scenarios) on nested virtualization scenarios.

## Supported Operating Systems

The following operating systems have been tested in our environment for the configurations above. Other distributions or editions will also likely work, but have not been tested.

- Windows 10 1709+
- Windows Server 2016/2019
- Ubuntu Desktop 18.04
- Ubuntu Server 18.04
- CentOS 7
- RHEL 7
- Debian Stretch
- Kali Linux
