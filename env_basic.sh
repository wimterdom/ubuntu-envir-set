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

echo "Install terminator..."
sudo apt-get -y install terminator
echo "Install finished!"
echo ""
