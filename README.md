<p align="center">
<img src="https://i.loli.net/2020/01/05/QilbpRdq4awGfSX.png" width="250px" alt="logo">
</p>

<h2 align="center">macOS on Hasee Tongfang Laptops</h2>

<p align="center">用于神舟战神 8 / 9 代同方机型安装最新版 macOS （黑苹果）的 Clover/OpenCore 配置文件</p>

<p align="center">
<img src="https://img.shields.io/badge/build-passing-brightgreen.svg"/> 
<a href="https://aya-buildbot.kirainmoe.com">
    <img src="https://img.shields.io/badge/download-release-blue.svg"/> 
</a>
<img src="https://img.shields.io/badge/coverage-98%25-brightgreen.svg"/> <img src="https://img.shields.io/badge/macOS_version-10.15.3-9cf.svg"/> <img src="https://img.shields.io/badge/built_by-Yume_Maruyama-ff69b4.svg"/> 
</p>

<h3 align="center">
    <a href="https://aya-buildbot.kirainmoe.com/">Clover 配置文件下载地址</a> | <a href="https://www.bilibili.com/video/av81263778">安装视频教程</a> | 
    <a href="https://hackintosh.kirainmoe.com">帮助文档</a> |
    <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/gk5cn6/5x-clover/Changelog.md">更新日志</a> | <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/gk5cn6/5x-clover/README-en.md">English</a>
</h3>

<p align="center">
<img src="https://i.loli.net/2020/02/03/O7evUCzWSdwEZY9.jpg" width="500px">
</p>

<h2 align="center">✽ 如何使用 ✽</h2>

### 还没装好系统？

- 请按照 [安装教学视频](https://www.bilibili.com/video/av81263778) 里的指引安装好系统，并替换配置文件即可。
- 替换配置文件后，请按照[此视频](https://www.bilibili.com/video/av81263778/?p=2)指导，使用 Clover Configurator 或更新脚本生成新的 SMBIOS 序列号、UUID，并**执行以下优化脚本修复睡眠**：

```bash
sudo sh -c "$(curl -fsSL https://aya-buildbot.kirainmoe.com/optimizer)"
```

### macOS 下安装/更新最新配置文件

使用更新脚本可以安装/更新最新配置文件。安装完系统后，在 macOS 的终端执行以下命令：

```bash
curl -fsSL https://aya-buildbot.kirainmoe.com/installer > inst && chmod +x ./inst && sudo ./inst
```

### 手动下载和替换

你可以到 [Aya Buildbot](https://aya-buildbot.kirainmoe.com) 下载对应机型的最新版本配置文件，然后按照[《EFI 替换教程》](https://hackintosh.kirainmoe.com/an-zhuang-zhong/efi-ti-huan-jiao-cheng) 替换。

### 若想要使用 OpenCore 引导

可以前往对应机型带有 `-opencore` 后缀的分支，在 GitHub 页面点击 "Clone or Download" => "Download Zip" 下载最新版本。 

<h2 align="center">✽ 导航 ✽</h2>

- [项目文档：神舟黑苹果百科](https://hackintosh.kirainmoe.com)
- [安装过程中的疑难解答](https://hackintosh.kirainmoe.com/an-zhuang-zhong/an-zhuang-guo-cheng-zhong-de-yi-nan-jie-da) 
- [安装后的常见问题解答](https://hackintosh.kirainmoe.com/an-zhuang-hou/an-zhuang-hou-de-chang-jian-wen-ti-jie-da) 
- [硬件更换指南和兼容性报告](https://hackintosh.kirainmoe.com/an-zhuang-hou/ying-jian-geng-huan-zhi-nan-he-jian-rong-xing-bao-gao)
- [常用命令和优化](https://hackintosh.kirainmoe.com/an-zhuang-hou/chang-yong-ming-ling-he-you-hua)
- [Project: STAR BEAT! - 神舟同方机型键盘灯控制](https://github.com/kirainmoe/project-starbeat/releases)


<h2 align="center">✽ 兼容情况 ✽</h2>

### 兼容的型号

| 模具代号 | 型号 | 分支 |
|-----|------|-----|
| GK5CN5X <br> GK5CN6X | Z7-KP7GZ<br> Z7M-KP7GZ<br> Z7M-KP5GZ<br> Z7-KP7Z<br> Z7M-KP7Z<br> Z7M-KP5Z<br> Shinelon Yao 7000 (炫龙 耀7000)<br> Mechrevo Z2 Air (机械革命 Z2 Air) | [gk5cn6/5x-clover](https://github.com/kirainmoe/hasee-tongfang-macos) (Clover) <br> [gk5cn6/5x-opencore](https://github.com/kirainmoe/hasee-tongfang-macos/tree/gk5cn6/5x-opencore) (OpenCore) | 
| GJ5CN64 | Z7-KP7EC<br> Z7-KP7GC<br> Z7-KP7GA <br> Z7-KP7GE <br> Z7-KP7GH | [gj5cn64-clover](https://github.com/kirainmoe/hasee-tongfang-macos/tree/gj5cn64-clover) (Clover)<br> [gj5cn64-opencore](https://github.com/kirainmoe/hasee-tongfang-macos/tree/gj5cn64-opencore) (OpenCore)  |
| GI5CN54 | Z7M-KP7GC<br> Z7M-KP5GC <br> Z7M-KP7GA<br> Z7M-KP5GA <br> Z7M-KP7GE <br> Z7M-KP5GE <br> Z7M-KP7GH<br> Z7M-KP5GH | [gi5cn54-clover](https://github.com/kirainmoe/hasee-tongfang-macos/tree/gi5cn54-clover) (Clover)<br> [gi5cn54-opencore](https://github.com/kirainmoe/hasee-tongfang-macos/tree/gi5cn54-opencore) (OpenCore)  |
| GK7CP6R | Z7-CT7GK <br> Z7-CT7VH <br> G7-CT7VK <br> Z7-CT7VA | [gk7cp6r-clover](https://github.com/kirainmoe/hasee-tongfang-macos/tree/gk7cp6r-clover) (Clover)<br> [gk7cp6r-opencore](https://github.com/kirainmoe/hasee-tongfang-macos/tree/gk7cp6r-opencore) (OpenCore)  |
| GK5CP6X | Z7M-CT7GS <br> Z7M-CT5GA <br> Mechrevo Z2 Air-G (机械革命 Z2 Air-G) | [gk5cp6x-clover](https://github.com/kirainmoe/hasee-tongfang-macos/tree/gk5cp6x-clover) (Clover)<br> [gk5cp6x-opencore](https://github.com/kirainmoe/hasee-tongfang-macos/tree/gk5cp6x-opencore) (OpenCore)  |

### 不兼容的型号

请注意，本仓库只适配使用**因特尔第 8 代和第 9 代**标压酷睿处理器、使用**清华同方模具**的笔记本，故以下机型**不能**正常使用此配置文件，包括但不限于以下机型：

| 型号 | 原因 |
|-----|------|
| Z7(m)-KP7/5GT <br> Z7(m)-KP7D2 <br> Z7(m)-KP7/5GS | 使用同方七代以下模具 |
| Z7(m)-CT7/5N* <br> Z7-C7TPro <br> Z7(m)-KP7/5S* <br> Z7(m)-KP7/5D1 <br> Z7(m)-SL* | 使用蓝天笔记本模具 |
| ZX7* <br> GX7* | 使用蓝天桌面模具 |
| K6\*0\*-**** <br> Z7-i7* | 使用蓝天模具或为四代以下平台 |
| 精盾 U45S1<br> 精盾 U47T1 <br> ... | 使用广达模具 |

对于上述机型，可以到百度、远景或[此仓库](https://github.com/daliansky/hackintosh)尝试找到对应模具/机型的 EFI.

### 兼容的 macOS 版本

**注意：因为维护者不再测试旧版系统，故未来的配置文件可能随时停止对 macOS 10.14 (Mojave) 和 macOS 10.13 (High Sierra) 版本系统的支持。**

当前版本配置文件的系统支持表如下：

| 版本号 | 版本代号 | 是否理论兼容 | 维护者实机测试正常 | 用户实机测试正常 |
|-------|---------|--------|------------|----------|
| 10.13.6 | 17G65 | ❌ no | - | - |
| 10.13.6 ~ 10.14.5 | 17G2112 ~ 18F132 | 🔒 deprecated | ❓untest | ❓untest |
| 10.14.6 | 18G87 | ✅ yes | ✅ yes | ✅ yes |
| 10.15   | 19A603 | ✅ yes | ✅ yes | ✅ yes |
| 10.15.1 | 19B88 | ✅ yes | ✅ yes | ✅ yes |
| 10.15.2 | 19C57 | ✅ yes | ✅ yes | ✅ yes |
| 10.15.3 | 19D76 | ✅ yes | ✅ yes | ✅ yes |

> ✅ yes：当前版本的配置文件在该系统版本下测试通过，各种功能符合预期  
🔒 deprecated: 配置文件曾经兼容此版本系统，但现阶段无人测试；且未来可能不再兼容该版本  
❓untest：没有用户或开发者在此设备上测试  
❌no：配置文件不兼容此版本

<h2 align="center">✽ 设备驱动情况 ✽</h2>

以下为维护者个人电脑的配置详情，以及对比原机的配置。

| Component | Model | Comment |
|--|--|---|
| CPU | Intel Core(TM) i7-8750H | i5 版本与 i7 版本的型号可兼容同一套配置文件 |
| GPU | Intel UHD630 <br> Nvidia GTX1060 | Nvidia 独显无法驱动，原因详见[这里](https://github.com/kirainmoe/hasee-tongfang-macos/wiki/%E5%AE%89%E8%A3%85%E5%90%8E%E7%9A%84%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98%E8%A7%A3%E7%AD%94#%E9%82%A3%E4%B8%BA%E4%BB%80%E4%B9%88%E7%8B%AC%E6%98%BE%E6%97%A0%E6%B3%95%E9%A9%B1%E5%8A%A8) |
| RAM | Micron Crucial 8GB+8GB | |
| NVMe | WD Black SN750 NVME SSD 500G | 请不要购买三星 PM981(a) 等 macOS 不支持的硬盘 | 
| SATA SSD | Phison SATA SSD 128G | | 
| Wireless | BCM94360CS2 | 原机自带的 Intel AC9462/AC9560 无法在 macOS 下驱动 |
| Ethernet | Realtek RTL8168H | |
| Audio | Realtek ALC269vc | |

### 正常工作的功能

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
> [1] GJ5CN64 / GI5CN54 系列模具的 PS2 触摸板不支持 macOS 原生手势; I2C HID 触摸板可完美使用。  
[2] 声卡使用 AppleALC 仿冒内建，通过设备属性的方式，注入 `layout-id` 为 29.  
[3] 因特尔 AC9462/AC9560/AX200 无线网卡的蓝牙无需热启动即可加载固件。  
[4] 睡眠需要在安装系统后人为执行优化脚本调节参数，执行方式参见上文。  
[5] Fn 快捷键需要优化脚本安装守护程序支持，执行方式参见上文。

### 无法使用

- 独立显卡（目前已知没有任何解决方案）

> 已使用 `SSDT-DDGPU.aml` 屏蔽了独显
>
> 由于同方八代以上模具的 HDMI / miniDP 直接由无法驱动的独显输出，所以 HDMI / miniDP 也无法使用。

- 无线网卡（Intel AC9462 无解）

> 无线网卡无法使用的替代方案：
> - 蓝牙共享网络
> - USB共享网络 (HoRNDIS) 
> - USB网卡
> - 更换无线网卡[推荐更换“BCM94360CS2 + 转接卡”方案]
> 
> 由于 “**隔空投送 AirDrop**” 和 “**接力 Handoff**” 依赖于无线网络和蓝牙，所以此两项功能不可用。

- 读卡器（读卡器为 USB 2.0 外置通道，没有兼容驱动）

<h2 align="center">✽ 获取社区帮助 ✽</h2>

### QQ 群

#### 请确保你在群里问问题之前，已经看过了[教学视频](https://www.bilibili.com/video/av81263778)、并使用了搜索功能查找并仔细阅读了[项目文档](https://hackintosh.kirainmoe.com)内的相关内容！


| 群名称 | 神舟战神黑苹果 1 群 | 神舟战神黑苹果 2 群 |
|-----|------|---------|
| 群号 | 833022235 | 815359928 |
| 加群二维码 | <img src="https://i.loli.net/2020/01/05/sKh875UC14LFejv.png"> | <img src="https://i.loli.net/2019/11/23/Fzkeprn9PA7bf6q.png"> |
| 加群链接 | https://jq.qq.com/?_wv=1027&k=5G82zlQ | https://jq.qq.com/?_wv=1027&k=5b7ZJWl |
| 规模 | 1000 人群 | 500 人群 |
| 特殊限制 | 因人数爆满，暂需付费 1 元入群 | **仅限清华同方模具的 8/9 代机型用户加入** |
| 备注 | - | 新群人数较少，推荐新用户加入 2 群 |

### 联系我

当你有**看了文档后仍然无法解决的问题**、对配置文件的建议和改进，可以通过以下渠道联系我。

请注意，本仓库中的配置文件都是**免费使用**的，为了保护你的权益，建议你不要通过 **任何渠道** 以 **任何价格** 购买上述机型的配置文件。同时请认准维护者在以下平台的 ID：

- [邮件： i@kirainmoe.com](mailto:i@kirainmoe.com)
- [Telegram：@yume_maruyama](https://t.me/yume_maruyama)
- [bilibili：@初雪吟梦](https://space.bilibili.com/3999552)
- [酷安 & 知乎：@吟梦](https://www.zhihu.com/people/yin-meng-65-93)

<h2 align="center">✽ 贡献本项目与鸣谢 ✽</h2>

欢迎大家一起完善该系列机型的 EFI. 如果你认为这份配置文件有可以改进的地方，请注册一个 Github 账号，fork 本仓库自行修改后提交 Pull Request.

### 特别鸣谢

- 感谢 [@Goshin](https://github.com/goshin) 修复了 VoodooI2C 触摸板驱动的遗留问题、修复了九代同方机型无法使用 VoodooPS2Controller 驱动的问题、补充了 Fn 快捷键的功能。
- 感谢 [@zxystd](https://github.com/zxystd) 提供了因特尔蓝牙驱动 IntelBluetoothFirmware.kext.
- 其它内核拓展和 SSDT 的作者，可在本仓库的其它 README 文档或对应的 Info.plist 中找到。

<h2 align="center">✽ 许可协议 & 捐赠 ✽</h2>

### 许可

在 **[Maruyama License 协议](https://github.com/kirainmoe/hasee-tongfang-macos/blob/gk5cn6/5x-clover/LICENSE)** 的许可下，使用本仓库下的所有配置文件都是**免费**的。如果有人向你售卖配置文件，请立刻要求他退款。

希望你们也能够发扬开源和分享精神，积极提出建议和想法、Pull Request，由大家共同打造完美的黑果体验。

### 捐赠

当然，如果您认可我的工作，也可以通过捐赠支持我。所有的捐赠将会成为我更新的动力。

| 支付宝 | 微信 |
|-------|------|
| <img src="https://i.loli.net/2019/09/19/j8doaIVYWtMXlNJ.png" width="200px"> | <img src="https://i.loli.net/2019/09/19/xkoHIsuZLvtzDSP.png" width="200px"> |