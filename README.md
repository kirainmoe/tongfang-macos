<p align="center">
<img src="https://i.loli.net/2020/01/05/QilbpRdq4awGfSX.png" width="250px" alt="logo">
</p>

<h2>该分支用于同方九代机型 Z7-CT7GK / G7-CT7VK，其它机型请切换其他分支。</h2>

### 兼容性

该分支支持同方九代神舟战神机型，包括 Z7-CT7GK 和 G7-CT7VK。

### 正常工作的功能

- CPU 睿频、变频
- 核芯显卡 Intel UHD Graphics 630
- 亮度调节
- 触摸板
- 有线网卡
- 声卡 (扬声器、耳机、麦克风)
- 原生电源管理、电池状态
- USB 3.0, Type-C [1]
- Intel 蓝牙
- 睡眠
- Fn 快捷键
- 摄像头

> [1]感谢 CT7GK 用户 @Chris 修复 USB3.0 定制与蓝牙冲突的问题


### 无法使用

- 独立显卡（目前已知没有任何解决方案）

> 已使用 `SSDT-DDGPU.aml` 屏蔽了独显
>
> 由于同方八代以上模具的 HDMI / miniDP 直接由无法驱动的独显输出，所以 HDMI / miniDP 也无法使用。

- 无线网卡（Intel AC9462/9560 无解）

> 无线网卡无法使用的替代方案：
> - 蓝牙共享网络
> - USB共享网络 (HoRNDIS) 
> - USB网卡
> - 更换无线网卡[推荐更换“BCM94360CS2 + 转接卡”方案]
> 
> 由于 “**隔空投送 AirDrop**” 和 “**接力 Handoff**” 依赖于无线网络和蓝牙，所以此两项功能不可用。

- 读卡器（读卡器为 USB 2.0 外置通道，没有兼容驱动）


### 常见问题

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


### 许可协议

该项目在 [Maruyama License](LICENSE) 许可下开源。

### 贡献本项目

欢迎大家一起完善该机型的 EFI. 如果你认为这份配置文件有可以改进的地方，请注册一个 Github 账号，fork 本仓库自行修改后提交 Pull Request.
