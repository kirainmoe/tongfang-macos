# 常见问题

## Q: 安装 macOS 10.15.4 及更高版本的系统后，关机或休眠后主板时间不走了？

A: 此问题**不是 EFI 或 OpenCore**的问题，是由于 Mac 管理主板硬件时钟 (RTC) 的机制与普通 x64 设备不同。

此问题的现象一般为：

- 休眠唤醒后，Windows 和 macOS 的时间仍然保持休眠时的时间
- 进入 BIOS 时，时间停止不会跳动

解决方案：

- 准备好一个 8G 以上的 U 盘
- 前往 http://mirrors.ustc.edu.cn/ ，点击右边的 “获取安装镜像”，下载 "Ubuntu 18.04" 的 LiveCD 镜像 
- 你也可以从其他任意地方，下载任意的 Ubuntu Linux 桌面版本
- 使用 BalenaEtcher 或其它软件，将下载的 ISO 文件刻录到 U 盘上
- 重启电脑，插入 U 盘，按 F7 或 F10 从 U 盘启动 Ubuntu 的 LiveCD 环境
- 引导完毕后，点击 “试用 Ubuntu” 或 “Try Ubuntu”
- 进入 Ubuntu LiveCD 的桌面环境之后，重新启动电脑
- 问题解决，并且日后一般不再复现
