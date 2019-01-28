# 神舟战神 Z7(m)-KP7(5)GZ macOS

仅在 Z7-KP7GZ 上测试，安装的 macOS 版本为 10.14.2；完成度大概有 98%.

理论上也适用于 Z7m-KP7GZ / Z7-KP5GZ / Z7m-KP5GZ.

# Info

配置详情:

| | |
|--|--|
| CPU | Intel Core(TM) i7-8750H | 
| GPU | Intel UHD630 / Nvidia GTX1060
| RAM | 8GB |
| Wireless | Intel AC9560 |
| Ethernet | Realtek RTL8168H |
| Audio | Realtek ALC269vc |

# What's working

- 睿频、变频正常（使用 18 款 MacBook Pro SMBIOS，1.3GHz-4.1GHz 16 档变频）
- Intel UHD630
- 亮度调节（可在设置中调节，小太阳快捷键需要外界 USB 键盘才能设置）
- I2C HID 触控板（需要正确驱动电池后才可以设置手势）
- 有线网卡
- 声音（ALC269vc, 使用 AppleALC 仿冒，注入 layout-id 为 88，外放、耳机、麦克风全部正常）
- 电池状态（非 Clover HotPatch，因为这台机器的电池 DSDT 与机械革命 X6Ti 的几乎完全一致，稍微修改 DSDT 补丁即可，请自行应用）
- USB （已破除端口限制）
- 蓝牙（半完美，不是太稳定，可共享网络）
- 睡眠（需要正确驱动 USB 并打 DSDT 补丁）
- etc.

# What's not working

- 独立显卡（GTX1060 搞不定，而且目前也没有适用于 Mojave 的 Nvidia WebDriver）
- 无线网卡（Intel AC9560 无解，使用蓝牙共享网络、USB共享网络或者USB网卡替代）

# How to fix the battery status

关于电池：系统安装完成后，使用 Clover 按 F4 提取 DSDT，进入系统下载并打开 MaciASL，打开你提取的 DSDT（位于 /EFI/CLOVER/ACPI/origin 中），点击上方的 Patch，找到本仓库内的 dsdt-patch.txt，将里面的内容粘贴到 Patch 中，然后点击 Apply 应用即可，保存新的 DSDT 到 patched 目录中。记得配合 ACPIBatteryManager.kext 使用哦。

关于睡眠：上面的补丁已包含 USB _PRW 补丁。确保正确加载 USBPorts.kext (注意不要使用 USBInjectAll.kext)，并给 DSDT 打好补丁即可正常睡眠。

然后就没有然后了……什么？你问我为什么不用 Clover hotpatch？因为我不会还懒啊。

# Update log

19-1-23：更新最新版 Lilu.kext 和 WhateverGreen.kext；删除 VoodooHDA.kext 万能声卡驱动；添加 AppleALC.kext 仿冒驱动，注入 layout-id 为 88.
19-1-28：删除无用 Kexts；使用 USBPorts.kext 替代 USBInjectAll.kext；修复睡眠。至此除了无法解决的问题之外，这台机器的黑苹果已经接近完美了。

# Contribute

Feel free to contribute.