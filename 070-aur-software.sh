#!/bin/bash
set -e

###############################################################################
echo "Installation of yay"
###############################################################################

echo ""
echo "###     Installing  from AUR                                 ###"
echo ""

BUILDS=~/.builds

# Test of ~/.builds exists
if [ ! -d $BUILDS ]; then
  mkdir $BUILDS
fi
cd $BUILDS

$filename = yay

# Test of ~/.builds/filename exists
if [ -d $BUILDS/$filename ]; then
   rm -Rf $BUILDS/$filename
fi

git clone https://aur.archlinux.org/${filename}.git
cd $filename
makepkg -sicr

echo ""
echo "###     yay installed                                        ###"
echo ""


func_install() {
	if yay -Qia $1 &> /dev/null; then
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
    	yay -aS --noconfirm --needed $1 
    fi
}

###############################################################################
echo "Installation of the aur packages"
###############################################################################

list=(

autotiling
# azote # Wallpaper & color manager for wlroots-based compositors and some X11 WMs
backintime
backintime-cli
brave-bin
clamav-unofficial-sigs
clipman
ddev-bin
# dropbox
gdm-settings
# hardcode-fixer-git
i3-scratchpad-git
# mintstick-git - use terminal or GNOME Disk Utility
nomacs #  	A Qt image viewer
# patool  #	portable command line archive file manager
python-avalon_framework
python-vulkan
# realesrgan-ncnn-vulkan - image and video upscaler
# spotify_dl
sublime-text-4
subtitleedit
tamsyn-font
# the_platinum_searcher-bin
# thunar-dropbox
# upscaler -  	Upscale and enhance images
# video2x -  	Machine learning video/GIF/image upscaling
visual-studio-code-bin
yay


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
