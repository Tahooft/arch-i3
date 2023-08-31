#!/bin/bash
set -e

echo ""
echo "###############    Update fstab               ##################"
echo ""

sudo cp /etc/fstab /etc/fstab.bak
sudo cp Documents/fstab /etc/fstab

echo ""
echo "###############    Fstab updated              ##################"
echo ""

echo ""
echo "###############    Reboot now                 ##################"
echo ""