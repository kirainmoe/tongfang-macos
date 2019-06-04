<p align="center">

<img src="https://ws2.sinaimg.cn/large/9f1137b1gy1g1hg3epia2j20n505jt9q.jpg" width="300px" alt="logo">

<h1 align="center">神舟战神 8th/9th 同方机型 macOS</h1>

<p align="center">支持 [Z7(m)-KP7/5(G)Z](https://github.com/kirainmoe/hasee-tongfang-macos/tree/master), [Z7(m)-KP7/5GC](https://github.com/kirainmoe/hasee-tongfang-macos/tree/kp7gc), [Z7(m)-KP7/5EC](https://github.com/kirainmoe/hasee-tongfang-macos/tree/kp7ec), [Z7-CT7GK/G7-CT7VK](https://github.com/kirainmoe/hasee-tongfang-macos/tree/ct7gk)，请根据不同的机型选择分支。</p>

<p align="center">
<a href="https://github.com/kirainmoe/hasee-z7-kp7gz-macos/blob/master/README-en.md">English</a> | <a href="#tutorial">使用须知</a> | <a href="https://github.com/kirainmoe/hasee-z7-kp7gz-macos/wiki/EFI-%E6%9B%BF%E6%8D%A2%E6%95%99%E7%A8%8B">EFI 替换教程</a> | <a href="#question">提问</a> | <a href="https://github.com/kirainmoe/hasee-z7-kp7gz-macos/issues?q=is%3Aissue+is%3Aclosed">已知问题</a> | <a href="https://github.com/kirainmoe/hasee-z7-kp7gz-macos/wiki/%E9%97%AE%E9%A2%98%E6%8E%92%E6%9F%A5%E6%8C%87%E5%AF%BC-(Troubleshooting)">问题排查指导</a> | <a href="#group">企鹅互助交流群</a>
</p>

<p align="center">
<img src="https://img.shields.io/badge/build-passing-brightgreen.svg"/> <img src="https://img.shields.io/badge/coverage-98%25-brightgreen.svg"/> <img src="https://img.shields.io/badge/macOS_version-10.15_Beta-9cf.svg"/> <img src="https://img.shields.io/badge/built_by-Yume_Maruyama-ff69b4.svg"/> 
</p>

![screenshot](https://i.loli.net/2019/05/14/5cda65189a08439627.jpg)

用于在神舟战神 8 代 / 9 代同方系列机型安装最新版 macOS Mojave （黑苹果）的 Clover 配置文件，可以[点这里查看适配的机型](#compatibility)，并下载对应分支的配置文件（默认 master 分支是 KP7GZ 系列的配置文件）。

该配置文件在 macOS 版本 **10.14.2/10.14.3/10.14.4/10.14.5** 全部亲自测试安装成功（全新安装/系统内 OTA 更新）；初步支持 10.15 Beta；使用 Clover Hotpatch 驱动。

在开始之前，请务必确认您已经阅读了[使用须知](#tutorial)和[常见问题](#FAQ)。**如果您在使用的时候遇到问题，请先尝试[快速排错](#troubleshooting)**.

# Table of Content

- [使用须知 & 指南](#tutorial)  
- [适用机型](#compatibility)
- [配置信息](#info)
- [硬件驱动情况](#whats-working)
- [注意事项](#faq)
- [快速排错](#troubleshooting)
- [提问相关事项](#question)
- [更新日志](#update-log)
- [详细截图](#detail-screenshot)
- [贡献](#contribute)

# Tutorial

1. 使用本仓库配置文件的方法：挂载 EFI 分区，备份并删除原先 /EFI/CLOVER 文件夹中的所有文件，将本仓库下的所有文件全部放到 /EFI/CLOVER 当中。详细教程见[这里](https://note.youdao.com/ynoteshare1/index.html?id=0ebe9470eeaee01e137b9504ceca78db&type=note)。

2. **请先用镜像自带的 Clover EFI 配置安装完系统（CT7GK 例外），确保能够进入桌面后再替换本文件夹**。否则您可能会连 macOS 安装界面都看不到。关于安装镜像，我们建议采用[黑果小兵集成 Clover 的最新版本](https://blog.daliansky.net/categories/%E4%B8%8B%E8%BD%BD/).

3. 建议在替换本 EFI 前，**提前备份好您能够正常启动的 EFI，以便在遇到问题时回滚**。 **在替换 EFI 前请先阅读[注意事项和常见问题](#FAQ)，以了解一些常见问题的解决方案**。

4. 如果你不知道如何在一台 Windows 设备上全新安装 macOS Mojave，请参考[该教程](http://blog.daliansky.net/Lenovo-Xiaoxin-Air-13-macOS-Mojave-installation-tutorial.html)（注意，格盘不要按照这篇文章里的教程做，而是事先在 Windows 中分好区并抹掉对应分区；**确保你的安装硬盘有 200M 以上的 ESP 分区**）。如果你在安装系统的过程中遇到了问题，请在[macOS Mojave 10.14安装中常见的问题及解决方法](https://blog.daliansky.net/Common-problems-and-solutions-in-macOS-Mojave-10.14-installation.html)这篇文章中看看有没有你的问题。

5. 其他情况下，如果您遇到了 README 中没有提到的问题（请确认你什么多余的事情都没做，例如安装其他驱动，自行打 DSDT 补丁等），请不要犹豫直接提 issue. 有关于提问的细则，请看 [提问相关事项](#question) 部分。

6. 当您使用本仓库的配置文件时，默认您已经阅读并知悉了上文及链接中的内容。**因您未详细阅读上文内容、不当操作导致的包括但不限于：安装失败、部分设备不工作、系统无法启动甚至是设备损坏等问题，一切后果请您自行承担。**

# Compatibility

### 你现在位于 master 分支，该分支的配置文件支持 Z7(m)-KP7/5(G)Z 系列。如果这不是你的机型，请从下面切换到对应机型的分支。

本仓库 EFI 配置文件适用于采用了 **同方模具** 的神舟战神系列 **8 代/9 代 CPU 平台**笔记本，包括：
 
- 8 代窄边框笔记本，型号后缀为 Z 或 GZ，如：**Z7-KP7GZ, Z7m-KP7GZ, Z7m-KP5GZ, Z7-KP7Z, Z7m-KP7Z, Z7m-KP5Z.** （本分支）
- 8 代其它同方模具笔记本，如 **[Z7(m)-KP7/5GC](https://github.com/kirainmoe/hasee-tongfang-macos/tree/kp7gc), [Z7(m)-KP7/5EC](https://github.com/kirainmoe/hasee-tongfang-macos/tree/kp7ec)**。
- 9 代同方模具窄边框笔记本，如 **[Z7-CT7GK / G7-CT7VK](https://github.com/kirainmoe/hasee-tongfang-macos/tree/ct7gk)**（试验性）
- 其它未测试的 8 代以上同方模具神舟战神笔记本（试验性）

<img src="https://camo.githubusercontent.com/066151785d81559120d76410f607d906e5b258ec/68747470733a2f2f7773332e73696e61696d672e636e2f6c617267652f3966313133376231677931673168676c71727377356a323068333062627467312e6a7067" width="200px">

<img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558636166866&di=64511ab5ebc754464264e1abde9ad2d0&imgtype=0&src=http%3A%2F%2F2f.zol-img.com.cn%2Fproduct%2F190%2F595%2Fce9Y0Q4QlY09Y.jpg" width="200px">

因为本人只拥有 Z7-KP7GZ，其他型号通过群内的朋友测试通过。有关于在 GC/EC/GE/CT7GK 等机型上使用该配置文件，请参照[各机型配置文件使用指南](https://github.com/kirainmoe/hasee-z7-kp7gz-macos/wiki/%E5%90%84%E6%9C%BA%E5%9E%8B%E9%85%8D%E7%BD%AE%E6%96%87%E4%BB%B6%E4%BD%BF%E7%94%A8%E6%8C%87%E5%8D%97).

[Shinelon Yao-7000 (炫龙耀 7000)](https://github.com/jinmu333/Shinalon_YAO_7000_efi) 和 Mechrevo Z2 Air (机械革命 Z2 Air) 与神舟战神 KP7GZ 属于同款模具且配置相近，因此理论可以在上述设备中使用本 EFI 配置文件。

注意，**蓝天模具的神舟 Z7-KP7SC, Z7-KP7S1、同方模具的七代平台机型 Z7-KP7GT, Z7-KP7D2 等不属于该系列**，并不保证能完全兼容，这些机型也不是本仓库配置文件的目标机型，因此**针对此类设备的兼容性问题，请您自行解决**。

# Info

配置详情:

| Component | Model |
|--|--|
| CPU | Intel Core(TM) i7-8750H (KP5(G)Z 为 i5-8300H) | 
| GPU | Intel UHD630 / Nvidia GTX1060 (Z7m 为 1050Ti；两者皆无法驱动) |
| RAM | Micron Crucial 8GB |
| NVMe | Asgard NVMe SSD 256G |
| SSD | Phison SATA SSD 128G (原装，macOS 系统盘) |
| Wireless | Intel AC9462（无法驱动，已更换 BCM94360CS2） |
| Ethernet | Realtek RTL8168H |
| Audio | Realtek ALC269vc |

如果想获得更好的 Hackintosh 体验，请考虑更换部分硬件。有关详情，参见[《硬件更换指南和兼容性报告
》](https://github.com/kirainmoe/hasee-z7-kp7gz-macos/wiki/%E7%A1%AC%E4%BB%B6%E6%9B%B4%E6%8D%A2%E6%8C%87%E5%8D%97%E5%92%8C%E5%85%BC%E5%AE%B9%E6%80%A7%E6%8A%A5%E5%91%8A)。

# What's working

- 睿频、变频正常（使用 18 款 MacBook Pro SMBIOS，最低 800Mhz, 最高睿频 4.1GHz）
- Intel UHD630（已应用显存补丁，2048 MB）
- 亮度调节（可在设置中调节或使用 Fn+F11, Fn+F12 快捷键）
- I2C HID 触控板（需要正确驱动电池后才可以设置手势）
- 有线网卡
- 声音（ALC269vc, 使用 AppleALC 仿冒，注入 layout-id 为 88，外放、耳机、麦克风全部正常）
- 电池状态（现已使用 Clover Hotpatch 驱动）
- USB （使用 USBInjectAll + SSDT 驱动，3.0 5G/s 速度正常，Type-C 可用）
- 睡眠（使用 Clover Hotpatch 修复）
- etc.

注：以上情况基于 KP7GZ 系列机型；对于使用其它机型的用户，可能会有一些功能不正常，请用户测试后反馈。

# What's partial working

- 蓝牙 (需要热启动 macOS 才可用，即先进入 Winodws 后重启进入 macOS、或者在 macOS 下使用虚拟机模拟热启动过程，不支持 AirDrop.)

# What's not working

- 独立显卡（GTX1060， 目前没有适用于 Mojave 的 Nvidia WebDriver）
- 无线网卡（Intel AC9462 无解，使用蓝牙共享网络、USB共享网络或者USB网卡替代，或更换无线网卡）
- **HDMI/MiniDP（该模具 HDMI/MiniDP 直接由独显输出, 独显无法驱动，所以 HDMI/MiniDP 也无法使用）**
- 读卡器（读卡器走的 USB 2.0 外置，无法使用）


注：经过测试，10.13.6 下可安装 Nvidia WebDriver 并识别 GTX1060，但 VRAM 只有 256MB，推测是没有被驱动；外接显示器未测试。

**除非 Nvidia 官方更新 10.14 的 WebDriver，否则独显、HDMI 不可用的问题将无法解决，请避免再提类似的 issues.**

# FAQ

Q: 这东西怎么用？  
A: 备份并删除 /EFI/CLOVER 下的所有文件，然后用本仓库中的文件替换，重启电脑执行本仓库下的 Addons/optimize.sh 即可。啥？还不会？<s>洗洗睡吧</s> 这里有一份 step by step 的[教程](https://note.youdao.com/ynoteshare1/index.html?id=0ebe9470eeaee01e137b9504ceca78db&type=note)。如果还不会，那还是别玩了。  

Q. 替换后 EFI 后无法启动系统？  
A: 如果最新版在您的笔记本上不正常工作，请尝试[最后一个稳定版本](https://github.com/kirainmoe/hasee-z7-kp7gz-macos/releases/tag/20190409)。  

Q: post-install 优化脚本是什么？为什么需要执行它？  
A: 指本仓库下的 Addons/optimize.sh, 用途是设置休眠参数、模拟 NVRAM、开启 HiDPI 等。如果您想手动执行这些操作，则不需要执行该脚本。否则我们建议其他普通用户在替换完 EFI 后执行一次该脚本。执行方式如下：
```shell
cd Addons
chmod +x ./optimize.sh
sudo ./optimize.sh
```

Q: 怎样驱动电池？  
A: 对于使用较新版本 commmit 的 EFI 的用户，电池已使用 Clover Hotpatch + SSDT 驱动。理论上，不需要任何操作，替换完 EFI 之后电池就能正常显示。  
对于使用 DSDT 补丁版本的 EFI 用户，系统安装完成后，使用 Clover 按 F4 提取 DSDT，进入系统下载并打开 MaciASL，打开你提取的 DSDT（位于 /EFI/CLOVER/ACPI/origin 中），点击上方的 Patch，找到本仓库内的 Addons/dsdt-patch.txt，将里面的内容粘贴到 Patch 中，然后点击 Apply 应用即可，保存新的 DSDT 到 patched 目录中。记得配合 ACPIBatteryManager.kext 使用哦。  

Q: 怎样完美睡眠？  
A: 对于使用 Hotpatch 版 EFI 的用户，只需要运行本仓库下的 post-install 优化脚本调整睡眠参数即可。对于使用 DSDT 补丁版本 EFI 的用户，上面的补丁已包含 USB _PRW 补丁。确保正确加载 USBInjectAll.kext，并给 DSDT 打好补丁，执行上面的优化脚本后即可正常睡眠。如果遇到睡死、无法进入睡眠等问题，请确保你使用的是本仓库提供的 config.plist.    

Q: 怎样保存亮度？  
A: 模拟 NVRAM，运行上面的优化脚本即可。如果上述操作后仍然无法保存亮度，请将 EFI 文件更新到本仓库的最新提交，最新更新加入了 SSDT-ALS0.aml 来解决亮度的保存问题。  

Q: 为什么触摸板不工作？  
A: 多数情况下是因为**您没有正确地替换 EFI 配置文件导致的**。请检查 VoodooI2C.kext, VoodooI2CService.kext, VoodooGPIO.kext, VoodooI2CHID.kext 是否正确加载。此外，触摸板完美驱动，要求电池也完美驱动。出现此情况的原因也有可能是您对 DSDT 应用了 VoodooI2C 源的 DSDT 补丁，而这一步是不需要的。当然，如果你的机型根本不是以 Z 结尾的战神系列，那么触摸板驱动是不适合你们的。

Q: 为什么触摸板的单手指操作，每五次就会卡一次（第五次操作被忽略）？  
A: 这是 VoodooI2C 触摸板驱动的 BUG. 因为 VoodooI2C 对 CoffeeLake 的支持并不是很完善，因此请耐心等待原作者 (@alexandred) 修复。

Q: 为什么声卡不工作？  
A: <s>一般情况下重启后即可正常。初步怀疑是 AppleALC 驱动的问题；目前我们仍然在调查问题发生的原因，如果你找到了解决方案，请告诉我们。</s>  
**请更新到 20190502 Build 1556790650 及更高版本的配置文件以解决该问题。**    

Q：为什么独显不工作？HDMI 外接不工作？DP 接口不工作？怎么外接显示器？  
A：如果你想问这个问题，我的建议是再看一遍 README.

Q: 为什么更新到新版本（10.14.4）开机读条卡死了，显示 `busy timeout(60s): AppleACPICPU`？  
A: 请更新最新版本的 Clover, Lilu.kext 和 WhateverGreen.kext. 您可以手动更新，或者直接下载一份最新的 EFI 替换掉您现在正在用的 EFI. 

Q: 为什么执行完优化脚本（或开启了 HiDPI 之后）出现了花屏、睡眠唤醒四分之一屏？  
A: 出现此原因可能是因为您启用了 HiDPI。目前因为开启 HiDPI 引起的卡条、花屏、四分之一屏问题暂时没有很好的解决方案，一般重启就可以正常。如果您无法忍受的话，请不要开启 HiDPI. 虽然这些问题部分可以解决，但是并不能从 Clover 配置文件的层面解决，因此请您自寻解决方案。

Q: 为什么更新到新版本之后，触摸板等功能失效了？  
A: 请使用以下命令重建 kext 缓存并重启电脑：

```shell
sudo kextcache -i /
``` 

# Troubleshooting

你必须使用 20190430 build.1556636386 及更高版本的 EFI 才可以使用快速排错脚本。使用教程参见：[问题排查指导](https://github.com/kirainmoe/hasee-z7-kp7gz-macos/wiki/%E9%97%AE%E9%A2%98%E6%8E%92%E6%9F%A5%E6%8C%87%E5%AF%BC-(Troubleshooting)#step-4-%E4%BD%BF%E7%94%A8%E8%87%AA%E5%8A%A9%E6%8E%92%E6%9F%A5%E7%A8%8B%E5%BA%8F%E6%8E%92%E6%9F%A5%E9%97%AE%E9%A2%98) 的第四步。

# Question

关于提问：如果您在安装的过程中遇到问题，请在 GitHub 上提 issue，或将你的问题描述清楚发送邮件到 kirainmoe@gmail.com，或者到远景论坛给我留言。

由于我万年不上一次远景，所以你在远景的留言我不一定能及时看到, 因此推荐采用提 issue 或邮件的方式向我提问。可以[点这里创建一个新的 issue](https://github.com/kirainmoe/hasee-z7-kp7gz-macos/issues/new).

有些问题可能已经被解决或已知，您可以在提问前看看[这里有没有您的问题](https://github.com/kirainmoe/hasee-z7-kp7gz-macos/issues?q=is%3Aissue+is%3Aclosed)。

另外，为了节省您折腾的时间和我回复的精力，提问时请将问题的现象描述清楚，这样方便我定位问题发生的原因。注意，非 Z7(m)-KP7/5(G)Z 的机型，使用本 EFI 出现的问题，由于我并没有对应的机型，因此大概率不会回答。

如果方便的话，推荐您按照 tonymacx86 论坛的 Problem Reporting File 格式上传问题描述文件、IORegistryExplorer 导出信息、Clover EFI 文件夹等，请参照：https://www.tonymacx86.com/threads/tool-generate-proper-problem-reporting-files.235953/

# Group

欢迎该机型或其它神舟战神笔记本机型的朋友**加入 Z7(m)-KP7/5(G)Z 机型的交流 QQ 群：https://jq.qq.com/?_wv=1027&k=5G82zlQ ，群号 833022235**。

请注意，我们要求你具有基本的知识，如修复引导、重装系统、分区等；我们不会手把手教你安装 macOS，只能在你遇到问题时指出问题所在并提出可行的建议。如果没有上述基技能，建议先远景爬帖或左转淘宝。

![QQ-group](https://ws3.sinaimg.cn/large/9f1137b1gy1g1hh6nhk8gj20f00kkt9u.jpg)

# Update log

19-1-23：更新最新版 Lilu.kext 和 WhateverGreen.kext；删除 VoodooHDA.kext 万能声卡驱动；添加 AppleALC.kext 仿冒驱动，注入 layout-id 为 88.

19-1-28：删除无用 Kexts；<s>使用 USBPorts.kext 替代 USBInjectAll.kext；修复睡眠。</s>。

~19-2-3: 去除 Clover 引导时添加的 `igfxcflbklt` 参数，去除勾选 Add PNLF；加入 SSDT-PNLF-CFL.aml 解决 Coffeelake UHD630 开机黑屏问题。~ 

19-2-5 已发现上次更新的配置文件可能会导致休眠失败，已将 config.plist 回滚。添加 FakeSMC 及传感器相关驱动。

19-2-16 解决 SSDT-PNLF-CFL.aml 注入问题，解决 Coffeelake UHD630 黑屏问题。

19-2-21 更新说明文件，确认 EFI 支持最新的版本 10.14.3。加入 SSDT-Disable-DGPU.aml，删除 drivers-off 文件夹。

19-3-2 USBPorts.kext 可能引起兼容性问题，已使用 USBInjectAll.kext + SSDT-UIAC.aml 驱动 USB；更新部分 Kexts.

19-3-7 使用 hotpatch + SSDT 驱动电池和修复睡眠。  

19-3-8 新增 optimize.sh post-install 优化脚本。

19-3-11 <s>添加遗失的 IntelMausiEthernet.kext</s>, 修复有线网卡。

19-3-26 更新 Clover 版本，更新 Lilu/WhateverGreen 到最新版本，确认最新 EFI 支持 10.14.4. 

19-3-27 添加 SSDT-ALS0.aml 完善亮度保存。

19-3-28 完善 CPU 变频，最低频率现在可达 800MHz，使用电池、系统负载低时将会更省电。

19-3-31 添加 10.14 的核显 Framebuffer 补丁。如果在部分设备上出现因此引起的不能正常休眠，请去除该补丁。

19-4-3 简化 Kexts 驱动文件夹，减少开机卡条概率；~使用 VirtualSMC 替换 FakeSMC~；更新声卡驱动尝试解决卡条问题(已修复)。

19-4-7 修复 SSDT-UIAC.aml 不加载导致的 USB3.1 降速问题。

19-4-13 加入 SSDT-TPAD.aml, SSDT-XOSI.aml；更新 VoodooI2C 驱动；回滚 FakeSMC 防止在某些设备上出现兼容性问题。

19-4-28 修正 SSDT-UIAC.aml 中 Type-C 接口节点错误；修改电池驱动部分；<s>尝试修复声卡重启后 layout-id 丢失</s>。

19-4-29 添加 SSDT-FN.aml，现在可以使用 Fn+F11, Fn+F12 调节显示器亮度了；添加 Kext 说明。调整目录结构。

19-4-30 修改 SSDT-UIAC.aml Type-C 接口节点信息解决 Type-C 无法双面使用的问题。

19-5-2 尝试修复声卡重启后找不到输出设备的问题，<s>目前效果仍然处于观察阶段</s> 经过长期测试确认已修复。

19-5-12 添加 SSDT RTC 重命名，<s>更新 VoodooPS2Controller 驱动（可能需要重新设置按键映射）；尝试适配同方模具神舟战神 G7-CT7VK</s>.

<s>19-5-14 添加 I2C 触摸板 SSDT；更新 10.14.5 新版本支持。</s>

19-5-23 正式支持同方八代全系机型和九代部分机型，添加 GC/EC 的 USB 注入，回滚 VoodooPS2Controller 驱动和触摸板。

# Detail screenshot

USB  
![usb](https://i.loli.net/2019/05/03/5ccc59013f86b.jpg)

有线网络  
![network](https://wx3.sinaimg.cn/large/9f1137b1gy1g0finlomxaj20gv0bpaap.jpg)

核显 & 亮度调节  
![uhd630](https://i.loli.net/2019/05/03/5ccc590160bef.jpg)

电池  
![battery](https://i.loli.net/2019/05/03/5ccc5901380e9.jpg)

蓝牙（已隐去 MAC 地址）  
![bluetooth](https://i.loli.net/2019/05/05/5cce483505ec4.jpg)

声音  
![sound](https://i.loli.net/2019/05/03/5ccc590160b2f.jpg)  

睿频、电源管理  
![hwmonitor](https://wx3.sinaimg.cn/large/9f1137b1gy1g0fisxsg8jj206m0c3wf8.jpg)  
![lpc](https://wx2.sinaimg.cn/large/9f1137b1gy1g0fitafzljj20f00a1gm4.jpg)  

Wi-Fi （需要更换硬件）  
![wifi](https://i.loli.net/2019/05/03/5ccc5901589b8.jpg)

隔空投送和接力（需要更换硬件）  
![airdrop-handoff](https://i.loli.net/2019/05/03/5ccc59015838a.jpg)

触摸板手势  
![gesture](https://wx4.sinaimg.cn/large/9f1137b1gy1g0fitjrcoqj20f00bk75e.jpg)  

终端截图  
![screenfetch](https://wx1.sinaimg.cn/large/9f1137b1gy1g0fitwobg3j20d5087my0.jpg)

# Contribute

### 关于贡献和完善

欢迎大家一起完善该机型的 EFI. 如果你认为这份配置文件有可以改进的地方，请注册一个 Github 账号，fork 本仓库自行修改后提交 Pull Request.
