# 更新日志 Changelog

## 2020.3.10

- 更新 OpenCore 为官方 0.5.6 版本，并同步更新 `config.plist` (Update OpenCore to 0.5.6)
- 重新修改并编译 NdkBootPicker.efi (Add modifed `NdkBootPicker.efi`)
- VoodooI2C.kext 替换为 @Goshin 修改的新版本，使用普通点按代替压力点按。 (Replace `VoodooI2C.kext`)

## 2020.3.11

- <s>删除可能不需要的显卡 Framebuffer 参数。(Delete some unused IGPU framebuffer properties)</s>

## 2020.3.12

- 更新 Lilu, WhateverGreen 为官方最新版以完善对 4K 屏幕的支持。 (Update Lilu & WhateverGreen kext)
- 定制 OpenCore GUI 主题。 (Modify OC GUI theme)

## 2020.3.13

- 还原 `framebuffer-stolenmem` 和 `framebuffer-fbmem`，若去掉此两参数会使 GJ5CN64 / GI5CN54 模具发生内核崩溃；驱动 4K 屏幕需要删除这两个参数，将交由 Tongfang Hackintosh Utility 处理。
- Restore `framebuffer-stolenmem` and `framebuffer-fbmem`, for deleting those properties will cause a kernel panic on GJ5CN64 / GI5CN54 laptops.

## 2020.3.18

- 从 [Goshin/VoodooI2C:impv-mt](https://github.com/Goshin/VoodooI2C/tree/impv-mt) 重新编译 `VoodooI2C`，改善 I2C 触摸板的多指手势支持。
- Recompile VoodooI2C from [Goshin/VoodooI2C:impv-mt](https://github.com/Goshin/VoodooI2C/tree/impv-mt) to improve multi-touch gesture support.