这是放置 Clover SSDT Hotpatch 的文件夹，涉及 DSDT 的注入和覆盖修改操作。如果您不清楚文件的用途或者对 DSDT 不熟悉，请不要随意删除或修改此文件夹中的文件，大部分情况下您也不需要修改它们。

This directory contains Clover SSDT hotpatch files, which will inject and modify "Differentiated System Description Table, DSDT". If you are not familiar to the function of these files or DSDT, you should not delete or modify the file in this directory. In most cases, you needn't to modify them as well.

下面是这些热补丁文件的作用：

This follwing table describes the function of each file:

| 文件名 (filename) | 描述 (description) | 涉及的设备 (device) |
|------------------|-------------------|--------------------|
| SSDT-ALS0.aml | 用于仿冒光线传感器，从而保存亮度（需要打开自动亮度） | IGPU |
| SSDT-BATT.aml | 电池的 DSDT 补丁，用于显示电池信息和电池状态（仅用于同方模具笔记本） | BAT0 |
| SSDT-DDGPU.aml | 禁用无法驱动的独显 | DGPU |
| SSDT-FN.aml | 用于映射 Fn+F11, Fn+F12 的 ACPI 查询到亮度修改键上 | PS2K |
| SSDT-ECUSBX.aml | 修复 10.15 Developer Beta 5 之后的版本安装卡死的问题 | USBX |
| SSDT-GPRW.aml | 修改部分设备的 _PRW 方法，修复睡眠秒醒 | - |
| SSDT-PNLFCFL.aml | 与 AppleBacklightInjector.kext 协力，解决亮度调整与 coffeelake 开机黑屏三分钟的问题 | IGPU |
| SSDT-XOSI.aml | 注入 XOSI 方法 | - |
| SSDT-UIAC.aml | USBInjectAll config, 用于注入 USB 端口信息，解决 USB3.0 识别、type-c 接口识别和睡眠秒醒问题 | UIAC |
| SSDT-USTP.aml | 为触摸板加入 USTP 属性，使其支持 GPIO 中断模式 | TPAD |
| SSDT-PWBTN.aml | 支持长按电源键弹出电源菜单功能 | PPMC |

触摸板驱动部分参考炫龙耀 7000II 的 EFI 仓库，ALS0, GRPW, PNLFCFL 补丁来自网络，在此表示感谢。