#!/bin/bash

# GTK Theme
wget -P $HOME/Downloads/ https://github.com/dracula/gtk/archive/master.zip
cd Downloads
sudo unzip $HOME/Downloads/master.zip -d /usr/share/themes
gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Dracula"

