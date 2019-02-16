# 神舟战神 Z7(m)-KP7(5)GZ macOS

仅在 Z7-KP7GZ 上测试，安装的 macOS 版本为 10.14.2；完成度大概有 98%.

理论上也适用于 Z7m-KP7GZ / Z7m-KP5GZ.

# Screenshot

![screenshot](https://wx2.sinaimg.cn/large/9f1137b1gy1fzgszolhkqj21hc0u0ap2.jpg)

# Tutorial

如果你不知道如何在一台 Windows 设备上全新安装 macOS Mojave，请参考[该教程](http://blog.daliansky.net/Lenovo-Xiaoxin-Air-13-macOS-Mojave-installation-tutorial.html)。  
如果你已经在 Z7(m)-KP7(5)GZ 上安装好 macOS Mojave 但仍有部分设备无法驱动，请参考[神舟战神 Z7-KP7GZ 黑苹果 macOS Mojave 安装指北](https://kirainmoe.com/blog/post/guide-on-hasee-z7-kp7gz-hackintosh-macos-mojave/).

# Info

配置详情:

| Component | Model |
|--|--|
| CPU | Intel Core(TM) i7-8750H | 
| GPU | Intel UHD630 / Nvidia GTX1060
| RAM | 8GB |
| Wireless | Intel AC9462 |
| Ethernet | Realtek RTL8168H |
| Audio | Realtek ALC269vc |

# What's working

- 睿频、变频正常（使用 18 款 MacBook Pro SMBIOS，最高睿频 4.1GHz, 十几档变频。）
- Intel UHD630
- 亮度调节（可在设置中调节，小太阳快捷键需要外界 USB 键盘才能设置）
- I2C HID 触控板（需要正确驱动电池后才可以设置手势）
- 有线网卡
- 声音（ALC269vc, 使用 AppleALC 仿冒，注入 layout-id 为 88，外放、耳机、麦克风全部正常）
- 电池状态（非 Clover HotPatch，因为这台机器的电池 DSDT 与机械革命 X6Ti 的几乎完全一致，稍微修改 DSDT 补丁即可，请自行应用）
- USB （已破除端口限制）
- 睡眠（需要正确驱动 USB 并打 DSDT 补丁）
- etc.

# What's partial working

- 蓝牙（半完美，不是太稳定，可共享网络，能不能连上设备全看玄学）

# What's not working

- 独立显卡（GTX1060 搞不定，而且目前也没有适用于 Mojave 的 Nvidia WebDriver）
- 无线网卡（Intel AC9462 无解，使用蓝牙共享网络、USB共享网络或者USB网卡替代）

# Tips

关于电池：系统安装完成后，使用 Clover 按 F4 提取 DSDT，进入系统下载并打开 MaciASL，打开你提取的 DSDT（位于 /EFI/CLOVER/ACPI/origin 中），点击上方的 Patch，找到本仓库内的 dsdt-patch.txt，将里面的内容粘贴到 Patch 中，然后点击 Apply 应用即可，保存新的 DSDT 到 patched 目录中。记得配合 ACPIBatteryManager.kext 使用哦。

关于睡眠：上面的补丁已包含 USB _PRW 补丁。确保正确加载 USBPorts.kext (注意不要使用 USBInjectAll.kext)，并给 DSDT 打好补丁即可正常睡眠。

然后就没有然后了……什么？你问我为什么不用 Clover hotpatch？因为我不会还懒啊。

友情提示：不要随意更改 SMBIOS 的型号哦~ 不然的话 USB 可能就不工作了哦~ 如果有更改 SMBIOS 的需要，请自行使用 Hackintool 定制新的 USBPorts.kext 驱动。

# Update log

19-1-23：更新最新版 Lilu.kext 和 WhateverGreen.kext；删除 VoodooHDA.kext 万能声卡驱动；添加 AppleALC.kext 仿冒驱动，注入 layout-id 为 88.

19-1-28：删除无用 Kexts；使用 USBPorts.kext 替代 USBInjectAll.kext；修复睡眠。至此除了无法解决的问题之外，这台机器的黑苹果已经接近完美了。

~19-2-3: 去除 Clover 引导时添加的 `igfxcflbklt` 参数，去除勾选 Add PNLF；加入 SSDT-PNLF-CFL.aml 解决 Coffeelake UHD630 开机黑屏问题。~ 

19-2-5 已发现上次更新的配置文件可能会导致休眠失败，已将 config.plist 回滚。添加 FakeSMC 及传感器相关驱动。

19-2-16 解决 SSDT-PNLF-CFL.aml 注入问题，解决 Coffeelake UHD630 黑屏问题。

# Contribute

Feel free to contribute.