<p align="center">

<img src="https://ws2.sinaimg.cn/large/9f1137b1gy1g1hg3epia2j20n505jt9q.jpg" width="300px" alt="logo">

<h2>该分支用于 Z7(m)-KP7/5GC，其它机型请切换其他分支。对此机型的支持仍然是试验性的。</h2>

安装注意事项和常见问题请查看 master 分支的说明文件。

# Compatibility

该分支适用于同方八代机型 Z7(m)-KP7/5GC. 感谢群友 @海豚 定制该机型的 USB.

因为本人只拥有 Z7-KP7GZ，其他型号通过群内的朋友测试通过。有关于在 GC/EC/GE/CT7GK 等机型上使用该配置文件，请参照[各机型配置文件使用指南](https://github.com/kirainmoe/hasee-z7-kp7gz-macos/wiki/%E5%90%84%E6%9C%BA%E5%9E%8B%E9%85%8D%E7%BD%AE%E6%96%87%E4%BB%B6%E4%BD%BF%E7%94%A8%E6%8C%87%E5%8D%97).

注意，限制于硬件，KP7GC 系列机型的触摸板可能无法完美使用。如果你发现替换后触摸板不正常工作，请尝试以下组合：

1. 删除 Other 中的 VoodooPS2Controller.kext，并复制 Alternative Kexts 中的 ApplePS2Controller.kext, AppleACPIPS2Nub.kext 到  Other 中。

2. 删除 Other 中的 VoodooPS2Controller.kext，并复制 Alternative Kexts 中的 ApplePS2SmartTouchpad.kext 到 Other 中。

# What's working

- 睿频、变频正常（使用 18 款 MacBook Pro SMBIOS，最低 800Mhz, 最高睿频 4.1GHz）
- Intel UHD630（已应用显存补丁，2048 MB）
- 亮度调节（可在设置中调节或使用 Fn+F11, Fn+F12 快捷键）
- 有线网卡
- 声音（ALC269vc, 使用 AppleALC 仿冒，注入 layout-id 为 88，外放、耳机、麦克风全部正常）
- 电池状态（现已使用 Clover Hotpatch 驱动）
- USB （使用 USBPorts.kext 驱动，3.0 5G/s 速度正常，Type-C 可用）
- 睡眠（使用 Clover Hotpatch 修复）
- etc.

# What's partial working

- 蓝牙 (需要热启动 macOS 才可用，即先进入 Winodws 后重启进入 macOS、或者在 macOS 下使用虚拟机模拟热启动过程，不支持 AirDrop.)
- 触摸板（因为 KP7GC 系列使用 PS2 触摸板，因此不能完美兼容，请参看上面的说明）

# What's not working

- 独立显卡（GTX1060， 目前没有适用于 Mojave 的 Nvidia WebDriver）
- 无线网卡（Intel AC9462 无解，使用蓝牙共享网络、USB共享网络或者USB网卡替代，或更换无线网卡）
- **HDMI/MiniDP（该模具 HDMI/MiniDP 直接由独显输出, 独显无法驱动，所以 HDMI/MiniDP 也无法使用）**
- 读卡器（读卡器走的 USB 2.0 外置，无法使用）

# Contribute

欢迎大家一起完善该机型的 EFI. 如果你认为这份配置文件有可以改进的地方，请注册一个 Github 账号，fork 本仓库自行修改后提交 Pull Request.
