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

![QQ20200325-143522@2x.jpg](https://i.loli.net/2020/03/25/LoQyVpiABHuwmW9.jpg)

<h3 align="center">
    <a href="https://www.bilibili.com/video/av81263778">安装视频教程</a> | 
    <a href="https://hackintosh.kirainmoe.com">帮助文档</a> |
    <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/Docs/Changelog.md">更新日志</a> | <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/Docs/Adapting-Guidance-zh-CN.md">同方机型适配指南</a> | <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/README-en.md">English</a>
</h3>

# 如何使用

## 获取 & 更新配置文件

请下载对应平台的 [Tongfang Hackintosh Utility](https://starbeat.kirainmoe.com) 程序，根据你的型号与实际硬件配置，定制 OpenCore 配置文件。

请不要使用 GitHub 上的 "Download Zip" 功能，如下图所示：

<details>
<summary>获取配置文件正确示例</summary>

<img src="https://i.loli.net/2020/03/02/SfQYGwM9kjOpu14.jpg" alt="download from github">

<img src="https://i.loli.net/2020/03/02/chKQqZ4UvASrwVL.png" alt="tongfang hackintosh utility">
</details>

## 安装 macOS

请参照 [安装教学视频](https://www.bilibili.com/video/av81263778) 里的指引，使用上一步得到的配置文件安装好 macOS。

替换配置文件后，请在 macOS 下使用 [Tongfang Hackintosh Utility](https://starbeat.kirainmoe.com) 程序的工具箱，执行修复睡眠等优化操作。

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

最新配置文件仅兼容 **macOS Catalina 10.15** 及以上版本，目前已测试的最新兼容版本是 **10.15.4 (19E266)**.

## 适用的机型

理论上所有使用清华同方模具的**标压** 8/9 代机型均可使用对应的配置文件，**不兼容蓝天模具机型、广达模具机型、七代（含）以下机型**。详细的兼容型号表格如下：

### 神舟战神系列

已测试：

| 模具代号 | 具体型号 |
|---------|--------|
| GK5CN6X | Z7-KP7GZ、Z7-KP7Z | 
| GK5CN5X | Z7M-KP7GZ、Z7M-KP7Z、 Z7M-KP5GZ、 Z7M-KP5Z |
| GJ5CN64 | Z7-KP7EC、Z7-KP7GC、 Z7-KP7GA、 Z7-KP7GE、 Z7-KP7GH |
| GI5CN54 | Z7M-KP7GC、Z7M-KP5GC、Z7M-KP7GA、Z7M-KP5GA<br> Z7M-KP7GE、Z7M-KP5GE、Z7M-KP7GH、Z7M-KP5GH |
| GK5CP6X | Z7-CT7GK、Z7-CT5GA、Z7-CT7GA |
| GK5CP5X | Z7M-CT7GS、Z7M-CT5GA |
| GK7CP6R | G7-CT7VK、G7-CT7RA |
| GK5CP6V | Z7-CT7VH、Z7-CT7VA、Z7-CT5VH |
| GK5CP5V | Z7M-CT5VH、Z7M-CT7VH |

未测试：

| 模具代号 | 具体型号 |
|---------|--------|
| GK5CR0V | Z8-CT7VK |
| GK5CP6V | Z7-CT5N1 |
| GK5CP5V | Z7M-CT5N1 |
| GJ5CN64 | Z7-KP7S |

### 如何确定我的笔记本是否兼容 ？

**并不是配置相近就可以使用此仓库的 EFI**。如果你的模具型号没有出现在上述列表中，可以到 http://kfgl.hasee.com/lookup/book/bblist.asp 页面，查询你的笔记本型号所对应的准系统名称。

若你的笔记本采用 8/9 代因特尔酷睿处理器，且查询到准系统名称中带有 **“（同方）”** 字样，则你的笔记本可以兼容此仓库的配置文件。

### 其它品牌理论兼容机型

> 请注意，以下机型仅为 **理论兼容**，仅在用户 **找不到与你使用的机型匹配的 EFI** 时可以选择作为替代，保证基本功能（核显、声音、亮度、电源等）能正常驱动。实际上根据不同厂商的 BIOS 不同、USB 端口定义不同等原因，**不一定能完美兼容**，请周知。

| 模具代号 | 具体型号 |
|---------|--------|
| GK5CN5X | 炫龙 耀9000 II、炫龙 耀7000 <br> 机械革命 Z2 Air |
| GK5CP6X <br> GK5CP5X | 机械革命 Z2 Air-G |
| GK7CP6R | 炫龙 炎魔T3Ti <br> 机械革命 X3 |
| GI5CN54 | 炫龙 炎魔T2Ti |

建议以上机型用户参照 [此教程](https://blog.daliansky.net/Intel-FB-Patcher-tutorial-and-insertion-pose.html) 自行定制 USB。

# 配置概览

## 参考配置

| Component | Model | Comments |
|--|--|---|
| CPU | Intel Core(TM) i7-8750H |  |
| IGPU | Intel UHD Graphics 630 | |
| DGPU | Nvidia Geforce GTX 1060 | 8 代以上同方机型的 Nvidia 独显无法在任何版本的 macOS 下被驱动 <br>关于具体的原因猜测，请参见[此文章](http://www.bswaterb.club/?p=285) |
| RAM | Micron Crucial 8GB+8GB | |
| NVMe SSD | WD Black SN750 NVME SSD 500G | 请确保你的机器未装有：三星 PM981(a)、镁光 2200s、<br>傲腾、HP EX920 等 macOS 不支持的硬盘 | 
| SATA SSD | Phison SATA SSD 128G | | 
| Wireless | BCM94360CS2 | 原机自带的 Intel AC9462/AC9560 无法在 macOS 下驱动 |
| Ethernet | Realtek RTL8168H | |
| Audio | Realtek ALC269vc | |

## 配置文件

### 发行说明

- OpenCore Bootloader 使用官方 0.5.7 版本。
- 配置文件的 SMBIOS 采用 `MacBookPro15,3` （MacBook Pro 15 inch, 2019）
- 默认支持 Windows 和 macOS 双引导，若需要引导其他操作系统需自行添加。
- OpenCore 集成了 NdkBootPicker GUI 和定制的神舟引导主题。
- 此版本对更换了 4K 屏幕的笔记本做了兼容；对于 GI5CN54 / GJ5CN64 模具改 4K 屏的用户，**需要先解锁 BIOS 或使用 UEFI Shell** 修改 `DVMT Pre-allocated` 为 `64MB` 以上。

### Working

- [x] CPU 睿频、变频
- [x] 核芯显卡 Intel UHD Graphics 630 (platform-id: `3E9B0000`)
- [x] 声卡 Realtek ALC269vc (layout-id: `29`)
- [x] 有线网卡 Realtek RTL8168H
- [x] Intel 蓝牙 (AC9462, AC9560, AX200)
- [x] USB 3.0, Type-C 
- [x] 亮度调节
- [x] 原生电源管理
- [x] 电池状态显示
- [x] 摄像头
- [x] 睡眠 *
- [x] Fn 快捷键 *
- [ ] 触摸板 (I2C HID 触摸板手势完美，PS/2 触摸板支持有限)
- [ ] 随航（无线随航可能需要更换无线网卡）

> 备注：
> - 标 * 的功能表示需要在安装系统后使用 [Tongfang Hackintosh Utility](https://starbeat.kirainmoe.com) 程序修复。  
> - 未打钩的项目表示该功能的驱动情况可能因机型而异，如 GI5CN54/GJ5CN64 的 PS/2 触摸板仅有有限的手势支持。

### Not Working

- [ ] 独立显卡 （已使用 `SSDT-DDGPU.aml` 屏蔽）
- [ ] Intel 无线网卡
- [ ] 读卡器

> 备注：
> - 同方 8 代以上模具的 HDMI / miniDP 接口直连独显，因此**无法在 macOS 下使用 HDMI/miniDP 接口外接显示器**。如有需要外接需购买 USB 转 HDMI 转换器（请注意不是普通的拓展坞），请参考 [此页面](https://hackintosh.kirainmoe.com/an-zhuang-hou/an-zhuang-hou-de-chang-jian-wen-ti-jie-da#na-wo-zen-yang-wai-jie-xian-shi-qi) 中提供的解决方案。
> - **本仓库支持的同方模具的 Type-C 接口没有视频输出功能。**
> - 由于原装的 Intel AC9462（AC9560） 暂时没有可用驱动，因此 Wi-Fi 功能将不可用，这是常识。
> - 若要使用网络，可以使用以太网、USB 共享网络、蓝牙共享网络、外接 USB 无线网卡，或更换内置无线网卡。
> - 由于**隔空投送 (Airdrop) 和接力 (Handoff)** 功能依赖于 WiFi 和低功耗蓝牙，因此默认情况下此两项功能将不可用。
> - 请注意：**DW1820A 无线网卡在同方模具上有已知的兼容性问题**，包括双系统使用时可能导致 Windows 蓝屏、重启后找不到无线网卡等，请尽量避免更换此网卡。
> - 若有更换无线网卡的需求，推荐更换 [BCM94360CS2 + NGFF 转接卡] 方案。

# 问题反馈 & 交流

你可以通过在 GitHub 上提 issue 的方式反馈问题，或者向 kirainmoe@gmail.com 发送问题报告邮件。

## QQ 交流群

**请确保你在群里问问题之前，已经看过了[教学视频](https://www.bilibili.com/video/av81263778)、并使用了搜索功能查找并仔细阅读了[项目文档](https://hackintosh.kirainmoe.com)内的相关内容！**


| 群名称 | 神舟战神黑苹果 1 群 | 神舟战神黑苹果 2 群 |
|-----|------|---------|
| 群号 | 833022235 | 815359928 |
| 加群二维码 | <img src="https://i.loli.net/2020/01/05/sKh875UC14LFejv.png"> | <img src="https://i.loli.net/2019/11/23/Fzkeprn9PA7bf6q.png"> |
| 加群链接 | https://jq.qq.com/?_wv=1027&k=5G82zlQ | https://jq.qq.com/?_wv=1027&k=5b7ZJWl |
| 规模 | 1000 人群 | 500 人群 |
| 特殊限制 | 因人数爆满，暂需付费 1 元入群 | **仅限清华同方模具的 8/9 代机型用户加入** |
| 备注 | - | 新群人数较少，推荐新用户加入 2 群 |

# 贡献者 & 鸣谢

请转到 [《贡献者与鸣谢名单》](Docs/Credits.md) 查看所有的贡献者及版权声明。

# 许可协议 & 捐赠

在 **[Maruyama License 协议](https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/LICENSE)** 的许可下，使用本仓库下的所有配置文件都是**免费**的。为了保护你的权益，建议你不要通过 **任何渠道** 以 **任何价格** 购买上述机型的配置文件。

**若你在此配置文件的基础上适配其它机型的配置文件，则需要保留许可协议中的版权信息和上述鸣谢信息。**

当然，如果您认可我的工作，也可以通过捐赠支持我。所有的捐赠将会成为我更新的动力。

| 支付宝 | 微信 |
|-------|------|
| <img src="https://i.loli.net/2019/09/19/j8doaIVYWtMXlNJ.png" width="200px"> | <img src="https://i.loli.net/2019/09/19/xkoHIsuZLvtzDSP.png" width="200px"> |

# 拓展阅读

提示：涉及硬件层面的修改请谨慎操作。

- [GJ5CN64 / GI5CN54 模具 PS/2 触摸板优化方案 (by @anhor)](https://ts.ryanhor.com/2020/03/12/how-to-hack-perfect/)
- [Aptio V BIOS 解锁全功能教程 (by @bswaterb)](http://www.bswaterb.club/?p=218)
- [不刷新 BIOS 的前提下修改 DVMT Pre-allocated](https://www.misonsky.cn/115.html)