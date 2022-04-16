#!/bin/bash

# GTK Theme
wget -P /tmp/ https://github.com/dracula/gtk/archive/master.zip
cd Downloads
sudo unzip /tmp/master.zip -d /usr/share/themes
gsettings set org.gnome.desktop.interface gtk-theme "gtk-master"
gsettings set org.gnome.desktop.wm.preferences theme "gtk-master"

# Gnome-Terminal
sudo apt-get install dconf-cli
cd /tmp
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
bash install.sh
