#!/bin/bash
set -e

# https://wiki.archlinux.org/title/Thunar
# Edit ~/.config/xfce4/helpers.rc to set: TerminalEmulator=urxvt 
# Edit in Thunar "Configure custom actions" -> "Terminal open here" command:  exo-open --working-directory %f --launch TerminalEmulator

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


list=(
	arandr
	autorandr
	avidemux-qt
	blueman
	bluez
	cbatticon
	conky 
	conky-manager
	dropbox
	kdeconnect
	laptop-detect
	thunar-dropbox
	pasystray
	pavucontrol-qt
	python-pip
	reflector
	rmlint-shredder
	vidcutter
  	volumeicon
	xfce4-screenshooter
	xfce4-taskmanager
	xfce4-settings-manager
	xorg-xkill
	xorg-xev
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done