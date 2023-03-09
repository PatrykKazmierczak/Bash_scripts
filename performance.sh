#!/bin/bash#!/bin/bash

# Disable unnecessary services
sudo systemctl disable bluetooth.service
sudo systemctl disable cups.service
sudo systemctl disable cups-browsed.service
sudo systemctl disable avahi-daemon.service

# Enable CPU performance scaling
sudo apt-get install cpufrequtils
sudo echo 'GOVERNOR="performance"' >> /etc/default/cpufrequtils
sudo systemctl restart cpufrequtils.service

# Adjust kernel settings
sudo echo 'vm.swappiness=10' >> /etc/sysctl.conf
sudo echo 'vm.vfs_cache_pressure=50' >> /etc/sysctl.conf

echo "Performance settings applied."

