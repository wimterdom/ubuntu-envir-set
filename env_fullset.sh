#!/bin/bash 
#
cd $HOME

sudo apt-get -y update
sudo apt-get -y upgrade

echo -e "33[1;4;32m[*] Install 嘸蝦米(IBUS)...33[0m"
#sudo apt-get install fcitx fcitx-m17n -y
#sudo apt-get install fcitx-table-boshiamy -y
git clone https://github.com/wimterdom/boshiamy_siang
cd boshiamy_siang
sudo make 
sudo make install
sudo apt-get -y install ibus-chewing 
#sudo reboot
cd $HOME
echo -e "33[1;4;32m[*] Install finished!33[0m"
#echo ""

echo -e "33[1;4;32m[*] Install net-tools...33[0m"
sudo apt-get -y install net-tools
echo -e "33[1;4;32m[*] Install finished!33[0m"
echo ""

echo -e "33[1;4;32m[*] Install curl...33[0m"
sudo apt install -y curl
echo -e "33[1;4;32m[*] Install finished!33[0m"
echo ""

echo -e "33[1;4;32m[*] Install nodejs & npm...33[0m"
sudo apt install -y nodejs
sudo apt install -y npm
echo -e "33[1;4;32m[*] Install finished!33[0m"
echo ""

echo -e "33[1;4;32m[*] Install ruby...33[0m"
sudo apt-get -y install ruby
sudo apt-get -y install gcc ruby-dev
echo -e "33[1;4;32m[*] Install finished...33[0m"
echo ""

echo -e "33[1;4;32m[*] Install Htop...33[0m"
sudo apt-get -y install htop
echo -e "33[1;4;32m[*] Install finished!33[0m"
echo ""

echo -e "33[1;4;32m[*] Install NCDU33[0m"
sudo apt-get -y install ncdu
echo -e "33[1;4;32m[*] Install finished!33[0m"
echo ""

echo -e "33[1;4;32m[*] Install tree33[0m"
sudo apt-get -y install tree
echo -e "33[1;4;32m[*] Install finished!33[0m"
echo ""

echo -e "33[1;4;32m[*] Install nautilus33[0m"
sudo apt-get -y install nautilus
echo -e "33[1;4;32m[*] Install finished!"
echo ""

echo -e "33[1;4;32m[*] Install gedit...33[0m"
sudo apt-get -y install gedit
echo -e "33[1;4;32m[*] Install finished!33[0m"
echo ""

echo -e "33[1;4;32m[*] Install sublime-text33[0m"
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt -y install sublime-text
echo -e "33[1;4;32m[*]Install finished!33[0m"


echo -e "33[1;4;32m[*] Install python333[0m"
sudo apt-get -y install python3
echo -e "33[1;4;32m[*] Install finished!33[0m"
echo ""

echo -e "33[1;4;32m[*] Install python3-dev...33[0m"
sudo apt-get -y install python3-dev
echo -e "33[1;4;32m[*] Install finished!33[0m"
echo ""

echo -e "33[1;4;32m[*] Install python3-pip...33[0m"
sudo apt-get -y install python3-pip
echo -e "33[1;4;32m[*] Install finished!33[0m"
echo ""

echo -e "33[1;4;32m[*]Install python...33[0m"
sudo apt-get -y install python
echo -e "33[1;4;32m[*]Install finished!33[0m"
echo ""

echo -e "33[1;4;32m[*] Install Powerline...33[0m"
sudo apt-get -y install powerline
echo -e "33[1;4;32m[*] Install finished!33[0m"

echo -e "33[1;4;32m[*] Install Vim...33[0m"
sudo apt-get -y install vim
echo -e "33[1;4;32m[*] Install finished!33[0m"
echo ""

echo -e "33[1;4;32m[*] Install tmux...33[0m"
sudo apt-get -y install tmux
echo -e "33[1;4;32m[*] Install finished!33[0m"
echo ""

echo -e "33[1;4;32m[*] Install virtualenv...33[0m"
sudo apt-get -y install python3-virtualenv
echo -e "33[1;4;32m[*] Install finished!33[0m"
echo ""

echo -e "33[1;4;32m[*] Install terminator...33[0m"
sudo apt-get -y install terminator
echo -e "33[1;4;32m[*] Install finished!33[0m"
echo ""

echo -e "33[1;4;32m[*] Install bat33[0m"
sudo apt-get -y install bat
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat
echo -e "33[1;4;32m[*] Install finished!33[0m"
echo ""

echo -e "33[1;4;32m[*] Install lsd33[0m"
mkdir software
cd software/
wget https://github.com/Peltoche/lsd/releases/download/0.22.0/lsd_0.22.0_amd64.deb
sudo dpkg -i lsd_0.22.0_amd64.deb
cd $HOME
echo -e "33[1;4;32m[*] Install finished!33[0m"
echo ""

echo -e "33[1;4;32m[*] Install snap...33[0m"
sudo apt-get -y install snap
echo -e "33[1;4;32m[*] Install finished!33[0m"
echo ""

echo -e "33[1;4;32m[*] Install gotop...33[0m"
snap install gotop-cjbassi
echo -e "33[1;4;32m[*] Install finished!33[0m"
echo ""

echo -e "33[1;4;32m[*] Install Reverse software33[0m"
echo -e "33[1;4;32m[*] Install Radare2...33[0m"
git clone https://github.com/radareorg/radare2
cd radare2/sys/
./install.sh
ehco -e "33[1;4;32m[*] Install finished!33[0m"
echo ""

echo -e "33[1;4;32m[*] Install pwn software...33[0m"
sudo gem install seccomp-tools
sudo apt-get -y install libseccomp-dev
sudo apt-get -y install binutils nasm
sudo apt-get -y install gcc-multilib g++-multilib
sudo apt-get -y install libc6-dev-i386
sudo apt-get -y install libc6-dbg libc6-dbg:i386
sudo apt-get -y install nmap
sudo apt-get -y install python-pip libssl-dev
sudo apt-get -y install gdb
sudo pip3 install pwntools
sudo pip install --upgrade pip
sudo pip install --upgrade capstone
sudo pip install --upgrade pwntools
sudo pip install ropgadget
git clone https://github.com/scwuaptx/peda.git ~/peda 
cp ~/peda/.inpurc ~/
git clone https://github.com/scwuaptx/Pwngdb.git
cp ~/Pwngdb/.gdbinit ~/
git clone https://github.com/JonathanSalwan/ROPgadget
cd ROPgadget
python setup.py install
sudo pip3 install one_gadget
echo -e "33[1;4;32m[*] Install finished33[0m!"
echo ""

echo -e "33[1;4;32m[*] Install Docker...33[0m"
sudo apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER
sudo apt-get -y install docker-compose
sudo systemctl status docker
echo -e "33[1;4;32m[*] Install finished!33[0m"
