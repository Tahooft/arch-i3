#!/bin/bash
set -e

echo ""
echo "###############    Update fstab               ##################"
echo ""

cp /etc/fstab /etc/fstab.bak

# Home is on /dev/sda - find that line  
HOMEDRIVE=$(lsblk | grep -o  "sda[0-9]")

# Split the line on items and select item 2, which is where /Home will be
blkid  /dev/$HOMEDRIVE | grep -Po '".*?"' | sed -n '2p' | sed 's/"/UUID=/' | sed 's/"/    \/home    ext4    defaults,noatime 0 2/' >> Documents/fstab





echo ""
echo "###############    Fstab updated              ##################"
echo ""

echo ""
echo "###############    Reboot now                 ##################"
echo ""