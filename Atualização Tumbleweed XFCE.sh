#!/bin/bash

###Tumbleweed XFCE###
###Atualização completa do sistema###

##Execução do arquivo de atualização no terminal##
#/home/robsonnakane/Documentos/'Atualização Tumbleweed XFCE.sh'

#Edição do arquivo no terminal#
#nano /home/robsonnakane/Documentos/'Atualização Tumbleweed XFCE.sh'#

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

#sudo zypper --non-interactive install fastfetch; sudo zypper --non-interactive install simple-scan; sudo zypper --non-interactive install btop; sudo zypper --non-interactive install gnome-boxes; sudo zypper --non-interactive install krusader; sudo zypper --non-interactive install flatpak; sudo zypper --non-interactive install kitty; 

##search: foomatic, openjdk;

#flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo;
sudo flatpak install flathub com.spotify.Client -y; sudo flatpak install flathub org.videolan.VLC -y; sudo flatpak install flathub com.valvesoftware.Steam -y; sudo flatpak install flathub us.zoom.Zoom -y; sudo flatpak install flathub org.onlyoffice.desktopeditors -y; sudo flatpak install flathub com.skype.Client -y; sudo flatpak install flathub com.adobe.Flash-Player-Projector -y; sudo flatpak install flathub org.raspberrypi.rpi-imager -y; sudo flatpak install flathub com.google.Chrome -y; sudo flatpak install flathub org.gnome.Firmware -y; sudo flatpak install flathub org.kde.kdenlive -y; sudo flatpak install flathub org.inkscape.Inkscape -y; sudo flatpak install flathub org.mozilla.Thunderbird -y; sudo flatpak install flathub org.fedoraproject.MediaWriter -y; sudo flatpak install flathub org.gnome.gedit -y; sudo flatpak install flathub org.atheme.audacious -y; sudo flatpak install flathub ca.littlesvr.asunder -y; sudo flatpak install flathub ar.com.tuxguitar.TuxGuitar -y; sudo flatpak install flathub com.anydesk.Anydesk -y;

##Atualização do Flatpak##
flatpak update;

systemctl reboot
