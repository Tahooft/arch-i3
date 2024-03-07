#!/bin/bash
set -e

echo ""
echo "############### Cloning configs if VM        ################"
echo ""

if [ $(hostnamectl chassis) = "vm" ]; then
    
    git clone https://github.com/Tahooft/sway.git
    mv -f sway ~/.config/

    git clone https://github.com/Tahooft/waybar.git
    mv -f waybar ~/.config/

    git clone https://github.com/Tahooft/i3.git
    mv -f i3 ~/.config/

    echo ""
    echo "############### Configs updated       ##################"
    echo ""
else
    echo " Not a VM"
fi  


