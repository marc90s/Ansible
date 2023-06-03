# Build_Ansible_Server
Ansible Automation 

Designed intialize, install and configure a vanilla systemd based OS with Ansible. 

copy launch.sh locally and run. This will install use pip to install python dependancies and ansible-core

A one-time ansible-pull will be used to pull down local.yml. local.yml will continue to configure and install additional dependancies ie. collections and pip modules. As well and build a custom ansible.cfg & Inventory file in users runtime enviroment.
