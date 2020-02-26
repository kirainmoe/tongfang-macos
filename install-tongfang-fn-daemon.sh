if [ "$EUID" -ne 0 ]
  then echo "Please run this script as superuser!"
  exit
fi

DAEMON_PATH="/usr/local/bin/TongfangFnDaemon"
INSTALLER_PATH="./Tongfang-Fn-Daemon/install_daemon.sh"

if [ ! -f "$DAEMON_PATH" ]; then
    echo "Installing Tongfang Fn Daemon)..."
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
    echo "Daemon detected, skipping installation."
fi

echo ""
