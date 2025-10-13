#!/bin/bash

###Opensuse Tumbleweed by distrobox###
###Atualização completa do sistema###

sudo zypper refresh; #Atualizar todos os repositórios.
sudo zypper clean; #Limpa caches locais.
sudo zypper refresh-services; #Atualizar todos os serviços.
sudo zypper purge-kernels; #Remover kernels antigos.
sudo zypper update; #Atualizar os pacotes instalados com versões mais recentes.
sudo zypper dist-upgrade; #Realiza a atualização da distribuição.
sudo zypper patch; #Instalar as correções necessárias.
sudo zypper patch-check; #Verificar por correções.
sudo zypper verify; #Verificar a integridade das dependências dos pacotes.
sudo grub2-mkconfig -o /boot/grub2/grub.cfg; ##Atualiza o grub

##Instalação de programas no distrobox archlinux##
#sudo zypper install -n podman distrobox; distrobox create --name archlinux --image archlinux:latest; distrobox enter archlinux -- sudo pacman -Syyuu --noconfirm fastfetch simple-scan kdenlive inkscape thunderbird audacious gnome-boxes gimp audacity transmission-gtk rpi-imager firefox gwenview kate;

##Exportação dos pacotes instalados no distrobox##
#distrobox enter archlinux -- distrobox-export --app simple-scan; distrobox enter archlinux -- distrobox-export --app kdenlive; distrobox enter archlinux -- distrobox-export --app inkscape; distrobox enter archlinux -- distrobox-export --app thunderbird; distrobox enter archlinux -- distrobox-export --app audacious; distrobox enter archlinux -- distrobox-export --app gnome-boxes; distrobox enter archlinux -- distrobox-export --app gimp; distrobox enter archlinux -- distrobox-export --app audacity; distrobox enter archlinux -- distrobox-export --app transmission-gtk; distrobox enter archlinux -- distrobox-export --app rpi-imager; distrobox enter archlinux -- distrobox-export --app firefox; distrobox enter archlinux -- distrobox-export --app gwenview; distrobox enter archlinux -- distrobox-export --app kate;

##Instalação dos programas Flatpak##
#flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo; sudo flatpak install flathub com.spotify.Client -y; sudo flatpak install flathub com.valvesoftware.Steam -y; sudo flatpak install flathub us.zoom.Zoom -y; sudo flatpak install flathub org.onlyoffice.desktopeditors -y; sudo flatpak install flathub com.adobe.Flash-Player-Projector -y; sudo flatpak install flathub com.github.IsmaelMartinez.teams_for_linux -y; sudo flatpak install flathub org.chromium.Chromium -y; sudo flatpak install flathub org.fedoraproject.MediaWriter -y; sudo flatpak install flathub org.kde.kget -y; sudo flatpak install flathub org.videolan.VLC -y; sudo flatpak install flathub net.mkiol.SpeechNote -y; sudo flatpak install flathub com.warlordsoftwares.youtube-downloader-4ktube -y;

##Atualização Distrobox##
distrobox enter archlinux -- sudo pacman --noconfirm -Syyuu;

##Atualização do Flatpak##
sudo flatpak update -y;

systemctl reboot
