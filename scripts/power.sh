function powermenu() {
    options="Cancel\nShutdown\nRestart\nSleep\nLock\nLogout"
    selected=$(echo -e "$options" | dmenu -l 6)
    if [[ $selected == "Shutdown" ]]; then
        poweroff
    elif [[ $selected == "Restart" ]]; then
        reboot
    elif [[ $selected == "Sleep" ]]; then
        systemctl suspend
    elif [[ $selected == "Lock" ]]; then
        slock #slock, betterlockscreen -l
    elif [[ $selected == "Logout" ]]; then
        pkill dwm #dwm, awesome
    elif [[ $selected == "Cancel" ]]; then
        return
    fi
}

powermenu
