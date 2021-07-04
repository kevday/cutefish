#!/bin/sh
clear
# Altera repositorios 
apk add nano bash bash-completion grep sudo openssh-client ntfs-3g
nano /etc/apk/repositories
apk -U upgrade

echo "Preparo da partição /home e add usuário"
echo _____________________________________________________________
blkid
#echo "informe /home" && echo "ex.: sdc1" && read dhome
#blkid -s UUID -o value /dev/$dhome >/tmp/duuid.txt && read duuid</tmp/duuid.txt && rm /tmp/duuid.txt
#echo "UUID=***"$duuid"***	/home    ext4   defaults    0    2">>/etc/fstab
#mount -t ext4 /dev/dhome /home
clear
#nano /etc/fstab
echo "Qual seu nome" && read duser
duser2=`echo "$duser" | tr '[:upper:]' '[:lower:]'`

echo "adduser -h /home/"$duser "-g" $duser" "$duser2
adduser -h /home/$duser2 -g "$duser" $duser2
echo $duser2" ALL=(ALL) ALL" >> /etc/sudoers
usermod -a -G wheel $duser2
mkdir Desktop #add pasta Desktop para root

clear

echo "Configurações regionais"
echo "_____________________________________________________________"
mkdir /etc/skel/.config/
echo "pt_BR">/etc/skel/.config/user-dirs.locale
echo "export CHARSET=UTF-8">/etc/profile.d/locale.sh
echo "export LANG=pt_BR.UTF-8">>/etc/profile.d/locale.sh
echo "export LC_COLLATE=pt_BR">>/etc/profile.d/locale.sh
mkdir /usr/share/gdm/
echo "pt_BR.UTF-8">/usr/share/gdm/locale.alias

apk add kbd setxkbmap xf86-input-synaptics xf86-input-mouse xf86-input-keyboard
echo "Configuração do Network Manager e iwd"
echo _____________________________________________________________
apk add networkmanager iwd
echo "[ifupdown]">>/etc/NetworkManager/NetworkManager.conf
echo "managed=true">>/etc/NetworkManager/NetworkManager.conf
rc-service wpa_supplicant stop
rc-update del wpa_supplicant
rc-update add iwd
rc-update add networkmanager
rc-service iwd restart
rc-service networkmanager restart
nmcli device set wlan0 managed yes

cp *.sh /home/$duser2
chmod +x /home/$duser2/*.sh
chmod 777 /home/$duser2/*.sh

