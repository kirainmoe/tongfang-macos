# 更新日志

# 2020.1.22

本次更新由 @Goshin 完善了 Fn 快捷键的功能，现在 Fn+F1, Fn+F3, Fn+F4, Fn+F5 可以正常使用了。你可以通过执行优化脚本，或者根据 https://github.com/Goshin/VoodooPS2 的指引安装 TongfangFnDaemon 守护程序即可正常使用。

# 2020.1.20

本次更新为所有机型替换了经过修改后的 SSDT-DDGPU.aml 及新的 ACPI 重命名补丁，以修复睡眠唤醒时被屏蔽的独显重新工作的问题。请尽量使用 Apple->睡眠 或合盖来进行睡眠。

# 2020.1.3

本次更新为 GZ/EC/GK/GS 型号重新编译了 @Goshin 修改的 VoodooI2C 和 VoodooPS2 驱动以便解决在 10.14 下的兼容性问题；加入了由 @zxystd 开发的 Intel 蓝牙驱动；修复了 CT7GK/CT7GS CPU 识别为 i9 的问题。

# 2020.1.1

新年快乐！本次更新修复了同方九代机型的 USB 定制和蓝牙历史遗留问题，并将 CT7GS 作为单独的分支以便后续维护。