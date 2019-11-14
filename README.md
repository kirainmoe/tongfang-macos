<p align="center">

<img src="https://ws2.sinaimg.cn/large/9f1137b1gy1g1hg3epia2j20n505jt9q.jpg" width="300px" alt="logo">


<h2 align="center">该分支用于 Z7(m)-KP7/5EC，其它机型请切换其他分支。</h2>

安装注意事项和常见问题请查看 master 分支的说明文件。


# Compatibility

该分支支持同方神舟战神机型 Z7(m)-KP7/5EC。欢迎大家测试并反馈，感谢群友 @浅笔向阳、@上个世纪的风 参与测试。

因为本人只拥有 Z7-KP7GZ，其他型号通过群内的朋友测试通过。后续所有的功能更新，会先在 KP7GZ 系列机型上测试稳定后才会下放。
# What's working

- 睿频、变频正常（使用 18 款 MacBook Pro SMBIOS，最低 800Mhz, 最高睿频 4.1GHz）
- Intel UHD630（已应用显存补丁，2048 MB）
- 亮度调节（可在设置中调节或使用 Fn+F11, Fn+F12 快捷键）
- I2C HID 触控板（需要正确驱动电池后才可以设置手势）
- 有线网卡
- 声音（ALC269vc, 使用 AppleALC 仿冒，注入 layout-id 为 88，外放、耳机、麦克风全部正常）
- 电池状态（现已使用 Clover Hotpatch 驱动）
- USB （使用 USBInjectAll + SSDT 驱动，3.0 5G/s 速度正常，Type-C 可用）
- 睡眠（使用 Clover Hotpatch 修复）
- etc.


# What's partial working

- 蓝牙 (需要热启动 macOS 才可用，即先进入 Winodws 后重启进入 macOS、或者在 macOS 下使用虚拟机模拟热启动过程，不支持 AirDrop.)

# What's not working

- 独立显卡（GTX1060， 目前没有适用于 Mojave 的 Nvidia WebDriver）
- 无线网卡（Intel AC9462 无解，使用蓝牙共享网络、USB共享网络或者USB网卡替代，或更换无线网卡）
- **HDMI/MiniDP（该模具 HDMI/MiniDP 直接由独显输出, 独显无法驱动，所以 HDMI/MiniDP 也无法使用）**
- 读卡器（读卡器走的 USB 2.0 外置，无法使用）

# License and Contribute

### 许可协议

该项目在 [Maruyama License](LICENSE) 许可下开源。

### 关于贡献和完善

欢迎大家一起完善该机型的 EFI. 如果你认为这份配置文件有可以改进的地方，请注册一个 Github 账号，fork 本仓库自行修改后提交 Pull Request.
