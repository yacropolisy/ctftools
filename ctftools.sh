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
git clone https://github.com/radare/radare2 ~/radare2
sudo ~/radare2/sys/install.sh
# install gdb-peda
sudo apt-get install -y build-essential gcc-multilib gdb
git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
# install rp++
echo "export PATH=\$HOME/bin:\$PATH" >> ~/.bash_profile
mkdir $HOME/bin
wget https://github.com/downloads/0vercl0k/rp/rp-lin-x64 -O $HOME/bin/rp
# install checksec.sh
wget https://github.com/slimm609/checksec.sh/archive/1.6.tar.gz 
tar zxvf 1.6.tar.gz -C $HOME  && rm 1.6.tar.gz
mv checksec.sh-1.6/checksec $HOME/bin/checksec
# install socat
sudo apt-get install socat
# install pyenv
sudo apt-get -y install build-essential libncursesw5-dev libgdbm-dev libc6-dev zlib1g-dev libsqlite3-dev tk-dev libssl-dev openssl libbz2-dev libreadline-dev
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
