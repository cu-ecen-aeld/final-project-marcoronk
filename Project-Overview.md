
# Overview
The objective of this project is to develop an application that monitors and displays system resources (CPU, memory, disk usage, etc.) of the linux operative system where it is running. It implements a kernel module that collects specific data (kernel memory usage, I/O details, disk space usage) and exposes it through a /proc interface. A web application developed in PHP will display this information by interfacing with the device driver. The driver return data formatted in key - value, format that can be parsed by the php application. The threshold for CPU and disk space can be configured using the /proc and if configured can send an alert using a socket by netlink. A specific page in http server shows alerts threshold. Application run on a buildroot image on Qemu and export http server port for remote access. 
<br><br>
<img src="https://github.com/cu-ecen-aeld/final-project-marcoronk/blob/main/schema_progetto.png" >
# Target Build System
Will be uses Buildroot as target build system.

# Hardware Platform
Application run on a generic Linux distro. In this case will be prepared in Qemu and Raspberry PI4.

# Open Source Projects Used
[Php](https://www.php.net) <br>
[Buildroot](https://buildroot.org/)

# Previously Discussed Content
Aeschar driver for the structure of the project

# New Content
In this project will be used the /proc.

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
