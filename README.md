<p align="center">
    <img src="https://i.loli.net/2020/01/05/QilbpRdq4awGfSX.png" width="200px" alt="logo">
</p>

<h1 align="center">macOS on Hasee Tongfang Laptops</h1>

<p align="center">适用于神舟战神 8 / 9 代同方机型安装黑苹果的 OpenCore 配置文件</p>

<p align="center">
<img src="https://img.shields.io/badge/build-passing-brightgreen.svg"/> 

<img src="https://img.shields.io/badge/bootloader-OpenCore-lightgrey.svg"/> 

<img src="https://img.shields.io/badge/supported_macOS_version-10.15.x-9cf.svg"/>

<img src="https://img.shields.io/badge/built_by-Yume_Maruyama-ff69b4.svg"/> 
</p>

<p align="center">
<img src="https://i.loli.net/2020/02/03/O7evUCzWSdwEZY9.jpg" alt="screenshot">
</p>

<p align="center" style="font-size: 20px">
    <a href="https://www.bilibili.com/video/av81263778">安装视频教程</a> | 
    <a href="https://hackintosh.kirainmoe.com">帮助文档</a> |
    <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/Changelog.md">更新日志</a> | <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/README-en.md">English</a>
</p>

# 如何使用

## 获取 & 更新配置文件

请下载对应平台的 [Tongfang Hackintosh Utility](https://gitee.com/kirainmoe/project-starbeat/releases) 程序，根据你的型号与实际硬件配置，定制 OpenCore 配置文件。

请不要使用 GitHub 上的 "Download Zip" 功能，如下图所示：

<details>
<summary>获取配置文件正确示例</summary>

<img src="https://i.loli.net/2020/03/02/SfQYGwM9kjOpu14.jpg" alt="download from github" height="300px">

<img src="https://i.loli.net/2020/03/02/chKQqZ4UvASrwVL.png" alt="tongfang hackintosh utility" height="300px">
</details>

## 安装 macOS

请参照 [安装教学视频](https://www.bilibili.com/video/av81263778) 里的指引，使用上一步得到的配置文件安装好 macOS。

替换配置文件后，请在 macOS 下使用 [Tongfang Hackintosh Utility](https://gitee.com/kirainmoe/project-starbeat/releases) 程序的工具箱，执行修复睡眠等优化操作。

## 手动定制配置文件

我们推荐所有用户使用 Tongfang Hackintosh Utility 定制对应机型的配置文件。如果因为某些原因你无法使用此工具定制配置文件，请参考以下方式手动定制：

<details>
<summary>手动定制方式</summary>

<ul>
    <li>使用 Download Zip 下载并解压配置文件。</li>
    <li>在 OC/ACPI 文件夹中，根据你的模具选择对应的备选 USB 端口配置文件，改名为 SSDT-UIAC.aml（默认的 SSDT-UIAC.aml 是 GK5CN6X/GK5CN5X 的配置)。</li>
    <li>使用 Xcode / ProperTree 等 Plist 编辑工具编辑 config.plist，根据你的机型选择修改你需要启用的 ACPI 补丁、ACPI 重命名和内核拓展。</li>
    <li>在 config.plist 的 PlatformInfo 中修改你的三码。</li>
</ul>

</details>

# 兼容性

## 兼容的系统

最新配置文件仅兼容 **macOS Catalina 10.15** 及以上版本，目前已测试的最新兼容版本是 **10.15.3 (19D76)**.

如果你正在使用 macOS Mojave 10.14 或 macOS High Sierra 10.13.6 (17G2112) 以上版本，请前往 [GitHub Release](https://github.com/kirainmoe/hasee-tongfang-macos/releases) 下载已停止维护的基于 Clover 的引导配置。

## 适用的机型

理论上所有使用清华同方模具的**标压** 8/9 代机型均可使用对应的配置文件，**不兼容蓝天模具机型、广达模具机型、七代（含）以下机型**。详细的兼容型号表格如下：

### 神舟战神系列

| 模具代号 | 具体型号 |
|---------|--------|
| GK5CN6X | Z7-KP7GZ <br> Z7-KP7Z | 
| GK5CN5X | Z7M-KP7GZ <br> Z7M-KP7Z <br> Z7M-KP5GZ <br> Z7M-KP5Z |
| GJ5CN64 | Z7-KP7EC<br> Z7-KP7GC<br> Z7-KP7GA <br> Z7-KP7GE <br> Z7-KP7GH |
| GI5CN54 | Z7M-KP7GC<br> Z7M-KP5GC <br> Z7M-KP7GA<br> Z7M-KP5GA <br> Z7M-KP7GE <br> Z7M-KP5GE <br> Z7M-KP7GH<br> Z7M-KP5GH |
| GK7CP6R | Z7-CT7GK <br> Z7-CT7VH <br> G7-CT7VK <br> Z7-CT7VA <br> Z7-CT5GA |
| GK5CP6X | Z7M-CT7GS |
| GK5CP5X | Z7M-CT5GA |

### 其它品牌兼容机型

| 模具代号 | 具体型号 |
|---------|--------|
| GK5CN5X | 炫龙 耀7000 <br> 机械革命 Z2 Air |
| GK5CP6X | 机械革命 Z2 Air-G


# 设备驱动情况

配置概览：

| Component | Model | Comments |
|--|--|---|
| CPU | Intel Core(TM) i7-8750H |  |
| IGPU | Intel UHD Graphics 630 | |
| DGPU | Nvidia Geforce GTX 1060 | 8 代以上同方机型的 Nvidia 独显在任何 macOS 版本下无法驱动 <br>关于具体的原因猜测，请参见[此文章](http://www.bswaterb.club/?p=285) |
| RAM | Micron Crucial 8GB+8GB | |
| NVMe SSD | WD Black SN750 NVME SSD 500G | 请确保你的机器未装有：三星 PM981(a)、镁光 2200s、Intel Optane 加速内存、HP EX920 等 macOS 不支持的硬盘 | 
| SATA SSD | Phison SATA SSD 128G | | 
| Wireless | BCM94360CS2 | 原机自带的 Intel AC9462/AC9560 无法在 macOS 下驱动 |
| Ethernet | Realtek RTL8168H | |
| Audio | Realtek ALC269vc | |

## 功能列表

| 功能 | 正常 | 细节 |
|----------|---------|---------|
| CPU 睿频、变频 | √ | |
| 核芯显卡 | √ | `platform-id`: `0x3e9b0000` |
| 亮度调节 | √ |  |
| 有线网卡 | √ |  |
| 声卡 | √ | layout-id: 29 |
| 原生电源管理<br>电池状态 | √ | SMBIOS: `MacBookPro15,3` (MacBook Pro 15inch, 2019) |
| Intel 蓝牙 | √ | 仅支持 Intel AC9462 / AC9560 / AX200   |
| 触摸板 | √ | **GJ5CN64 / GI5CN54 系列模具的 PS2 触摸板不完全支持 macOS 原生手势** <br>其它模具的 I2C HID 触摸板可完美使用 |
| 睡眠 | √ | 需要在安装系统后手动使用 Tongfang Hackintosh Utility 工具箱中的功能修复睡眠 |
| Fn 快捷键 | 部分 | 需要使用 Tongfang Hackintosh Utility 安装守护程序<br>GJ5CN64 / GI5CN54 模具默认使用 ApplePS2SmartTouchpad 驱动，Fn 快捷键将不可用 |
| 随航 (Sidecar) | 部分 | 可能需要更换无线网卡 |
| 摄像头 | √ | |
| USB3.0 <br> Type-C | √ |  |
| 独立显卡 | × | 已使用 `SSDT-DDGPU.aml` 屏蔽了独显<br><br>同方八代以上模具的 HDMI / miniDP 由独显直接输出，所以 HDMI / miniDP 无法使用<br><br>**同方模具的 Type-C 口没有视频输出功能** |
| 无线网卡 | × | Intel AC9462 / AC9560 无解，以下给出参考替代方案：<br> - 蓝牙共享网络 <br> - USB共享网络 (HoRNDIS) <br> - USB无线网卡 <br> - 更换内置无线网卡 [推荐更换“BCM94360CS2 + 转接卡”方案] <br><br> 由于 “**隔空投送 AirDrop**” 和 “**接力 Handoff**” 依赖于无线网络和蓝牙，所以此两项功能不可用<br><br> 请注意：**DW1820A 无线网卡在同方模具上有已知的兼容性问题，包括双系统使用时可能导致 Windows 蓝屏、重启后找不到无线网卡等，请尽量避免更换此网卡**|
| 读卡器 | × | 读卡器走的是 USB 2.0 通道，没有兼容驱动 |

# 问题反馈

你可以通过在 GitHub 上提 issue 的方式反馈问题，或者向 kirainmoe@gmail.com 发送问题报告邮件。

# QQ 交流群

**请确保你在群里问问题之前，已经看过了[教学视频](https://www.bilibili.com/video/av81263778)、并使用了搜索功能查找并仔细阅读了[项目文档](https://hackintosh.kirainmoe.com)内的相关内容！**


| 群名称 | 神舟战神黑苹果 1 群 | 神舟战神黑苹果 2 群 |
|-----|------|---------|
| 群号 | 833022235 | 815359928 |
| 加群二维码 | <img src="https://i.loli.net/2020/01/05/sKh875UC14LFejv.png"> | <img src="https://i.loli.net/2019/11/23/Fzkeprn9PA7bf6q.png"> |
| 加群链接 | https://jq.qq.com/?_wv=1027&k=5G82zlQ | https://jq.qq.com/?_wv=1027&k=5b7ZJWl |
| 规模 | 1000 人群 | 500 人群 |
| 特殊限制 | 因人数爆满，暂需付费 1 元入群 | **仅限清华同方模具的 8/9 代机型用户加入** |
| 备注 | - | 新群人数较少，推荐新用户加入 2 群 |

# 鸣谢

- 感谢 [@Goshin](https://github.com/goshin) 修复了 VoodooI2C 触摸板驱动的遗留问题、修复了九代同方机型无法使用 VoodooPS2Controller 驱动的问题、补充了 Fn 快捷键的功能。
- 感谢 [@zxystd](https://github.com/zxystd) 提供了因特尔蓝牙驱动 IntelBluetoothFirmware.kext.
- 其它内核拓展和 SSDT 的作者，可在本仓库的其它 README 文档或对应的 Info.plist 中找到。

# 许可协议 & 捐赠

在 **[Maruyama License 协议](https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/LICENSE)** 的许可下，使用本仓库下的所有配置文件都是**免费**的。为了保护你的权益，建议你不要通过 **任何渠道** 以 **任何价格** 购买上述机型的配置文件。

当然，如果您认可我的工作，也可以通过捐赠支持我。所有的捐赠将会成为我更新的动力。

| 支付宝 | 微信 |
|-------|------|
| <img src="https://i.loli.net/2019/09/19/j8doaIVYWtMXlNJ.png" width="200px"> | <img src="https://i.loli.net/2019/09/19/xkoHIsuZLvtzDSP.png" width="200px"> |
