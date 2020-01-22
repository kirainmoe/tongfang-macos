#!/bin/sh
echo "---------------------------------------------------------"
echo "\033[32mHasee Tongfang Hackintosh Optimize Script\033[0m"
echo ""
echo "\033[34m@2019 Yume Maruyama <kirainmoe@gmail.com>, kirainmoe.com\033[0m"
echo ""
echo "https://github.com/kirainmoe/hasee-tongfang-macos"
echo ""
echo "\033[31mTips: Some operations need sudo privilege.\033[0m"
echo "---------------------------------------------------------"

if [ "$EUID" -ne 0 ]
  then echo "\033[31m[Error] 请使用超级用户模式运行本程序 (Please run as root): sudo ./optimize.sh\033[0m"
  exit
fi

echo "\033[34m正在优化睡眠参数 (Optimizing sleep & hibernation)...\033[0m"
echo "\033[36m>> 禁用休眠到硬盘 (disable hibernate to disk)...\033[0m"
sleep 0.5
rm -rf /var/vm/sleepimage
mkdir /var/vm/sleepimage

echo "\033[36m>> 设置休眠模式为 0 (setting hibernatemode)...\033[0m"
sleep 0.5
pmset -a hibernatemode 0

echo "\033[36m>> 设置待机模式 (setting standby mode)...\033[0m"
sleep 0.5
pmset -a standby 0

echo  "\033[36m>> 关闭 proximity wake (disable proximity wake)...\033[0m"
sleep 0.5
pmset -a proximitywake 0
echo ""

echo "\033[34m正在重建 Kext 缓存 (Triggering kext cache rebuilding)...\033[0m"
sleep 0.5
kextcache -i /
echo ""

DAEMON_PATH="/usr/local/bin/TongfangFnDaemon"
INSTALLER_PATH="./Tongfang-Fn-Daemon/install_daemon.sh"

if [ ! -f "$DAEMON_PATH" ]; then
    echo "\033[34m正在安装同方 Fn 快捷键守护程序 (Installing Tongfang Fn Daemon)...\033[0m"
    if [ ! -f "$INSTALLER_PATH" ]; then
        mkdir /tmp/fn-daemon
        cd /tmp/fn-daemon
        curl -fsSL https://gitee.com/kirainmoe/static-files/raw/master/com.tongfang.TongfangFnDaemon.plist -O
        curl -fsSL https://gitee.com/kirainmoe/static-files/raw/master/TongfangFnDaemon -O
        curl -fsSL https://gitee.com/kirainmoe/static-files/raw/master/install_daemon.sh -O
        chmod +x ./install_daemon.sh
        chmod +x ./TongfangFnDaemon
        ./install_daemon.sh
        rm -rf /tmp/fn-daemon
    else 
        $INSTALLER_PATH
    fi
else
    echo "\033[32m检测到已安装同方 Fn 快捷键守护程序，跳过安装 (Daemon detected, skipping installation).\033[0m"
fi

echo ""

while true; do
    read -p "你想启用 HiDPI 吗 (Do you want to enable HiDPI)? (y/n)?: " yn
    case $yn in
        [Yy]* ) bash -c "$(curl -fsSL https://gitee.com/kirainmoe/static-files/raw/master/hidpi.sh)"; break;;
        [Nn]* ) break;;
        * ) echo "Please answer y or n.";;
    esac
done
echo ""

echo "\033[32mAll Done! Having fun of your Hackintosh!\033[0m"
