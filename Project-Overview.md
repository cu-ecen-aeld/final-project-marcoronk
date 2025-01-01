
# Overview
The objective of this project is to develop an application that monitors and displays system resources (CPU, memory, Temperature, etc.) of the linux host where it is running. It implements a kernel module that collects specific data and exposes it through a file in the /proc folder. A web application developed in PHP will display this information by interfacing with the device driver. The driver return data formatted in key - value format that is parsed by the php application. The kernel module on exceeding some maximum value, send an alert in a netlink socket to a netlink client. Alert are also shown in the Php Application.  
<br><br>
This project may seem silly, but the purpose is to demonstrate the learning of the three courses of this specialization, in particular System Programming and Linux Kernel module programming. I did not use embedded systems (Raspberry, Beaglebone ..) because they were not used in this specialization and because I do not have any of them. For the demostration i've used my Ubuntu laptop and Qemu. Sorry for my bad english.
<br><br>
<img src="https://github.com/cu-ecen-aeld/final-project-marcoronk/blob/main/schema_progetto.png" >
# Target Build System
Will be uses Buildroot as target build system.

# Hardware Platform
Application run on a generic Linux distro. In this case will be installed in Qemu.

# Open Source Projects Used
[Php](https://www.php.net) <br>
[Buildroot](https://buildroot.org/)

# Previously Discussed Content
Aeschar driver for the structure of the project. 

# New Content
In this project will be used the /proc folder.

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
