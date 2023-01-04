#!/bin/bash
#set -e
###############################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxb.com
# Website	:	https://www.arcolinuxiso.com
# Website	:	https://www.arcolinuxforum.com
###############################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###############################################################################


###############################################################################
#
#   DECLARATION OF FUNCTIONS
#
###############################################################################


func_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "###############################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Installing package "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    	sudo pacman -S --noconfirm --needed $1 
    fi
}

###############################################################################
echo "Installation of the development packages"
###############################################################################

list=(

	
arch-audit
bash-completion 
bash-language-server 
catfish
dconf-editor
docker
docker-compose
firefox
gimp
gnome-disk-utility
gnome-keyring
gnome-logs
gparted
gpodder
gufw
hdparm
hddtemp
hplip
htop
intel-ucode
jq
libreoffice-fresh 
libusb-compat
lm_sensors
logrotate
man-db
meld
mintstick-git
mkcert
nitrogen
numlockx
lshw
meld
nm-connection-editor
nomacs
polkit
polkit-gnome
pragha
qbittorrent
qjournalctl
qutebrowser
ranger
rsync
scrot
seahorse
simple-scan
stacer
sublime-text-4
telegram-desktop
thermald
the_platinum_searcher-bin
usb_modeswitch
usbmuxd
usbutils
variety
ventoy-bin
vlc
visual-studio-code-bin
wireless-regdb
wireless_tools
wpa_supplicant
youtube-dl
)

count=0

for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

tput setaf 11;
echo "################################################################"
echo "Software has been installed"
echo "################################################################"
echo;tput sgr0
