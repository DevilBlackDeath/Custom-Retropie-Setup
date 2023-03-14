#!/bin/bash
curl -L "https://raw.githubusercontent.com/DevilBlackDeath/Custom-Retropie-Setup/main/samba_setup.sh" > sambasetup.sh
bash ./sambasetup.sh
sudo apt -y install libsamplerate0-dev
sudo apt -y install git lsb-release
cd
git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
cd RetroPie-Setup
chmod +x retropie_setup.sh
sudo ./retropie_setup.sh