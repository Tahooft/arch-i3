#!/bin/bash
set -e

echo ""
echo "##############    Installing userdirs          #################"
echo ""

sudo pacman -S xdg-user-dirs --noconfirm --needed
cd ~
xdg-user-dirs-update

echo ""
echo "##############    Userdirs installed           #################"
echo ""


exit 0
