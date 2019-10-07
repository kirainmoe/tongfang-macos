# 第三方无线网卡驱动使用说明

## 如果你有 BCM94360CS2 / BCM943224PCIEBT

什么都不需要做，只需要正确安装无线网卡即可。

## 如果你有 DW1830 (BCM943602BAED) / DW1560 (BCM94352z)

要驱动 WiFi，你需要将 `AirportBrcmFixup.kext` 放到 kexts/Other 中，同时在启动参数中添加以下值：

```
brcmfx-driver=1 brcmfx-country=#a
```
要驱动蓝牙，你需要将对应文件夹的 `BrcmPatchRAM2.kext`, `BrcmBluetoothInjector.kext` 和 `BrcmFirmwareData.kext` 放到 kexts/Other 中。

## 如果你有 DW1820A (BCM94350ZAE / BCM94356ZEPA50DX)

> Tips: 因为这张卡型号较多，且不同型号可能驱动情况和 BUG 不同。本人自行购买的是序列号打头为 `CN-08PKF4` 的版本，需要屏蔽针脚；屏蔽后  WiFi 正常，驱动后蓝牙正常。部分型号（包括本人购买的这张卡）有可能概率性地出现找不到无线网卡的情况。  
总之，我们不推荐没有动手能力和自己解决问题能力的用户购买这张卡。

首先你需要屏蔽天线面从左往右数的第 4,5,6 号针脚、背面从右往左数的第 3,4 号针脚，共 5 个针脚需要被屏蔽：

![image.png](https://i.loli.net/2019/10/07/hFY3vfX1EunVQ5I.png)

要驱动 WiFi，你需要将 `AirportBrcmFixup.kext` 放到 kexts/Other 中，同时在启动参数中添加以下值：

```
brcmfx-driver=1 brcmfx-country=#a
```

接下来进入系统，使用 `Hackintool` 的 `PCI` 页面，找到供应商有 `Broadcom Inc.` 字样的一行，复制这行的设备地址，如 `PciRoot(0x0)/Pci(0x1d,0x6)/Pci(0x0,0x0)`: 

同时，在 `config.plist` 的设备属性：`Devices->Properties` 中添加以下值：

1. 在左侧Devices中添加：`PciRoot(0x0)/Pci(0x1d,0x6)/Pci(0x0,0x0)`（也就是你在 Hackintool）中看到的值。

2. 在右侧分别添加：

| Properties Key* |	Properties Value | Value Type |
|---|----|---|
| AAPL,slot-name	| WLAN | STRING|
| compatible | pci14e4,4353| STRING |
| device_type	| Airport Extreme	| STRING |
| model	| DW1820A (BCM4350) 802.11ac Wireless | STRING |
| name |Airport | STRING |

类似这样：

![image.png](https://i.loli.net/2019/10/07/R28lHgJXGOcwNi3.png)

你也可以将以下内容合并到 `config.plist` 中的 `Devices -> Propertoes` 部分：

```xml
<key>PciRoot(0x0)/Pci(0x1d,0x6)/Pci(0x0,0x0)</key>
<dict>
    <key>AAPL,slot-name</key>
    <string>WLAN</string>
    <key>compatible</key>
    <string>pci14e4,4353</string>
    <key>device_type</key>
    <string>Airport Extreme</string>
    <key>model</key>
    <string>DW1820A (BCM4350) 802.11ac Wireless</string>
    <key>name</key>
    <string>Airport</string>
</dict>
```

要驱动蓝牙，你需要将对应文件夹的 `BrcmPatchRAM2.kext`, `BrcmBluetoothInjector.kext` 和 `BrcmFirmwareData.kext` 放到 kexts/Other 中。