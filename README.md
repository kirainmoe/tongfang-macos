<!-- omit in toc -->
#  macOS on Tongfang Laptops

<img align="right" src="https://i.loli.net/2020/07/28/p6YFWyzeNE2Iqcn.png" width="200px" alt="logo">

适用于神舟战神、机械革命等品牌 8/9 代同方机型安装黑苹果的 OpenCore 配置文件

<img src="https://img.shields.io/travis/com/kirainmoe/hasee-tongfang-macos/oc-general"/> <img src="https://img.shields.io/badge/bootloader-OpenCore-lightgrey.svg"/> <img src="https://img.shields.io/badge/support_macOS-11.0_Beta_3-9cf.svg"/>  <img src="https://img.shields.io/badge/built_by-Yume_Maruyama-ff69b4.svg"/> 


<h3>
    <a href="https://www.bilibili.com/video/av81263778">安装视频教程</a> | 
    <a href="https://hackintosh.kirainmoe.com">帮助文档</a> |
    <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/Docs/Changelog.md">更新日志</a> | <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/Docs/Adapting-Guidance-zh-CN.md">同方机型适配指南</a> | <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/README-en.md">English</a>
</h3>

<!-- omit in toc -->
# 目录
- [如何使用](#如何使用)
  - [获取 & 更新配置文件](#获取--更新配置文件)
  - [安装 macOS](#安装-macos)
  - [手动定制配置文件](#手动定制配置文件)
- [兼容性](#兼容性)
  - [兼容的系统](#兼容的系统)
  - [适用的机型](#适用的机型)
    - [神舟战神系列](#神舟战神系列)
    - [炫龙系列](#炫龙系列)
    - [机械革命系列](#机械革命系列)
    - [如何确定我的笔记本是否兼容？](#如何确定我的笔记本是否兼容)
- [配置文件概况](#配置文件概况)
    - [发行说明](#发行说明)
    - [完美的功能](#完美的功能)
    - [勉强可用的功能](#勉强可用的功能)
    - [购买或更换硬件后可用的功能](#购买或更换硬件后可用的功能)
    - [无论如何无法使用的功能](#无论如何无法使用的功能)
- [问题反馈 & 交流](#问题反馈--交流)
- [贡献者 & 鸣谢](#贡献者--鸣谢)
- [许可协议 & 捐赠](#许可协议--捐赠)
- [拓展阅读](#拓展阅读)

# 如何使用

第一步，请先查看 [兼容性表格](#兼容性)，确认此配置文件支持你的机型、模具以及系统版本。

## 获取 & 更新配置文件

请下载对应平台的 [同方黑苹果助手](https://github.com/kirainmoe/tongfang-hackintosh-utility)，根据你的型号与实际硬件配置，定制 OpenCore 配置文件。

请不要使用 GitHub 上的 "Download Zip" 功能，如下图所示：

<details>
<summary>获取配置文件正确示例</summary>

<img src="https://i.loli.net/2020/03/02/SfQYGwM9kjOpu14.jpg" alt="download from github">

<img src="https://i.loli.net/2020/03/02/chKQqZ4UvASrwVL.png" alt="tongfang hackintosh utility">
</details>

## 安装 macOS

请参照 [安装教学视频](https://www.bilibili.com/video/av81263778) 里的指引，使用上一步得到的配置文件安装好 macOS。

替换配置文件后，请在 macOS 下使用 [同方黑苹果助手](https://github.com/kirainmoe/tongfang-hackintosh-utility) 执行修复睡眠等优化操作。

## 手动定制配置文件

“同方黑苹果助手”会针对用户的不同硬件情况和需求，定制适合用户机型和硬件情况的 EFI，我们推荐所有用户使用“同方黑苹果助手”定制对应机型的配置文件。

如果因为某些原因你无法使用此工具定制配置文件，请参考以下方式手动修改配置文件，以兼容你的机型：

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

最新配置文件仅完美兼容 `macOS Catalina 10.15` 及以上版本，**不兼容 `macOS High Sierra 10.13.x` 版本**。

目前已测试的最新兼容版本是：

- macOS Catalina **10.15.6 (19G73)**
- macOS Big Sur **11.0 Beta 3 (20A5323l)**，支持 OTA 更新和全新安装

> 提示：OTA 更新 macOS Big Sur Beta 3 时，日志可能会长时间停留在 `Forcing cs_runtime for entitlement`，此时是更新程序正在创建系统快照，请耐心等待约半小时后即可正常更新。

## 适用的机型

理论上所有使用 **清华同方模具的标压 8/9 代机型** 均可使用对应的配置文件，**不兼容蓝天模具机型、广达模具机型、七代（含）以下机型**。详细的兼容型号表格如下：

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
| GK5CP6V | Z7-CT7VH、Z7-CT7VA、Z7-CT5VH、Z7-CT5N1 |
| GK5CP5V | Z7M-CT5VH、Z7M-CT7VH、Z7M-CT5N1 |

未测试：

| 模具代号 | 具体型号 |
|---------|--------|
| GK5CR0V | Z8-CT7VK |
| GJ5CN64 | Z7-KP7S |

### 炫龙系列

已测试：

| 模具代号 | 具体型号 |
|---------|--------|
| GK5CN6X | 炫龙 耀9000 II |
| GK5CN5X | 炫龙 耀7000 |

未测试：

| 模具代号 | 具体型号 |
|---------|--------|
| GK7CP6R | 炫龙 T3Ti 710S5R |
| GK7CP6R | 炫龙 T3Ti 710S5V |
| GK7CP6R | 炫龙 T3Ti 510S5R |
| GI5CN54 | 炫龙 T2Ti |

### 机械革命系列

| 模具代号 | 具体型号 |
|---------|--------|
| GK5CN5X | 机械革命 Z2 Air |
| GK5CN6Z <br> GK5CN5Z | 机械革命 Z2, X8Ti 系列 |
| GK5CP6Z <br> GK5CP5Z | 机械革命 Z2-G，机械革命 Z2-R |
| GK5CP6X <br> GK5CP5X | 机械革命 Z2 Air-G |
| GK7CP6R | 机械革命 X3 |

### 如何确定我的笔记本是否兼容？

**并不是配置相近就可以使用此仓库的 EFI**。如果你的模具型号没有出现在上述列表中，可以到 http://kfgl.hasee.com/lookup/book/bblist.asp 页面，查询你的笔记本型号所对应的准系统名称。

若你的笔记本采用 **8/9 代**因特尔酷睿**标压**处理器，且查询到准系统名称中带有 **“（同方）”** 字样，则你的笔记本可以兼容此仓库的配置文件。

对于其它品牌理论兼容的同方模具机型，若遇到 USB 接口无法识别或速度不正常的问题，建议参照 [此教程](https://blog.daliansky.net/Intel-FB-Patcher-tutorial-and-insertion-pose.html) 自行定制 USB。

# 配置文件概况

### 发行说明

- OpenCore Bootloader 使用官方 0.6.0 版本，GUI 采用 OpenCanopy 模拟白苹果原生 BootCamp 界面.

- 配置文件的 SMBIOS 采用 `MacBookPro15,3` （MacBook Pro 15 inch, 2019）

- 默认支持 Windows 和 macOS 双引导，若需要引导其他操作系统需自行添加。

- 此版本对更换了 4K 屏幕的笔记本做了兼容；对于 GI5CN54 / GJ5CN64 模具改 4K 屏的用户，**需要先解锁 BIOS 或使用 UEFI Shell** 修改 `DVMT Pre-allocated` 为 `64MB` 以上。

### 完美的功能

- [x] CPU 睿频、变频
    - 可使用 [one-key-cpufriend](https://github.com/daliansky/XiaoMi-Pro-Hackintosh/blob/master/one-key-cpufriend/README_CN.md) 调节 CPU 性能方案，默认为节能

- [x] 核芯显卡 Intel UHD Graphics 630
    - 使用 `platform-id: 3E9B0000`
  
- [x] 声卡 Realtek ALC269vc
    - 使用 `layout-id: 29`

- [x] Fn 快捷键
    - 需要安装 [同方黑苹果助手](https://github.com/kirainmoe/tongfang-hackintosh-utility) 或 [同方快捷键守护程序](https://github.com/Goshin/TongfangKeyboardUtility) 实现 OSD

- [x] 键盘灯控制
    - 需要安装 [同方黑苹果助手](https://github.com/kirainmoe/tongfang-hackintosh-utility) 或 [AUCC](https://github.com/rodgomesc/avell-unofficial-control-center) 控制键盘灯

- [x] 触摸板
    - GI5CN54/GJ5CN64 模具使用的 PS/2 触摸板没有原生手势支持
    - 其它机型的 I2C 触摸板可以正常使用手势

- [x] 有线网卡 Realtek RTL8168H
- [x] Intel 蓝牙（无需热启动）
    - 基于 [OpenIntelWireless/IntelBluetoothFirmware](https://github.com/OpenIntelWireless/IntelBluetoothFirmware) 项目

- [x] USB 3.0, Type-C 
    - 本仓库支持的同方模具的 Type-C 接口均没有视频输出功能。

- [x] 亮度调节
- [x] 原生电源管理 & 电池状态显示
- [x] 摄像头
- [x] 文件保险箱 (FileVault 2)
- [x] S3 睡眠、唤醒

### 勉强可用的功能

- [x] Intel 无线网卡 (AC9462, AC9560, AX200)

    - 基于仍然处于开发阶段的 [OpenIntelWireless/itlwm 项目](https://github.com/OpenIntelWireless/itlwm) 和 [HeliPort](https://github.com/OpenIntelWireless/HeliPort) 项目，目前并不稳定，可能出现频繁的断网或无法联网等问题。

   - 在生成 EFI 时勾选添加 Intel 无线网卡驱动并在 macOS 下使用 HeliPort 客户端管理网络，即可实现使用 Intel 无线网卡链接 Wi-Fi。

### 购买或更换硬件后可用的功能

- [ ] 原生 IO80211 支持的 Wi-Fi 和低功耗蓝牙
- [ ] 隔空投送 AirDrop、接力 Handoff、无线随航 Sidecar
  - 若有更换无线网卡的需求，推荐更换 [BCM94360CS2 + NGFF 转接卡] 方案。
  - 请注意：**DW1820A 无线网卡在同方模具上有已知的兼容性问题**，包括双系统使用时可能导致 Windows 蓝屏、重启后找不到无线网卡等，请尽量避免更换此网卡。

- [ ] 外接显示器
    - 同方 8 代以上模具的 HDMI / miniDP 接口直连独显，因此无法在 macOS 下使用 HDMI/miniDP 接口外接显示。
    - 购买 [此链接](https://github.com/kirainmoe/hasee-tongfang-macos/issues/10) 中测试的产品可能可以满足部分外接显示器的需要。

### 无论如何无法使用的功能

- [ ] 独立显卡
  - 8 代以上同方模具的独显无法在 **任何 macOS 版本（包括但不限于 10.13.x）** 被驱动，关于具体的原因猜测，详见[此文章](http://www.bswaterb.club/?p=285)。
  - 已使用 `SSDT-DDGPU.aml` 屏蔽

- [ ] SD 读卡器
  - 由于读卡器通过 USB 2.0 协议连接电脑，没有驱动案例，故内置 SD 读卡器无法使用。


# 问题反馈 & 交流

你可以通过在 GitHub 上提 issue 的方式反馈问题，或者向 kirainmoe@gmail.com 发送问题报告邮件。

你也可以加入以下 QQ 群聊获取帮助，但**请确保你在群里问问题之前，已经看过了[教学视频](https://www.bilibili.com/video/av81263778)、并使用了搜索功能查找并仔细阅读了[项目文档](https://hackintosh.kirainmoe.com)内的相关内容！**


| 群名称 | 神舟战神黑苹果 1 群 | 同方黑苹果 2 群 |
|-----|------|---------|
| 群号 | 833022235 | 815359928 |
| 加群二维码 | ![1群二维码](https://i.loli.net/2020/01/05/sKh875UC14LFejv.png) | ![2群二维码](https://i.loli.net/2019/11/23/Fzkeprn9PA7bf6q.png) |
| 加群链接 | https://jq.qq.com/?_wv=1027&k=5G82zlQ | https://jq.qq.com/?_wv=1027&k=5b7ZJWl |
| 规模 | 1000 人群 | 500 人群 |
| 特殊限制 | 无机型限制，但因人数爆满，暂需付费 1 元入群 | **仅限同方模具的 8/9 代机型用户加入** |

# 贡献者 & 鸣谢

请转到 [《贡献者与鸣谢名单》](Docs/Credits.md) 查看所有的贡献者及版权声明。

# 许可协议 & 捐赠

使用本仓库下的所有配置文件都是**免费**的，惟需遵守以下规则：

- **不允许任何人以任何形式、任何价格出售此配置文件（包括但不限于交易下载、付费下载）。** 同时，为了保护你的权益，建议你不要通过 **任何渠道** 以 **任何价格** 购买上述机型的配置文件。

- 若你在此配置文件的基础上适配其它机型的配置文件，则**需要保留对本项目的引用和鸣谢 (Credits) 信息，同时需要为大众保留至少一个免费获取、下载的方式**（若您不同意此规则，请不要在此配置文件基础上修改）。

- **若你在任何项目中，使用了从此配置文件中获取的任何由其他人创作的内容，则需要保留对本项目的引用和他人的版权信息。**

关于捐赠，如果您认可我的工作，也可以通过捐赠支持我。所有的捐赠将会成为我更新的动力。

| 支付宝 | 微信 |
|-------|------|
| <img src="https://i.loli.net/2019/09/19/j8doaIVYWtMXlNJ.png" width="200px"> | <img src="https://i.loli.net/2019/09/19/xkoHIsuZLvtzDSP.png" width="200px"> |

# 拓展阅读

提示：涉及硬件层面的修改请谨慎操作。

- [GJ5CN64 / GI5CN54 模具 PS/2 触摸板优化方案 (by @anhor)](https://ts.ryanhor.com/2020/03/12/how-to-hack-perfect/)
- [Aptio V BIOS 解锁全功能教程 (by @bswaterb)](http://www.bswaterb.club/?p=218)
- [不刷新 BIOS 的前提下修改 DVMT Pre-allocated](https://www.misonsky.cn/115.html)