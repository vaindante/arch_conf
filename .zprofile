export PATH=~/bin:$PATH
#export XDG_DATA_DIRS='/home/malvery/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:/usr/share'
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
       	#exec ~/.config/sway/run.sh
        startx
        echo "Logout after 10 sec." && sleep 10 && exit
fi
