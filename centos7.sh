#!/bin/bash

clear
echo "   ___         _    ___  ___ ____   "
echo "  / __|___ _ _| |_ / _ \/ __|__  |  "
echo " | (__/ -_) ' \  _| (_) \__ \ / /   "
echo "  \___\___|_||_\__|\___/|___//_/    "
echo " OpenVPN Access Server With Unlimited License BY Nirob3x"

yum update -y
yum install wget -y
yum install net-tools -y
wget https://filehorst.de/downloadNow.php?md5=9eae8ae4b246e101d0feb7cd6f49e2ee&file=eafvrlBF&fhuid=uSXC1svOMSP6REklwJnKpWk5huuxQo5k&filename=openvpn-as-2.5-CentOS7.x86_64.rpm
rpm -i openvpn-as-2.5-CentOS7.x86_64.rpm
cd /usr/local/openvpn_as/lib/python2.7/site-packages/
rm pyovpn-2.0-py2.7.egg
wget https://filehorst.de/downloadNow.php?md5=4135e4fec35656b79cd19bc231f0b0ef&file=equguJxd&fhuid=LL0qveOjrHofatGddG8nHxWwgvM8vPCh&filename=pyovpn-2.0-py2.7.egg
cd /usr/local/openvpn_as/bin
./ovpn-init


echo "=========================DONE=============================="
echo "SETUP ADMIN PASSWORD"

passwd openvpn


echo "=========================DONE=============================="
