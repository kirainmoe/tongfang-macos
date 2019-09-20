# 19-1-23
更新最新版 Lilu.kext 和 WhateverGreen.kext；删除 VoodooHDA.kext 万能声卡驱动；添加 AppleALC.kext 仿冒驱动，注入 layout-id 为 88.

# 19-1-28
删除无用 Kexts；<s>使用 USBPorts.kext 替代 USBInjectAll.kext；修复睡眠。</s>。

# 19-2-3
去除 Clover 引导时添加的 `igfxcflbklt` 参数，去除勾选 Add PNLF；加入 SSDT-PNLF-CFL.aml 解决 Coffeelake UHD630 开机黑屏问题。

# 19-2-5
 已发现上次更新的配置文件可能会导致休眠失败，已将 config.plist 回滚。添加 FakeSMC 及传感器相关驱动。

# 19-2-16
 解决 SSDT-PNLF-CFL.aml 注入问题，解决 Coffeelake UHD630 黑屏问题。

# 19-2-21
 更新说明文件，确认 EFI 支持最新的版本 10.14.3。加入 SSDT-Disable-DGPU.aml，删除 drivers-off 文件夹。

# 19-3-2
 USBPorts.kext 可能引起兼容性问题，已使用 USBInjectAll.kext + SSDT-UIAC.aml 驱动 USB；更新部分 Kexts.

# 19-3-7
 使用 hotpatch + SSDT 驱动电池和修复睡眠。  

# 19-3-8
 新增 optimize.sh post-install 优化脚本。

# 19-3-11
 <s>添加遗失的 IntelMausiEthernet.kext</s>, 修复有线网卡。

# 19-3-26
 更新 Clover 版本，更新 Lilu/WhateverGreen 到最新版本，确认最新 EFI 支持 10.14.4. 

# 19-3-27
 添加 SSDT-ALS0.aml 完善亮度保存。

# 19-3-28
 完善 CPU 变频，最低频率现在可达 800MHz，使用电池、系统负载低时将会更省电。

# 19-3-31
 添加 10.14 的核显 Framebuffer 补丁。如果在部分设备上出现因此引起的不能正常休眠，请去除该补丁。

# 19-4-3
 简化 Kexts 驱动文件夹，减少开机卡条概率；~使用 VirtualSMC 替换 FakeSMC~；更新声卡驱动尝试解决卡条问题(已修复)。

# 19-4-7
 修复 SSDT-UIAC.aml 不加载导致的 USB3.1 降速问题。

# 19-4-13
 加入 SSDT-TPAD.aml, SSDT-XOSI.aml；更新 VoodooI2C 驱动；回滚 FakeSMC 防止在某些设备上出现兼容性问题。

# 19-4-28
 修正 SSDT-UIAC.aml 中 Type-C 接口节点错误；修改电池驱动部分；<s>尝试修复声卡重启后 layout-id 丢失</s>。

# 19-4-29
 添加 SSDT-FN.aml，现在可以使用 Fn+F11, Fn+F12 调节显示器亮度了；添加 Kext 说明。调整目录结构。

# 19-4-30
 修改 SSDT-UIAC.aml Type-C 接口节点信息解决 Type-C 无法双面使用的问题。

# 19-5-2
 尝试修复声卡重启后找不到输出设备的问题，<s>目前效果仍然处于观察阶段</s> 经过长期测试确认已修复。

# 19-5-12
 添加 SSDT RTC 重命名，<s>更新 VoodooPS2Controller 驱动（可能需要重新设置按键映射）；尝试适配同方模具神舟战神 G7-CT7VK</s>.

<s># 19-5-14
 添加 I2C 触摸板 SSDT；更新 10.14.5 新版本支持。</s> 10.14.5 现仍然支持。

# 19-5-23
 正式支持同方八代全系机型和九代部分机型，添加 GC/EC 的 USB 注入，回滚 VoodooPS2Controller 驱动和触摸板。

# 19-6-4
 更新 10.15 DP1 支持（但请您自行解决测试中的问题并承担测试的后果，数据丢失、系统不稳定等！）

# 19-6-7
 更新 VoodooI2C 到 2.2 版本，现采用 GPIO 中断模式驱动触摸板，单指问题仍未解决。

# 19-6-12
 更新自编译版 AirportBrcmFixup.kext（支持 10.15），更新 Brcm 蓝牙相关驱动；添加描述文件。

# 19-6-27
 重新使用 VirtualSMC 代换 FakeSMC 以便在 Catalina 下获得更好的支持。如果新版在 10.14 上出现问题，请尝试在 Release 中找到 20190627 的版本替换；更新项目许可协议。

# 19-7-7
 更新 VirtualSMC 的 1.0.6 版本以支持 Catalina，更新部分其他驱动。

# 19-8-4
 添加 SSDT-ECUSBX.aml，兼容 10.15 Developer Beta 5.

# 19-8-6
 更新 Clover 版本和目录结构；使用新的 Clover 主题。

# 19-8-16
 <s>去掉 EmuVariableUefi-64.efi，使用笔记本原生 NVRAM 功能，并修复因删除  EmuVariableUefi-64.efi 引起的关机重启 panic 问题。</s> 去掉 EmuVariableUefi-64.efi 会导致 iCloud 失效，已经还原。

# 19-8-24
 更新 VirtualSMC, Lilu, Clover 为最新版本。

# 19-9-13
 修复 Catalina Beta 7 触摸板失效问题。

# 19-9-18
 支持白苹果的电源键长按特性.

# 19-9-21

更新项目的文件结构，重写 README 文件，分离 CHANGELOG.