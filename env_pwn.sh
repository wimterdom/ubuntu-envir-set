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
