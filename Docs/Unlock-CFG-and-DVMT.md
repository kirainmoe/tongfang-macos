# 使用 UEFI Shell 解锁 CFG 和 DVMT （无需刷新 BIOS）

## 前提

配置文件版本 >= `20.9.26`.

## 具体步骤

1. 引导 OpenCore，在系统选择页面按空格键，显示隐藏启动项
2. 选择并引导 "Setup Shell"，请注意不要选成 "UEFI Shell"
3. 根据你需要进行的操作，输入下面的命令；请注意不同代的机型，选项的地址是不同的，请根据机型输入正确的解锁命令（注意空格和特殊符号）：

8 代机型解锁 CFG Lock (MSR 0xE2 寄存器)：

```shell
setup_var 0x5BE 0x0
```

8 代机型解锁 DVMT Pre-allocated 64MB（仅 GJ5CN64 / GI5CN54 机型需要）：

```shell
setup_var 0x8DC 0x2
```

9 代机型解锁 CFG Lock (MSR 0xE2 寄存器)：

```shell
setup_var 0x6EF 0x0
```

8 代新机型和 9 代机型默认 DVMT Pre-allocated 为 64MB，无需设置。

## 地址对照表

使用格式：

```shell
setup_var 地址          # 读取当前地址的设置值
setup_var 地址 新值      # 将当前地址设置为新值
```

| 模具代数 | 设置名称 | 地址 | 推荐值 | 解释 |
|---------|--------|------|-------|-----|
| 8 代 | CFG Lock | 0x5BE | 0x0 | 关闭 CFG Lock |
| 8 代 | DVMT Pre-allocated | 0x8DC | 0x2 | 设置 DVMT 为 64M |
| 9 代 | CFG Lock | 0x6EF | 0x0 | 关闭 CFG Lock |
| 9 代 | DVMT Pre-allocated | 0xA12 | 0x2 | 设置 DVMT 为 64M（默认，无需修改） |

