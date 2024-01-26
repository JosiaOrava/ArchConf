#!/usr/bin/zsh
hyprland="$HOME/.config/hypr/hyprland.conf"
hyprpaper="$HOME/.config/hypr/hyprpaper.conf"
waybar="$HOME/.config/waybar/config.jsonc"
waybarStyle="$HOME/.config/waybar/style.css"
kitty="$HOME/.config/kitty/kitty.conf"

error_color=$(tput setaf 1) # txt color to red
reset_color=$(tput sgr0) # reset txt color

if [ -d ~/.config/backups ]; then
	echo "Backup directory found"

else
	mkdir ~/.config/backups
	echo "Backup directory created"

fi

if [ -e "$hyprland" ]; then
       echo "Backup hyprland"
       cp "$hyprland" ~/.config/backups/hypr/
else
	echo "${error_color}Error: Hyprland config not found${reset_color}"
fi

if [ -e "$hyprpaper" ]; then
	echo "Backup hyprpaper"
	cp "$hyprpaper" ~/.config/backups/hypr/
else
	echo "${error_color}Error: Hyprpaper config not found${reset_color}"
fi

if [ -e "$waybar" ]; then
	echo "Backup waybar"
	cp "$waybar" ~/.config/backups/waybar/
else
	echo "${error_color}Error: Waybar config not found${reset_color}"
fi

if [ -e "$waybarStyle" ]; then
	echo "Backup waybar style"
	cp "$waybarStyle" ~/.config/backups/waybar/
else
	echo "${error_color}Error: Waybar style not found${reset_color}"
fi

if [ -e "$kitty" ]; then
	echo "Backup kitty"
	cp "$kitty" ~/.config/backups/kitty/
else
	echo "${error_color}Error: Kitty config not found${reset_color}"
fi

echo "Backup pacman packages"
pacman -Qqe > ~/.config/backups/pacman/pkglist.txt
