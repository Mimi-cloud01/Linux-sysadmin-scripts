#!/bin/bash
# ==============================================================================
# Script Name: system_access_management.sh
# Description: Linux user provisioning, file access control, and network setup.
# ==============================================================================

# 1. User & Group Administration
# Create user 'Thabo' with a home directory and append to 'finance' group
sudo useradd -m Thabo
sudo usermod -aG finance Thabo
# 2. Access Control & Permission Management
# Assign file ownership and apply restrictive read/write permissions (DAC)
sudo chown finmanager:finance salary_data.txt
sudo chmod 600 salary_data.txt

# 3. System Maintenance Workflow
# Update package repositories and execute full system upgrade
sudo apt update && sudo apt full-upgrade -y

# 4. Network Interface Configuration
# Bring up eth0 interface and request dynamic IP via DHCP
sudo ip link set eth0 up
sudo dhclient eth0
