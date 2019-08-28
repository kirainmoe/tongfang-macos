这是已归档的 SSDT 热补丁文件夹，意味着这些 SSDT 热补丁在最新版本中已经不再需要，如果你的 EFI 正常工作，你可以删除此文件夹。

This directory contains archived SSDT hotpatch file, which meaning that files in this directory are not required any more in the latest version of config. If your config is working well, you can delete this directory.

考虑到部分用户的其他特殊需要以及其具有的参考价值，故在此做归档处理。

Considering that some users have special requirement of them, and these files are good references for those who are new to hackintosh, these files are archived.

下面列出的是文件的用途。

| 文件名 | 描述 | 弃用原因 |
|----------|-------------|------------------|
| SSDT-RTC.aml | 用于修正 9 代同方机型卡在 apfs_module_start 的热补丁，删除 RTC 设备下的方法 |  已在 CT7GK 分支下使用 Hotpatch 修复 |
| SSDT-TPAD.aml | 用于定制 VoodooI2C 的触摸板使其支持轮询模式 | 已更新 VoodooI2C 2.2 版本使用 GPIO 中断模式驱动 |