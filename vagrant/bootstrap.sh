#!/bin/sh

test -f /etc/bootstrapped && exit

sudo yum update -y
date > /etc/bootstrapped
sudo reboot
