<p align="center">

![logo](https://ws2.sinaimg.cn/large/9f1137b1gy1g1hg3epia2j20n505jt9q.jpg)

<h1>神舟战神 Z7(m)-KP7(5)GZ macOS</h1>

[English](README-en.md) | [使用须知](#tutorial) | [提问](#question) | [已知问题](https://github.com/kirainmoe/hasee-z7-kp7gz-macos/issues?q=is%3Aissue+is%3Aclosed)

![built by](https://img.shields.io/badge/built_by-Yume_Maruyama-ff69b4.svg)

</p>


![screenshot](https://wx3.sinaimg.cn/large/9f1137b1gy1g1h312iytij21hb0tzdx0.jpg)

用于在神舟战神 Z7-KP7GZ 系列机型安装最新版 macOS Mojave （黑苹果）的 Clover 配置文件，适用于 **神舟战神Z7\*-KP\*GZ / 神舟战神Z7\*-KP\*Z**；理论适用于炫龙耀7000 / 机械革命Z2 Air. 

该配置文件在 macOS 版本 **10.14.2/10.14.3/10.14.4** 全部亲自测试安装成功；使用 Clover Hotpatch 驱动。

在开始之前，请务必确认您已经阅读了[使用须知](#tutorial)和[常见问题](#FAQ)。

# Table of Content

- [使用须知 & 指南](#tutorial)  
- [适用机型](#compatibility)
- [配置信息](#info)
- [硬件驱动情况](#whats-working)
- [注意事项](#faq)
- [更新日志](#update-log)
- [详细截图](#detail-screenshot)
- [贡献和捐赠](#contribute-and-donate)

# Tutorial

1. 使用本仓库配置文件的方法：挂载 EFI 分区，备份并删除原先 /EFI/CLOVER 文件夹中的所有文件，将本仓库下的所有文件全部放到 /EFI/CLOVER 当中。

2. **请先用镜像自带的 Clover EFI 配置安装完系统，确保能够进入桌面后再替换本文件夹**。否则您可能会连 macOS 安装界面都看不到。

3. 建议在本替换 EFI 前，**提前备份好您能够正常启动的 EFI，以便在遇到问题时回滚**。

4. 此外，当您发现替换 EFI 后某设备无法被驱动时，建议您将 /EFI/CLOVER/Kexts/Others 下的 Kext 安装到 /Library/Extensions 中。 

5. **在替换 EFI 前请先阅读[注意事项和常见问题](#FAQ)，以了解一些常见问题的解决方案**。

6. 如果你不知道如何在一台 Windows 设备上全新安装 macOS Mojave，请参考[该教程](http://blog.daliansky.net/Lenovo-Xiaoxin-Air-13-macOS-Mojave-installation-tutorial.html)。  

7. 如果你已经在 Z7(m)-KP7(5)GZ 上安装好 macOS Mojave 但仍有部分设备无法驱动，请参考[神舟战神 Z7-KP7GZ 黑苹果 macOS Mojave 安装指北](https://kirainmoe.com/blog/post/guide-on-hasee-z7-kp7gz-hackintosh-macos-mojave/).

8. 其他情况下，如果您遇到了 README 中没有提到的问题（请确认你什么多余的事情都没做，例如安装其他驱动，自行打 DSDT 补丁等），请不要犹豫直接提 issue. 有关于提问的细则，请看 [提问和贡献](#contribute) 部分。

9. 当您使用本仓库的配置文件时，默认您已经阅读并知悉了上文及链接中的内容。**因您未详细阅读上文内容、不当操作导致的包括但不限于：安装失败、部分设备不工作、系统无法启动甚至是设备损坏等问题，一切后果请您自行承担。**

# Compatibility

 - 本仓库 EFI 配置文件适用于采用了 **同方模具** 并以 **Z/GZ** 结尾的神舟战神系列笔记本，包括：**Z7-KP7GZ, Z7m-KP7GZ, Z7m-KP5GZ, Z7-KP7Z, Z7m-KP7Z, Z7m-KP5Z.** 该系列笔记本的外观如下图所示，在替换 EFI 前请确认您的机型与下图一致：

<center>

![kp7gz](https://ws3.sinaimg.cn/large/9f1137b1gy1g1hglqrsw5j20h30bbtg1.jpg)

</center>

 - 因为 Shinelon Yao-7000 (炫龙耀 7000) 和 Mechrevo Z2 Air (机械革命 Z2 Air) 与神舟战神 KP7GZ 属于同款模具且配置相近，因此理论可以在上述设备中使用本 EFI 配置文件。

 - **神舟 Z7-KP7GC, Z7-KP7EC, Z7-KP7SC, Z7-KP7S1 等不属于该系列**，即便其中的某些机型也采用同方其它模具，但并不保证能完全兼容，这些机型也不是本仓库配置文件的目标机型，因此**针对此类设备的兼容性问题，请您自行解决**。

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

- 蓝牙 (需要热启动 macOS 才可用，即先进入 Winodws 后重启进入 macOS、或者在 macOS 下使用虚拟机模拟热启动过程，不支持 AirDrop.)

# What's not working

- 独立显卡（GTX1060， 目前没有适用于 Mojave 的 Nvidia WebDriver）
- 无线网卡（Intel AC9462 无解，使用蓝牙共享网络、USB共享网络或者USB网卡替代）
- **HDMI（该模具 HDMI 直接由独显输出, 独显无法驱动，所以 HDMI 也无法使用）**

注：经过测试，10.13.6 下可安装 Nvidia WebDriver 并识别 GTX1060，但 VRAM 只有 256MB，推测是没有被驱动；外接显示器未测试。

**除非 Nvidia 官方更新 10.14 的 WebDriver，否则独显、HDMI 不可用的问题将无法解决，请避免再提类似的 issues.**

# FAQ

Q: 这东西怎么用？  
A: 备份并删除 /EFI/CLOVER 下的所有文件，然后用本仓库中的文件替换，重启电脑执行本仓库下的 optimize.sh 即可。啥？还不会？洗洗睡吧。  

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
A: 请确认 AppleALC.kext 驱动已正确加载。如果没有正确加载，请将其安装在 /Library/Extensions 下后重建缓存并重启。  

Q：为什么独显不工作？HDMI 外接不工作？DP 接口不工作？怎么外接显示器？  
A：如果你想问这个问题，我的建议是再看一遍 README.

Q: 为什么更新到新版本（10.14.4）开机读条卡死了，显示 `busy timeout(60s): AppleACPICPU`？  
A: 请更新最新版本的 Clover, Lilu.kext 和 WhateverGreen.kext. 您可以手动更新，或者直接下载一份最新的 EFI 替换掉您现在正在用的 EFI. 

Q: 为什么应用 DSDT 补丁后，DSDT 编译出错？  
A: 使用 Hotpatch 版 EFI 的用户不需要应用任何 DSDT 补丁；DSDT 补丁是在我的电脑上测试的，我可以保证在我的电脑上是正常的，在大部分的电脑上也是，该现象发生的几率应该是很小的，但仍然无法保证因您更换过硬件、BIOS 设置不同等原因导致 DSDT 的变更。这种情况下需要您对 DSDT 有一些了解并手动排错。通常情况下，一般是部分补丁没有成功应用，或者 DSDT 语法错误（通常是多或少了一个花括号），可以尝试重新应用补丁或自己补上括号。实在无法自己解决的，请提 issues 并附上你的 DSDT 文件。    

# Question

关于提问：如果您在安装的过程中遇到问题，请在 GitHub 上提 issue，或将你的问题描述清楚发送邮件到 kirainmoe@gmail.com，或者到远景论坛给我留言。

由于我万年不上一次远景，所以你在远景的留言我不一定能及时看到, 因此推荐采用提 issue 或邮件的方式向我提问。可以点这里创建一个新的 issue.

有些问题可能已经被解决或已知，您可以在提问前看看[这里有没有您的问题](https://github.com/kirainmoe/hasee-z7-kp7gz-macos/issues?q=is%3Aissue+is%3Aclosed)。

另外，为了节省您折腾的时间和我回复的精力，提问时请将问题的现象描述清楚，这样方便我定位问题发生的原因。注意，非 Z7(m)-KP7/5(G)Z 的机型，使用本 EFI 出现的问题，由于我并没有对应的机型，因此大概率不会回答。

如果方便的话，推荐您按照 tonymacx86 论坛的 Problem Reporting File 格式上传问题描述文件、IORegistryExplorer 导出信息、Clover EFI 文件夹等，请参照：https://www.tonymacx86.com/threads/tool-generate-proper-problem-reporting-files.235953/


另外也欢迎该机型的朋友**加入 Z7(m)-KP7/5(G)Z 机型的交流 QQ 群：https://jq.qq.com/?_wv=1027&k=5G82zlQ ，群号 833022235**。

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

19-3-11 添加遗失的 IntelMausiEthernet.kext, 修复有线网卡。

19-3-26 更新 Clover 版本，更新 Lilu/WhateverGreen 到最新版本，确认最新 EFI 支持 10.14.4. 

19-3-27 添加 SSDT-ALS0.aml 完善亮度保存。

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

# Contribute and Donate

### 关于贡献和完善

欢迎大家一起完善该机型的 EFI. 如果你认为这份配置文件有可以改进的地方，请注册一个 Github 账号，fork 本仓库自行修改后提交 Pull Request.

### 感想和捐赠

在我一月份刚买这台机器的时候，网上关于这台机型的黑苹果资源可以说是根本没有。这份配置文件是我自己一个人从零开始一点点地完善，耗费了将近一个月的时间，最终让它臻于完美。期间包括声卡、睡眠、显卡等的驱动都踩了很多坑，也爬了很多论坛的帖子，常常为了解决一个问题而发帖求助、爬好几天的帖子。每次新系统的更新，我都要重装、测试这份配置文件的可用性并更新。部分细节虽然不影响正常使用也在努力地做得更好。

如你所见，安装黑苹果是一个过程很艰辛，却又令人很有成就感的过程——并且后期的维护更是一项充满未知却又耗费精力的工程。说实话，我曾经犹豫过，是否要将这份 EFI 共享并长期维护，我当初的想法是，干脆丢一个基本能用的配置（当然，当时的配置相对于今天而言是半成品中的半成品），或者是根本不要放出来了。但是，更多人可能更倾向于没有踩坑、一路顺利的安装过程。我在安装的过程中也借鉴了很多人的问题解决方案，本着“前人栽树后人乘凉”的信条。为了避免后人踩坑，我最终还是选择了长期维护这份配置，并将其放到了 Github——众人拾柴火焰高，我的本意是让更多人使用这份配置，并且大家的反馈也能让这份配置更加完善。

说了这么多，只是我的一些个人感想，没有什么别的意思。当然，如果您认为我的付出为您节省了时间和精力，让您成功地体验了 macOS，也可以考虑捐赠。并没有什么金额的限制，捐赠也并不是强制性的。您仍然可以使用本仓库、提问并贡献，这都没有关系。

<img src="https://ws4.sinaimg.cn/large/9f1137b1ly1g1hhtssjf6j20ri16sq7u.jpg" width="265px">
<img src="https://wx2.sinaimg.cn/large/9f1137b1ly1g1hhtfgywuj20vn17ejvj.jpg" width="300px">