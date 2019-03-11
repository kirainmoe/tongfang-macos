# 神舟战神 Z7(m)-KP7(5)GZ macOS

[English](README-en.md) | [提问](https://github.com/kirainmoe/hasee-z7-kp7gz-macos/issues/new) | [已知或解决的问题](https://github.com/kirainmoe/hasee-z7-kp7gz-macos/issues?q=is%3Aissue+is%3Aclosed)

用于在神舟战神 Z7-KP7GZ 系列机型安装最新版 macOS Mojave （黑苹果）的 Clover 配置文件。

仅在 Z7-KP7GZ 上测试，安装的 macOS 版本为 10.14.2~10.14.3；**现全部使用 Clover Hotpatch 驱动**，完成度大概有 98%.

理论上也适用于 Z7m-KP7GZ / Z7m-KP5GZ.

# Table of Content

- [开始之前的指南](#tutorial)  
- [截图](#screenshot)
- [成功机型](#successfully-installed)
- [配置信息](#info)
- [硬件驱动情况](#whats-working)
- [注意事项](#faq)
- [更新日志](#update-log)
- [详细截图](#detail-screenshot)
- [提问和贡献](#contribute)

# Tutorial

**建议在本替换 EFI 前，提前备份好您能够正常启动的 EFI，以便在遇到问题时回滚。此外，建议您将 /EFI/CLOVER/Kexts/Others 下的 Kext 安装到 /Library/Extensions 中**。  
**在替换 EFI 前请先阅读[注意事项](#FAQ)，以了解一些常见问题的解决方案；如果 Hotpatch 版本（当前分支版本）在您的设备上不工作，请[点击这里](https://github.com/kirainmoe/hasee-z7-kp7gz-macos/releases/tag/DSDT)下载 DSDT 补丁版的 EFI**。  

如果你不知道如何在一台 Windows 设备上全新安装 macOS Mojave，请参考[该教程](http://blog.daliansky.net/Lenovo-Xiaoxin-Air-13-macOS-Mojave-installation-tutorial.html)。  
如果你已经在 Z7(m)-KP7(5)GZ 上安装好 macOS Mojave 但仍有部分设备无法驱动，请参考[神舟战神 Z7-KP7GZ 黑苹果 macOS Mojave 安装指北](https://kirainmoe.com/blog/post/guide-on-hasee-z7-kp7gz-hackintosh-macos-mojave/).

# Screenshot

![screenshot](https://wx1.sinaimg.cn/large/9f1137b1gy1g0fim4a7ezj21770oan6a.jpg)

（已隐去序列号）

# Successfully Installed

以下列举出本 EFI 适用的机型，和成功使用本 EFI 安装的其它机型。

| Model | Description |
|-------|-------------|
| Z7-KP7GZ | 8750H + GTX1060, 本仓库维护者的设备 |
| Z7m-KP7GZ | 8750H + GTX1050Ti, 反正独显都不能驱动 |
| Z7m-KP5GZ | 8300H + GTX1050Ti |
| Z7-KP7Z | 与 GZ 区别在于使用纯 SSD |
| Z7m-KP7Z | 同上，该机型有成功案例，部分可能遇到的问题和成功案例请见 [issues #6](https://github.com/kirainmoe/hasee-z7-kp7gz-macos/issues/6) |
| Z7m-KP5Z | 同上 |
| Z7-KP7EC | 根据远景论坛回复反馈，EC与GZ都为同方模具，文件可能通用，具体完整度未知 |

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
- 亮度调节（可在设置中调节，小太阳快捷键需要外接 USB 键盘才能设置）
- I2C HID 触控板（需要正确驱动电池后才可以设置手势）
- 有线网卡
- 声音（ALC269vc, 使用 AppleALC 仿冒，注入 layout-id 为 88，外放、耳机、麦克风全部正常）
- 电池状态（现已使用 Clover Hotpatch 驱动）
- USB （已破除端口限制）
- 睡眠（使用 Clover Hotpatch 修复）
- etc.

# What's partial working

- 蓝牙（需要热启动 macOS （即先进入 Winodws 后重启进入 macOS，或者在 macOS 下使用虚拟机模拟热启动过程）才可用，且不支持 AirDrop.

# What's not working

- 独立显卡（GTX1060， 目前没有适用于 Mojave 的 Nvidia WebDriver）
- 无线网卡（Intel AC9462 无解，使用蓝牙共享网络、USB共享网络或者USB网卡替代）
- HDMI（该模具 HDMI 直接由独显输出, 独显无法驱动，所以 HDMI 也无法使用）

注：根据远景论坛爬帖的情况和该模具的推测，Nvidia 显卡可以在 10.13.6 下被驱动。如果你有使用 DGPU/Cuda 或外接 HDMI 显示器的需要，请安装 macOS High Sierra 10.13.6，部分 EFI 配置可以参照本仓库。

除非 Nvidia 官方更新 10.14 的 WebDriver，否则独显、HDMI 不可用的问题将无法解决，请避免再提类似的 issues.

# FAQ

Q: Hotpatch 在我的设备上无法工作（电池未驱动/睡眠秒醒），可以回滚到 DSDT 版本吗？  
A: 你可以[在这里](https://github.com/kirainmoe/hasee-z7-kp7gz-macos/releases/tag/DSDT)下载到原先的 DSDT 版本。  

Q: post-install 优化脚本是什么？为什么需要执行它？  
A: 指本仓库下的 optimize.sh, 用途是设置休眠参数、模拟 NVRAM、开启 HiDPI 等。如果您想手动执行这些操作，则不需要执行该脚本。否则我们建议其他普通用户在替换完 EFI 后执行一次该脚本。执行方式如下：
```shell
chmod +x ./optimize.sh
sudo ./optimize.sh
```

Q: 怎样驱动电池？  
A: 对于使用较新版本 commmit 的 EFI 的用户，电池已使用 Clover Hotpatch + SSDT 驱动。理论上，不需要任何操作，替换完 EFI 之后电池就能正常显示。  
对于使用 DSDT 补丁版本的 EFI 用户，系统安装完成后，使用 Clover 按 F4 提取 DSDT，进入系统下载并打开 MaciASL，打开你提取的 DSDT（位于 /EFI/CLOVER/ACPI/origin 中），点击上方的 Patch，找到本仓库内的 dsdt-patch.txt，将里面的内容粘贴到 Patch 中，然后点击 Apply 应用即可，保存新的 DSDT 到 patched 目录中。记得配合 ACPIBatteryManager.kext 使用哦。  

Q: 怎样完美睡眠？  
A: 对于使用 Hotpatch 版 EFI 的用户，只需要运行本仓库下的 post-install 优化脚本调整睡眠参数即可。对于使用 DSDT 补丁版本 EFI 的用户，上面的补丁已包含 USB _PRW 补丁。确保正确加载 USBInjectAll.kext，并给 DSDT 打好补丁，执行上面的优化脚本后即可正常睡眠。如果遇到睡死、无法进入睡眠等问题，请确保你使用的是本仓库提供的 config.plist.    

Q: 怎样保存亮度？  
A: 模拟 NVRAM，运行上面的优化脚本即可。  

Q: 为什么触摸板不工作？  
A: 出现此情况的原因可能是您对 DSDT 应用了 VoodooI2C 源的 DSDT 补丁，而这一步是不需要的。请从 Clover 全新提取一份 DSDT 打补丁。如果仍然无法驱动触摸板，请检查 VoodooI2C.kext, VoodooI2CService.kext, VoodooGPIO.kext, VoodooI2CHID.kext 是否正确加载。此外，触摸板完美驱动，要求电池也完美驱动。

Q: 为什么声卡不工作？  
A: 请确认 AppleALC.kext 驱动已正确加载。如果没有正确加载，请将其安装在 /Library/Extensions 下后重建缓存并重启。  

Q: 为什么应用 DSDT 补丁后，DSDT 编译出错？  
A: 使用 Hotpatch 版 EFI 的用户不需要应用任何 DSDT 补丁；DSDT 补丁是在我的电脑上测试的，我可以保证在我的电脑上是正常的，在大部分的电脑上也是，该现象发生的几率应该是很小的，但仍然无法保证因您更换过硬件、BIOS 设置不同等原因导致 DSDT 的变更。这种情况下需要您对 DSDT 有一些了解并手动排错。通常情况下，一般是部分补丁没有成功应用，或者 DSDT 语法错误（通常是多或少了一个花括号），可以尝试重新应用补丁或自己补上括号。实在无法自己解决的，请提 issues 并附上你的 DSDT 文件。    



# Update log

19-1-23：更新最新版 Lilu.kext 和 WhateverGreen.kext；删除 VoodooHDA.kext 万能声卡驱动；添加 AppleALC.kext 仿冒驱动，注入 layout-id 为 88.

19-1-28：删除无用 Kexts；使用 USBPorts.kext 替代 USBInjectAll.kext；修复睡眠。至此除了无法解决的问题之外，这台机器的黑苹果已经接近完美了。

~19-2-3: 去除 Clover 引导时添加的 `igfxcflbklt` 参数，去除勾选 Add PNLF；加入 SSDT-PNLF-CFL.aml 解决 Coffeelake UHD630 开机黑屏问题。~ 

19-2-5 已发现上次更新的配置文件可能会导致休眠失败，已将 config.plist 回滚。添加 FakeSMC 及传感器相关驱动。

19-2-16 解决 SSDT-PNLF-CFL.aml 注入问题，解决 Coffeelake UHD630 黑屏问题。

19-2-21 更新说明文件，确认 EFI 支持最新的版本 10.14.3。加入 SSDT-Disable-DGPU.aml，删除 drivers-off 文件夹。

19-3-2 USBPorts.kext 可能引起兼容性问题，已使用 USBInjectAll.kext + SSDT-UIAC.aml 驱动 USB；更新部分 Kexts.

19-3-7 使用 hotpatch + SSDT 驱动电池和修复睡眠。  

19-3-8 新增 optimize.sh post-install 优化脚本。

19-3-11 添加遗失的 IntelMausiEthernet.kext, 修复有线网卡。

# Detail screenshot

USB  
![usb](https://ws2.sinaimg.cn/large/9f1137b1gy1g0fimkywrfj20gv0bp3zn.jpg)

网络  
![network](https://wx3.sinaimg.cn/large/9f1137b1gy1g0finlomxaj20gv0bpaap.jpg)

核显  
![uhd630](https://ws1.sinaimg.cn/large/9f1137b1gy1g0fipr3magj20gv0bpjs9.jpg)

电池（已隐去序列号）  
![battery](https://wx3.sinaimg.cn/large/9f1137b1gy1g0fiq7gu9ej20gv0bpwfl.jpg)

蓝牙（已隐去 MAC 地址）  
![bluetooth](https://ws4.sinaimg.cn/large/9f1137b1gy1g0fiqm7c70j20gv0bpdh4.jpg)

声音  
![sound](https://wx2.sinaimg.cn/large/9f1137b1gy1g0fir5cqzmj20gv0bp751.jpg)  
![sound-2](https://ws3.sinaimg.cn/large/9f1137b1gy1g0firigeyhj20f00b7t95.jpg)  

亮度、HiDPI  
![hidpi](https://wx3.sinaimg.cn/large/9f1137b1gy1g0firynbysj21770oa477.jpg)  
![brightness-key](https://ws2.sinaimg.cn/large/9f1137b1gy1g0fisj7r1kj206j0660sx.jpg)  

睿频、电源管理  
![hwmonitor](https://wx3.sinaimg.cn/large/9f1137b1gy1g0fisxsg8jj206m0c3wf8.jpg)  
![lpc](https://wx2.sinaimg.cn/large/9f1137b1gy1g0fitafzljj20f00a1gm4.jpg)  

触摸板手势  
![gesture](https://wx4.sinaimg.cn/large/9f1137b1gy1g0fitjrcoqj20f00bk75e.jpg)  

终端截图  
![screenfetch](https://wx1.sinaimg.cn/large/9f1137b1gy1g0fitwobg3j20d5087my0.jpg)

# Contribute

关于提问：如果您在安装的过程中遇到问题，请在 GitHub 上提 issue，或将你的问题描述清楚发送邮件到 kirainmoe@gmail.com，或者到远景论坛给我留言。

由于我万年不上一次远景，所以你在远景的留言我不一定能及时看到, 因此推荐采用提 issue 或邮件的方式向我提问。

另外，为了节省您折腾的时间和我回复的精力，提问时请将问题的现象描述清楚，这样方便我定位问题发生的原因。注意，非 Z7-KP7GZ/Z7m-KP7GZ/Z7m-KP5GZ 的机型，使用本 EFI 出现的问题，由于我并没有对应的机型，因此大概率不会回答。

如果方便的话，推荐您按照 tonymacx86 论坛的 Problem Reporting File 格式上传问题描述文件、IORegistryExplorer 导出信息、Clover EFI 文件夹等，请参照：https://www.tonymacx86.com/threads/tool-generate-proper-problem-reporting-files.235953/

贡献和完善：欢迎大家一起完善该机型的 EFI. 如果你认为这份配置文件有可以改进的地方，请注册一个 Github 账号，fork 本仓库自行修改后提交 Pull Request.
