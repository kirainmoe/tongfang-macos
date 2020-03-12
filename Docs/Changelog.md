# 更新日志 Changelog

## 2020.3.10

- 更新 OpenCore 为官方 0.5.6 版本，并同步更新 `config.plist` (Update OpenCore to 0.5.6)
- 重新修改并编译 NdkBootPicker.efi (Add modifed `NdkBootPicker.efi`)
- VoodooI2C.kext 替换为 @Goshin 修改的新版本，使用普通点按代替压力点按。 (Replace `VoodooI2C.kext`)

## 2020.3.11

- 删除可能不需要的显卡 Framebuffer 参数。(Delete some unused IGPU framebuffer properties)

## 2020.3.12

- 更新 Lilu, WhateverGreen 为官方最新版以完善对 4K 屏幕的支持。 (Update Lilu & WhateverGreen kext)
- 定制 OpenCore GUI 主题。 (Modify OC GUI theme)