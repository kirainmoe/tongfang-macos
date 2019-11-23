<p align="center">
<img src="https://camo.githubusercontent.com/fdf99521fc1a9feba39e2cb7926926f75754f7b0/68747470733a2f2f7773322e73696e61696d672e636e2f6c617267652f3966313133376231677931673168673365706961326a32306e3530356a7439712e6a7067" width="300px" alt="logo">
</p>

<h1 align="center">macOS on Hasee Tongfang Laptops</h1>

<p align="center">用于神舟战神 8 / 9 代同方机型安装最新版 macOS Mojave/Catalina （黑苹果）的 Clover 配置文件</p>

<p align="center">
<img src="https://img.shields.io/badge/build-passing-brightgreen.svg"/> 
<a href="https://aya-buildbot.kirainmoe.com">
    <img src="https://img.shields.io/badge/download-release-blue.svg"/> 
</a>
<img src="https://img.shields.io/badge/coverage-98%25-brightgreen.svg"/> <img src="https://img.shields.io/badge/macOS_version-10.15.1-9cf.svg"/> <img src="https://img.shields.io/badge/built_by-Yume_Maruyama-ff69b4.svg"/> 
</p>

<img src="https://i.loli.net/2019/05/14/5cda65189a08439627.jpg" width="50%"><img src="https://i.loli.net/2019/11/14/KjDoatnA9Y37QHV.jpg" width="50%">

<h3 align="center">
    <a href="https://aya-buildbot.kirainmoe.com/">配置文件下载地址</a> /
    <a href="https://hackintosh.kirainmoe.com">你想知道的一切</a> /
    <a href="https://github.com/kirainmoe/hasee-z7-kp7gz-macos/issues?q=is%3Aissue+is%3Aclosed">已知问题</a> /
    <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/master/Changelog.md">更新日志</a> / <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/master/README-en.md">English</a>
</h3>

# 如何使用？

## 自动安装、更新程序（推荐）

安装完系统后，在 macOS 的终端执行以下命令：

```bash
curl -fsSL https://efi.kirainmoe.com/installer > inst && chmod +x ./inst && sudo ./inst
```

## 手动下载和替换

你可以到 [Aya Buildbot](https://aya-buildbot.kirainmoe.com) 下载对应机型的最新版本配置文件，然后按照[《EFI 替换教程》](https://hackintosh.kirainmoe.com/an-zhuang-zhong/efi-ti-huan-jiao-cheng) 替换。

# 说明

> Tips: 完整的使用说明请参照 [神舟黑苹果百科](https://hackintosh.kirainmoe.com) 页面。如果你遇到了任何问题，请先在上面的链接右上角的搜索框中搜索关键词。

## 安装系统前

[安装前须知](https://hackintosh.kirainmoe.com/before-install/an-zhuang-qian-xu-zhi) ： 了解兼容性情况和安装的注意事项

## 系统安装资源和教程

**[macOS 简明安装教程](https://hackintosh.kirainmoe.com/an-zhuang-zhong/macos-an-zhuang-jian-ming-jiao-cheng) ：如果你不知道如何全新安装 macOS，请仔细阅读此教程**

[各机型配置文件下载地址](https://aya-buildbot.kirainmoe.com/)

[EFI 替换教程](https://hackintosh.kirainmoe.com/an-zhuang-zhong/efi-ti-huan-jiao-cheng)


## 遇到问题？

[安装过程中的疑难解答](https://hackintosh.kirainmoe.com/an-zhuang-zhong/an-zhuang-guo-cheng-zhong-de-yi-nan-jie-da)

[安装后的常见问题解答](https://hackintosh.kirainmoe.com/an-zhuang-hou/an-zhuang-hou-de-chang-jian-wen-ti-jie-da)

[问题排查指导 (Troubleshooting)](https://hackintosh.kirainmoe.com/an-zhuang-hou/wen-ti-pai-cha-zhi-dao-troubleshooting)

## 获取更好的体验

[优化脚本](https://hackintosh.kirainmoe.com/an-zhuang-hou/an-zhuang-hou-de-chang-jian-wen-ti-jie-da#postinstall-you-hua-jiao-ben-shi-shen-me-wei-shen-me-xu-yao-zhi-hang-ta)：解决睡眠等功能的不正常问题；一键开启 HiDPI 等

[硬件更换指南和兼容性报告](https://hackintosh.kirainmoe.com/an-zhuang-hou/ying-jian-geng-huan-zhi-nan-he-jian-rong-xing-bao-gao)：更换硬件的一些建议和提醒

[常用命令和优化](https://hackintosh.kirainmoe.com/an-zhuang-hou/chang-yong-ming-ling-he-you-hua)

[Project: STAR BEAT! - 为同方模具的神舟笔记本设计的 macOS 版控制中心](https://github.com/kirainmoe/project-starbeat/releases)


# 兼容情况

## 兼容的 macOS 版本

| 版本号 | 版本代号 | 是否兼容 | 维护者实机测试正常 | 用户实机测试正常 |
|-------|---------|--------|------------|----------|
| 10.13.6 | 17G65 | ✖ no | ✖ no | - |
| 10.13.6 | 17G2112+ | ☑ yes | ❓untested | ☑ yes |
| 10.14 | 18A389 | ☑ yes | ❓untested | ❓untested |
| 10.14.1 | 18B75 | ☑ yes | ❓untested | ❓untested |
| 10.14.2 | 18C54 | ☑ yes | ☑ yes | ☑ yes |
| 10.14.3 | 18D42 | ☑ yes | ☑ yes | ☑ yes |
| 10.14.4 | 18E226 | ☑ yes | ☑ yes | ☑ yes |
| 10.14.5 | 18F132 | ☑ yes | ☑ yes | ☑ yes |
| 10.14.6 | 18G87 | ☑ yes | ❓untested | ☑ yes |
| 10.15   | 19A603 | ☑ yes | ☑ yes | ☑ yes |
| 10.15.1 | 19B88 | ☑ yes | ☑ yes | ☑ yes |

## 兼容的型号

| 模具代号 | 型号 | 分支 |
|-----|------|-----|
| GK5CN5X <br> GK5CN6X | Z7-KP7GZ<br> Z7m-KP7GZ<br> Z7m-KP5GZ<br> Z7-KP7Z<br> Z7m-KP7Z<br> Z7m-KP5Z | [master](https://github.com/kirainmoe/hasee-tongfang-macos) | 
| GI5CN54 <br> GJ5CN64 | Z7-KP7EC<br> Z7m-KP7EC<br> Z7m-KP5EC | [kp7ec](https://github.com/kirainmoe/hasee-tongfang-macos/tree/kp7ec) |
| GI5CN54 <br> GJ5CN64 | Z7-KP7GC<br> Z7m-KP7GC<br> Z7m-KP5GC | [kp7gc](https://github.com/kirainmoe/hasee-tongfang-macos/tree/kp7gc) |
| GK7CP6R | Z7-CT7GK <br> Z7m-CT7GS <br> Z7-CT7VH <br> G7-CT7VK | [ct7gk](https://github.com/kirainmoe/hasee-tongfang-macos/tree/ct7gk) |

# 设备驱动情况

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

## What's working

- 睿频、变频正常（使用 18 款 MacBook Pro SMBIOS，最低 800Mhz, 最高睿频 4.1GHz）
- Intel UHD630（已应用显存补丁，2048 MB）
- 亮度调节（可在设置中调节或使用 Fn+F11, Fn+F12 快捷键，后者在九代同方机型上不可用）
- I2C HID 触摸板
- 有线网卡
- 声音（ALC269vc, 使用 AppleALC 仿冒，注入 layout-id 为 29 或 88，外放、耳机、麦克风全部正常）
- 电池状态（现已使用 Clover Hotpatch 驱动）
- USB （使用 USBInjectAll + SSDT 驱动，3.0 5G/s 速度正常，Type-C 可用）
- 睡眠（使用 Clover Hotpatch 修复）
- 摄像头
- etc.

> Tips：以上情况基于 KP7GZ 系列机型；对于使用其它机型的用户，可能会有一些功能不正常，请用户测试后反馈。

## What's partially working

- 蓝牙 (需要热启动 macOS 才可用，即先进入 Winodws 后重启进入 macOS、或者在 macOS 下使用虚拟机模拟热启动过程。不支持 AirDrop.)
- PS/2 触摸板（针对 GC 系列机型，因为该模具使用的触摸板为 PS2 触摸板，没有手势支持）

## What's not working

- 独立显卡（目前已知没有任何解决方案）
- 无线网卡（Intel AC9462 无解，使用蓝牙共享网络、USB共享网络或者USB网卡替代，或更换无线网卡）
- HDMI/MiniDP（该模具 HDMI/MiniDP 直接由独显输出, 独显无法驱动，所以 HDMI/MiniDP 也无法使用）
- 读卡器（读卡器走的 USB 2.0 外置，无法使用）

# 获取社区帮助

- 神舟战神黑苹果1群：https://jq.qq.com/?_wv=1027&k=5G82zlQ ，群号 833022235 （500 人群，因为人数将满，现需要付费入群）

- 神舟战神黑苹果2群：https://jq.qq.com/?_wv=1027&k=5b7ZJWl ，群号 815359928 （500 人群）

> 由于一群人数爆满，因此不得不采取付费入群的措施限制入群人数。不必担心，用户仍然可以加入 2 群，也推荐所有新用户加入 2 群。

![image.png](https://i.loli.net/2019/11/23/Fzkeprn9PA7bf6q.png)

## 请确保你在群里问问题之前，已经使用了搜索功能查找并仔细阅读了[此链接](https://hackintosh.kirainmoe.com)内的相关内容！

我们要求你具有基本的知识，如修复引导、重装系统、分区等。你可能会在里面遇到热心的朋友指导你一步步安装 macOS，但多数情况我们只能帮你点睛。如果没有上述基技能，建议先前往远景论坛或国外黑苹果论坛爬帖。

# 贡献本项目

欢迎大家一起完善该机型的 EFI. 如果你认为这份配置文件有可以改进的地方，请注册一个 Github 账号，fork 本仓库自行修改后提交 Pull Request.

# 许可协议 & 捐赠

在 [Maruyama License 协议](https://github.com/kirainmoe/hasee-tongfang-macos/blob/master/LICENSE)的许可下，使用本仓库下的所有配置文件都是免费的。如果有人向你售卖配置文件，请立刻要求他退款。

希望你们也能够发扬开源和分享精神，积极提出建议和想法、Pull Request，由大家共同打造完美的黑果体验。

当然，如果您认可我的工作，也可以通过捐赠支持我。所有的捐赠将会成为我更新的动力。

| 支付宝 | 微信 |
|-------|------|
| <img src="https://i.loli.net/2019/09/19/j8doaIVYWtMXlNJ.png" width="200px"> | <img src="https://i.loli.net/2019/09/19/xkoHIsuZLvtzDSP.png" width="200px"> |