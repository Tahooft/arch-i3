#!/bin/bash
set -e

intel-ucode
hdparm
dosfstools
hyperv
libusb-compat
man-db
rsync
rxvt-unicode-terminfo
usb_modeswitch
usbmuxd
usbutils
wireless-regdb
wireless_tools
wpa_supplicant
logrotate
ntp
upd72020x-fw
xf86-video-intel
bash-completion 
bash-language-server 
feh 
firefox 
filezilla 
gimp 
libreoffice-fresh 
lshw 
meld 
ranger
nitrogen
numlockx

pragha
qbittorrent
variety
vlc






# a -- m
sudo pacman -S   --noconfirm --needed

# n --





sudo pacman -S  urxvc-perls vlc xclip   --noconfirm --needed



#########################################################################
#                  SOFTWARE FROM ARCH LINUX REPOSITORIES
#########################################################################

###conky
jq
lm_sensors


###utilities
arandr
asciinema
bash-completion
baobab
bat
catfish
#cronie
dconf-editor
dex
#discord
duf-bin
edid-decode-git
#evince
expac
### 221201 - compressie app
# file-roller
# filezilla
git
gksu
#glances
gnome-disk-utility
gnome-keyring
#gnome-screenshot
#gnome-software
#gnome-software-packagekit-plugin
gparted
#gpick
#gtop
hardinfo-gtk3
hddtemp
htop
#hunspell
#hunspell-en_US
hw-probe
#hyphen
#hyphen-en
#grsync
intltool
iw
jsoncpp
libmtp
lsb-release
mlocate
nomacs
### 221206
#oh-my-zsh-git
p7zip
pkgfile
#plank
playerctl
polkit
polkit-gnome
#python2-dbus
#python2-xdg
#qt4
### 221128
#qt5ct
#qt5-styleplugins
#qt5-tools
#qt5-webkit
#powertop
ripgrep
### 221128
#rofi
rxvt-unicode
simple-scan
#shotwell
speedtest-cli-git
telegram-desktop
#timeshift
#tree
#ufw
gufw
unace
unrar
unzip
#vnstat
w3m
### 221128 v2
# webkit2gtk
wmctrl
xapp
xdo
xdotool
xdg-desktop-portal-gtk
#yt-dlp
youtube-dl
zenity
# zsh
# zsh-completions
# zsh-syntax-highlighting

###########################################################################
#                           ARCOLINUX_REPOS
###########################################################################

###applications
#vivaldi
#vivaldi-ffmpeg-codecs
#vivaldi-widevine

###cursors
#breeze-cursors-lh
#breeze-obsidian-cursor-theme
#oxy-neon
bibata-cursor-theme-bin
#breeze
#xcursor-vanilla-dmz-aa

###fonts
ttf-font-awesome
ttf-ms-fonts

###icons
#faba-icon-theme-git
#halo-icons-git
#moka-icon-theme-git
#numix-circle-arc-icons-git
#numix-icon-theme-git
#numix-circle-icon-theme-git
#paper-icon-theme
sardi-icons
surfn-icons-git
#surfn-arc-breeze-icons-git
#zafiro-icon-theme

###network
#b43-firmware

###tools
mkinitcpio-openswap

###utilities-repo
# alacritty
appstream
archiso
conky-lua-archers
downgrade
#font-manager
#glxinfo
#gitahead-bin
grub-customizer
hardcode-fixer-git
inxi
mintstick-git
neofetch
#numix-gtk-theme-git
arcolinux-pamac-all
#pamac-aur
#paru-bin
#peek
#pulseaudio-equalizer-ladspa
python-pyparted
#python-pywal
rate-mirrors-bin
#scour
#screenkey-git
sublime-text-4
#the_platinum_searcher-bin
the_silver_searcher
#trizen
urxvt-fullscreen
urxvt-perls
urxvt-resize-font-git
#wttr
yad
#yakuake
#yay-bin

###########################################################################
#                               GAMES
###########################################################################

#arcolinux-meta-steam
#lutris
#sauerbraten
#xonotic

###########################################################################
#                           ARCOLINUX FOLDER
###########################################################################

# arcolinux-alacritty-git
### 221128 waarom was die aan?
# arcolinux-arc-kde
arcolinux-bin-git
#arcolinux-candy-beauty-git
#arcolinux-common-git
arcolinux-conky-collection-git
#arcolinux-conky-collection-plasma-git
#arcolinux-cron-git
#arcolinux-docs-git
arcolinux-desktop-trasher-git
#arcolinux-faces-git
arcolinux-fonts-git
#arcolinux-geany-git
arcolinux-grub-theme-vimix-git
#arcolinux-gtk3-arcolinux-candy-beauty-git
arcolinux-gtk3-sardi-arc-git
#arcolinux-gtk3-surfn-arc-git
#arcolinux-gtk3-surfn-arc-breeze-git
#arcolinux-gtk3-surfn-plasma-dark-git
#arcolinux-guake-autostart-git
arcolinux-hblock-git
arcolinux-keyring
#arcolinux-kvantum-git
#arcolinux-kvantum-lxqt-git
#arcolinux-kvantum-plasma-git
arcolinux-local-applications-git
arcolinux-local-applications-all-hide-git
#arcolinux-local-applications-plasma-hide-git
arcolinux-local-xfce4-git
#arcolinux-logo-git
archlinux-logout-git
#archlinux-logout-themes-git
#arcolinux-lxqt-applications-add-git
#arcolinux-lxqt-applications-hide-git
#arcolinux-meta-logout
arcolinux-mirrorlist-git
arcolinux-neofetch-git
arcolinux-nitrogen-git
#arcolinux-oblogout
#arcolinux-oblogout-themes-git
#arcolinux-obmenu-generator-git
#arcolinux-obmenu-generator-minimal-git
#arcolinux-obmenu-generator-xtended-git
#arcolinux-openbox-themes-git
arcolinux-paru-git
arcolinux-pipemenus-git
#arcolinux-plank-git
#arcolinux-plank-themes-git
#arcolinux-plasma-kservices-git
arcolinux-polybar-git
### 221128 gevaarlijk misschien?
#arcolinux-qt5-git
#arcolinux-qt5-plasma-git
#arcolinux-rofi-git
#arcolinux-rofi-themes-git
arcolinux-root-git
#arcolinux-slim
#arcolinux-slimlock-themes-git
arcolinux-system-config-git
#arcolinux-system-config-dev-git
#arcolinuxd-system-config-git
arcolinux-systemd-services-git
#arcolinux-systemd-services-dev-git
#arcolinux-termite-themes-git
#arcolinux-tint2-git
#arcolinux-tint2-themes-git
archlinux-tweak-tool-git
arcolinux-variety-git
arcolinux-variety-autostart-git
arcolinux-volumeicon-git
arcolinux-wallpapers-git
#arcolinux-wallpapers-dual-git
#arcolinux-xfce-panel-profiles-git
#arcolinux-xmobar-git
### 221128
#arcolinux-zsh-git

###########################################################################
#                           ARCOLINUX DESKTOP FOLDER
###########################################################################

#arcolinux-awesome-git
#arcolinux-berry-git
#arcolinux-bspwm-git
#arcolinux-budgie-git
#arcolinux-cinnamon-git
#arcolinux-cutefish-git
#arcolinux-cwm-git
#arcolinux-deepin-git
#arcolinux-dwm-git
#arcolinux-dwm-slstatus-git
#arcolinux-dwm-st-git
#arcolinux-enlightenment-git
#arcolinux-fvwm3-git
#arcolinux-gnome-git
#arcolinux-herbstluftwm-git
arcolinux-i3wm-git
#arcolinux-icewm-git
#arcolinux-jwm-git
#arcolinux-leftwm-git
#arcolinux-kodi-git
#arcolinux-lxqt-git
#arcolinux-mate-git
#arcolinux-openbox-git
#arcolinux-openboxb-git
#arcolinux-openbox-xtended-git
#arcolinux-plasma-git
#arcolinux-plasma-nemesis-git
#arcolinux-qtile-git
#arcolinux-spectrwm-git
#arcolinux-ukui-git
#arcolinux-worm-git
#arcolinux-wmderland-git
arcolinux-xfce-git
#arcolinux-xmonad-polybar-git
#arcolinux-xmonad-xmobar-git

###########################################################################
#                           ARCOLINUX CONFIG FOLDER
###########################################################################

#arcolinux-config-all-desktops-git
#arcolinux-config-awesome-git
#arcolinux-config-berry-git
#arcolinux-config-bspwm-git
#arcolinux-config-budgie-git
#arcolinux-config-cinnamon-git
#arcolinux-config-cutefish-git
#arcolinux-config-cwm-git
#arcolinux-config-deepin-git
#arcolinux-config-dwm-git
#arcolinux-config-enlightenment-git
#arcolinux-config-fvwm3-git
#arcolinux-config-git
#arcolinux-config-gnome-git
#arcolinux-config-herbstluftwm-git
arcolinux-config-i3wm-git
#arcolinux-config-icewm-git
#arcolinux-config-jwm-git
#arcolinux-config-kodi-git
#arcolinux-config-leftwm-git
#arcolinux-config-lxqt-git
#arcolinux-config-openbox-git
#arcolinux-config-mate-git
#arcolinux-config-plasma-git
#arcolinux-config-plasma-nemesis-git
#arcolinux-config-qtile-git
#arcolinux-config-spectrwm-git
#arcolinux-config-ukui-git
#arcolinux-config-worm-git
#arcolinux-config-wmderland-git
#arcolinux-config-xfce-git
#arcolinux-config-xmonad-git
#arcolinux-config-xtended-git

###########################################################################
#                           ARCOLINUX DCONF FOLDER
###########################################################################

#arcolinux-dconf-all-desktops-git
#arcolinux-awesome-dconf-git
#arcolinux-berry-dconf-git
#arcolinux-bspwm-dconf-git
#arcolinux-budgie-dconf-git
#arcolinux-cinnamon-dconf-git
#arcolinux-cutefish-dconf-git
#arcolinux-cwm-dconf-git
#arcolinux-dconf-git
#arcolinux-deepin-dconf-git
#arcolinux-dwm-dconf-git
#arcolinux-enlightenment-dconf-git
#arcolinux-fvwm3-dconf-git
#arcolinux-gnome-dconf-git
#arcolinux-herbstluftwm-dconf-git
arcolinux-i3wm-dconf-git
#arcolinux-icewm-dconf-git
#arcolinux-jwm-dconf-git
#arcolinux-kodi-dconf-git
#arcolinux-leftwm-dconf-git
#arcolinux-lxqt-dconf-git
#arcolinux-mate-dconf-git
#arcolinux-openbox-dconf-git
#arcolinux-plasma-dconf-git
#arcolinux-qtile-dconf-git
#arcolinux-spectrwm-dconf-git
#arcolinux-ukui-dconf-git
#arcolinux-worm-dconf-git
#arcolinux-wmderland-dconf-git
#arcolinux-xfce-dconf-git
#arcolinux-xmonad-dconf-git
#arcolinux-xtended-dconf-git

###########################################################################
#                                ARCOLINUX CALAMARES
###########################################################################

arco-calamares
#arco-calamares-comp
#arco-calamares-dev
#arco-calamares-git
#arco-calamares-next
arcolinux-system-installation-git
#arcolinux-system-installation-dev-git
#arcolinuxd-config-live-session-git
arcolinux-welcome-app-git
#arcolinuxd-welcome-app-git
#arcolinux-welcome-app-dev-git
#arcolinux-welcome-app-deepin-git

###########################################################################
#                                CALAMARES DEPENDENCIES
###########################################################################

ckbcomp
xkeyboard-config
upower
kcoreaddons
kconfig
ki18n
kservice
kwidgetsaddons
kpmcore
#arcolinux-kpmcore
boost-libs
libpwquality
squashfs-tools
plasma-framework
hwinfo
qt5-xmlpatterns
adobe-source-han-sans-jp-fonts
adobe-source-han-sans-kr-fonts
adobe-source-han-sans-cn-fonts

###########################################################################
#                                ARCOLINUX CONFIG CALAMARES
###########################################################################

#arcob-calamares-config-awesome-git
#arcob-calamares-config-berry-git
#arcob-calamares-config-bspwm-git
#arcob-calamares-config-budgie-git
#arcob-calamares-config-cinnamon-git
#arcob-calamares-config-cwm-git
#arcob-calamares-config-cutefish-git
#arcob-calamares-config-deepin-git
#arcob-calamares-config-dwm-git
#arcob-calamares-config-enlightenment-git
#arcob-calamares-config-fvwm3-git
#arcob-calamares-config-gnome-git
#arcob-calamares-config-herbstluftwm-git
arcob-calamares-config-i3-git
#arcob-calamares-config-icewm-git
#arcob-calamares-config-jwm-git
#arcob-calamares-config-kodi-git
#arcob-calamares-config-leftwm-git
#arcob-calamares-config-lxqt-git
#arcob-calamares-config-mate-git
#arcob-calamares-config-openbox-git
#arcob-calamares-config-plasma-git
#arcob-calamares-config-qtile-git
#arcob-calamares-config-spectrwm-git
#arcob-calamares-config-ukui-git
#arcob-calamares-config-worm-git
#arcob-calamares-config-wmderland-git
#arcob-calamares-config-xfce-git
#arcob-calamares-config-xmonad-git
#arcob-calamares-config-xtended-git
#arco-calamares-config-b-git
#arco-calamares-config-xl-git
#arco-calamares-config-xl-git-git
#arco-calamares-config-xl-dev-git
#arco-calamares-config-xs-git
#arco-calamares-config-xs-lts-git
#arco-calamares-config-xs-xanmod-git
#arco-calamares-config-xs-zen-git
#arco-calamares-config-xl-next-git
#arcod-calamares-config-git
#arcod-calamares-config-git-git
#arcod-calamares-config-comp-git
#arcod-calamares-config-dev-git
#arcod-calamares-config-next-git

###########################################################################
#                                DISPLAY MANAGERS
###########################################################################

accountsservice
sddm
arcolinux-sddm-simplicity-git

###########################################################################
#                         PICOM OR COMPTON
###########################################################################

picom

###########################################################################
#                         GENERAL DESKTOP RELATED
###########################################################################

#mugshot
#menulibre
volumeicon

###########################################################################
#                         ARCOLINUX ISO SPECIFIC
###########################################################################

###########################################################################
#                                 i3
###########################################################################

###i3wm
i3status
i3blocks
i3-gaps
autotiling

###########################################################################
#                               OPENBOX
###########################################################################

###openbox
#gtk2-perl
#obkey
#obmenu3
#obmenu-generator
#obconf
#openbox
#perl-linux-desktopfiles
#tint2
#xcape
#openbox-themes-pambudi-git

###lx-applications
#lxappearance
lxappearance-gtk3
#lxappearance-obconf
#lxappearance-obconf-gtk3
lxrandr

###########################################################################
#                                XFCE
###########################################################################

### xfce4 group content
# https://www.archlinux.org/groups/x86_64/xfce4/
exo
garcon
thunar
thunar-volman
tumbler
xfce4-appfinder
### 221128 v3
#xfce4-panel
xfce4-power-manager
#xfce4-session
xfce4-settings
#xfce4-terminal
xfconf
#xfdesktop
###221203
#xfwm4
#xfwm4-themes

### xfce4-goodies group content
# https://www.archlinux.org/groups/x86_64/xfce4-goodies/
#mousepad
#orage
#parole
# ristretto
thunar-archive-plugin
thunar-media-tags-plugin
#xfburn
#xfce4-artwork
#xfce4-battery-plugin
xfce4-clipman-plugin
#xfce4-cpufreq-plugin
#xfce4-cpugraph-plugin
#xfce4-datetime-plugin
#xfce4-dict
#xfce4-diskperf-plugin
#xfce4-eyes-plugin
#xfce4-fsguard-plugin
#xfce4-genmon-plugin
#xfce4-mailwatch-plugin
#xfce4-mount-plugin
#xfce4-mpc-plugin
#xfce4-netload-plugin
#xfce4-notes-plugin
xfce4-notifyd
#xfce4-pulseaudio-plugin
#xfce4-screensaver
#xfce4-screenshooter
xfce4-sensors-plugin
#xfce4-smartbookmark-plugin
#xfce4-systemload-plugin
xfce4-taskmanager
#xfce4-time-out-plugin
#xfce4-timer-plugin
#xfce4-verve-plugin
#xfce4-wavelan-plugin
#xfce4-weather-plugin
#xfce4-whiskermenu-plugin
#xfce4-xkb-plugin

#xfce4-panel-profiles

###########################################################################agent
#                                ISO SPECIFIC
###########################################################################
polybar
autorandr

###########################################################################
#                                ADDED
###########################################################################
arch-audit
docker
docker-compose
gnome-logs
gpodder
hplip
mkcert
nm-connection-editor
nomacs
qjournalctl
qutebrowser
ranger
seahorse
stacer
thermald
ventoy-bin
visual-studio-code-bin


# Optional - eerst nog uitzoeken
#vim vim-jellybeans vim-seti pamac-tray-appindicator 
#sudo pacman -S rofi conky atool highlight browsh elinks mediainfo w3m ffmpegthumbnailer mupdf -noconfirm -needed
#AUR pamac-aur urxvt-resize-font-git i3keys python-pdftotext