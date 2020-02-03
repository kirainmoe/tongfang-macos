<p align="center">
<img src="https://i.loli.net/2020/01/05/QilbpRdq4awGfSX.png" width="250px" alt="logo">
</p>

<h2>该分支用于同方九代机型 Z7(m)-CT7GS，其它机型请切换其他分支。</h2>

### 兼容性

该分支支持同方九代神舟战神机型 Z7(m)-CT7GS. 感谢 GitHub 用户 [@Goshin](https://github.com/Goshin) 参与测试。

### 正常工作的功能

- CPU 睿频、变频
- 核芯显卡 Intel UHD Graphics 630
- 亮度调节
- 触摸板
- 有线网卡
- 声卡 (扬声器、耳机、麦克风)
- 原生电源管理、电池状态
- USB 3.0, Type-C
- Intel 蓝牙
- 睡眠
- Fn 快捷键
- 摄像头


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


### 许可协议

该项目在 [Maruyama License](LICENSE) 许可下开源。

### 贡献本项目

欢迎大家一起完善该机型的 EFI. 如果你认为这份配置文件有可以改进的地方，请注册一个 Github 账号，fork 本仓库自行修改后提交 Pull Request.
