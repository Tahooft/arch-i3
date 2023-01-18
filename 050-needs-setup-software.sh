#!/bin/bash
# Based on: https://github.com/erikdubois/arcolinux-nemesis
#
# @ToDo
# personal moet gedaan voordat dit script in ~/bin staat, misschien eerst testen of dat gebeurd is?
set -e


echo "################################################################"
echo "####             Enable Timesyncd                            ###"
echo "################################################################"

# sudo timedatectl set-local-rtc 1
# sudo timedatectl set-timezone Europe/Amsterdam
# sudo systemctl start systemd-timesyncd.service
# sudo systemctl enable systemd-timesyncd.service

echo "################################################################"
echo "####             Timesyncd enabled                           ###"
echo "################################################################"


echo "################################################################"
echo "####             Enable Reflector                            ###"
echo "################################################################"
# edit the configuration file at /etc/xdg/reflector/reflector.conf and then enable the timer with:
systemctl enable reflector.timer
systemctl start reflector.timer
# Check that status with systemctl list-timers. 
# To update the mirrorlist immediately instead of waiting for the scheduled operation, run systemctl start reflector.service.

echo "################################################################"
echo "####             refelector enabled                          ###"
echo "################################################################"


echo "################################################################"
echo "####             Enable THERMALD                             ###"
echo "################################################################"
sudo pacman -S thermald --noconfirm --needed
sudo systemctl enable thermald
sudo systemctl start thermald

echo "################################################################"
echo "###################    THERMALD enabled   ######################"
echo "################################################################"


echo "################################################################"
echo "####             Enable GUFW simple firewall                 ###"
echo "################################################################"
sudo pacman -S ufw gufw ufw-extras --noconfirm --needed
sudo ufw enable
systemctl enable ufw
systemctl start ufw

echo "################################################################"
echo "###################    GUFW enabled       ######################"
echo "################################################################"


echo "################################################################"
echo "####             MKCERT - needed for DDEV                    ###"
echo "################################################################"
# Nodig voor ddev
sudo pacman -S mkcert --noconfirm --needed
mkcert -install

echo "################################################################"
echo "###################    MKCERT -install done ####################"
echo "################################################################"


echo "################################################################"
echo "####             CREATE KEYPAIR                              ###"
echo "################################################################"
# create keypair - ook voor GIT nodig
ssh-keygen

echo "################################################################"
echo "###################    KEYPAIR GENERATED    ####################"
echo "################################################################"


echo "################################################################"
echo "####             CRON                                        ###"
echo "################################################################"
sudo pacman -S cron --noconfirm --needed
sudo  systemctl start cronie
sudo systemctl enable cronie

echo "################################################################"
echo "###################    CRON DONE            ####################"
echo "################################################################"


echo "################################################################"
echo "####             SETUP DOCKER                                ###"
echo "################################################################"
sudo pacman -S docker docker-compose --noconfirm --needed
sudo usermod -aG docker $USER
systemctl enable docker
systemctl start docker

echo "################################################################"
echo "###################    DOCKER SETUP DONE    ####################"
echo "################################################################"


echo "################################################################"
echo "####             WHAT TO DO NOW?                             ###"
echo "################################################################"
echo "Arch Linux Tweaktool:"
echo "   - SAMBA installeren"
echo "Maybe..."
echo "   - opennic-up dns updater/extra nameservers for security (aur)"
echo "   - shortwave"
echo "   - megasync (aur)"
echo "Have a look at..."
echo "   - AppArmor"
echo "################################################################"
