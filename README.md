<p align="center">
<img src="https://i.loli.net/2020/01/05/QilbpRdq4awGfSX.png" width="250px" alt="logo">
</p>

<h2>该分支用于 GI5CN64 模具，对应型号为 Z7M-KP7/5GC & Z7M-KP7/5GA & Z7M-KP7/5GE & Z7M-KP7/5GH，其它机型请切换其他分支。</h2>

安装注意事项和常见问题请查看 master 分支的说明文件。

### 兼容性

该分支适用于同方八代机型 Z7M-KP7/5GC & Z7M-KP7/5GA & Z7M-KP7/5GE & Z7M-KP7/5GH. 感谢群友 @海豚 定制该机型的 USB，并参与兼容性测试。

注意，限制于硬件，GI5CN64 系列机型的触摸板无法完美使用。


### 正常工作的功能

- CPU 睿频、变频
- 核芯显卡 Intel UHD Graphics 630
- 亮度调节
- 有线网卡
- 声卡 (扬声器、耳机、麦克风) [2]
- 原生电源管理、电池状态
- USB 3.0, Type-C
- Intel 蓝牙
- 睡眠
- Fn 快捷键
- 摄像头

### 部分工作

- PS/2 触摸板

> GC/GA 机型使用的 Synaptics 触摸板为 PS/2 协议，无法完美支持原生手势；你可以使用 ApplePS2SmartTouchpad.kext 替换 VoodooPS2Controller.kext 来获得部分手势支持，但会使得 Fn 快捷键不可用。请自行斟酌选择。

### 无法使用

- 独立显卡（目前已知没有任何解决方案）

> 已使用 `SSDT-DDGPU.aml` 屏蔽了独显
>
> 由于同方八代以上模具的 HDMI / miniDP 直接由无法驱动的独显输出，所以 HDMI / miniDP 也无法使用。

- 无线网卡（Intel AC9462 无解）

> 无线网卡无法使用的替代方案：
> - 蓝牙共享网络
> - USB共享网络 (HoRNDIS) 
> - USB网卡
> - 更换无线网卡[推荐更换“BCM94360CS2 + 转接卡”方案]
> 
> 由于 “**隔空投送 AirDrop**” 和 “**接力 Handoff**” 依赖于无线网络和蓝牙，所以此两项功能不可用。

- 读卡器（读卡器为 USB 2.0 外置通道，没有兼容驱动）

### 许可协议

该项目在 [Maruyama License](LICENSE) 许可下开源。

### 贡献本项目

欢迎大家一起完善该机型的 EFI. 如果你认为这份配置文件有可以改进的地方，请注册一个 Github 账号，fork 本仓库自行修改后提交 Pull Request.
