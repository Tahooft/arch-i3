#!/bin/bash
set -e

echo "################################################################"
echo "####             Installing and Enabling Reflector           ###"
echo "################################################################"
if pacman -Qi reflector &> /dev/null; then
    sudo pacman -S --noconfirm --needed reflector
fi
#NB!# edit the configuration file at /etc/xdg/reflector/reflector.conf and then enable the timer with:
sudo cp Documents/reflector.conf  /etc/xdg/reflector/  
sudo chown root:root /etc/xdg/reflector/reflector.conf

systemctl enable reflector.timer
systemctl start reflector.timer
# Check that status with systemctl list-timers. 
# To update the mirrorlist immediately instead of waiting for the scheduled operation, run systemctl start reflector.service.

echo "################################################################"
echo "####             refelector enabled                          ###"
echo "################################################################"

# installing refector to test wich servers are fastest

echo ""
echo "####   finding fastest servers be patient for the world      ###"
echo ""

# finding the fastest archlinux servers
sudo reflector -l 100 -f 50 --sort rate --threads 5 --verbose --save /tmp/mirrorlist.new && rankmirrors -n 0 /tmp/mirrorlist.new > /tmp/mirrorlist && sudo cp /tmp/mirrorlist /etc/pacman.d

echo ""
echo "####       fastest servers  saved                            ###"
echo ""

echo 'cat /etc/pacman.d/mirrorlist | less'
echo ""
cat /etc/pacman.d/mirrorlist | less

sudo pacman -Syu

