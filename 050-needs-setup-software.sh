#!/bin/bash
# Based on: https://github.com/erikdubois/arcolinux-nemesis
#
# @ToDo
# personal moet gedaan voordat dit script in ~/bin staat, misschien eerst testen of dat gebeurd is?
set -e

sudo pacman -S man-pages --noconfirm --needed
sudo pacman -S man-db --noconfirm --needed
sudo pacman -S most --noconfirm --needed
# sudo makewhatis /usr/share/man    ?????

# echo "################################################################"
# echo "####             Enable Timesyncd                            ###"
# echo "################################################################"
# Setup now done during archinstall

# sudo timedatectl set-local-rtc 1
# sudo timedatectl set-timezone Europe/Amsterdam
# sudo systemctl start systemd-timesyncd.service
# sudo systemctl enable systemd-timesyncd.service

# echo "################################################################"
# echo "####             Timesyncd enabled                           ###"
# echo "################################################################"


echo "################################################################"
echo "####             Enable THERMALD                             ###"
echo "################################################################"
sudo pacman -S thermald --noconfirm --needed

sudo systemctl enable thermald
sudo systemctl start thermald

echo "################################################################"
echo "###################    THERMALD enabled   ######################"
echo "################################################################"

tput setaf 5;echo "################################################################"
echo "Enabling services"
echo "################################################################"
echo;tput sgr0

sudo systemctl enable avahi-daemon.service

tput setaf 11;
echo "################################################################"
echo "Services enabled"
echo "################################################################"
echo;tput sgr0


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
echo "####             Enable systemd-boot-update                  ###"
echo "################################################################"

systemctl enable systemd-boot-update

echo "################################################################"
echo "###################    systemd-boot-update enabled #############"
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
# create keypair if missing - ook voor GIT nodig
sudo ssh-keygen -A

echo "################################################################"
echo "###################    KEYPAIR GENERATED    ####################"
echo "################################################################"


echo "################################################################"
echo "####             CRON                                        ###"
echo "################################################################"
if pacman -Qi cron &> /dev/null; then
    pacman -S cron --noconfirm --needed
fi
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
echo "###################    BLUETOOTH SETUP      ####################"
echo "################################################################"

systemctl start bluetooth.service
systemctl enable bluetooth.service

echo "################################################################"
echo "###################    BLUETOOTH SETUP DONE    #################"
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
