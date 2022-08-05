#!/bin/bash

#Installing packages

echo "Installing Packages-----"
yum install -y epel-release
rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-8.rpm
yum install -y net-tools vim wget htop sysstat iotop telnet traceroute bind-utils tcpdump

#Updating system
echo "Updating Packages -----"
yum update -yum


# Disable SELinux
echo "Disabling SELinux -----"
sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config

# Disable FirewallD
echo "Disabling firewalld"
systemctl disable firewald


echo "Reboot your system"









