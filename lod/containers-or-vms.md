# Containers or Virtual Machines

When you are designing a lab, you might consider using a container image or a virtual machine (VM) for students to use to learn with. Choosing the right lab fabric will improve the lab experience better in your lab. 

Labs that use container images in LOD are not intended to be used to train on using Docker, for scenarios such as _Docker for Windows_. Container images launch a lab into a container, and the student performs work inside the container. For more information about Docker support in LOD, read [Using Docker in Lab On Demand](docker.md). 


## Container and VM Differences

|Containers||Virtual Machines|
|:---|---|---|
||||
|Lightweight||Heavyweight|
|Native performance||Limited performance|
|No OS installation||Requires OS installation|
|OS virtualization||Hardware-level virtualization|
|Startup time in seconds||Startup time in minutes|
|Requires less memory space||Allocates required memory|
|Low resource overhead||Potentially large resource overhead|
|Typically terminal based with no UI||Uses operating systems with a GUI interface|
|Limited to Linux-based scenarios||Available to use Windows and some versions of Linux. Linux support may be limited for some scenarios||

## Containers

Containers are typically **Linux terminal-based** and have no user interface to work with. However, some containers may expose a web application that the user can interact with. 


### Example Use Case Container



### Example Use Case Container and VM

- A lab with a container running .NET and a virtual machine with Visual Studio installed. The student connects to the container from Visual Studio to deploy applications. The student connects to the container from Visual Studio to deploy applications. 


- terminal in browser but some containers may have a web app on a port, and that web app becomes the interface the student works in

## Virtual Machines

- Operating systems supported
- use cases
- facts




