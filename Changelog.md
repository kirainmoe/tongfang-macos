# 更新日志

# 2020.2.8

元宵节快乐！本次更新为所有机型更新了 OpenCore 引导。根据用户尝鲜新功能或追求稳定性的不同需求，请自行斟酌是否从 Clover 迁移到 OpenCore.  **在使用 OC 引导前，请注意以下两点：**

- 全系机型的 OpenCore 引导使用了 `MacBookPro15,3` (MacBook Pro 15-inch, 2019) 的 SMBIOS，不同于 Clover 引导使用的 `MacBookPro15,1` (MacBook Pro 15-inch, 2018)，在替换三码时，请自行选择还原旧三码和旧机型，或生成新机型的三码。
- 使用 OpenCore 引导 Windows 之前， **必须保证配置文件的 UUID 与主板 UUID 一致** ，以免破坏 Windows 激活环境。请参照 [此文章](http://bbs.pcbeta.com/forum.php?mod=viewthread&tid=1830968) 中的第三部分获取主板 UUID 并覆盖到配置文件中。

# 2020.1.26

更新关键驱动 (Lilu, WhateverGreen, VirtualSMC)，更新 Clover 到 5103；更新 VoodooPS2Controller 为 https://github.com/kirainmoe/hasee-tongfang-macos/issues/54#issuecomment-578491767 提供的版本。

# 2020.1.25

更新 VoodooPS2Controller 系列驱动，修复大小写指示灯不正常的问题。特别注意： macOS 新版本对大小写指示灯存在一些软件性的问题，因此可能会导致指示灯无法按预期行为工作。

# 2020.1.22

本次更新由 @Goshin 完善了 Fn 快捷键的功能，现在 Fn+F1, Fn+F3, Fn+F4, Fn+F5 可以正常使用了。你可以通过执行优化脚本，或者根据 https://github.com/Goshin/VoodooPS2 的指引安装 TongfangFnDaemon 守护程序即可正常使用。

# 2020.1.20

本次更新为所有机型替换了经过修改后的 SSDT-DDGPU.aml 及新的 ACPI 重命名补丁，以修复睡眠唤醒时被屏蔽的独显重新工作的问题。请尽量使用 Apple->睡眠 或合盖来进行睡眠。

# 2020.1.3

本次更新为 GZ/EC/GK/GS 型号重新编译了 @Goshin 修改的 VoodooI2C 和 VoodooPS2 驱动以便解决在 10.14 下的兼容性问题；加入了由 @zxystd 开发的 Intel 蓝牙驱动；修复了 CT7GK/CT7GS CPU 识别为 i9 的问题。

# 2020.1.1

新年快乐！本次更新修复了同方九代机型的 USB 定制和蓝牙历史遗留问题，并将 CT7GS 作为单独的分支以便后续维护。