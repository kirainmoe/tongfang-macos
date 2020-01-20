<p align="center">
<img src="https://i.loli.net/2020/01/05/QilbpRdq4awGfSX.png" width="250px" alt="logo">
</p>



<h2>该分支用于同方九代机型 Z7-CT7GK / G7-CT7VK，其它机型请切换其他分支。</h2>

# Compatibility

该分支支持同方九代神舟战神机型，包括 Z7-CT7GK 和 G7-CT7VK。

# What's working

- 睿频、变频正常（使用 18 款 MacBook Pro SMBIOS，最低 800Mhz, 最高睿频 4.1GHz）
- Intel UHD630（已应用显存补丁，2048 MB）
- 亮度调节（可在设置中调节或使用 Fn+F11, Fn+F12 快捷键，感谢 GitHub 用户 @Goshin 修复 VoodooPS2Contoller 驱动）
- I2C HID 触控板（感谢 GitHub 用户 @Goshin 修复 VoodooI2C 驱动）
- 有线网卡
- USB （使用 USBInjectAll + SSDT 驱动，3.0 5G/s 速度正常，Type-C 可用；感谢 CT7GK 用户 @Chris 解决 USB 定制与蓝牙冲突问题)
- 声音（ALC269vc, 使用 AppleALC 仿冒，注入 layout-id 为 29，外放、耳机、麦克风全部正常）
- 电池状态（现已使用 Clover Hotpatch 驱动）
- 睡眠（使用 Clover Hotpatch 修复）
- etc.

# What's partial working

- 蓝牙 (需要热启动 macOS 才可用，即先进入 Winodws 后重启进入 macOS、或者在 macOS 下使用虚拟机模拟热启动过程，不支持 AirDrop.)
# What's not working

- 独立显卡（GTX1660Ti， 目前没有适用于 Mojave 的 Nvidia WebDriver）
- 无线网卡（Intel AC9560 无解，使用蓝牙共享网络、USB共享网络或者USB网卡替代）
- **HDMI/MiniDP（该模具 HDMI/MiniDP 直接由独显输出, 独显无法驱动，所以 HDMI/MiniDP 也无法使用）**
- 读卡器（读卡器走的 USB 2.0 外置，无法使用）


# FAQ

Q：9 代同方机型安装时卡在 apfs_module_start 或 VoodooPS2Controller 等，无法进入安装程序，如何解决？  
A: 请更换 EFI 后再进入系统安装程序。

如果你想知道更多的技术细节，请参看如下解决方案：

请于Acpi - DSDT - Patches中添加：

```
Comment: 	RTC: fix 9th tongfang model RTC bug
Find: 		A00A9353 54415301
Replace: 	A00A910A FF0BFFFF
```

也就是在 config.plist 的 ACPI  patch 下添加以下内容：

```xml
<dict>
    <key>Comment</key>
    <string>RTC: fix _STA method bug for 9th gen Tongfang models</string>
    <key>Disabled</key>
    <false/>
    <key>Find</key>
    <data>
    oAqTU1RBUwE=
    </data>
    <key>Replace</key>
    <data>
    oAqRCv8L//8=
    </data>
</dict>
```

![QQ20190612-193827.png](https://i.loli.net/2019/06/12/5d00e5020976b79013.png)
![QQ20190612-194052.png](https://i.loli.net/2019/06/12/5d00e5027d26763392.png)

# Contribute

### 关于贡献和完善

欢迎大家一起完善该机型的 EFI. 如果你认为这份配置文件有可以改进的地方，请注册一个 Github 账号，fork 本仓库自行修改后提交 Pull Request.
