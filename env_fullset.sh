##!/bin/bash 
#
cd $HOME

sudo apt-get -y update
sudo apt-get -y upgrade

echo "\033[31m [*] Install 嘸蝦米(IBUS)... \033[0m"
#sudo apt-get install fcitx fcitx-m17n -y
#sudo apt-get install fcitx-table-boshiamy -y
git clone https://github.com/wimterdom/boshiamy_siang
cd boshiamy_siang
sudo make 
sudo make install
sudo apt-get -y install ibus-chewing 
#sudo reboot
cd $HOME
echo "\033[32m [*] 嘸蝦米(IBUS) install finished! \033[0m"
#echo ""

echo "\033[31m [*] Install Net-tools... \033[0m"
sudo apt-get -y install net-tools
echo "\033[32m [*] Net-tools install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Curl... \033[0m"
sudo apt install -y curl
echo "\033[32m [*] Curl install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Extensions app... \033[0m"
sudo apt install -y gnome-shell-extension-prefs
echo "\033[32m [*] Extensions install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Tweak-gnome-tool... \033[0m"
sudo add-apt-repository universe
sudo apt install -y gnome-tweaks
#sudo apt install -y gnome-tweak-tool
echo "\033[32m [*] Tweak-gnome-tool install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Nodejs & Npm... \033[0m"
sudo apt install -y nodejs
sudo apt install -y npm
echo "\033[32m [*] Nodejs & Npm install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Ruby... \033[0m"
sudo apt-get -y install ruby
sudo apt-get -y install gcc ruby-dev
echo "\033[32m [*] Ruby install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Htop... \033[0m"
sudo apt-get -y install htop
echo "\033[32m [*] Htop install finished! \033[0m"
echo ""

echo "\033[31m [*] Install NCDU... \033[0m"
sudo apt-get -y install ncdu
echo "\033[32m [*] NCDU install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Tree... \033[0m"
sudo apt-get -y install tree
echo "\033[32m [*] Tree install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Nautilus... \033[0m"
sudo apt-get -y install nautilus
echo "\033[32m [*] Nautilus install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Gnome-tweak... \033[0m"
sudo apt install gnome-tweak-tool
echo "\033[32m [*] Gnome-tweak install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Gedit... \033[0m"
sudo apt-get -y install gedit
echo "\033[32m [*] Gedit install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Sublime-text... \033[0m"
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt -y install sublime-text
echo "\033[32m [*] Sublime-text install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Asan... \033[0m"
sudo apt-get install -y libasan4
echo "\033[32m [*] Asan finished! \033[0m"
echo ""

echo "\033[31m [*] Install Sanitizer... \033[0m"
sudo apt-get install -y sanitizer
echo "\033[32m [*] Sanitizer finished! \033[0m"
echo ""

echo "\033[31m [*] Install Python3... \033[0m"
sudo apt-get -y install python3
echo "\033[32m [*] Python3 install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Python3-dev... \033[0m"
sudo apt-get -y install python3-dev
echo "\033[32m [*] Python3-dev install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Python3-pip... \033[0m"
sudo apt-get -y install python3-pip
echo "\033[32m [*] Python3-pip install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Python... \033[0m"
sudo apt-get -y install python
echo "\033[32m [*] Python install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Powerline... \033[0m"
sudo apt-get -y install powerline
echo "\033[32m [*] Powerline install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Vim... \033[0m"
sudo apt-get -y install vim
echo "\033[32m [*] Vim install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Tmux... \033[0m"
sudo apt-get -y install tmux
echo "\033[32m [*] Tmux install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Libxml2... \033[0m"
sudo apt install -y libxml2
sudo apt install -y libxml2-dev
echo "\033[32m [*] Libxml2 install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Virtualenv... \033[0m"
sudo apt-get -y install python3-virtualenv
echo "\033[32m [*] Virtualenv install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Terminator... \033[0m"
sudo apt-get -y install terminator
echo "\033[32m [*] Terminator install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Bat... \033[0m"
sudo apt-get -y install bat
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat
echo "\033[32m [*] Bat install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Lsd... \033[0m"
mkdir software
cd software/
wget https://github.com/Peltoche/lsd/releases/download/0.22.0/lsd_0.22.0_amd64.deb
sudo dpkg -i lsd_0.22.0_amd64.deb
cd $HOME
echo "\033[32m [*] Lsd install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Snap... \033[0m"
sudo apt-get -y install snap
echo "\033[32m [*] Snap install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Gotop... \033[0m"
snap install gotop-cjbassi
echo "\033[32m [*] Gotop install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Radare2... \033[0m"
git clone https://github.com/radareorg/radare2
cd radare2/sys/
./install.sh
echo "\033[32m [*] Radare2 install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Pwn software... \033[0m"
sudo gem install seccomp-tools
sudo apt-get -y install libseccomp-dev
sudo apt-get -y install binutils
sudo apt-get -y install nasm
sudo apt-get -y install gcc-multilib
sudo apt-get -y install g++-multilib
sudo apt-get -y install libc6-dev-i386
sudo apt-get -y install libc6-dbg
sudo apt-get -y install libc6-dbg:i386
sudo apt-get -y install nmap
#sudo apt-get -y install python-pip
sudo apt-get -y install libssl-dev
sudo apt-get -y install gdb
sudo pip3 install pwntools
sudo pip install --upgrade pip
sudo pip install --upgrade capstone
sudo pip install --upgrade pwntools
sudo pip install ropgadget
git clone https://github.com/scwuaptx/peda.git ~/peda 
cp ~/peda/.inpurc ~/
git clone https://github.com/scwuaptx/Pwngdb.git
cp ~/Documents/ubuntu-envir-set/.gdbinit ~/
bash -c "$(curl -fsSL https://gef.blah.cat/sh)"
git clone https://github.com/JonathanSalwan/ROPgadget
cd ROPgadget
python setup.py install
sudo pip3 install one_gadget
echo "\033[32m [*] Pwn software install finished! \033[0m"
echo ""

echo "\033[31m [*] Install Docker... \033[0m"
sudo apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER
sudo apt-get -y install docker-compose
sudo systemctl status docker
echo "\033[32m [*] Docker install finished! \033[0m"
