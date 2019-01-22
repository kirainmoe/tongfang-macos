# 神舟战神 Z7(m)-KP7(5)GZ macOS

仅在 Z7-KP7GZ 上测试，安装的 macOS 版本为 10.14.2；完成度大概有 95%.

理论上也适用于 Z7m-KP7GZ / Z7-KP5GZ / Z7m-KP5GZ.

# 配置详情

| | |
|--|--|
| CPU | Intel Core(TM) i7-8750H | 
| GPU | Intel UHD630 / Nvidia GTX1060
| RAM | 8GB |
| Wireless | Intel AC9560 |
| Ethernet | Realtek RTL8168H |
| Audio | Realtek ALC269vc |

# What's working

- Intel UHD630（有概率开机黑屏三分钟，CoffeeLake 通病）
- 亮度调节（可在设置中调节，小太阳快捷键需要外界 USB 键盘才能设置）
- I2C HID 触控板（需要正确驱动电池后才可以设置手势）
- 有线网卡
- 声音（试了好几个 ALC269vc 的仿冒声卡驱动都以失败告终，只能先用 VoodooHDA 万能驱动，耳机、外放、麦克风都可用）
- 电池状态（非 Clover HotPatch，因为这台机器的电池 DSDT 与机械革命 X6Ti 的几乎完全一致，稍微修改 DSDT 补丁即可，请自行应用）
- USB （已破除端口限制）
- 蓝牙（半完美，不是太稳定，可共享网络）
- etc.

# What's not working

- 无线网卡（Intel AC9560 无解，使用蓝牙共享网络、USB共享网络或者USB网卡替代）
- 睡眠（唤醒后屏幕分辨率不对，暂时不完美）

# 关于电池

系统安装完成后，使用 Clover 按 F4 提取 DSDT，进入系统下载并打开 MaciASL，打开你提取的 DSDT（位于 /EFI/CLOVER/ACPI/origin 中），点击上方的 Patch，找到本仓库内的 battery-patch.txt，将里面的内容粘贴到 Patch 中，然后点击 Apply 应用即可，保存新的 DSDT 到 patched 目录中。记得配合 ACPIBatteryManager.kext 使用哦。

什么？你问我为什么不用 Clover hotpatch？因为我不会还懒啊。

# Contribute

Feel free to contribute.