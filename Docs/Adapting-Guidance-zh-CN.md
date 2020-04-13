# 同方机型 EFI 适配不完全指南

## 前言

这篇文章旨在分享在过去的一年多中，我适配神舟同方模具机型、维护本仓库总结的经验。由于仅有 8 代设备和个人精力原因，未来本仓库可能不会再添加更多的机型；同时搭载十代标压牙膏的新同方机型已经上市，如果正在阅读这篇文章的你想要适配十代（或七代及以下）同方机型，希望这篇文章会使你少走一些弯路。

同时，在 hasee-tongfang-macos 下，我和一些贡献者们也制作了许多现成的 ACPI 热补丁 (hotpatch)，这些热补丁理论上可以在几乎全部的同方模具上使用，在下文我将会阐述它们的用途、以及对应需要的 ACPI 重命名，这样可以节省你在驱动某些功能时的不少时间，如修复电池显示等等。

## 概览和限制

在开始之前，首先需要声明一些同方模具的差异。不同的模具在可以驱动的功能上存在不同，例如：

- 搭载八代以上标压处理器的同方模具，在任何 macOS 版本下无法驱动独立显卡。
- 只有搭载七代及以下标压处理器的同方模具，Nvidia 独显可能可以在 10.13.6 下驱动。
- Intel 无线网卡无法在 macOS 下被驱动，但九代及之前的同方模具可以任意更换无线网卡，未采用 CNVi 的无线网卡，且没有网卡白名单。
- 八代以上同方模具的 HDMI / miniDP 直连独显，因此无法通过以上接口外接显示器。
- 几乎所有同方模具的 Type-C 接口为 USB 3.1 Gen 1 协议，非全功能 Type-C 口（意味着不可充电输入和外接），不支持 Thunderbolt 协议。
- 较新模具（GI5CN54 / GJ5CN64 以后的模具）采用了 I2C HID 触摸板（支持 Windows Precision），支持完整的手势；较老模具采用的 PS/2 触摸板目前无法完整驱动。

了解以上差异与限制，将会使你在适配新模具的时候避免或减少踩坑。接下来我将会讲讲各项功能驱动的技术细节。本文章默认基于 OpenCore 引导，若你希望适配 Clover 其实也是大同小异的。

## 核芯显卡

### CoffeeLake

八代以上标压机型使用 Intel UHD Graphics 630 (Coffee Lake)，默认在 Lilu 和 WhateverGreen 正确加载的情况下（保留 `platform-id` 为空）即可正常驱动，但仍然推荐使用 Hackintool 或其他工具打缓冲帧补丁。请选择 `platform-id` 为 `0x3e9b0000`.


> 注意：八代以下及八代 GI5CN54 / GJ5CN64 模具的 `DVMT Pre-allocated` 大小默认为 32MB，可能会导注入显卡 ID 后进入系统 panic，此时需要先使用 0x12345678 进入系统，使用 Hackintool 打缓冲帧补丁（`framebuffer-stolenmem`, `framebuffer-fbmem`）；或者修改 BIOS 将 DVMT 设置为 64M.



### WhiskyLake

八代以上低压机型使用 Intel UHD Graphics 620 (Whisky Lake)，需要使用 Hackintool 或其他工具打缓冲帧补丁。

### KabyLake

七代标压机型使用 Intel HD Graphics 630 (Kaby Lake)，但注入 `platform-id: 0x591b0000` 虽然能正确驱动显卡，但是可能会导致在引导进入系统时遇到类似 CoffeeLake 的暗屏（亮度很低，但有背光，用手电筒照可以看见显示内容）。

解决方法是仿冒六代 (Skylake) 平台，即通过 Hackintool 打六代平台的缓冲帧补丁（`platform-id: 0x19160000`），同时注入六代的 `platform-id` 和 `fake Intel GFX: 0x19168086`，并添加启动参数 `lilucpu=8`.

### CometLake / IceLake

十代 CometLake 标压和 IceLake 10nm 截止写文章时仍然无解，需要等待 WhateverGreen 更新。

### 4K 解决方案

> Reference: https://github.com/kirainmoe/hasee-tongfang-macos/issues/33

如果自行更换了 4K 内屏，必须解锁 BIOS 设置 DVMT 为 64M（GK5CN5X / GK5CN6X 及以后的模具默认即为 64MB），同时需要打缓冲帧补丁，勾选 “启用 HDMI20 (4K)”, “显存 2048MB”，“DPCD 最大链路值”，“仿冒图形卡 ID”，“LSPCON 启用驱动程序”。需要保证最终生成的补丁中存在以下值：

| key | comment |
|-----|---------|
| AAPL,ig-platform-id | |
| device-id | |
| dpcd-max-link-rate | 需要为 `14 00 00 00` |
| enable-dpcd-max-link-rate-fix | 需要为 `01 00 00 00` |
| enable-hdmi20 | 需要为 `01 00 00 00` |
| enable-lspcon-support | 需要为 `01 00 00 00` |
| framebuffer-unifiedmem |  |

## 声卡

同方模具大部分使用 Realtek ALC269vc 声卡，只需配合 AppleALC.kext 和 Lilu.kext，注入 `layout-id` 为 `29` 或 `88`，同时勾选 `Fix HPET`, `Fix IPIC` (Clover) 或加入 [SSDT-HPET.aml](https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/OC/ACPI/SSDT-HPET.aml) (OpenCore).

如果你的电脑不采用 ALC269 声卡，则可以查看 [Supported Codecs](https://github.com/acidanthera/applealc/wiki/supported-codecs) 查看并试出你声卡的 `layout-id`.

建议通过注入 Device Properties 的方式 (设备路径 `PciRoot(0x0)/Pci(0x1f,0x3)`) ，注入 `layout-id`，如 `29` 应填写 `layout-id` 为 `1D000000`. 通过此方法同时还需要注入 `device-id` 为 `70A10000`。

部分设备可能需要 `FakePCIID.kext` 和 `FakePCIID_IntelHDMI_Audio.kext` 这两个驱动，防止掉声卡。

## 亮度调节

### 基础亮度调节

七代及以下机型，若使用 Clover 引导，可直接在 ACPI 中勾选 `Add PNLF` 选项添加亮度调节功能。若使用 OpenCore 引导，可以添加 `SSDT-PNLF.aml` 补丁，你可以在 WhateverGreen.kext 的 Release 中找到。

八代/九代以上机型需要使用特地为 Coffee Lake 核显定制的 [SSDT-PNLFCFL.aml](https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/OC/ACPI/SSDT-PNLF.aml).


### 亮度保存

对于重启之后亮度设置无法保存的问题，有以下两种方案可供参考：

- 驱动原生 NVRAM 或模拟 NVRAM。推荐 300 系列主板的机型采取此方法，驱动原生 NVRAM 的方法参考后文。至于模拟 NVRAM 的方法，Google / 百度一下。
- 可以加入 [SSDT-ALS0.aml](https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/OC/ACPI/SSDT-ALS0.aml) 仿冒亮度传感器，然后在系统偏好设置中勾选 “自动调节亮度”。

### 快捷键调节亮度

若要使用自带的 Fn+F11, Fn+F12 调节亮度，你需要使用 Rehabman 或 Acidanthera 的 VoodooPS2 系列驱动（不能使用 ApplePS2SmartTouchPad 和 ApplePS2Controller + AppleACPIPS2Nub）。

快捷键调节亮度依赖映射 ACPI 查询实现，需要使用 SSDT 补丁覆盖 Fn+F11, Fn+F12 原先对应的查询方法。在同方机型上这两个键一般对应着 _Q14, _Q15.

添加 [SSDT-FN.aml](https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/OC/ACPI/SSDT-FN.aml) 补丁，同时加入以下重命名：

```
Comment: change _Q14 to XQ14
Find: 5F513134
Replace: 58513134

Comment: change _Q15 to XQ15
Find: 5F513135
Replace: 58513135
```

## 有线网卡

同方模具多采用 Realtek RTL8168H 系列瑞昱千兆网卡，可以直接使用 `RealtekRTL8111.kext` 驱动。

## USB 定制

不同模具的 USB 端口定义不同，你需要使用 Hackintool 自行定制 USB。具体教程 Google/百度即可，这里不再赘述。

特别注意的是同方模具机型可能需要打 `USB _PRW` 补丁来防止睡眠秒醒，你可以直接使用仓库下的 [SSDT-GPRW.aml](https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/OC/ACPI/SSDT-GPRW.aml)，同时加入以下 ACPI 重命名：

```
Comment: change GPRW to XPRW
Find: 47505257 027068
Replace: 58505257 027068
```


## 蓝牙

若使用原装 Intel 有线网卡，可以直接采用来自 [zxystd/IntelBluetoothFirmware](https://github.com/zxystd/IntelBluetoothFirmware/releases) 的内核拓展。

若更换了博通网卡（非白果拆机卡），可以使用 Acidanthera 的 BrcmPatchRAM 系列驱动。

需要注意的是，蓝牙正常使用要求 USB 正确定制。部分机型（如同方九代机型）可能出现 USB 定制类型为内建 (255 或 0xFF)，但设置中找不到蓝牙的情况。此时应当将蓝牙的 USB 定制类型改为 USB3 (3 或 0x3)。同方模具的蓝牙一般位于 USB Map 的节点 HS14.

## 电源管理和电池状态显示

### 电池状态显示

可以直接使用我制作好的 [SSDT-BATT.aml](https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/OC/ACPI/SSDT-BATT.aml) 热补丁，同时加入以下 ACPI 重命名：

```
Comment: change _BIF to XBIF
Find: 5F424946
Replace: 58424946

Comment: change _BST to XBST
Find: 5F425354
Replace: 58425354

Comment: change ECBE to XCBE
Find: 45434245 00
Replace: 58434245 00
```

### 电源管理

六代以上机型驱动原生电源管理，只需要正常显示电池状态，并注入 `plugin-type=1` 参数即可。对于使用 Clover 引导的用户，可以在 ACPI 部分勾选“插件类型”；对于使用 OpenCore 引导的用户，可以使用 [SSDT-PLUG.aml](https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/OC/ACPI/SSDT-PLUG.aml) 热补丁。

## 摄像头

一般说来正确定制 USB 即可正常使用。同方机型的摄像头设备多位于 HS13 节点。

## 触摸板

### I2C HID 触摸板

对于八代 GK5CN5X / GK5CN6X 以后的模具，采用了 I2C HID 触摸板，需要使用 VoodooI2C.kext 和 VoodooI2CHID.kext 两个驱动，同时加入 [SSDT-USTP.aml](https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/OC/ACPI/SSDT-USTP.aml) 以使其工作于 GPIO 中断模式。

需要注意的是，如果你是用 OpenCore 引导，由于 VoodooI2C.kext 还带有三个子 Kext (VoodooInput, VoodooGPIO, VoodooI2CService)，故需要注意驱动加载顺序应为 VoodooI2CService -> VoodooGPIO -> VoodooI2C -> VoodooInput -> VoodooI2CHID.

### PS/2 触摸板

对于八代以前或八代 GI5CN54 / GJ5CN64 模具，采用 PS/2 的触摸板，目前仍然没有很好的手势支持，且截至写文章时，Acidanthera 的 VoodooPS2 并不兼容同方模具使用的 Synaptics 触摸板。因此，你可以选择使用 Rehabman 的 VoodooPS2 或闭源的 ApplePS2SmartTouchPad. 当未来 VoodooInput 完善时，可能可以通过 VoodooPS2 和 VoodooInput 搭配实现手势。

## 独显屏蔽

使用 @Goshin 修改完善过的 [SSDT-DDGPU.aml](https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/OC/ACPI/SSDT-DDGPU.aml)，同时加入以下 ACPI 重命名：

```
Comment: change _WAK,1 to ZWAK
Find: 5F57414B 01
Replace: 5A57414B 01

Comment: change _PTS to XPTS
Find: 1443045F 50545301
Replace: 14430458 50545301
```

同时在 `PciRoot(0x0)/Pci(0x2,0x0)` 中添加属性 `disable-external-gpu` = `01000000`，或添加引导参数 `-wegnoegpu` 即可。

## 原生 NVRAM

驱动原生 NVRAM 仅在 8 代以上机器测试，添加 [SSDT-PMC.aml](https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/OC/ACPI/SSDT-PMC.aml) 即可。若你使用 OpenCore，还需要设置以下属性：

| key | value |
|-----|-------|
| NVRAM/LegacyEnable | False |
| NVRAM/LegacyOverwrite | False |
| NVRAM/WriteFlash | True |
| UEFI/RequestBootVarFallback | True |
| UEFI/RequestBootVarRouting | True |

> 提醒：OpenCore 的选项名称和位置可能会随着版本的更新改变，具体请参照 OpenCore 的官方文档。

## 九代机型适配特别提醒

-  9 代机型 DSDT 的 STAS 属性不为 1，可能会导致无法引导 macOS，具体表现为 -v 时会卡死在 apfs_module_start 或 ApplePS2Controller。对此的解决方法是添加 [SSDT-AWAC.aml](https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/OC/ACPI/SSDT-AWAC.aml)，或添加以下 ACPI 重命名。实际上对于 300 系列主板，一般都需要添加这个补丁：

```
Comment: fix _STA method
Find: A00A9353 54415301
Replace: A00A910A FF0BFFFF
```

- 9 代机型由于键盘方面做了改动，无法使用 Rehabman 或 Acidanthera 的 VoodooPS2，对此的解决方法是使用 ApplePS2Controller.kext + AppleACPIPS2Nub.kext，或者使用 @Goshin 修改的 VoodooPS2Controller.kext （推荐后者，后者可在仓库中找到）。

## 其它

由于同方机型的 Embedded Controller 设备名为 `EC0`，而 macOS Catalina 要求 EC 设备被命名为 `EC`，因此需要 [SSDT-EC-USBX.aml](https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/OC/ACPI/SSDT-EC-USBX.aml) 补丁。

> 本文最后更新于：2020.4.13，若读者对本文有什么疑问或建议，请联系作者：kirainmoe@gmail.com