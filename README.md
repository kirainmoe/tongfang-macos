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

<h4 align="center">
    <a href="https://www.bilibili.com/video/av81263778">安装视频教程</a> | 
    <a href="https://hackintosh.kirainmoe.com">帮助文档</a> |
    <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/Changelog.md">更新日志</a> | <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/README-en.md">English</a>
</h4>

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

理论上所有使用清华同方模具的 8/9 代机型均可使用对应的配置文件。详细的兼容型号表格如下：

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

### 不适用的机型

请注意，本仓库只适配使用**因特尔第 8 代和第 9 代**标压酷睿处理器、使用**清华同方模具**的笔记本，故以下机型**不能**正常使用此配置文件，包括但不限于以下机型：

| 型号 | 原因 |
|-----|------|
| Z7(m)-KP7/5GT <br> Z7(m)-KP7D2 <br> Z7(m)-KP7/5GS | 使用同方七代以下模具 |
| Z7(m)-CT7/5N* <br> Z7-C7TPro <br> Z7(m)-KP7/5S* <br> Z7(m)-KP7/5D1 <br> Z7(m)-SL* | 使用蓝天笔记本模具 |
| ZX7* <br> GX7* | 使用蓝天桌面模具 |
| K6\*0\*-**** <br> Z7-i7* | 使用蓝天模具或为四代以下平台 |
| 精盾 U45S1<br> 精盾 U47T1 <br> ... | 使用广达模具 |

对于上述机型，可以到百度、远景或[此仓库](https://github.com/daliansky/hackintosh)尝试找到对应模具/机型的 EFI.

# 设备驱动情况

## 设备配置概览

以下是维护者电脑的参考配置。

| Component | Model | Comments |
|--|--|---|
| CPU | Intel Core(TM) i7-8750H | 除 GJ5CN64/GI5CN54 模具外，其余模具的 i5 型号和 i7 型号可使用同一套配置文件 |
| IGPU | Intel UHD Graphics 630 | |
| DGPU | Nvidia Geforce GTX 1060 | 8 代以上同方机型的 Nvidia 独显在任何 macOS 版本下无法驱动 <br>关于具体的原因猜测，请参见[此文章](http://www.bswaterb.club/?p=285) |
| RAM | Micron Crucial 8GB+8GB | |
| NVMe SSD | WD Black SN750 NVME SSD 500G | 请确保你的机器未装有：三星 PM981(a)、镁光 2200s、Intel Optane 加速内存等 macOS 不支持的硬盘 | 
| SATA SSD | Phison SATA SSD 128G | | 
| Wireless | BCM94360CS2 | 原机自带的 Intel AC9462/AC9560 无法在 macOS 下驱动 |
| Ethernet | Realtek RTL8168H | |
| Audio | Realtek ALC269vc | |

## 正常工作的功能

- CPU 睿频、变频
- 核芯显卡 Intel UHD Graphics 630
- 亮度调节
- 触摸板 (I2C, PS/2) [1]
- 有线网卡
- 声卡 (扬声器、耳机、麦克风) [2]
- 原生电源管理、电池状态
- USB 3.0, Type-C
- Intel 蓝牙 [3]
- 睡眠 [4]
- Fn 快捷键 [5]
- 摄像头

> 注：  
> 
> [1] GJ5CN64 / GI5CN54 系列模具的 PS2 触摸板不完全支持 macOS 原生手势; 其它模具的 I2C HID 触摸板可完美使用。  
[2] 声卡使用 AppleALC 仿冒内建，通过设备属性的方式，注入 layout-id 为 29.  
[3] 因特尔 AC9462 / AC9560 / AX200 无线网卡的蓝牙无需热启动即可加载固件。  
[4] 睡眠需要在安装系统后使用 Tongfang Hackintosh Utility 调节睡眠参数。  
[5] Fn 快捷键需要使用 Tongfang Hackintosh Utility 安装守护程序。GJ5CN64 / GI5CN54 模具由于默认使用 ApplePS2SmartTouchpad 作为键盘驱动，Fn 快捷键将不可用。

## 无法使用

- 独立显卡（目前已知没有任何解决方案）

> 已使用 `SSDT-DDGPU.aml` 屏蔽了独显
>
> 由于同方八代以上模具的 HDMI / miniDP 直接由无法驱动的独显输出，所以 HDMI / miniDP 也无法使用。

- 无线网卡（Intel AC9462 / AC9560 无解）

> 无线网卡无法使用的替代方案：
> - 蓝牙共享网络
> - USB共享网络 (HoRNDIS) 
> - USB无线网卡
> - 更换内置无线网卡 [推荐更换“BCM94360CS2 + 转接卡”方案]
> 
> 由于 “**隔空投送 AirDrop**” 和 “**接力 Handoff**” 依赖于无线网络和蓝牙，所以此两项功能不可用。
> 
> 请注意：**DW1820A 网卡在同方模具上有已知的兼容性问题，包括双系统使用时可能导致 Windows 蓝屏、重启后找不到无线网卡等，请尽量避免更换此网卡。**

- 读卡器（读卡器为 USB 2.0 外置通道，没有兼容驱动）

## 截图

<img src="https://i.loli.net/2020/02/03/O7evUCzWSdwEZY9.jpg" alt="screenshot">

# 问题反馈 & 社区交流

## 问题反馈

你可以通过在 GitHub 上提 issue 的方式反馈问题，或者向 kirainmoe@gmail.com 发送问题报告邮件。

## QQ 群

**请确保你在群里问问题之前，已经看过了[教学视频](https://www.bilibili.com/video/av81263778)、并使用了搜索功能查找并仔细阅读了[项目文档](https://hackintosh.kirainmoe.com)内的相关内容！**


| 群名称 | 神舟战神黑苹果 1 群 | 神舟战神黑苹果 2 群 |
|-----|------|---------|
| 群号 | 833022235 | 815359928 |
| 加群二维码 | <img src="https://i.loli.net/2020/01/05/sKh875UC14LFejv.png"> | <img src="https://i.loli.net/2019/11/23/Fzkeprn9PA7bf6q.png"> |
| 加群链接 | https://jq.qq.com/?_wv=1027&k=5G82zlQ | https://jq.qq.com/?_wv=1027&k=5b7ZJWl |
| 规模 | 1000 人群 | 500 人群 |
| 特殊限制 | 因人数爆满，暂需付费 1 元入群 | **仅限清华同方模具的 8/9 代机型用户加入** |
| 备注 | - | 新群人数较少，推荐新用户加入 2 群 |

# 贡献与鸣谢

欢迎大家一起完善该系列机型的 EFI. 如果你认为这份配置文件有可以改进的地方，请注册一个 Github 账号，fork 本仓库自行修改后提交 Pull Request.

### 特别鸣谢

- 感谢 [@Goshin](https://github.com/goshin) 修复了 VoodooI2C 触摸板驱动的遗留问题、修复了九代同方机型无法使用 VoodooPS2Controller 驱动的问题、补充了 Fn 快捷键的功能。
- 感谢 [@zxystd](https://github.com/zxystd) 提供了因特尔蓝牙驱动 IntelBluetoothFirmware.kext.
- 其它内核拓展和 SSDT 的作者，可在本仓库的其它 README 文档或对应的 Info.plist 中找到。

# 许可协议 & 捐赠

在 **[Maruyama License 协议](https://github.com/kirainmoe/hasee-tongfang-macos/blob/gk5cn6/5x-clover/LICENSE)** 的许可下，使用本仓库下的所有配置文件都是**免费**的。

为了保护你的权益，建议你不要通过 **任何渠道** 以 **任何价格** 购买上述机型的配置文件。

当然，如果您认可我的工作，也可以通过捐赠支持我。所有的捐赠将会成为我更新的动力。

| 支付宝 | 微信 |
|-------|------|
| <img src="https://i.loli.net/2019/09/19/j8doaIVYWtMXlNJ.png" width="200px"> | <img src="https://i.loli.net/2019/09/19/xkoHIsuZLvtzDSP.png" width="200px"> |
