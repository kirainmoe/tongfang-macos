<p align="center">
<img src="https://i.loli.net/2020/01/05/QilbpRdq4awGfSX.png" width="250px" alt="logo">
</p>

Z7(m)-KP7/5(G)Z (GK5CN6X) - OpenCore 引导配置文件.

## 注意事项

- 鉴于 OpenCore 的更新较为频繁，稳定性有待观察，且相比较于 Clover 仍有较多不完善的方面，因此**不建议新手和追求稳定的用户**使用。
- 此配置文件仅用于尝鲜用途，建议**有自行解决问题能力的用户**使用。在 OpenCore 趋于稳定之前，**作者不回答任何使用 OpenCore 配置时遇到的问题，也不对任何因此导致的硬件损坏 & 数据丢失负责。**
- 因为 OpenCore 引导系统的方法与 Clover 不同，且该配置文件尚未十分完善；为了防止新手因误操作导致 Windows 系统出现问题，**默认屏蔽了 Windows 和其它系统的引导**。
- 此配置文件可用于其它同方机型配置 OpenCore 时的参考。

## 概览

> 当前版本基于 OpenCore 0.5.5；  
配置文件仅适用于 Z7(m)-KP7/5(G)Z 机型或 GK5CN6X-* 模具。

![QQ20200205-182558@2x.png](https://i.loli.net/2020/02/05/tnl3gH8ZeQfyxc7.png)

### 与 Clover 版本的区别

- 所有正常/不正常工作的硬件与功能均与 Clover 配置文件一致，具体参见 [master](https://github.com/kirainmoe/hasee-tongfang-macos) 分支的描述
- 已屏蔽了 Windows 和其它系统的引导
- 没有 GUI 主题支持
- 可能存在其它的优势/劣势

## FAQ

#### KP7EC/KP7GC 等其它 8 代同方机型可以使用吗？

或许你可以使用此配置文件引导，但部分功能可能无法正常使用。待后期测试稳定后会考虑移植。

#### CT7GK/CT7GS 等其它 9 代同方机型可以使用吗？

9 代机型或许无法使用此配置文件正常引导系统，具体需要自行修正。待后期测试稳定后会考虑移植。

## 贡献

欢迎提出针对此 OpenCore 配置文件的修改意见，或在此配置的基础上移植其它同方机型。
