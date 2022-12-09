<!-- omit in toc -->
#  macOS on Tongfang Laptops

<img align="right" src="https://s2.loli.net/2022/06/17/grWb1ACDOlEskUG.png" width="200px" alt="preview">

适用于神舟、机械革命等品牌 7/8/9 代同方机型安装 macOS 的 OpenCore 配置文件

<img src="https://github.com/kirainmoe/tongfang-macos/actions/workflows/release.yml/badge.svg"/> <img src="https://img.shields.io/badge/bootloader-OpenCore-lightgrey.svg?style=flat-square&logo=microsoft-edge"/> <img src="https://img.shields.io/badge/support_macOS-13.1-9cf.svg?style=flat-square&logo=apple&logoColor=fff"/> <img src="https://img.shields.io/badge/built_by-Bellaris-ff69b4.svg?style=flat-square"/>

<h3>
    <a href="https://www.bilibili.com/video/av81263778">安装视频教程</a> | 
    <a href="https://hackintosh.kirainmoe.com">帮助文档</a> |
    <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/Docs/FAQ.md">常见问题</a> |
    <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/Docs/Changelog.md">更新日志</a> | 
    <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/README-en.md">English</a>
</h3>

<!-- omit in toc -->
# 目录

- [🚀 快速开始](#-快速开始)
    - [📦 全新安装 macOS](#-全新安装-macos)
    - [🔧 更新 macOS 或配置文件](#-更新-macos-或配置文件)
- [🍀 兼容性](#-兼容性)
    - [🍎 兼容的系统](#-兼容的系统)
    - [💻 适用的机型](#-适用的机型)
- [👀 配置文件概况](#-配置文件概况)
  - [😊 基础功能](#-基础功能)
  - [🤓 高级特性](#-高级特性)
- [🤯 问题反馈和社区帮助](#-问题反馈和社区帮助)
- [🧑‍💻 致谢与许可](#-致谢与许可)
- [🎁 捐赠](#-捐赠)
- [📔 拓展阅读](#-拓展阅读)

# 🚀 快速开始

在开始之前，请先查看 [兼容性表格](#兼容性)，确认此配置文件支持你的机型、模具以及系统版本；同时备份好电脑中的重要数据。

> 🎯 **注意：由于本项目的维护方式与其它 Hackintosh 项目不同，请不要使用 GitHub 的 "Download Zip" 功能下载整个仓库。正确使用方法是：你需要先下载对应平台的 [Tongfang Utility (同方助手)](https://tongfang.kirainmoe.com) ，根据你使用的机型和实际的硬件配置，定制、下载或更新后续安装 macOS 所需的配置文件 (EFI)。**

<details>
<summary>我为什么需要使用 “<b>同方助手</b>” 🤔？</summary>

<p>虽然配置文件大体相同，但由于采用“同方模具”的衍生机型很多，无法对每个机型单独维护；用户对硬件的自行更换，配置文件也需要做出修改才能兼容。基于以上考虑，作者做出了这款软件。</p>

<p>“同方助手”会针对用户的不同硬件情况和需求，定制适合用户机型和硬件情况的 EFI，并且可以确保在更新 EFI 时， Windows 不会丢失激活状态、macOS 不会重置 SMBIOS 识别码。因此，我们推荐所有用户使用“同方助手”定制对应机型的配置文件。</p>

<p>如果因为某些原因你无法使用此工具定制配置文件，请参考以下方式手动修改配置文件，以兼容你的机型。</p>
<details>
<summary>手动定制方式</summary>
<ul>
    <li>使用 Download Zip 下载并解压配置文件。</li>
    <li>在 OC/ACPI 文件夹中，根据你的模具选择对应的备选 USB 端口配置文件，改名为 SSDT-UIAC.aml（默认的 SSDT-UIAC.aml 是 GK5CN6X/GK5CN5X 的配置)。</li>
    <li>使用 Xcode / ProperTree 等 Plist 编辑工具编辑 config.plist，根据你的机型选择修改你需要启用的 ACPI 补丁、ACPI 重命名和内核拓展。</li>
    <li>在 config.plist 的 PlatformInfo 中修改你的三码。</li>
</ul>
</details>
</details>

得到配置文件后，请参考下面的教程安装或更新系统：

### 📦 全新安装 macOS

若你是首次安装 macOS：

- 推荐参考官方视频教程[《同方模具笔记本 macOS 安装教学》](https://www.bilibili.com/video/av81263778) 完成安装。
- 或参考下面的文字安装教程完成安装。

<details>
<summary><span style="color: rgb(84,175,221)">展开文字教程</span></summary>

<h4>Step 0. 安装前准备</h4>

<ol>
<li>准备一个容量<b>大于等于 16GB</b> 的 U 盘，用于写入系统安装镜像。</li>
<li>准备一个剩余容量<b>大于等于 35GB 的</b>硬盘分区，用于安装 macOS。</li>
<li><b>备份好硬盘中的重要数据</b>。</li>
<li>确保你的电脑中，<b>没有安装</b>如下不兼容 macOS 的硬件：</li>
<ul>
<li>三星 PM981 / PM981a NVMe 固态硬盘</li>
<li>镁光 2200s 系列固态硬盘</li>
<li>英特尔 傲腾内存 (Intel Optane)</li>
</ul>
<li>参考<a href="http://www.360doc.com/content/19/0614/13/57493_842399187.shtml">此教程</a>，确保你准备用于安装 macOS 的硬盘采用 <b>GPT 格式</b>（而不是 MBR 格式）的分区表。</li>
<ul>
    <li>如果你的硬盘分区表是 MBR 格式，请先在 PE 环境下，使用 <a href="https://www/disktool.cn">傲梅分区助手</a> 或 <a href="http://diskgenius.cn">DiskGenius</a> 软件，参考 <a href="https://www.disktool.cn/content-center/gpt-mbr/how-to-convert-gpt-to-mbr-without-data-loss.html">此教程</a>，将硬盘转换为 GPT 格式。</li>
</ul>

<li>参考<a href="https://zhidao.baidu.com/question/1928773299469344467.html">此教程</a>，确保你的电脑采用 <b>UEFI 模式</b>（而不是传统 BIOS 模式）引导 Windows 系统。</li>
<li>确保你将要安装 macOS 的硬盘上，有一个容量 >= 200M 的 ESP 分区。</li>
<li>如果你不满足上述两个条件：</li>
    <ul>
        <li>请先在 PE 环境下，使用 <a href="https://www/disktool.cn">傲梅分区助手</a> 或 <a href="http://diskgenius.cn">DiskGenius</a> 软件，<b>压缩 Windows 系统分区并创建一个容量 &gt; 200M 的 EFI System Partition 类型分区或 FAT32 类型分区。</b></li>
        <li>在 PE 环境下，参考 <a href="https://www.cnblogs.com/motoyang/p/6111786.html">此教程</a> 重建 UEFI 引导。</li>
        <li>重启进入 BIOS，在 Boot 选项卡中，将 Boot Mode 改为 "UEFI Mode"，保存并重启系统。</li>
    </ul>
</ol>

<h4>Step 1. 下载并写入 macOS 系统镜像</h4>
<ul>
    <li>推荐前往 <a href="https://blog.daliansky.net/" rel="nofollow">黑果小兵博客</a> 下载置顶帖中的最新正式版本 macOS 镜像。</li>
    <li>下载 <b>Clover / WEPE 双分区版</b> 即可。下载完成后应当得到一个 DMG 文件，推荐在写入前先按照置顶帖中的教程，校验 MD5.</li>
    <li>下载 <a href="https://balena.io/etcher">BalenaEtcher</a> 用于写入安装镜像。</li>
<li>将 U 盘插入电脑，使用 BalenaEtcher 将下载好的 DMG 写入到 U 盘上。</li>
</ul>

<h4>Step 2. 获取安装 macOS 用的配置文件 (EFI)</h4>

<ul>
    <li>下载 <a href="https://tongfang.kirainmoe.com">同方助手</a> 并安装。</li>
    <li>切换到“配置文件”选项卡，根据引导选择机型、安装的系统版本和特定硬件型号，然后点击“生成 EFI”。</li>
    <li>此时你可以在桌面上名为 <b>"Tongfang_EFI"</b> 的文件夹。</li>
</ul>

<h4>Step 3. 划分安装 macOS 的硬盘空间</h4>
<ul>
    <li>使用 Windows 自带磁盘管理或 DiskGenius 软件，压缩某一个磁盘的空间，并在硬盘的空闲空间上创建一个新分区，格式化为 NTFS 格式。</li>
</ul>

<h4>Step 4. 替换安装镜像中的 EFI 为机型专用 EFI</h4>
<ul>
    <li>打开 DiskGenius 并插入 U 盘，删除 U 盘 ESP 分区中的 EFI/BOOT 和 EFI/CLOVER。</li>
    <li>将桌面上 Tongfang_EFI 文件夹中的 BOOT 和 OC 拖入 ESP 分区的 EFI 文件夹中。</li>
    <li>确保目录结构为：EFI/BOOT 和 EFI/OC。</li>
</ul>

<h4>Step 5. 设置 BIOS</h4>
<ul>
    <li>重启后按 F2 进入 BIOS，确保以下设置一致：</li>
    <ul>
        <li>SATA Mode = AHCI</li>
        <li>Launch CSM = Disabled</li>
        <li>Secure Boot = Disabled</li>
        <li>Boot Mode = UEFI Mode</li>
    </ul>
    <li>按 F4 或其他按键保存并退出。</li>
</ul>

<h4>Step 6. 引导并安装 macOS</h4>
<ul>
    <li>插入 U 盘，开机时按住 F7 或 F10 进入引导菜单。</li>
    <li>从 U 盘引导系统，进入 OpenCore.</li>
    <li>其余步骤与在 Mac 上安装 macOS 无异。需要注意安装过程中将多次重启，请留意 OpenCore 中是否出现新的启动项。</li>
</ul>

安装完成进入系统后，可以下载 [同方助手 for macOS](https://github.com/kirainmoe/tongfang-hackintosh-utility) 优化后续使用体验。

</details>

### 🔧 更新 macOS 或配置文件

可以使用 [同方助手 for macOS](https://tongfang.kirainmoe.com) 检查并更新 EFI 配置文件，并使用助手的自动替换功能更新 EFI。

配置文件支持 OTA 升级 macOS 系统，更新前请确保你正在使用最新版本的配置文件，然后从 macOS **系统偏好设置 => 软件更新** 里直接 OTA 更新。


# 🍀 兼容性

### 🍎 兼容的系统

当前配置文件的版本是 `22.12.9`，基于 OpenCore `0.8.8`；兼容的 macOS 系统版本如下表所示：

| macOS 版本        | 兼容状态 | 全新安装 | OTA | 已测试最新版本       | 原因                                                  |
| ----------------- | -------- | -------- | --- | -------------------- | ----------------------------------------------------- |
| 10.13 High Sierra | ⭕       | ⭕       | ⭕  | 未测试               | 不推荐任何 8 代或以上的同方机型安装 macOS High Sierra |
| 10.14 Mojave      | ✅       | ✅       | ✅  | 10.14.6 (18G103)     |                                                       |
| 10.15 Catalina    | ✅       | ✅       | ✅  | 10.15.7 (19H114)     |                                                       |
| 11 Big Sur        | ✅       | ✅       | ✅  | 11.6 (20G165)        |                                                       |
| 12 Monterey       | ✅       | ✅       | ✅  | 12.3 (21E5206e)      |                                                       |
| 13 Ventura        | ✅       | ✅       | ✅  | 13.1 Beta (22C5033e) |                                                       |

### 💻 适用的机型

理论上所有使用 **清华同方模具的标压 7/8/9 代机型** （机械革命 Umi Air 等其它使用同方 QC7 模具的设备除外，这些机型可能无法完美兼容）均可使用对应的配置文件。详细的兼容型号表格如下：

<details>
<summary>如何确定我的笔记本是否兼容？</summary>

**请注意，并不是配置相近就可以使用此仓库的 EFI**。

<ul>
<li>本仓库的 EFI 不兼容蓝天模具机型、广达模具机型、六代（含）以下机型、低压处理器机型。</li>
<li>如果你是神舟笔记本，且模具型号没有出现在上述列表中，可以到 http://kfgl.hasee.com/lookup/book/bblist.asp 页面，查询你的笔记本型号所对应的准系统名称。</li>

<li>若你的笔记本采用 7/8/9 代因特尔酷睿标压处理器，且查询到准系统名称中带有 “（同方）” 字样，则你的笔记本可以兼容此仓库的配置文件。</li>

<li>对于其它品牌理论兼容的同方模具机型，若遇到 USB 接口无法识别或速度不正常的问题，建议参照 <a href="https://blog.daliansky.net/Intel-FB-Patcher-tutorial-and-insertion-pose.html">此教程</a> 自行定制 USB。</li>
</ul>

</details>

> 提示：如果你正在使用同方 QC7 模具的设备，可以尝试[此 EFI](https://github.com/szguomy/hackintosh).

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
            <td rowspan=2> × </td>
        </tr>
        <tr>
            <td>GI5CN54</td>
            <td>Z7M-KP7GC、Z7M-KP5GC、Z7M-KP7GA、Z7M-KP5GA<br> Z7M-KP7GE、Z7M-KP5GE、Z7M-KP7GH、Z7M-KP5GH</td>
        </tr>
        <tr>
            <td>GK5CP6X</td>
            <td>Z7-CT7GK、Z7-CT5GA、Z7-CT7GA</td>
            <td rowspan=2> × </td>
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
            <td rowspan=5>×</td>
            <td rowspan=3>×</td>
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
            <td> × </td>
            <td>Z2 / X8Ti 系列（8 代）</td>
        </tr>        
        <tr>
            <td>GK5CP6Z <br> GK5CP5Z</td>
            <td> × </td>
            <td>Z2-G、Z2-R（9 代）</td>
        </tr>
        <tr>
            <td>GJ5KN64<br>GJ5KN6A<br>(实验性支持)</td>
            <td>Z7-KP7GT、Z7-KP7D2</td>
            <td> × </td>
            <td>X1</td>
        </tr>        
    </tbody>
</table>

# 👀 配置文件概况

## 😊 基础功能

| 功能 | 状态 |
|-----|------|
| 双系统引导 | ✅ 正常 |
| OTA 升级 macOS | ✅ 正常 |
| CPU（变频、睿频） | ✅ 正常 | 
| 核显（硬件加速） | ✅ 正常 |
| 声音（扬声器、耳机、麦克风）| ✅ 正常 |
| 电源管理（电池状态）| ✅ 正常 |
| 有线网卡 | ✅ 正常 |
| 亮度调节 | ✅ 正常 |
| 摄像头 | ✅ 正常 |
| SD 读卡器 | ✅ 正常 |
| USB | ✅ 正常 |
| 触摸板及手势 | ✅ 正常 |
| S3 睡眠唤醒 | ✅ 正常 |
| 风扇转速 | ✅ 正常 |
| 全盘加密（FileVault）| ✅ 正常 |
| Apple / Broadcom 蓝牙、无线网卡 | ✅ 正常 | 
| Intel 蓝牙、无线网卡 | ⭕️ 有限支持 |
| nVIDIA 独立显卡 | ❌ 无法驱动 * |

*\* 七代 Kaby Lake 机型除外。*

## 🤓 高级特性

| 功能 | 状态 | 备注 |
|-----|-----|---|
| S4 休眠唤醒 | ✅  支持| 需自行调整 `hibernatemode` |
| Fn 快捷键 | ✅  支持 |  需要在 [同方助手](https://github.com/kirainmoe/tongfang-utility) 中安装增强功能 |
| 双击开关触摸板 | ✅ 支持 | 需要在 [同方助手](https://github.com/kirainmoe/tongfang-utility) 中安装增强功能 |
| 键盘背光调节 | ✅ 支持 | ITE revision 2 需要安装 [同方助手](https://github.com/kirainmoe/tongfang-utility) 实现<br>ITE revision 3 需要使用 [AUCC](https://github.com/rodgomesc/avell-unofficial-control-center) |
| 风扇转速控制 | ✅ 支持 | 需要安装 [同方助手](https://github.com/kirainmoe/tongfang-utility) |
| 外接显示器 | ⭕️ 有限支持 | 除 KabyLake 机型以外的同方机型所有视频输出通道均直连独显<br>需购买 DisplayLink 协议的 USB 显示适配器外接，参考 [#10](https://github.com/kirainmoe/tongfang-macos/issues/10) |
| 4K 屏幕 | ⭕️ 有限支持 | **部分机型需要先修改 `DVMT Pre-allocated` 为 `64MB` 以上**，参考[此文章](Docs/Unlock-CFG-and-DVMT.md) |


# 🤯 问题反馈和社区帮助

推荐通过 [GitHub issue](https://github.com/kirainmoe/hasee-tongfang-macos/issues/new) 的方式反馈问题，或者向 kirainmoe@gmail.com 发送问题报告邮件。

你也可以加入以下交流平台获取帮助，**但请确保你在群里问问题之前，已经看过了[教学视频](https://www.bilibili.com/video/av81263778)**！

| 群名称     | 神舟战神黑苹果 1 群                                             | 神舟同方黑苹果 2 群                                             |
| ---------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| 类型       | QQ 群                                                           | QQ 群                                                           |
| 群号       | 833022235                                                       | 815359928                                                       |
| 加群二维码 | ![1群二维码](https://i.loli.net/2020/01/05/sKh875UC14LFejv.png) | ![2群二维码](https://i.loli.net/2019/11/23/Fzkeprn9PA7bf6q.png) |
| 加群链接   | https://jq.qq.com/?_wv=1027&k=5G82zlQ                           | https://jq.qq.com/?_wv=1027&k=5b7ZJWl                           |
| 规模       | 1000 人群                                                       | 1000 人群                                                       |
| 特殊限制   | 无机型限制                                                      | **仅限同方模具的 8/9 代机型用户加入**                           |

# 🧑‍💻 致谢与许可

[tongfang-macos](https://github.com/kirainmoe) 项目的诞生与发展离不开维护者、测试人员和开源社区的共同贡献，请转到 [《贡献者与致谢名单》](Docs/Credits.md) 查看所有的贡献者及版权声明。为了发扬开源精神，我们要求你在使用本仓库提供的内容时，遵守以下规则：

**对于本仓库配置文件的一切开发、维护旨在学习，请勿用于商业用途和非法用途。**

- 使用本仓库下的所有配置文件是完全免费的。不允许任何人以任何形式、任何价格出售和重新分发此配置文件。

- 在此配置文件的基础上适配其它机型的配置文件，需要将成果向任何人开放，并保留对本项目的引用和鸣谢 (Credits) 信息。

- 在任何项目中，使用了从此仓库中获取的任何由其他人创作的内容，需要保留对本项目的引用和他人的版权信息。

**这意味着你不能**：

- 针对此仓库提供的 EFI，提供包括但不限于交易下载、付费下载、邀请下载等 “将下载与付费绑定” 的服务。
- 在此配置文件的基础上适配其他机型的 EFI 并提供上述付费下载服务。
- 重新分发此 EFI 或适配其它机型 EFI 时，删除版权信息或鸣谢声明。

# 🎁 捐赠

如果您认可我的工作，也可以通过捐赠支持我。所有的捐赠将会成为我更新的动力。

| 支付宝                                                                      | 微信                                                                        |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| <img src="https://i.loli.net/2019/09/19/j8doaIVYWtMXlNJ.png" width="200px"> | <img src="https://i.loli.net/2019/09/19/xkoHIsuZLvtzDSP.png" width="200px"> |

# 📔 拓展阅读

提示：涉及硬件层面的修改请谨慎操作。

- [GJ5CN64 / GI5CN54 模具 PS/2 触摸板优化方案 (by @anhor)](https://ryanhor.com/2020/03/12/how-to-hack-perfect/)
- [Aptio V BIOS 解锁全功能教程 (by @bswaterb)](http://www.bswaterb.club/?p=218)
- [同方机型 EFI 适配不完全指南](https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/Docs/Adapting-Guidance-zh-CN.md)
- [不刷新 BIOS 的前提下修改 DVMT Pre-allocated](Docs/Unlock-CFG-and-DVMT.md)
- [其它长期维护机型 EFI 列表](https://github.com/daliansky/hackintosh)
