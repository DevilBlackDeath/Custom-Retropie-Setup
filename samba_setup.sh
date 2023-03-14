#!/bin/bash
sudo apt -y install samba samba-common-bin
sudo sed -i '/\[global\].*/a \ \ \ netbios name = RetroPie' /etc/samba/smb.conf
sudo sh -c 'echo "
[roms]
path=/home/pi/RetroPie/roms
writeable=yes
browseable=yes
create mask=0777
directory mask=0777
public=no

[config]
path=/opt/retropie/configs
writeable=yes
browseable=yes
create mask=0777
directory mask=0777
public=no

[BIOS]
path=/home/pi/RetroPie/BIOS
writeable=yes
browseable=yes
create mask=0777
directory mask=0777
public=no
 " >> /etc/samba/smb.conf'
sudo smbpasswd -a pi
sudo smbpasswd -e pi
sudo systemctl restart smbd
sudo systemctl restart nmbd