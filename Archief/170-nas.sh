#!/bin/bash
set -e

###############################################################################

# tput setaf 5;echo "################################################################"
# echo "Change /etc/nsswitch.conf for access to nas servers"
# echo "We assume you are on ArcoLinux and have"
# echo "arcolinux-system-config-git or arcolinuxd-system-config-git"
# echo "installed. Else check and change the content of this file to your liking"
# echo "################################################################"
# echo;tput sgr0

# # https://wiki.archlinux.org/title/Domain_name_resolution
# if [ -f /usr/local/share/arcolinux/nsswitch.conf ]; then
# 	echo "Make backup and copy the ArcoLinux nsswitch.conf to /etc/nsswitch.conf"
# 	echo
# 	sudo cp /etc/nsswitch.conf /etc/nsswitch.conf.bak
# 	sudo cp /usr/local/share/arcolinux/nsswitch.conf /etc/nsswitch.conf
# else
# 	echo "Getting latest /etc/nsswitch.conf from the internet"
# 	sudo cp /etc/nsswitch.conf /etc/nsswitch.conf.bak
# 	sudo wget https://raw.githubusercontent.com/arcolinux/arcolinuxl-iso/master/archiso/airootfs/etc/nsswitch.conf -O $workdir/etc/nsswitch.conf
# fi

