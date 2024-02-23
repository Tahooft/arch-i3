#!/bin/bash
# Are we on the pc or on the laptop

HOSTNAME=$( cat /etc/hostname  )

if [[ $HOSTNAME == "pc" ]]; then
    echo "TRUE" 
else
    echo "FALSE"
fi


# FILE=~/.config/i3/.isLaptop.txt

# [ -f "$FILE" ] || {

#     INXITYPE=$(inxi --basic | grep Type)

#     if [[ $INXITYPE == *"Laptop"* ]]; then
#         echo "TRUE" > $FILE
#     else
#         echo "FALSE" > $FILE
#     fi
# }
