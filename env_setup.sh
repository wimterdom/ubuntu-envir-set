#!/bin/bash 
#
cd $HOME

sudo apt-get -y update
sudo apt-get -y upgrade

echo "Install 嘸蝦米..."
sudo apt-get install fcitx fcitx-m17n -y
sudo apt-get install fcitx-table-boshiamy -y
echo "Install finished!"
echo ""

echo "Install git..."
sudo apt install -y git-all
echo "Install finished!"
echo ""

echo "Install net-tools..."
sudo apt-get -y install net-tools
echo "Install finished!"
echo ""

echo "Install curl..."
sudo apt install -y curl
echo "Install finished!"
echo ""

echo "Install ruby..."
sudo apt-get -y install ruby
sudo apt-get -y install gcc ruby-dev
echo "Install finished..."
echo ""

echo "Install Htop..."
sudo apt-get -y install htop
echo "Install finished!"
echo ""

echo "Install NCDU"
sudo apt-get -y instll ncdu
echo "Install finished!"
echo ""

echo "Install tree"
sudo apt-get -y install tree
echo "Install finished!"
echo ""

echo "Install gedit..."
sudo apt-get -y install gedit
echo "Install finished!"
echo ""

echo "Install sublime-text"
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt -y install sublime-text
echo "Install finished!"


echo "Install python3、python3-dev&pip..."
sudo apt-get -y install python3
sudo apt-get -y install python3-dev
sudo apt-get -y install python3-pip
echo "Install finished!"
echo ""

echo "Install python..."
sudo apt-get -y install python
echo "Install finished!"
echo ""

echo "Install Powerline..."
sudo apt-get -y install powerline
echo "Install finished!"

echo "Install Vim..."
sudo apt-get -y install vim
echo "Install finished!"
echo ""

echo "Install tmux..."
sudo apt-get -y install tmux
echo "Install finished!"
echo ""

echo "Install virtualenv..."
sudo apt-get -y install python3-virtualenv
echo "Install finished!"
echo ""

echo "Install Reverse software"
echo "Install Radare2..."
git clone https://github.com/radareorg/radare2
cd radare2/sys/
./install.sh
ehco "Install finished!"
echo ""

echo "Install pwn software..."
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
echo "Install finished!"
echo ""

echo "Install Docker..."
sudo apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER
sudo apt-get -y install docker-compose
sudo systemctl status docker
echo "Install finished!"
