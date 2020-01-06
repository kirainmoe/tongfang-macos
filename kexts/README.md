这是存放内核拓展（或者一般人更喜欢叫它们驱动）的文件夹。Others 中的 Kext 在 Clover 引导系统的时候会被注入，而 Alternative Kexts 中的 Kext 是可选的，例如你更换了无线网卡或想要调整 CPU 性能的时候，就可以将该文件夹内的 Kext 复制到 Other 中。

**请注意，除非是部分对系统要求权限较高的 Kext (如 ACPIDebug 等），我们不推荐将 Kext 安装到 /L/E 或 /S/L/E 中，避免破坏系统导致无法启动。**

下面的表格说明了部分内核拓展的用途。

# Others 中的 Kext

| 文件名 | 描述 | 必须 |
|-------|-----|-----|
| AppleALC.kext | 注入 layout-id 实现声音设备内建（即声卡驱动） | |
| CPUFriend.kext, CPUFriendDataProvider.kext | 调节 CPU 性能 | |
| FakePCIID.kext, FakePCIID_Intel_HDMI_Audio.kext | 仿冒部分硬件的 ID, 在这里用于解决开机声音随机丢失的问题 | |
| IntelBluetoothFirmware.kext | 英特尔蓝牙固件注入驱动 | |
| Lilu.kext | 核心兼容层驱动 | yes |
| NoTouchID.kext | 屏蔽系统内的指纹验证 | |
| RealtekRTL8111.kext | 有线网卡驱动 |  |
| SMCBatteryManager.kext | 电池管理驱动，是 VirtualSMC 系列组件的一部分 |  |
| SMCLightSensor.kext | 传感器驱动，是 VirtualSMC 系列组件的一部分 | |
| SMCProcessor.kext | 处理器信息驱动，是 VirtualSMC 系列组件的一部分 | |
| USBInjectAll.kext | USB 驱动，用于修复 USB 端口不可用、正确注入 USB3.1/Type-C 端口信息的驱动 | |
| VirtualSMC.kext | SMC 仿冒驱动，注入 SMC 信息；与 FakeSMC 的作用类似 | yes |
| VoodooI2C.kext, VoodooI2CHID.kext | I2C HID 触摸板驱动，需要配合 SSDT 补丁使用 | |
| VoodooPS2Controller.kext | PS2 键盘驱动 | |
| WhateverGreen.kext | I/N/A 显卡驱动，当然在这里只用于驱动 Intel 核心显卡 | yes |

# Alternative Kexts 中的 Kext

该文件夹中的 Kext 都不是必须的。

| 文件名 | 描述 |
|-------|-----|
| AirportBrcmFixup.kext | 用于 DW* 无线网卡的 WiFi 驱动 |
| BrcmFirmwareData.kext, BrcmFirmwareRepo.kext, BrcmPatchRAM.kext, BrcmPatchRAM2.kext | 用于 DW* 无线网卡的蓝牙驱动，BrcmPatchRAM 和 BrcmPatchRAM2 选择一个可用的就好 |
| HoRNDIS.kext | 用于 Android USB 共享网络的驱动 |