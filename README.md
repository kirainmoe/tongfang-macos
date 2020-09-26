<!-- omit in toc -->
#  macOS on Tongfang Laptops

<img align="right" src="https://i.loli.net/2020/07/28/p6YFWyzeNE2Iqcn.png" width="200px" alt="logo">

适用于神舟战神、机械革命等品牌 8/9 代同方机型安装黑苹果的 OpenCore 配置文件

<img src="https://img.shields.io/travis/com/kirainmoe/hasee-tongfang-macos/oc-general"/> <img src="https://img.shields.io/badge/bootloader-OpenCore-lightgrey.svg"/> <img src="https://img.shields.io/badge/support_macOS-11.0_Beta_8-9cf.svg"/>  <img src="https://img.shields.io/badge/built_by-Yume_Maruyama-ff69b4.svg"/>


<h3>
    <a href="https://www.bilibili.com/video/av81263778">安装视频教程</a> | 
    <a href="https://hackintosh.kirainmoe.com">帮助文档</a> |
    <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/Docs/Changelog.md">更新日志</a> | 
    <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/Docs/Adapting-Guidance-zh-CN.md">同方机型适配指南</a> |
    <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/README-en.md">English</a>
</h3>

<!-- omit in toc -->
# 目录
- [快速开始](#快速开始)
    - [获取 & 更新配置文件](#获取--更新配置文件)
    - [安装 macOS](#安装-macos)
    - [手动定制配置文件](#手动定制配置文件)
- [兼容性](#兼容性)
    - [兼容的系统](#兼容的系统)
    - [适用的机型](#适用的机型)
    - [如何确定我的笔记本是否兼容？](#如何确定我的笔记本是否兼容)
- [配置文件概况](#配置文件概况)
    - [完美的功能](#完美的功能)
    - [勉强可用](#勉强可用)
    - [购买或更换硬件后可用](#购买或更换硬件后可用)
    - [无论如何无法使用](#无论如何无法使用)
    - [当前 EFI 存在的问题](#当前-efi-存在的问题)
- [问题反馈 & 交流](#问题反馈--交流)
- [贡献者 & 鸣谢](#贡献者--鸣谢)
- [许可协议 & 捐赠](#许可协议--捐赠)
- [拓展阅读](#拓展阅读)

# 快速开始

在开始之前，请先查看 [兼容性表格](#兼容性)，确认此配置文件支持你的机型、模具以及系统版本。请准备好一个 16G 或以上的 U 盘用于写入安装镜像，**并备份好电脑中的重要数据**。

### 获取 & 更新配置文件

请下载对应平台的 [同方黑苹果助手](https://github.com/kirainmoe/tongfang-hackintosh-utility)，根据你的型号与实际硬件配置，定制 OpenCore 配置文件。

请不要使用 GitHub 上的 "Download Zip" 功能，如下图所示：

<details>
<summary>获取配置文件正确示例</summary>

<img src="https://i.loli.net/2020/03/02/SfQYGwM9kjOpu14.jpg" alt="download from github">

<img src="https://i.loli.net/2020/09/01/V9lG8LFUfqctQW6.png" alt="tongfang hackintosh utility">
</details>

### 安装 macOS

请参照 [安装教学视频](https://www.bilibili.com/video/av81263778) 里的指引，使用上一步得到的配置文件安装好 macOS。

替换配置文件后，可以下载 [同方黑苹果助手 for macOS](https://github.com/kirainmoe/tongfang-hackintosh-utility) 优化后续使用体验。

### 手动定制配置文件

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

### 兼容的系统

当前配置文件的版本是 `20.9.26`，兼容的 macOS 系统版本如下表所示：

| macOS 版本 | 兼容状态 | 全新安装 | OTA | 已测试最新版本 | 原因 |
|-------------|--------|---------------|--------|-----------|------|
| 10.13 High Sierra | ❌ | ❌ | ❌ | 不兼容任何版本 | 10.13 不兼容 `MacBookPro15,3` SMBIOS 和 CoffeeLake CPU 变频 |
| 10.14 Mojave | ❓ | ❓ |  ❓ | 未测试 | 部分内核拓展可能无法在 10.14 上工作 |
| 10.15 Catalina | ✅ | ✅ | ✅ | 10.15.7 (19H2) | |
| 11.0 Big Sur | 💡 | ✅ | ✅ | 11.0 Developer Beta 8 (20A5374i) <br> 11.0 Public Beta 4 (20A5374h) | 4K 屏幕暂无法在 11.0 下驱动 |

> 提示：OTA 更新或全新安装 macOS Big Sur Beta 时，日志可能会长时间停留在 `Forcing CS_RUNTIME for entitlement`，此时是更新程序正在创建系统快照，请耐心等待约 15-20 分钟后即可正常更新。

### 适用的机型

理论上所有使用 **清华同方模具的标压 8/9 代机型** 均可使用对应的配置文件，**不兼容蓝天模具机型、广达模具机型、七代（含）以下机型、低压处理器机型**。详细的兼容型号表格如下：

<table>
    <thead>
        <th>模具型号</th>
        <th>神舟战神</th>
        <th>炫龙</th>
        <th>机械革命</th>
    </thead>
    <tbody>
        <tr>
            <td>GK5CN6X</td>
            <td>Z7-KP7GZ、Z7-KP7Z</td>
            <td>耀 9000 II</td>
            <td rowspan=2> Z2 Air (8 代) </td>
        </tr>
        <tr>
            <td>GK5CN5X</td>
            <td>Z7M-KP7GZ、Z7M-KP7Z、 Z7M-KP5GZ、 Z7M-KP5Z</td>
            <td>耀 7000</td>
        </tr>
        <tr>
            <td>GJ5CN64</td>
            <td>Z7-KP7EC、Z7-KP7GC、 Z7-KP7GA、 Z7-KP7GE、 Z7-KP7GH</td>
            <td rowspan=2>炎魔 T2 Ti</td>
            <td rowspan=2> ? </td>
        </tr>
        <tr>
            <td>GI5CN54</td>
            <td>Z7M-KP7GC、Z7M-KP5GC、Z7M-KP7GA、Z7M-KP5GA<br> Z7M-KP7GE、Z7M-KP5GE、Z7M-KP7GH、Z7M-KP5GH</td>
        </tr>
        <tr>
            <td>GK5CP6X</td>
            <td>Z7-CT7GK、Z7-CT5GA、Z7-CT7GA</td>
            <td rowspan=2> ? </td>
            <td rowspan=2>Z2 Air (9 代)、Z2 Air-G</td>
        </tr>
        <tr>
            <td>GK5CP5X</td>
            <td>Z7M-CT7GS、Z7M-CT5GA</td>
        </tr>
        <tr>
            <td>GK7CP6R</td>
            <td>G7-CT7VK、G7-CT7RA</td>
            <td>炎魔 T3Ti 710S5R / 710S5V / 510S5R</td>
            <td>X3</td>
        </tr>
        <tr>
            <td>GK5CP6V</td>
            <td>Z7-CT7VH、Z7-CT7VA、Z7-CT5VH、Z7-CT5N1</td>
            <td rowspan=5>?</td>
            <td rowspan=3>?</td>
        </tr>
        <tr>
            <td>GK5CP5V</td>
            <td>Z7M-CT5VH、Z7M-CT7VH、Z7M-CT5N1</td>
        </tr>
        <tr>
            <td>GK5CR0V</td>
            <td>Z8-CT7VK</td>
        </tr>
        <tr>
            <td>GK5CN6Z <br> GK5CN5Z</td>
            <td> ? </td>
            <td> Z2 / X8Ti 系列（8 代） </td>
        </tr>        
        <tr>
            <td>GK5CP6Z <br> GK5CP5Z</td>
            <td> ? </td>
            <td> Z2-G、Z2-R（9 代） </td>
        </tr>
    </tbody>
</table>

### 如何确定我的笔记本是否兼容？

**请注意，并不是配置相近就可以使用此仓库的 EFI**。

如果你是神舟笔记本，且模具型号没有出现在上述列表中，可以到 http://kfgl.hasee.com/lookup/book/bblist.asp 页面，查询你的笔记本型号所对应的准系统名称。

若你的笔记本采用 **8/9 代**因特尔酷睿**标压**处理器，且查询到准系统名称中带有 **“（同方）”** 字样，则你的笔记本可以兼容此仓库的配置文件。

对于其它品牌理论兼容的同方模具机型，若遇到 USB 接口无法识别或速度不正常的问题，建议参照 [此教程](https://blog.daliansky.net/Intel-FB-Patcher-tutorial-and-insertion-pose.html) 自行定制 USB。

# 配置文件概况

- OpenCore Bootloader 使用官方 0.6.1 版本，GUI 采用 OpenCanopy 模拟白苹果原生 BootCamp 界面.

- 配置文件的 SMBIOS 采用 `MacBookPro15,3` （MacBook Pro 15 inch, 2019）

- 默认支持 Windows 和 macOS 双引导，若需要引导其他操作系统需自行添加。

- 对更换了 4K 屏幕的笔记本做了兼容，**但目前 macOS 11.0 Big Sur** 暂时无法驱动 4K 屏幕（或只能工作于 48Hz 刷新率模式）。
  - 对于 GI5CN54 / GJ5CN64 模具改 4K 屏的用户，**需要先解锁 BIOS 或使用 UEFI Shell** 修改 `DVMT Pre-allocated` 为 `64MB` 以上，具体做法请参考[此文章](Docs/Unlock-CFG-and-DVMT.md)

### 完美的功能

- [x] CPU 睿频、变频
    - 可使用 [one-key-cpufriend](https://github.com/stevezhengshiqi/one-key-cpufriend/blob/master/README_CN.md) 调节 CPU 性能方案，默认为节能

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

### 勉强可用

- [x] Intel 无线网卡 (AC9462, AC9560, AX200)

    - 基于仍然处于开发阶段的 [OpenIntelWireless/itlwm 项目](https://github.com/OpenIntelWireless/itlwm) 和 [HeliPort](https://github.com/OpenIntelWireless/HeliPort) 项目，目前并不稳定，可能出现频繁的断网或无法联网等问题。

   - 在生成 EFI 时勾选添加 Intel 无线网卡驱动并在 macOS 下使用 HeliPort 客户端管理网络，即可实现使用 Intel 无线网卡链接 Wi-Fi。

### 购买或更换硬件后可用

- [ ] 原生 IO80211 支持的 Wi-Fi 和低功耗蓝牙
- [ ] 隔空投送 AirDrop、接力 Handoff、无线随航 Sidecar
  - 若有更换无线网卡的需求，推荐更换 [BCM94360CS2 + NGFF 转接卡] 方案。
  - 请注意：**DW1820A 无线网卡在同方模具上有已知的兼容性问题**，包括双系统使用时可能导致 Windows 蓝屏、重启后找不到无线网卡等，请尽量避免更换此网卡。

- [ ] 外接显示器
    - 同方 8 代以上模具的 HDMI / miniDP 接口直连独显，因此无法在 macOS 下使用 HDMI/miniDP 接口外接显示。
    - 购买 [此链接](https://github.com/kirainmoe/hasee-tongfang-macos/issues/10) 中测试的产品可能可以满足部分外接显示器的需要。

### 无论如何无法使用

- [ ] 独立显卡
  - 8 代以上同方模具的独显无法在 **任何 macOS 版本（包括但不限于 10.13.x）** 被驱动，关于具体的原因猜测，详见[此文章](http://www.bswaterb.club/?p=285)。
  - 已使用 `SSDT-DDGPU.aml` 屏蔽

- [ ] SD 读卡器
  - 由于读卡器通过 USB 2.0 协议连接电脑，没有驱动案例，故内置 SD 读卡器无法使用。

### 当前 EFI 存在的问题

- [ ] macOS 下，S4 睡眠（挂起到硬盘）无法恢复
  - 已在 OpenCore 配置文件中禁用 Hibernation.

- [ ] 若使用 OpenCore 引导 Windows，可能导致 S4 睡眠（休眠）无法恢复
  - 若要使用休眠功能，请尽量避免使用 OpenCore 引导 Windows 系统。

# 问题反馈 & 交流

你可以通过在 GitHub 上[提 issue](https://github.com/kirainmoe/hasee-tongfang-macos/issues/new) 的方式反馈问题，或者向 kirainmoe@gmail.com 发送问题报告邮件。

你也可以加入以下交流平台获取帮助，**但请确保你在群里问问题之前，已经看过了[教学视频](https://www.bilibili.com/video/av81263778)**！


| 群名称 | 神舟战神黑苹果 1 群 | 神舟同方黑苹果 2 群 | Tongfang Hackintosh Community |
|-----|------|---------|--------|
| 类型 | QQ 群 | QQ 群 | Discord |
| 群号 | 833022235 | 815359928 | 750367447688937503 |
| 加群二维码 | ![1群二维码](https://i.loli.net/2020/01/05/sKh875UC14LFejv.png) | ![2群二维码](https://i.loli.net/2019/11/23/Fzkeprn9PA7bf6q.png) | ![discord](https://i.loli.net/2020/09/01/EIJBYs5Vy8hao2q.png) |
| 加群链接 | https://jq.qq.com/?_wv=1027&k=5G82zlQ | https://jq.qq.com/?_wv=1027&k=5b7ZJWl | https://discord.gg/CDQNnMc |
| 规模 | 1000 人群 | 500 人群 | 无限制 | 
| 特殊限制 | 无机型限制，但因人数爆满，暂需付费 1 元入群 | **仅限同方模具的 8/9 代机型用户加入** | **仅限同方模具的 8/9 代机型用户加入** |

# 贡献者 & 鸣谢

请转到 [《贡献者与鸣谢名单》](Docs/Credits.md) 查看所有的贡献者及版权声明。

# 许可协议 & 捐赠

声明：**对于本仓库配置文件的一切开发、维护旨在学习，请勿用于商业用途和非法用途。**

**使用本仓库提供的配置文件时，需遵守 [LICENSE](LICENSE) 和以下规则：**

- 使用本仓库下的所有配置文件是完全免费的。不允许任何人以任何形式、任何价格出售和重新分发此配置文件。

- 在此配置文件的基础上适配其它机型的配置文件，需要将成果向任何人开放，并保留对本项目的引用和鸣谢 (Credits) 信息。

- 在任何项目中，使用了从此仓库中获取的任何由其他人创作的内容，需要保留对本项目的引用和他人的版权信息。

**这意味着你不能**：

- 针对此仓库提供的 EFI，提供包括但不限于交易下载、付费下载、邀请下载等 “将下载与付费绑定” 的服务。
- 在此配置文件的基础上适配其他机型的 EFI 并提供上述付费下载服务。
- 重新分发此 EFI 或适配其它机型 EFI 时，删除版权信息或鸣谢声明。

---

关于捐赠，如果您认可我的工作，也可以通过捐赠支持我。所有的捐赠将会成为我更新的动力。

| 支付宝 | 微信 |
|-------|------|
| <img src="https://i.loli.net/2019/09/19/j8doaIVYWtMXlNJ.png" width="200px"> | <img src="https://i.loli.net/2019/09/19/xkoHIsuZLvtzDSP.png" width="200px"> |

# 拓展阅读

提示：涉及硬件层面的修改请谨慎操作。

- [GJ5CN64 / GI5CN54 模具 PS/2 触摸板优化方案 (by @anhor)](https://ryanhor.com/2020/03/12/how-to-hack-perfect/)
- [Aptio V BIOS 解锁全功能教程 (by @bswaterb)](http://www.bswaterb.club/?p=218)
- [不刷新 BIOS 的前提下修改 DVMT Pre-allocated](Docs/Unlock-CFG-and-DVMT.md)
- [其它长期维护机型 EFI 列表](https://github.com/daliansky/hackintosh)
