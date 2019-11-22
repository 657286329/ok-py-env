#! /usr/bin/bash
# 1.修改ubuntu和pip为清华源
#!/bin/bash
wget https://tuna.moe/oh-my-tuna/oh-my-tuna.py
sudo apt-get install python3
sudo python3 oh-my-tuna.py --global
sudo rm /var/lib/apt/lists/lock
sudo apt-get -y update
sudo apt-get -y upgrade
sleep 3s
sudo rm /var/lib/apt/lists/lock

# 2.安装谷歌浏览器
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sleep 3s
sudo rm /var/lib/apt/lists/lock

# 3.安装jetbrains-toolbox工具箱
wget https://download.jetbrains.8686c.com/toolbox/jetbrains-toolbox-1.16.6067.tar.gz
tar -xvf *.tar.gz
./jetbrains-toolbox-*/jetbrains-toolbox
sudo apt-get -y update
sleep 3s
sudo rm /var/lib/apt/lists/lock

# 4.安装python2,ipython2/3,pip2/3,virtualenv虚拟环境,vim git ssh mongodb数据库 mysql数据库 
sudo apt-get -y install ipython3 python3-pip virtualenv virtualenvwrapper
sleep 3s
sudo apt-get -y install vim nginx curl nodejs npm git ssh
sleep 3s
sudo apt-get -y docker.io phantomjs redis mongodb mysql-server mysql-client libmysqlclient-dev
sleep 3s
sudo pip install --upgrade pip
sudo pip3 install --upgrade pip
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
sleep 1s
sudo rm /var/lib/apt/lists/lock

# 5.清理文件并重启系统生效
sudo apt-get -y update
sudo apt-get -y upgrade
rm -rf master.zip ok-py-env-master oh-my-tuna.py google-chrome-stable_current_amd64.deb .bash_history jetbrains-toolbox-*
sleep 3s
sudo reboot
