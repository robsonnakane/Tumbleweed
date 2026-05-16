#!/bin/bash

###Opensuse Tumbleweed IceWM by distrobox###
###Atualização completa do sistema###

sudo zypper -n refresh; #Atualizar todos os repositórios.
sudo zypper -n clean; #Limpa caches locais.
sudo zypper -n refresh-services; #Atualizar todos os serviços.
sudo zypper -n purge-kernels; #Remover kernels antigos.
sudo zypper -n update; #Atualizar os pacotes instalados com versões mais recentes.
sudo zypper -n dist-upgrade; #Realiza a atualização da distribuição.
sudo zypper -n patch; #Instalar as correções necessárias.
sudo zypper -n patch-check; #Verificar por correções.
sudo zypper -n verify; #Verificar a integridade das dependências dos pacotes.
sudo grub2-mkconfig -o /boot/grub2/grub.cfg; ##Atualiza o grub

zypper -n in rofi blueman fastfetch rsync gnome-boxes pcmanfm kitty dvd+rw-tools simple-scan thunderbird audacious gimp transmission-gtk rpi-imager firefox gwenview kate kdenlive yt-dlp audacity inkscape

##Instalação dos pacotes Flatpak##
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo; sudo flatpak install flathub com.spotify.Client -y; sudo flatpak install flathub com.valvesoftware.Steam -y; sudo flatpak install flathub us.zoom.Zoom -y; sudo flatpak install flathub org.onlyoffice.desktopeditors -y; sudo flatpak install flathub com.adobe.Flash-Player-Projector -y; sudo flatpak install flathub com.github.IsmaelMartinez.teams_for_linux -y; sudo flatpak install flathub org.chromium.Chromium -y; sudo flatpak install flathub org.fedoraproject.MediaWriter -y; sudo flatpak install flathub org.kde.kget -y; sudo flatpak install flathub org.videolan.VLC -y; sudo flatpak install flathub net.mkiol.SpeechNote -y; sudo flatpak install flathub com.saivert.pwvucontrol -y; sudo flatpak install flathub io.github.dvlv.boxbuddyrs -y;

        ##Atualização do Flatpak##
sudo flatpak update -y;

systemctl reboot

##Configurações IceWM pós instalação##
##Bluetooth: utilizar o blueman-manager no terminal ou no menu como gerenciador de Bluetooth
##Configurações das teclas de atalho "localhost:~ # nano /etc/icewm/keys"
##Configurações das teclas de menu suspenso "localhost:~ # nano /etc/icewm/menu"
##Após as alterações aplicar comando: icewm --restart

        ##Baixar um vídeo em melhor qualidade:##
#yt-dlp URL
        ##Baixar só áudio (MP3):
#yt-dlp -x --audio-format mp3 URL

        ##Realização de backup
#sudo rsync -avzrp --delete /home/robsonnakane/'Robson Nakane'/ robsonnakane@192.168.15.15:/home/robsonnakane/lenovo/
        ##Recuperação de backup
#sudo rsync -avzrp --delete robsonnakane@192.168.15.15:/home/robsonnakane/lenovo/ /home/robsonnakane/'Robson Nakane'/
