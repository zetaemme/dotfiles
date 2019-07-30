# /bin/bash

wget -O mirrorlist "https://www.archlinux.org/mirrorlist/?country=DE&country=IT&protocol=https&ip_version=4"
sed -ie 's/^.//g' ./mirrorlist
sudo mv ./mirrorlist /etc/pacman.d/mirrorlist
sudo rm -rf ./mirrorliste
