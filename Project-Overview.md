
# Overview
The objective of this project is to develop an application that monitors and displays system resources (CPU, memory, disk usage, etc.) of the linux operative system where it is running. It implements a kernel module that collects specific data (kernel memory usage, I/O details, disk space usage) and exposes it through a /proc interface. An application built with ncurses will display this information by interfacing with the device driver. The driver permits to return data formatted, but also to be queried for a single parameter. The threshold for CPU and disk space can be configured using the /proc and if configured can send an alert using a socket by netlink.


# Target Build System
Will be uses Buildroot as target build system.

# Hardware Platform
Platform is a generic Linux. This application can run on every Linux distribution. In this case will be testet on Qemu.

# Open Source Projects Used
Ncurses Library to develop the client application.

# Previously Discussed Content
Aeschar driver for the structure of the project

# New Content
New content is the use of the /proc file system. 

# Shared Material
None for the moment.

# Source Code Organization

[Monitor Buildroot](https://github.com/cu-ecen-aeld/final-project-marcoronk) <br>
[Monitor Kernel Module](https://github.com/marcoronk/rm_kernel) <br>
[Monitor Client](https://github.com/marcoronk/rm_client) <br>



## Team project members:

Marco Ronchini

# Schedule Page
[Schedule Page](https://github.com/users/marcoronk/projects/5/views/1)
