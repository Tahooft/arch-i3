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
bat
baobab
blueberry
bluez
bluez-utils
catfish
dark-reader 		# FireFox dark 
dconf-editor
ffmpegthumbnailer
file-roller
firefox
firefox-adblock-plus
freeciv
gvfs
gvfs-afc
gvfs-gphoto2
gvfs-mtp
gvfs-nfs
gvfs-smb
gimp
git
gnome-disk-utility
gnome-keyring
gnome-logs
gparted
gpodder
gsmartcontrol
hblock
hdparm
hddtemp
hplip
htop
hw-probe
intel-ucode
jq
libgsf     	 		# Needed to display raw thumbnails
libreoffice-fresh 
libusb-compat
lm_sensors
logrotate
lshw
meld
numlockx
neofetch
nomacs
pkgstats
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
sshfs
stacer
telegram-desktop
thunar
thunar-archive-plugin
thunar-media-tags-plugin
thunar-volman
tmux
udisks2
usb_modeswitch
usbmuxd
usbutils
vim
vlc
wireless-regdb
wireless_tools
wpa_supplicant
xclip
youtube-dl
)

count=0

for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

export MANPAGER=less

###############################################################################

tput setaf 11;
echo "################################################################"
echo "Software has been installed"
echo "################################################################"
echo;tput sgr0
