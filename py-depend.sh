#!/bin/bash

# Set the package names

package1=python39
package2=python3-pip

# git info

git_repo_url=https://github.com/marc90s/Ansible.git
playbook_name=build_ansible_server.yml

# Install the first package

if sudo dnf -y install $package1; then
  echo "$package1 installed successfully!"
else
  echo "Failed to install $package1"
  exit 1
fi
echo 

# Install the second package

if sudo dnf -y install $package2; then
  echo "$package2 installed successfully!"
else
  echo "Failed to install $package2"
  exit 1
fi
echo

# Install ansible via pip3 if dnf packages were installed successfully

sudo pip3 install ansible >> /dev/null

# Check if ansible was successfully installed

if ansible --version | head -n 1 | grep -iq "ansible"; then
    echo "ansible installed successfully!"

    # Run ansible pull
    ansible-pull -U $git_repo_url $playbook_name.yml
else
    echo "ansible installation failed!"
fi

