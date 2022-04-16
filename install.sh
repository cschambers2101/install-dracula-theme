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

# Vim Theme
# Installed via dotfiles install script

# TMUX Theme
mkdir -p $HOME/.tmux/plugins/
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo '# List of plugins' >> $HOME/.tmux.conf
echo "set -g @plugin 'tmux-plugins/tpm'" >> $HOME/.tmux.conf
echo "set -g @plugin 'tmux-plugins/tmux-sensible'" >> $HOME/.tmux.conf
echo '# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)' >> $HOME/.tmux.conf
echo 'run $HOME/.tmux/plugins/tpm/tpm' >> $HOME/.tmux.conf

# XResources
git clone https://github.com/dracula/xresources.git ~/.Xresources

