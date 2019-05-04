#!/bin/sh
echo "---------------------------------------------------------"
echo "\033[32mHasee Z7(m)-KP7(5)GZ Hackintosh Mojave Optimize Script\033[0m"
echo ""
echo "\033[34m@2019 Yume Maruyama <kirainmoe@gmail.com>, kirainmoe.com\033[0m"
echo ""
echo "https://github.com/kirainmoe/hasee-z7-kp7gz-macos"
echo ""
echo "\033[31mTips: Some operations need sudo privilege.\033[0m"
echo "---------------------------------------------------------"

if [ "$EUID" -ne 0 ]
  then echo "\033[31m[Error] Please run as root: sudo ./optimize.sh\033[0m"
  exit
fi

echo "\033[34mOptimizing sleep & hibernation...\033[0m"
echo "\033[36m>> disable hibernate to disk...\033[0m"
rm -rf /var/vm/sleepimage
mkdir /var/vm/sleepimage
echo "\033[36m>> setting hibernatemode...\033[0m"
pmset -a hibernatemode 0
echo "\033[36m>> setting standby mode...\033[0m"
pmset -a standby 0
echo  "\033[36m>> disable proximity wake...\033[0m"
pmset -a proximitywake 1
echo ""

echo "\033[34mCreating NVRAM emulation...\033[0m"
echo "\033[36m>> writing /etc/save.nvram...\033[0m"
rm -rf /etc/save.nvram
echo "#!/bin/bash\nnvram -x -p > \"/nvram.plist\"\nif [[ -f \"/nvram.plist\" ]]; then\n    chflags hidden \"/nvram.plist\"\nfi" >> /etc/save.nvram
chmod +x /etc/save.nvram
echo "\033[36m>> setting boot hook for save.nvram...\033[0m"
defaults write com.apple.loginwindow LogoutHook /etc/save.nvram

echo ""

while true; do
    read -p "Do you want to enable HiDPI? (y/n)?: " yn
    case $yn in
        [Yy]* ) sh -c "$(curl -fsSL https://raw.githubusercontent.com/xzhih/one-key-hidpi/master/hidpi.sh)"; break;;
        [Nn]* ) break;;
        * ) echo "Please answer y or n.";;
    esac
done

echo "\033[32mAll Done! Having fun of your Hackintosh!\033[0m"
