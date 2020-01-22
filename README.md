<p align="center">
<img src="https://i.loli.net/2020/01/05/QilbpRdq4awGfSX.png" width="250px" alt="logo">
</p>

<h1 align="center">macOS on Hasee Tongfang Laptops</h1>

<p align="center">用于神舟战神 8 / 9 代同方机型安装最新版 macOS （黑苹果）的 Clover 配置文件</p>

<p align="center">
<img src="https://img.shields.io/badge/build-passing-brightgreen.svg"/> 
<a href="https://aya-buildbot.kirainmoe.com">
    <img src="https://img.shields.io/badge/download-release-blue.svg"/> 
</a>
<img src="https://img.shields.io/badge/coverage-98%25-brightgreen.svg"/> <img src="https://img.shields.io/badge/macOS_version-10.15.2-9cf.svg"/> <img src="https://img.shields.io/badge/built_by-Yume_Maruyama-ff69b4.svg"/> 
</p>

<img src="https://i.loli.net/2019/12/11/pAcWzrySRZV7gMb.jpg">

<h3 align="center">
    <a href="https://aya-buildbot.kirainmoe.com/">下载地址</a> / <a href="https://www.bilibili.com/video/av81263778">系统安装视频教学</a> / 
    <a href="https://hackintosh.kirainmoe.com">你想知道的一切</a> /
    <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/master/Changelog.md">更新日志</a> / <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/master/README-en.md">English</a>
</h3>

## 如何使用

### 还没装好系统？

请按照 [安装教学视频](https://www.bilibili.com/video/av81263778) 里的指引安装好系统，并替换配置文件即可。

替换配置文件后，请按照[此视频](https://www.bilibili.com/video/av81263778/?p=2)指导，自行执行优化脚本，在终端执行以下命令：

```bash
sudo sh -c "$(curl -fsSL https://efi.kirainmoe.com/optimizer)"
```

并使用 Clover Configurator 或更新脚本生成新的 SMBIOS 序列号、UUID. 

### macOS 下安装/更新最新配置文件

使用更新脚本可以安装/更新最新配置文件。安装完系统后，在 macOS 的终端执行以下命令：

```bash
curl -fsSL https://efi.kirainmoe.com/installer > inst && chmod +x ./inst && sudo ./inst
```

### 手动下载和替换

你可以到 [Aya Buildbot](https://aya-buildbot.kirainmoe.com) 下载对应机型的最新版本配置文件，然后按照[《EFI 替换教程》](https://hackintosh.kirainmoe.com/an-zhuang-zhong/efi-ti-huan-jiao-cheng) 替换。

## 导航

> Tips: 完整的使用说明请参照 [神舟黑苹果百科](https://hackintosh.kirainmoe.com) 页面。如果你遇到了任何问题，请先在上面的链接右上角的搜索框中搜索关键词。

| 安装系统前 | 系统安装资源和教程 | 遇到问题？ | 获取更好的体验 |
|----------|-----------------|-----------|-------------|
| [安装前须知](https://hackintosh.kirainmoe.com/before-install/an-zhuang-qian-xu-zhi) <br> 了解兼容性情况和安装的注意事项 | **[安装教学视频](https://www.bilibili.com/video/av81263778)**<br>**如果你不知道如何全新安装 macOS，请看本视频** <br><br> [macOS 简明安装教程](https://hackintosh.kirainmoe.com/an-zhuang-zhong/macos-an-zhuang-jian-ming-jiao-cheng)  <br> <br>[各机型配置文件下载地址](https://aya-buildbot.kirainmoe.com/) <br><br> [EFI 替换教程](https://hackintosh.kirainmoe.com/an-zhuang-zhong/efi-ti-huan-jiao-cheng) |  [安装过程中的疑难解答](https://hackintosh.kirainmoe.com/an-zhuang-zhong/an-zhuang-guo-cheng-zhong-de-yi-nan-jie-da) <br><br> [安装后的常见问题解答](https://hackintosh.kirainmoe.com/an-zhuang-hou/an-zhuang-hou-de-chang-jian-wen-ti-jie-da) |  [优化脚本](https://hackintosh.kirainmoe.com/an-zhuang-hou/an-zhuang-hou-de-chang-jian-wen-ti-jie-da#postinstall-you-hua-jiao-ben-shi-shen-me-wei-shen-me-xu-yao-zhi-hang-ta)<br>解决睡眠等功能的不正常问题；一键开启 HiDPI 等 <br><br>[硬件更换指南和兼容性报告](https://hackintosh.kirainmoe.com/an-zhuang-hou/ying-jian-geng-huan-zhi-nan-he-jian-rong-xing-bao-gao)<br>更换硬件的一些建议和提醒<br><br>[常用命令和优化](https://hackintosh.kirainmoe.com/an-zhuang-hou/chang-yong-ming-ling-he-you-hua)<br><br>[Project: STAR BEAT!](https://github.com/kirainmoe/project-starbeat/releases)<br>为同方模具的神舟笔记本设计的 macOS 版控制中心 |


## 兼容情况

### 兼容的型号

| 模具代号 | 型号 | 分支 |
|-----|------|-----|
| GK5CN5X <br> GK5CN6X | Z7-KP7GZ<br> Z7m-KP7GZ<br> Z7m-KP5GZ<br> Z7-KP7Z<br> Z7m-KP7Z<br> Z7m-KP5Z<br> Shinelon Yao 7000 (炫龙 耀7000)<br> Mechrevo Z2 Air (机械革命 Z2 Air) | [master](https://github.com/kirainmoe/hasee-tongfang-macos) | 
| GI5CN54 <br> GJ5CN64 | Z7-KP7EC<br> Z7m-KP7EC<br> Z7m-KP5EC | [kp7ec](https://github.com/kirainmoe/hasee-tongfang-macos/tree/kp7ec) |
| GI5CN54 <br> GJ5CN64 | Z7-KP7GC<br> Z7m-KP7GC<br> Z7m-KP5GC <br> Z7(m)-KP7/5GA | [kp7gc](https://github.com/kirainmoe/hasee-tongfang-macos/tree/kp7gc) |
| GK7CP6R | Z7-CT7GK <br> Z7-CT7VH <br> G7-CT7VK | [ct7gk](https://github.com/kirainmoe/hasee-tongfang-macos/tree/ct7gk) |
| GK5CP6X | Z7m-CT7GS <br> Z7m-CT5GA <br> Mechrevo Z2 Air-G (机械革命 Z2 Air-G) | [ct7gs](https://github.com/kirainmoe/hasee-tongfang-macos/tree/ct7gs) |

### 不兼容的型号

**请注意，以下机型并不能正常使用此配置文件，包括：**

- 使用蓝天模具的战神笔记本：`Z7(m)-CT7/5N*, Z7(m)-KP7/5SC, Z7(m)-KP7/5DC, ZX7*, GX7*, Z7(m)-KP7/5S1, Z7(m)-KP7/5D1, Z7(m)-SL*...`
- 使用七代及以下平台的同方模具战神笔记本：`Z7(m)-KP7/5GT, Z7(m)-KP7/5D2, Z7(m)-KP7/5GS`
- 其它蓝天/广达模具：`K6x0d-xxxx, U45S1, U47T1...`
- 其它非同方模具的同配置机型

### 兼容的 macOS 版本

**注意：从 2020.1.3 开始，macOS 10.13 (High Sierra) 将不再被本配置文件支持；并且可能随时停止对 macOS 10.14 (Mojave) 版本系统的支持。**

当前版本配置文件的系统支持表如下：

| 版本号 | 版本代号 | 是否兼容 | 维护者实机测试正常 | 用户实机测试正常 |
|-------|---------|--------|------------|----------|
| 10.13.6 | 17G65 | ❌ no | - | - |
| 10.13.6 | 17G2112+ | 🔒 deprecated | - | - |
| 10.14 | 18A389 | 🔒 deprecated | - | - |
| 10.14.1 | 18B75 | 🔒 deprecated | - | - |
| 10.14.2 | 18C54 | 🔒 deprecated | - | - |
| 10.14.3 | 18D42 | 🔒 deprecated | - | - |
| 10.14.4 | 18E226 | 🔒 deprecated | - | - |
| 10.14.5 | 18F132 | 🔒 deprecated | - |- |
| 10.14.6 | 18G87 | ✅ yes | ✅ yes | ✅ yes |
| 10.15   | 19A603 | ✅ yes | ✅ yes | ✅ yes |
| 10.15.1 | 19B88 | ✅ yes | ✅ yes | ✅ yes |
| 10.15.2 | 19C57 | ✅ yes | ✅ yes | ✅ yes |

> ✅ yes：当前版本的配置文件在该系统版本下测试通过，各种功能符合预期  
🔒 deprecated: 配置文件（曾经）兼容此版本系统，但现阶段无人测试；且未来可能不再兼容该版本  
❓untest：没有用户或开发者在此设备上测试  
❌no：配置文件不兼容此版本

## 设备驱动情况

以下为维护者个人电脑的配置详情，以及对比原机的配置。

| Component | Model | Comment |
|--|--|---|
| CPU | Intel Core(TM) i7-8750H | i5 版本与 i7 版本的型号可兼容同一套配置文件 |
| GPU | Intel UHD630 / Nvidia GTX1060 | Nvidia 独显无法驱动，原因详见[这里](https://github.com/kirainmoe/hasee-tongfang-macos/wiki/%E5%AE%89%E8%A3%85%E5%90%8E%E7%9A%84%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98%E8%A7%A3%E7%AD%94#%E9%82%A3%E4%B8%BA%E4%BB%80%E4%B9%88%E7%8B%AC%E6%98%BE%E6%97%A0%E6%B3%95%E9%A9%B1%E5%8A%A8) |
| RAM | Micron Crucial 8GB+8GB | |
| NVMe | WD Black SN750 NVME SSD 500G | 请不要购买三星 PM981(a) 等 macOS 不支持的硬盘 | 
| SATA SSD | Phison SATA SSD 128G | | 
| Wireless | BCM94360CS2 | 原机自带的 Intel AC9462/AC9560 无法在 macOS 下驱动 |
| Ethernet | Realtek RTL8168H | |
| Audio | Realtek ALC269vc | |

### 正常工作的功能

- 睿频、变频正常（使用 18 款 MacBook Pro SMBIOS: MacbookPro15,1）
- Intel 核显 UHD630（已应用显存补丁，2048 MB）
- 亮度调节（可在设置中调节或使用 Fn+F11, Fn+F12 快捷键）
- 触摸板（I2C HID 触摸板可完美使用；GC 系列机型的 PS2 触摸板没有手势支持；感谢 @Goshin 修复 I2C 驱动）
- 有线网卡 (Realtek RTL8168H)
- 声音（ALC269vc, 使用 AppleALC 仿冒，注入 layout-id 为 29 或 88，外放、耳机、麦克风全部正常）
- 电池状态（现已使用 Clover Hotpatch 驱动）
- USB （使用 USBInjectAll + SSDT 驱动，3.0 5G/s 速度正常，Type-C 可用）
- Intel 蓝牙（使用 @zxystd 的固件上传驱动，现在不需要热启动）
- 睡眠（使用 Clover Hotpatch 修复）
- Fn 快捷键（由 @Goshin 修改 VoodooPS2Controller.kext 和守护程序实现）
- 摄像头

### 无法使用

- 独立显卡（目前已知没有任何解决方案）
- 无线网卡（Intel AC9462 无解，使用蓝牙共享网络、USB共享网络或者USB网卡替代，或更换无线网卡[推荐更换“BCM94360CS2 + 转接卡”方案]；因为无线网络无解所以 Airdrop, Handoff 不可用）
- HDMI / miniDP（该模具 HDMI / miniDP 直接由独显输出, 独显无法驱动，所以 HDMI / miniDP 也无法使用）
- 读卡器（读卡器走的 USB 2.0 外置，无法使用）

## 获取社区帮助

### 请确保你在群里问问题之前，已经使用了搜索功能查找并仔细阅读了[此链接](https://hackintosh.kirainmoe.com)内的相关内容！

我们要求你具有基本的知识，如修复引导、重装系统、分区等。你可能会在里面遇到热心的朋友指导你一步步安装 macOS，但多数情况我们只能帮你点睛。如果没有上述基技能，建议先前往远景论坛或国外黑苹果论坛爬帖。

- 神舟战神黑苹果1群：https://jq.qq.com/?_wv=1027&k=5G82zlQ ，群号 833022235 （1000 人群，因为人数将满，现需要付费入群）

- 神舟战神黑苹果2群：https://jq.qq.com/?_wv=1027&k=5b7ZJWl ，群号 815359928 （500 人群）

> 由于一群人数爆满，因此不得不采取付费入群的措施限制入群人数。不必担心，用户仍然可以加入 2 群，也推荐所有新用户加入 2 群。  
二群**仅限清华同方模具的 8/9 代机型用户加入**。

| 一群 | 二群 |
|-----|------|
| <img src="https://i.loli.net/2020/01/05/sKh875UC14LFejv.png"> | <img src="https://i.loli.net/2019/11/23/Fzkeprn9PA7bf6q.png"> |

## 贡献本项目

欢迎大家一起完善该机型的 EFI. 如果你认为这份配置文件有可以改进的地方，请注册一个 Github 账号，fork 本仓库自行修改后提交 Pull Request.

机型的测试者、贡献者名单将被写在各机型的 README 中。如果你想做一个低调的人，请联系我撤下。

## 许可协议 & 捐赠

在 **[Maruyama License 协议](https://github.com/kirainmoe/hasee-tongfang-macos/blob/master/LICENSE)** 的许可下，使用本仓库下的所有配置文件都是**免费**的。如果有人向你售卖配置文件，请立刻要求他退款。

希望你们也能够发扬开源和分享精神，积极提出建议和想法、Pull Request，由大家共同打造完美的黑果体验。

当然，如果您认可我的工作，也可以通过捐赠支持我。所有的捐赠将会成为我更新的动力。

| 支付宝 | 微信 |
|-------|------|
| <img src="https://i.loli.net/2019/09/19/j8doaIVYWtMXlNJ.png" width="200px"> | <img src="https://i.loli.net/2019/09/19/xkoHIsuZLvtzDSP.png" width="200px"> |