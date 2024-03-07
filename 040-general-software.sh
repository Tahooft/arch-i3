#!/bin/bash
set -e

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

#
accountsservice
acpilight # a backward-compatibile xbacklight replacement
adapta-gtk-theme
adobe-source-sans-fonts
alacritty
arandr
arc-gtk-theme
arch-audit
audacity
autorandr
avahi
avidemux-qt #  	Graphical tool to edit video (filter/re-encode/split) - Qt GUI
awesome-terminal-fonts
baobab # Disk Usage Analyzer
# base 	# using archinstall
# base-devel # using archinstall
bash-completion
bash-language-server
bat
blender
# blueberry # Taken care of in 040-needs-setup-software.sh
# blueman
# bluez-utils
# brightnessctl # now: acpilight
catfish
# cbatticon
chromium
clamav
# conky
# conky-manager
cronie
dconf-editor
# dmenu
# docker # Taken care of in 040-needs-setup-software.sh
# docker-compose # Taken care of in 040-needs-setup-software.sh
# dzen2 # 	General purpose messaging, notification and menuing program for X11
efibootmgr
feh
ffmpegthumbnailer
file-roller
firefox
firefox-adblock-plus
freeciv
# gdm
gimp
gimp-plugin-gmic
git
glfw-wayland # ?
# gmrun
gnome-boxes
gnome-disk-utility
gnome-keyring
gnome-logs
gnome-mahjongg
gnome-subtitles
gnome-themes-extra
gparted
# gpodder
grim #  	Screenshot utility for Wayland
gsmartcontrol
gst-plugin-pipewire
# gst needed for gnome-subtitles
gst-libav
gst-plugin-wpe 
gst-plugin-msdk
gtk-theme-elementary
# gufw # Taken care of in 040-needs-setup-software.sh
gvfs
gvfs-afc
gvfs-gphoto2
gvfs-mtp
gvfs-nfs
gvfs-smb
hblock
hddtemp
hdparm
# hplip
htop
i3-wm
i3lock
i3status
intel-ucode
inxi
jq
kdeconnect
libgsf
libpulse
libreoffice-fresh
libusb-compat
# linux
# linux-firmware ## ????
logrotate
lshw
lxappearance
lxrandr
ly
man-db
man-pages
mc
meld
mesa-utils
# mkcert # Taken care of in 040-needs-setup-software.sh
most
mpv
neofetch
neovim
network-manager-applet
networkmanager
noto-fonts
nss-mdns
numlockx
# nwg-look # GTK3 settings editor, just copy de .config/gtk* files from the old system
openshot
oxygen-icons
pasystray
pavucontrol
picom
pipewire
pipewire-alsa
pipewire-jack
pipewire-pulse
pkgstats
playerctl
polkit-gnome
# polybar
pragha
pychess
python-gpgme
python-i3ipc
python-pip
qbittorrent
qt5-tools
# qt5-wayland 
qutebrowser
ranger
# reflector # 009-install-mirrors-optimized.sh
rmlint-shredder
rsync
# samba
scrot
seahorse
simple-scan
speech-dispatcher
sshfs #  	FUSE client based on the SSH File Transfer Protocol
sway
swaybg
swayidle
swaylock
telegram-desktop
# thermald # Taken care of in 040-needs-setup-software.sh
thunar
thunar-archive-plugin
thunar-media-tags-plugin
thunar-volman
# tk #  	A windowing toolkit for use with tcl
tmux
tree
ttf-bitstream-vera
ttf-dejavu
ttf-droid
ttf-font-awesome
ttf-hack
ttf-inconsolata
ttf-liberation
ttf-roboto
ttf-ubuntu-font-family
tumbler
ufw
ufw-extras
usb_modeswitch
usbutils
variety
vlc
volumeicon
w3m
waifu2x-ncnn-vulkan
waybar
wireless-regdb
wireless_tools
wireplumber
wofi
xclip
xcursor-themes
xdg-desktop-portal-gtk
xfce4-appfinder
# xfce4-clipman-plugin
# xfce4-notifyd
# xfce4-power-manager
# xfce4-session
# xfce4-settings
# xfce4-terminal
# xfdesktop
# xfwm4
# xfwm4-themes
xorg-xev
xorg-xinput
xorg-xlsclients
xorg-xrdb
xorg-xwayland
yt-dlp
# zram-generator # archinstall

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

echo;tput sgr0

# xrdb ~/.Xresources

tput setaf 11;
echo "################################################################"
echo " Updated ~/.Xresources --- if not set as commented
echo "################################################################"
echo;tput sgr0