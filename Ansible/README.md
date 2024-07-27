
# $${\color{blue} \textbf{Ansible}}$$


**Ansible**

Ansible is an open-source IT engine that automates application deployment, cloud provisioning, intra-service orchestration, and other IT tools. It is an automation and orchestration tool popular for the following reasons: 

Simple to Install.
Free and open source.
Lightweight and consistent.
OpenSSH security features make it very secure.

**What Is Ansible?**

Ansible can be used to deploy the software on different servers at a time without human interaction. Ansible can also be used to configure the servers and create user accounts. Ansible is an agent-less software which means there is no need to install the software in the nodes which means you need to do the SSH to connect the nodes to perform the required operations on the servers.

Ansible playbooks can be written very easily they will be like plain english and Ansible is developed using Python language. There is no need for any knowledge of programming. A single ansible control node can manage thousands of the nodes.

**Ansible Architecture**

**Control node:** Commands and Playbooks can run by invoking /usr/bin/ansible or /usr/bin/ansible-playbook, from any control node. You can use any computer that has Python installed on it as a control node. However, one can not use a computer with Windows OS as a control node. One can have multiple control nodes.

**Managed nodes:** Also sometimes called “hosts”, Managed nodes are the network devices (and/or servers) you manage with Ansible.

**Inventory:** Also sometimes called “hostfile”, Inventory is the list of Managed nodes use to organize them. It is also used for creating and nesting groups for easier scaling.

**Modules:** These are the units of code executed by Ansible. Each module can be used for a specific purpose. One can invoke a single module with a task, or invoke several different modules in a playbook.

**Tasks:** The units of action in Ansible. One can execute a single task once with an ad-hoc command.

Ansible-architecture

![image](https://github.com/manojv022/Ansible/assets/167419795/deec21c6-cf9c-40ba-9309-baef686ebafa)





------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


**Key Concepts**

**Control Node (Master)**

A computer with Ansible installed.
Runs commands and playbooks.
Needs Python, but can't be a Windows computer.
Can be a laptop, desktop, or server.
You can have more than one control node.

**Managed Nodes(NNodes)**

The devices or servers Ansible manages. Also called "hosts".
Ansible isn't installed on these devices.

**Inventory**

A list of the devices (hosts) Ansible manages.
Includes details like IP addresses.
Organizes devices into groups for easy management.

**Modules**

Small pieces of code that do specific tasks.
Used to perform actions like user management or network setup.
Can be used alone or combined in playbooks.

**Tasks**

Single actions that Ansible performs.
Can be run once with a quick command.

**Playbooks**

Lists of tasks saved to run in order.
Written in an easy-to-read format called YAML.
Can include variables and multiple tasks.
