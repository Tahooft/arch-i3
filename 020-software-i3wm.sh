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

func_category() {
	tput setaf 5;
	echo "################################################################"
	echo "Installing software for category " $1
	echo "################################################################"
	echo;tput sgr0
}

###############################################################################

func_category Additional-distro-specific

list=(

accountsservice
arandr
autotiling 
dmenu
feh
gmrun
#gtk-engine-murrine
i3-wm
i3blocks
i3lock
i3lock-color
i3status
imagemagick
inxi
lxappearance
lxrandr
mesa
# nitrogen
picom
playerctl
polybar
python-i3ipc 
python-pywal
rxvt-unicode
rxvt-unicode-terminfo
sddm
urxvt-fullscreen
urxvt-perls
variety
# volumeicon
w3m
xfce4-appfinder
xfce4-notifyd
xfce4-power-manager
# xfce4-settings
# xfce4-taskmanager
xfce4-terminal

)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done
echo "Fixing hardcoded icon paths for applications - Wait for it"
sudo hardcode-fixer

###############################################################################

tput setaf 11;
echo "################################################################"
echo "Software has been installed"
echo "################################################################"
echo;tput sgr0

###############################################################################

tput setaf 5;echo "################################################################"
echo "Enabling sddm as display manager"
echo "################################################################"
echo;tput sgr0
sudo systemctl enable sddm.service -f

tput setaf 7;echo "################################################################"
echo "You now have a very minimal functional desktop"
echo "################################################################"
echo;tput sgr0

tput setaf 11;
echo "################################################################"
echo "Reboot your system"
echo "################################################################"
echo;tput sgr0