<p align="center">
<img src="https://i.loli.net/2020/01/05/QilbpRdq4awGfSX.png" width="250px" alt="logo">
</p>

Z7(m)-KP7/5(G)Z (GK5CN6X) - OpenCore 引导配置文件.

## 注意事项

- 因为 OpenCore 引导系统的方法与 Clover 不同，**若要使用 OpenCore 引导 Windows，必须先修改配置文件中的 UUID 与主板 UUID 一致，否则可能会导致 Windows 激活环境被破坏！**请参考[此文章](http://bbs.pcbeta.com/forum.php?mod=viewthread&tid=1830968)，修改好配置文件的三码 UUID 后，再使用 OC 引导 Windows.
- 鉴于 OpenCore 的更新较为频繁，稳定性有待观察，且相比较于 Clover 仍有较多不完善的方面，因此**不建议新手和追求稳定的用户**使用。
- 此配置文件仅用于尝鲜用途，建议**有自行解决问题能力的用户**使用。**作者不对任何因此导致的硬件损坏 & 数据丢失负责。**
- 此配置文件可用于其它同方机型配置 OpenCore 时的参考。

## 概览

> 当前版本基于 OpenCore 0.5.5；  
配置文件仅适用于 Z7(m)-KP7/5(G)Z 机型或 GK5CN6X-* 模具。

## 与 Clover 版本的区别

- 所有正常/不正常工作的硬件与功能均与 Clover 配置文件一致，具体参见 [master](https://github.com/kirainmoe/hasee-tongfang-macos) 分支的描述
- 精简了部分 SSDT 补丁和 ACPI 重命名
- **原生支持 NVRAM**
- SMBIOS 更新为 `MacBookPro15,3` (MacBook Pro 15-inch, 2019)
- 无法自动扫描 Linux 等其它系统的启动项，需手动添加
- 没有 GUI 主题支持
- 可能存在其它未被发现的的优势/劣势

## 贡献

欢迎反馈问题、提出针对此 OpenCore 配置文件的修改意见，或在此配置的基础上移植其它同方机型。
