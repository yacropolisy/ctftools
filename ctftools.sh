#!/bin/sh

# apt-get update
sudo apt-get update
sudo apt-get -y upgrade
# install unzip, git
sudo apt-get install -y unzip git
# install tracer
sudo apt-get install strace
sudo apt-get install ltrace
# install ghex
sudo apt-get -y install ghex
# install radare2
git clone https://github.com/radare/radare2 ~/ && sudo ~/radare2/sys/install.sh
# install gdb-peda
sudo apt-get install -y build-essential gcc-multilib gdb
git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
# install rp++
export PATH=$HOME/bin:$PATH
mkdir $HOME/bin
wget https://github.com/downloads/0vercl0k/rp/rp-lin-x64 -O $HOME/bin/rp
# install checksec.sh
wget https://github.com/slimm609/checksec.sh/archive/1.6.tar.gz 
tar zxvf 1.6.tar.gz -C $HOME  && rm 1.6.tar.gz
mv checksec.sh-1.6/checksec $HOME/bin/checksec
