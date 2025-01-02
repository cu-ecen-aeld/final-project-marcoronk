#Monitoring System Project

<p>The objective of this project is to develop an application that displays system informations (CPU, memory, Temperature, etc.) of the linux host where it is running. It implements a kernel module that collects specific data and exposes it through a file in the /proc folder. A web application developed in PHP will display this information by interfacing with the device driver. The driver return data formatted in key - value format that is parsed by the php application. The kernel module on exceeding some maximum value, send an alert in a netlink socket to a netlink client. Alert are also shown in the Php Application.
 </p>
<p><a href="https://github.com/cu-ecen-aeld/final-project-marcoronk/blob/main/Project-Overview.md">Read the Wiki</a></p>
<br><br>
# Source Code Organization

[Monitor Buildroot](https://github.com/cu-ecen-aeld/final-project-marcoronk) <br>
[Monitor Kernel Module](https://github.com/marcoronk/rm_kernel) <br>
[Monitor Client](https://github.com/marcoronk/rm_client) <br>
