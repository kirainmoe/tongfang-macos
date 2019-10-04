这是 Clover Bootloader EFI 驱动的文件夹，Clover 会在引导系统的前加载这些驱动。这些驱动的作用有识别和引导分区、修复问题等等。本着简洁的原则，此配置文件已经使用了尽可能少的驱动。除非你遇到某些问题需要更换 Clover 的驱动，否则一般情况下你不需要改动它们。

This directory contains Clover Bootloader UEFI driver which will be automatically loaded by Clover before boot the system. You needn't to change them if you have no trouble installing / booting the system.

你会注意到在上一级文件夹中有一个 ”Alternative UEFI Driver“ 的文件夹，里面有一些你可能需要的备选驱动，如 OsxAptioMemory*.efi.

You may notice that there is a directory "Alternative UEFI Driver", where you can find some alternative drivers, such as OsxAptioMemory*.efi.

下面的表格说明了一些驱动的作用：

The following table describes the function of each file:

| 文件名 (filename) | 作用 (function) | 必须 (require) |
|------------------|----------------|----------------|
| ApfsDriverLoader-64.efi, AppleImageLoader-64.efi, AppleUiSupport.efi | 苹果文件系统 APFS 的驱动，用于引导系统必备 | yes |
| DataHubDxe-64.efi | macOS 要求强制启动的 DataHub 协议 | yes |
| EmuVariableUefi-64.efi | 模拟 NVRAM，删除后将使用原生 NVRAM， Clover 可以记住上次引导的系统，但 iCloud 等功能可能会异常 | |
| FSInject-64.efi | 对系统注入内核拓展必须的驱动 | yes |
| HFSPlus.efi | HFS+ 格式分区（Mac OS 拓展）识别的驱动 | yes, if your part is HFS+ format |
| AptioMemoryFix-64.efi, OsxAptioFix*.efi | 用于修复 Aptio 主板 (AMI) 的内存问题。通常情况下我们推荐大家使用 AptioMemoryFix-64.efi，但如果你无法安装系统或 Clover 卡加号，请尝试替换 OsxAptioFix3Drv-64.efi 等；如果你重启、关机会卡死 panic，请尝试替换 OsxAptioFix2Drv-free2000.efi. 这些驱动只能选一个使用。 | yes |
| VirtualSmc-64.efi | VirtualSMC.kext 的协力驱动 | |