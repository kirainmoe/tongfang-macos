<p align="center">

<img src="https://ws2.sinaimg.cn/large/9f1137b1gy1g1hg3epia2j20n505jt9q.jpg" width="300px" alt="logo">

<p>

<h1 align="center">神舟战神 Z7(m)-KP7/5(G)Z macOS</h1>

<p align="center">
<a href="https://github.com/kirainmoe/hasee-z7-kp7gz-macos/blob/master/README-en.md">English</a> | <a href="#tutorial">使用须知</a> | <a href="https://note.youdao.com/ynoteshare1/index.html?id=0ebe9470eeaee01e137b9504ceca78db&type=note">EFI 替换教程</a> | <a href="#question">提问</a> | <a href="https://github.com/kirainmoe/hasee-z7-kp7gz-macos/issues?q=is%3Aissue+is%3Aclosed">已知问题</a> | <a href="#group">企鹅互助交流群</a>
</p>

<p align="center">
<img src="https://img.shields.io/badge/build-passing-brightgreen.svg"/> <img src="https://img.shields.io/badge/coverage-98%25-brightgreen.svg"/> <img src="https://img.shields.io/badge/macOS_version-10.14.4-9cf.svg"/> <img src="https://img.shields.io/badge/built_by-Yume_Maruyama-ff69b4.svg"/> 
</p>

![screenshot](https://ws4.sinaimg.cn/large/9f1137b1gy1g1m6rjq0r5j21hc0u07k7.jpg)

用于在神舟战神 Z7-KP7GZ 系列机型安装最新版 macOS Mojave （黑苹果）的 Clover 配置文件，适用于 **神舟战神Z7\*-KP\*GZ / 神舟战神Z7\*-KP\*Z**（**请注意，并不是适用于所有以 Z7 开头的战神笔记本！**）；理论适用于炫龙耀7000 / 机械革命Z2 Air. 

该配置文件在 macOS 版本 **10.14.2/10.14.3/10.14.4** 全部亲自测试安装成功；使用 Clover Hotpatch 驱动。

**接到反馈，最新版的 EFI 在个别设备上似乎无法工作（发生黑屏现象），目前我们需要更多的报告来定位问题。对于大部分用户，使用最新版应该没有问题；但如果您替换了 EFI 后无法启动，请尝试[最后一个稳定版本](https://github.com/kirainmoe/hasee-z7-kp7gz-macos/releases/tag/20190409)。**


在开始之前，请务必确认您已经阅读了[使用须知](#tutorial)和[常见问题](#FAQ)。

# Table of Content

- [使用须知 & 指南](#tutorial)  
- [适用机型](#compatibility)
- [配置信息](#info)
- [硬件驱动情况](#whats-working)
- [注意事项](#faq)
- [提问相关事项](#question)
- [更新日志](#update-log)
- [详细截图](#detail-screenshot)
- [贡献](#contribute)

# Tutorial

1. 使用本仓库配置文件的方法：挂载 EFI 分区，备份并删除原先 /EFI/CLOVER 文件夹中的所有文件，将本仓库下的所有文件全部放到 /EFI/CLOVER 当中。详细教程见[这里](https://note.youdao.com/ynoteshare1/index.html?id=0ebe9470eeaee01e137b9504ceca78db&type=note)。

2. **请先用镜像自带的 Clover EFI 配置安装完系统，确保能够进入桌面后再替换本文件夹**。否则您可能会连 macOS 安装界面都看不到。关于安装镜像，我们建议采用[黑果小兵集成 Clover 的最新版本](https://blog.daliansky.net/categories/%E4%B8%8B%E8%BD%BD/).

3. 建议在本替换 EFI 前，**提前备份好您能够正常启动的 EFI，以便在遇到问题时回滚**。

4. 此外，当您发现替换 EFI 后某设备无法被驱动时，建议您将 /EFI/CLOVER/Kexts/Other 下的 Kext 安装到 /Library/Extensions 中。 

5. **在替换 EFI 前请先阅读[注意事项和常见问题](#FAQ)，以了解一些常见问题的解决方案**。

6. 如果你不知道如何在一台 Windows 设备上全新安装 macOS Mojave，请参考[该教程](http://blog.daliansky.net/Lenovo-Xiaoxin-Air-13-macOS-Mojave-installation-tutorial.html)（注意，格盘不要按照这篇文章里的教程做，而是事先在 Windows 中分好区并抹掉对应分区；**确保你的安装硬盘有 200M 以上的 ESP 分区**）。如果你在安装系统的过程中遇到了问题，请在[macOS Mojave 10.14安装中常见的问题及解决方法](https://blog.daliansky.net/Common-problems-and-solutions-in-macOS-Mojave-10.14-installation.html)这篇文章中看看有没有你的问题。

7. 如果你已经在 Z7(m)-KP7(5)GZ 上安装好 macOS Mojave 但仍有部分设备无法驱动，请参考[神舟战神 Z7-KP7GZ 黑苹果 macOS Mojave 安装指北](https://kirainmoe.com/blog/post/guide-on-hasee-z7-kp7gz-hackintosh-macos-mojave/).

8. 其他情况下，如果您遇到了 README 中没有提到的问题（请确认你什么多余的事情都没做，例如安装其他驱动，自行打 DSDT 补丁等），请不要犹豫直接提 issue. 有关于提问的细则，请看 [提问相关事项](#question) 部分。

9. 当您使用本仓库的配置文件时，默认您已经阅读并知悉了上文及链接中的内容。**因您未详细阅读上文内容、不当操作导致的包括但不限于：安装失败、部分设备不工作、系统无法启动甚至是设备损坏等问题，一切后果请您自行承担。**

# Compatibility

 - 本仓库 EFI 配置文件适用于采用了 **同方模具** 并以 **Z/GZ** 结尾的神舟战神系列笔记本，包括：**Z7-KP7GZ, Z7m-KP7GZ, Z7m-KP5GZ, Z7-KP7Z, Z7m-KP7Z, Z7m-KP5Z.** 该系列笔记本的外观如下图所示，在替换 EFI 前请确认您的机型与下图一致：

<center>

![kp7gz](https://ws3.sinaimg.cn/large/9f1137b1gy1g1hglqrsw5j20h30bbtg1.jpg)

</center>

 - 因为 Shinelon Yao-7000 (炫龙耀 7000) 和 Mechrevo Z2 Air (机械革命 Z2 Air) 与神舟战神 KP7GZ 属于同款模具且配置相近，因此理论可以在上述设备中使用本 EFI 配置文件。

 - **神舟 Z7-KP7GC, Z7-KP7EC, Z7-KP7SC, Z7-KP7S1, Z7-KP7GE, Z7-KP7GT, Z7-KP7D2 等不属于该系列**，即便其中的某些机型也采用同方其它模具，但并不保证能完全兼容，这些机型也不是本仓库配置文件的目标机型，因此**针对此类设备的兼容性问题，请您自行解决**。

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

- 睿频、变频正常（使用 18 款 MacBook Pro SMBIOS，最低 800Mhz, 最高睿频 4.1GHz）
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

- 蓝牙 (需要热启动 macOS 才可用，即先进入 Winodws 后重启进入 macOS、或者在 macOS 下使用虚拟机模拟热启动过程，不支持 AirDrop.)

# What's not working

- 独立显卡（GTX1060， 目前没有适用于 Mojave 的 Nvidia WebDriver）
- 无线网卡（Intel AC9462 无解，使用蓝牙共享网络、USB共享网络或者USB网卡替代）
- **HDMI/MiniDP（该模具 HDMI/MiniDP 直接由独显输出, 独显无法驱动，所以 HDMI/MiniDP 也无法使用）**

注：经过测试，10.13.6 下可安装 Nvidia WebDriver 并识别 GTX1060，但 VRAM 只有 256MB，推测是没有被驱动；外接显示器未测试。

**除非 Nvidia 官方更新 10.14 的 WebDriver，否则独显、HDMI 不可用的问题将无法解决，请避免再提类似的 issues.**

# FAQ

Q: 这东西怎么用？  
A: 备份并删除 /EFI/CLOVER 下的所有文件，然后用本仓库中的文件替换，重启电脑执行本仓库下的 optimize.sh 即可。啥？还不会？<s>洗洗睡吧</s> 这里有一份 step by step 的[教程](https://note.youdao.com/ynoteshare1/index.html?id=0ebe9470eeaee01e137b9504ceca78db&type=note)。如果还不会，那还是别玩了。  

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
A: 模拟 NVRAM，运行上面的优化脚本即可。如果上述操作后仍然无法保存亮度，请将 EFI 文件更新到本仓库的最新提交，最新更新加入了 SSDT-ALS0.aml 来解决亮度的保存问题。  

Q: 为什么触摸板不工作？  
A: 出现此情况的原因可能是您对 DSDT 应用了 VoodooI2C 源的 DSDT 补丁，而这一步是不需要的。请从 Clover 全新提取一份 DSDT 打补丁。如果仍然无法驱动触摸板，请检查 VoodooI2C.kext, VoodooI2CService.kext, VoodooGPIO.kext, VoodooI2CHID.kext 是否正确加载。此外，触摸板完美驱动，要求电池也完美驱动。当然，如果你的机型根本不是以 Z 结尾的战神系列，那么触摸板驱动是不适合你们的。

Q: 为什么声卡不工作？  
A: 一般情况下重启后即可正常。初步怀疑是 AppleALC 驱动的问题；目前我们仍然在调查问题发生的原因，如果你找到了解决方案，请告诉我们。    

Q：为什么独显不工作？HDMI 外接不工作？DP 接口不工作？怎么外接显示器？  
A：如果你想问这个问题，我的建议是再看一遍 README.

Q: 为什么更新到新版本（10.14.4）开机读条卡死了，显示 `busy timeout(60s): AppleACPICPU`？  
A: 请更新最新版本的 Clover, Lilu.kext 和 WhateverGreen.kext. 您可以手动更新，或者直接下载一份最新的 EFI 替换掉您现在正在用的 EFI. 

Q: 为什么执行完优化脚本（或开启了 HiDPI 之后）开机读条卡住了？  
A: 出现此原因可能是因为您启用了 HiDPI。目前因为开启 HiDPI 引起的卡条问题暂时没有很好的解决方案，一般重启就可以正常进入系统。如果您无法忍受的话，请不要开启 HiDPI. 此外开启 HiDPI 还可能导致其他的 BUG，例如睡眠唤醒四分之一屏幕，花屏等等。虽然这些问题都可以解决，但是并不能从 Clover 配置文件的层面解决，因此请您自寻解决方案。

Q: 为什么应用 DSDT 补丁后，DSDT 编译出错？  
A: 使用 Hotpatch 版 EFI 的用户不需要应用任何 DSDT 补丁；DSDT 补丁是在我的电脑上测试的，我可以保证在我的电脑上是正常的，在大部分的电脑上也是，该现象发生的几率应该是很小的，但仍然无法保证因您更换过硬件、BIOS 设置不同等原因导致 DSDT 的变更。这种情况下需要您对 DSDT 有一些了解并手动排错。通常情况下，一般是部分补丁没有成功应用，或者 DSDT 语法错误（通常是多或少了一个花括号），可以尝试重新应用补丁或自己补上括号。实在无法自己解决的，请提 issues 并附上你的 DSDT 文件。    

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

19-1-28：删除无用 Kexts；使用 USBPorts.kext 替代 USBInjectAll.kext；修复睡眠。至此除了无法解决的问题之外，这台机器的黑苹果已经接近完美了。

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

19-4-3 简化 Kexts 驱动文件夹，减少开机卡条概率；<s>使用 VirtualSMC 替换 FakeSMC</s>；更新声卡驱动尝试解决卡条问题(已修复)。

19-4-7 修复 SSDT-UIAC.aml 不加载导致的 USB3.1 降速问题。

19-4-13 加入 SSDT-TPAD.aml, SSDT-XOSI.aml；更新 VoodooI2C 驱动；回滚 FakeSMC 防止在某些设备上出现兼容性问题。

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

### 关于贡献和完善

欢迎大家一起完善该机型的 EFI. 如果你认为这份配置文件有可以改进的地方，请注册一个 Github 账号，fork 本仓库自行修改后提交 Pull Request.
