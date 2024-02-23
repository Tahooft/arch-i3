################# Define the $mod variable/key - set Super key
set $mod Mod4

################# Define the movements keys - variables
set $up k
set $down j
set $left h
set $right l 

################# Defaults set
set $startscreen ~/Pictures/Wallpapers/startscreen.jpg
set $firstMonitor HDMI-2
set $secondMonitor eDP-1

################# Includes
# include ~/.config/i3/playground.conf

################# Autodect monitor configuration - https://github.com/phillipberndt/autorandr
exec --no-startup-id autorandr --change

################# Popups  control                  
popup_during_fullscreen smart

################# picom of i3wm - if you want transparency on non-focused windows
exec_always --no-startup-id picom --config ~/.config/i3/picom.conf
bindsym control+mod1+o exec --no-startup-id ~/.config/i3/scripts/picom-toggle.sh

################# font                  
font pango:FontAwesome 11, pango:RobotoMono Nerd Font 11

################# Icons in bar
for_window [all] title_window_icon on       # enable window icons for all windows

# Icons from: https://fontawesome.com/v5/cheatsheet/free/solid
# Need to set workspace names (1..10) without displaying (strip_workspace_numbers yes) to show the icons in correct order
set $ws1 "1:  ¹"
set $ws2 "2:  ²"
set $ws3 "3:  ³"
set $ws4 "4:  ⁴"
set $ws5 "5:  ⁵"
set $ws6 "6:🕵  ⁶"
set $ws7 "7:  ⁷"
set $ws8 "8:  ⁸"
set $ws9 "9:  ⁹"
set $ws10 "10:  ¹⁰" 

# switch to workspace
bindsym $mod+1 workspace $ws1
bindsym $mod+2 workspace $ws2
bindsym $mod+3 workspace $ws3
bindsym $mod+4 workspace $ws4
bindsym $mod+5 workspace $ws5
bindsym $mod+6 workspace $ws6
bindsym $mod+7 workspace $ws7
bindsym $mod+8 workspace $ws8
bindsym $mod+9 workspace $ws9
bindsym $mod+0 workspace $ws10

workspace $ws1 output $secondMonitor
workspace $ws2 output $firstMonitor
workspace $ws3 output $firstMonitor
workspace $ws4 output $firstMonitor
workspace $ws5 output $firstMonitor 
workspace $ws6 output $secondMonitor
workspace $ws7 output $secondMonitor
workspace $ws8 output $secondMonitor
workspace $ws9 output $firstMonitor
workspace $ws10 output $firstMonitor

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace $ws1; workspace $ws1 
bindsym $mod+Shift+2 move container to workspace $ws2; workspace $ws2
bindsym $mod+Shift+3 move container to workspace $ws3; workspace $ws3
bindsym $mod+Shift+4 move container to workspace $ws4; workspace $ws4
bindsym $mod+Shift+5 move container to workspace $ws5; workspace $ws5
bindsym $mod+Shift+6 move container to workspace $ws6; workspace $ws6
bindsym $mod+Shift+7 move container to workspace $ws7; workspace $ws7
bindsym $mod+Shift+8 move container to workspace $ws8; workspace $ws8
bindsym $mod+Shift+9 move container to workspace $ws9; workspace $ws9
bindsym $mod+Shift+0 move container to workspace $ws10; workspace $ws10

################# assign applications to workspaces 
# Assign application to start on a specific workspace - you can find the class with the program xprop
assign [class="Firefox|firefox"]                                → $ws2
assign [class="Code|code"]                                      → $ws4
assign [class="libreoffice|libreoffice-writer"]                 → $ws5
assign [class="Sublime Text (UNREGISTERED)"]                    → $ws5
assign [class="freeciv-gtk3|Freeciv-gtk3|Freeciv"]              → $ws5
assign [class="Qutebrowser|qutebrowser|chromium"]               → $ws6
assign [class="qbittorrent|qBittorrent"]                        → $ws6
assign [class="telegram-desktop"]                               → $ws7
assign [class="Pragha|pragha|Gimp"]                             → $ws8
assign [class="Gnome-boxes|gnome-boxes"]		                → $ws9
assign [class="vlc"]                                            → $ws10

################# My keybindings
bindsym $mod+mod1+a exec --no-startup-id pavucontrol-qt;focus
bindsym $mod+mod1+b exec --no-startup-id firefox;focus;border none
bindsym $mod+mod1+c exec --no-startup-id code;focus
bindsym $mod+mod1+e exec urxvt -e vim;focus
bindsym $mod+mod1+f exec --no-startup-id catfish;focus;border none
bindsym $mod+mod1+g exec --no-startup-id gimp;focus
bindsym $mod+mod1+m exec --no-startup-id xfce4-settings-manager
bindsym $mod+mod1+p exec --no-startup-id pragha;focus
bindsym $mod+mod1+q exec --no-startup-id qbittorrent;exec "notify-send 'QBitTorrent' 'Started'";focus
bindsym $mod+mod1+r exec urxvt -e ranger;focus
bindsym $mod+mod1+shift+s exec --no-startup-id catfish;focus
bindsym $mod+mod1+s exec --no-startup-id subl;focus
bindsym $mod+mod1+t exec --no-startup-id telegram-desktop;focus
bindsym $mod+mod1+v exec gnome-boxes;focus;exec "notify-send 'Gnome-Boxes' 'Started'"
bindsym $mod+mod1+y exec --no-startup-id freeciv-gtk3;exec --no-startup-id pactl set-sink-volume 0 20%;bar mode hide;exec i3-msg workspace $ws5;
bindsym $mod+mod1+z exec --no-startup-id xfce4-taskmanager;focus
# bindsym control+mod1+p exec --no-startup-id pamac-manager
bindsym $mod+mod1+i exec --no-startup-id xfce4-popup-clipman;focus

bindsym $mod+o floating toggle; [floating] resize set 1500 1180; move position 220 24
bindsym $mod+p floating toggle; [floating] resize set 1500 400; move position 220 24

# xfce4-appfinder
bindsym $mod+d exec --no-startup-id xfce4-appfinder

# start dmenu
bindsym $mod+shift+d exec --no-startup-id dmenu_run -i -nb '#191919' -nf '#fea63c' -sb '#fea63c' -sf '#191919' -fn 'NotoMonoRegular:bold:pixelsize=14'

# terminal
bindsym $mod+Return exec --no-startup-id urxvt;focus
bindsym $mod+KP_Enter exec --no-startup-id urxvt;focus
bindsym control+F12 exec --no-startup-id xfce4-terminal --drop-down; focus

################# Thunar
for_window [class="Thunar"] focus
bindsym $mod+Shift+Return exec --no-startup-id thunar;focus
bindsym $mod+Shift+KP_Enter exec --no-startup-id thunar;focus

################# Exit system
set $mode_system System (l) lock, (e) logout, (s) suspend, (h) hibernate, (r) reboot, (x) shutdown
mode "$mode_system" {
    bindsym l exec --no-startup-id $Locker, mode "default"
    bindsym e exec --no-startup-id i3-msg exit, mode "default"
    bindsym s exec --no-startup-id $Locker && systemctl suspend, mode "default"
    bindsym h exec --no-startup-id $Locker && systemctl hibernate, mode "default"
    bindsym r exec --no-startup-id systemctl reboot, mode "default"
    bindsym x exec --no-startup-id systemctl poweroff -i, mode "default"  

    # back to normal: Enter or Escape
    bindsym Return mode "default"
    bindsym Escape mode "default"
}
bindsym Pause mode "$mode_system"

################# Lockscreen
# exec --no-startup-id xautolock -time 25 -locker "i3lock -n --image=startscreen.png" &
# set $Locker i3lock -n --image=startscreen.png && sleep 1

################# Keylist
bindsym $mod+slash exec --no-startup-id ~/.config/i3/scripts/i3-keylist.py -k
for_window [title="i3 Key List"] floating enable border pixel 1

################# Mouse left-handed
exec --no-startup-id xinput set-prop 11 "libinput Left Handed Enabled" 0
# Tryout
focus_follows_mouse no

################# screenshots                      
bindsym Print exec --no-startup-id xfce4-screenshooter

################# reload changed configuration     
bindsym $mod+Shift+r restart
bindsym $mod+Shift+c reload

################# Selected kill
bindsym --release $mod+Escape exec xkill
bindsym $mod+q kill

################# Moving around in i3              
# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus
bindsym $mod+$left focus left
bindsym $mod+$down focus down
bindsym $mod+$up focus up
bindsym $mod+$right focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+$left move left
bindsym $mod+Shift+$down move down
bindsym $mod+Shift+$up move up
bindsym $mod+Shift+$right move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

################# moving around workspaces         
# next/previous workspace
bindsym Mod1+Tab workspace next
bindsym Mod1+Shift+Tab workspace prev
bindsym $mod+Tab workspace back_and_forth
# navigate workspaces next / previous
bindsym Mod1+Ctrl+Right workspace next
bindsym Mod1+Ctrl+Left workspace prev
# switch to workspace with urgent window automatically
for_window [urgent=latest] focus
# if automaticaly fails
bindsym $mod+x [urgent=latest] focus

################# Tiling parameters                
default_orientation horizontal
# split in horizontal orientation
bindsym $mod+Ctrl+h split h
# split in vertical orientation
bindsym $mod+Ctrl+v split v

# screen mode
bindsym $mod+f fullscreen toggle
bindsym $mod+s layout stacking
bindsym $mod+z layout tabbed
bindsym $mod+e layout toggle split
# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle
# focus the parent container
bindsym $mod+a focus parent
# focus the child container
# bindsym $mod+d focus child

################# resize window
bindsym $mod+Mod1+Ctrl+Right resize shrink width 5 px or 5 ppt
bindsym $mod+Mod1+Ctrl+Up resize grow height 5 px or 5 ppt
bindsym $mod+Mod1+Ctrl+Down resize shrink height 5 px or 5 ppt
bindsym $mod+Mod1+Ctrl+Left resize grow width 5 px or 5 ppt

# USER APPLICATIONS TO START AT BOOT
# feh sets wallpaper
exec --no-startup-id feh --bg-fill $startscreen &
# Authentication dialog
exec --no-startup-id /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
# Autotiling
exec_always --no-startup-id autotiling

# TRAY APPLICATIONS
exec --no-startup-id volumeicon
# exec --no-startup-id cbatticon
exec --no-startup-id pamac-tray
exec --no-startup-id blueberry-tray
exec --no-startup-id nm-applet
exec_always --no-startup-id numlockx off
exec --no-startup-id dropbox start
# exec --no-startup-id megasync
exec --no-startup-id pasystray
# exec --no-startup-id variety
exec --no-startup-id xfce4-clipman

# redshift -l 52.377956:4.897070
# redshift -l 52.4:4.9 -t 5700:3600 -g 0.8 -m randr -v

################# system       
exec --no-startup-id xfce4-power-manager &

## 230809 Hier wat gewijzigd, misschien effect op hoe deze pagina weer wordt gegeven
# ommitted next line to get super key to bring up the menu in xfce and avoid error then in i3
# IF xfsettingsd is activated you can not change themes
# exec --no-startup-id xfsettingsd &
exec --no-startup-id /usr/lib/xfce4/notifyd/xfce4-notifyd &

################# Shortcuts - not workspace related
## Conky
# exec --no-startup-id conky -c ~/.config/i3/system-overview
# bindsym $mod+c exec --no-startup-id conky-toggle
# bindsym control+Mod1+Shift+n exec --no-startup-id conky-rotate -n
# bindsym control+Mod1+Shift+p exec --no-startup-id conky-rotate -p

################# floating or tiled rules         
for_window [floating] move position center
for_window [title="Copying"] floating enable
for_window [title="Deleting"] floating enable
for_window [title="Moving"] floating enable
for_window [window_role="pop-up"] floating enable
for_window [window_role="^Preferences$"] floating enable
for_window [window_role="setup"] floating enable

################# floating enabled from some programs - find with xprop
# for_window [class="Arcolinux-tweak-tool.py"] floating enable
for_window [class="Arcolinux-calamares-tool.py"] floating enable
for_window [class="Bleachbit"] floating disable
for_window [class="Blueberry.py"] floating enable
# for_window [class="Brasero"] floating disable
# for_window [class="Galculator"] floating enable
for_window [class="Gnome-disks"] floating disable
for_window [class="^Gnome-font-viewer$"] floating enable
# for_window [class="Hexchat"] floating disable
for_window [class="Imagewriter"] floating enable
for_window [class="Font-manager"] floating enable
for_window [class="Nitrogen"] floating disable
for_window [class="Pavucontrol"] floating disable
for_window [class="Peek"] floating enable
# for_window [class="^Spotify$"] floating disable
for_window [class="System-config-printer.py"] floating enable
for_window [class="Usb-creator-gtk"] floating enable
for_window [class="^Vlc$"] floating disable
# for_window [class="Wine"] floating disable
for_window [class="Xfburn"] floating disable
for_window [class="Xfce4-appfinder"] floating enable
for_window [class="Xfce4-settings-manager"] floating disable
for_window [class="Xfce4-taskmanager"] floating enable
for_window [instance="variety"] floating disable
for_window [title="^Terminator Preferences$"] floating enable
for_window [instance="gimp"] floating disable
for_window [window_role="^gimp-toolbox-color-dialog$"] floating enable

################# give focus to applications       
for_window [class="Gnome-terminal"] focus
for_window [class="Termite"] focus
for_window [class="Terminator"] focus
for_window [class="Urxvt"] focus

################# Wallpapers variety switch
set $mode_variety system (s) start, (z) pause, (r) resume, (n) next, (p) previous, (f) favorite, (t) trash
mode "$mode_variety" {
    bindsym s exec --no-startup-id variety -s;mode "default"
    bindsym z exec --no-startup-id variety --pause;mode "default"
    bindsym r exec --no-startup-id variety --resume;mode "default"
    bindsym n exec --no-startup-id variety -n
    bindsym p exec --no-startup-id variety -p
    bindsym f exec --no-startup-id variety -f
    bindsym t exec --no-startup-id variety -t
    # back to normal: Enter or Escape
    bindsym Return mode "default"
    bindsym Escape mode "default"
}
bindsym $mod+mod1+w mode "$mode_variety"
bindsym $mod+mod1+n exec --no-startup-id variety -n

################# audio
bindsym mod1+F10 exec --no-startup-id pactl set-sink-volume 0 -5%
bindsym mod1+F11 exec --no-startup-id pactl set-sink-volume 0 +5%
bindsym mod1+F12 exec --no-startup-id pactl set-sink-mute 0 toggle

################ playctl
bindsym mod1+Shift+F10 exec --no-startup-id playerctl next
bindsym mod1+Shift+F11 exec --no-startup-id playerctl play-pause
bindsym mod1+Shift+F12 exec --no-startup-id playerctl stop

################# xbacklight for laptop                      
bindsym $mod+F11 exec --no-startup-id xbacklight -dec 20 # decrease screen brightness
bindsym $mod+F12 exec --no-startup-id xbacklight -inc 20 # increase screen brightness

################# bar toggle                       
bindsym $mod+b bar mode toggle

################# bar border    
exec_always --no-startup-id i3-msg default_border pixel 0
hide_edge_borders both
bindsym $mod+shift+b exec --no-startup-id i3-msg border toggle
bindsym $mod+t border normal
bindsym $mod+y border pixel 1
bindsym $mod+u border none
default_border none
default_border pixel 0
default_floating_border pixel 0
# new_window pixel 1
# new_window normal
new_window none
# new_float pixel 1
# new_float normal
new_float none

################# bar appearance                   
bar {
    height 25
    workspace_min_width 45
    workspace_buttons yes
    strip_workspace_numbers yes
	font pango:Noto Sans 11, FontAwesome 11
    tray_padding 4
	position top
    # position bottom

    # status_command i3status
    # From: https://github.com/tonyho/i3wm-conky-config/tree/master
    status_command /home/$USER/.config/i3/i3status-conky/i3status.sh
    colors {
        background #2F2F2F
        statusline #eeeeee
        separator  #666666
        # colorclass           border  backgr. text
        focused_workspace     #a9a9a9 #5f676a #eeeeee
        active_workspace      #a9a9a9 #5f676a #eeeeee
        inactive_workspace    #a9a9a9 #222222 #a9a9a9
        urgent_workspace      #a9a9a9 #d42121 #FFFFFF
        }
    }

set $coloratt #ff0000
# class                         border          background      text            indicator       child_border
client.focused                  #ffff33         #000000         #ffff33         $coloratt       #000000
client.focused_inactive         #333333         #000000         #ffff33         $coloratt       #000000
client.unfocused                #333333         #000000         #888888         $coloratt       #000000
client.urgent                   #2f343a         #900000         #ffffff         $coloratt       #900000
client.placeholder              #000000         #000000         #ffffff         $coloratt       #0c0c0c

################# Scratchpad
# move the currently focused window to the scratchpad
bindsym Mod1+Shift+minus move scratchpad
# Show the next scratchpad window or hide the focused scratchpad window. If there are multiple scratchpad windows, this command cycles through them.
bindsym Mod1+minus scratchpad show

# The middle button over a titlebar kills the window
# bindsym --release button2 kill

# The middle button and a modifer over any part of the window kills the window
# bindsym --whole-window $mod+button2 kill

# The right button toggles floating
# bindsym button3 floating toggle
bindsym $mod+button3 floating toggle

# The side buttons move the window around
bindsym button9 move left
bindsym button8 move right