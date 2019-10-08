<p align="center">

<img src="https://camo.githubusercontent.com/fdf99521fc1a9feba39e2cb7926926f75754f7b0/68747470733a2f2f7773322e73696e61696d672e636e2f6c617267652f3966313133376231677931673168673365706961326a32306e3530356a7439712e6a7067" width="300px" alt="logo">

</p>

<h1 align="center">macOS on Tongfang Laptops</h1>

<p align="center">Clover config for installing macOS Mojave / Catalina on Tongfang Laptops (Like some Hasee, Mechrevo, OverPowered devices)</p>

<p align="center">
<img src="https://img.shields.io/badge/build-passing-brightgreen.svg"/> 
<a href="https://aya-buildbot.kirainmoe.com">
    <img src="https://img.shields.io/badge/download-release-blue.svg"/> 
</a>
<img src="https://img.shields.io/badge/coverage-98%25-brightgreen.svg"/> <img src="https://img.shields.io/badge/macOS_version-10.15-9cf.svg"/> <img src="https://img.shields.io/badge/built_by-Yume_Maruyama-ff69b4.svg"/> 
</p>

<img src="https://i.loli.net/2019/05/14/5cda65189a08439627.jpg" width="50%"><img src="https://i.loli.net/2019/10/04/AqOhE2oytpL6KVD.jpg" width="50%">

<h3 align="center">
    <a href="https://aya-buildbot.kirainmoe.com/">Download EFI</a> /
    <a href="https://hackintosh.kirainmoe.com">Hackintosh Wiki</a> /
    <a href="https://github.com/kirainmoe/hasee-z7-kp7gz-macos/issues?q=is%3Aissue+is%3Aclosed">Closed Issues</a> /
    <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/master/Changelog.md">Changelog</a> / <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/master/README.md">简体中文</a>
</h3>


# Better Experience

[Optimize Script](https://hackintosh.kirainmoe.com/an-zhuang-hou/an-zhuang-hou-de-chang-jian-wen-ti-jie-da#postinstall-you-hua-jiao-ben-shi-shen-me-wei-shen-me-xu-yao-zhi-hang-ta)：Optimize sleep function, enable HIDPI...

[Useful Scripts](https://hackintosh.kirainmoe.com/an-zhuang-hou/chang-yong-ming-ling-he-you-hua)

[Project: STAR BEAT! - macOS keyboard light controller](https://github.com/kirainmoe/project-starbeat/releases)


# Compatibility

## macOS version

| macOS version | Build version | Compatible | Tested by Author | Tested by Users |
|-------|---------|--------|------------|----------|
| 10.13.6 | 17G65 | ✖ no | ✖ no | - |
| 10.13.6 | 17G2112+ | ☑ yes | ❓untested | ☑ yes |
| 10.14 | 18A389 | ☑ yes | ❓untested | ❓untested |
| 10.14.1 | 18B75 | ☑ yes | ❓untested | ❓untested |
| 10.14.2 | 18C54 | ☑ yes | ☑ yes | ☑ yes |
| 10.14.3 | 18D42 | ☑ yes | ☑ yes | ☑ yes |
| 10.14.4 | 18E226 | ☑ yes | ☑ yes | ☑ yes |
| 10.14.5 | 18F132 | ☑ yes | ☑ yes | ☑ yes |
| 10.14.6 | 18G87 | ☑ yes | ❓untested | ☑ yes |
| 10.15   | 19A583 | ☑ yes | ☑ yes | ☑ yes |

## Models

> Notes: I was not sure that some models can work perfectly. The models listed in the following table were those woule be theoretically supported gussing by their barebone model.

| Barebone | Models Theoretically Supported | Branch |
|-----|------|-----|
| GK5CN5X <br> GK5CN6X <br> GK5CN6Z <br> GK5CN5Z | Hasee Z7(m)-KP7/5(G)Z <br> Shinelon Yao 7000 II <br> Mechrevo Z2 Air <br>XMG Neo 15<br>OverPowered Gaming Laptop 15<br>MACHENIKE F117-B1/2 | [master](https://github.com/kirainmoe/hasee-tongfang-macos) | 
| GI5CN54 <br> GJ5CN64 | Hasee Z7(m)-KP7/5EC | [kp7ec](https://github.com/kirainmoe/hasee-tongfang-macos/tree/kp7ec) |
| GI5CN54 <br> GJ5CN64 | Hasee Z7(m)-KP7/5GC<br>Avell A52-5 BS<br>CyberPower NB-408-109<br>Machenike T90 | [kp7gc](https://github.com/kirainmoe/hasee-tongfang-macos/tree/kp7gc) |
| GK7CP6R | Hasee Z7-CT7GK / Z7m-CT7GS / Z7-CT7VH / G7-CT7VK<br>Illegear Rogue Laptop<br>XMG Core 17<br>Mechrevo X3<br>CyberPowerPC Tracer-III-17<br>  | [ct7gk](https://github.com/kirainmoe/hasee-tongfang-macos/tree/ct7gk) |

# Devices


| Component | Model | Comment |
|--|--|---|
| CPU | Intel Core(TM) i7-8750H  | i5 and i7 version are compatible |
| GPU | Intel UHD630 / Nvidia GTX1060 | Nvidia GPU has no solution currently. For more reason, please refer to [this.](https://github.com/kirainmoe/hasee-tongfang-macos/wiki/%E5%AE%89%E8%A3%85%E5%90%8E%E7%9A%84%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98%E8%A7%A3%E7%AD%94#%E9%82%A3%E4%B8%BA%E4%BB%80%E4%B9%88%E7%8B%AC%E6%98%BE%E6%97%A0%E6%B3%95%E9%A9%B1%E5%8A%A8) |
| RAM | Micron Crucial 8GB+8GB | |
| NVMe | WD Black SN750 NVME SSD 500G | Samsung PM981/970EvoPlus were not supported by macOS | 
| SATA SSD | Phison SATA SSD 128G | | 
| Wireless | BCM94360CS2 | Intel wireless cards have no driver. |
| Ethernet | Realtek RTL8168H | |
| Audio | Realtek ALC269vc | |

## What's working

- Turbo boost and CPU frequency stage.
- Intel UHD630
- Brightness control and Fn keys (Fn keys controlling is not available for Tongfang GK7CP6R devices)
- I2C HID Touchpad
- Realtek Ethernet
- Audio (Realtek ALC268vc, using AppleALC + layout-id 29/88)
- Battery status (using Clover hotpatch)
- USB 3.0 and Type-C
- Sleep
- Camera
- etc.

## What's partially working

- Bluetooth (No Airdop if you are using Intel Bluetooth, and you may need to boot into Windows then reboot into macOS to make Bluetooth work).
- PS/2 Touchpad (Tongfang GI5CN54/GJ5CN64)

## What's not working

- Nvidia DGPU
- Intel Wireless Card
- HDMI/miniDP (which is connected to DGPU directly)
- Card reader

# Contribute

Issues & Pull request are welcomed.

# License

`hasee-tongfang-macos` is [MARUYAMA](https://github.com/kirainmoe/hasee-tongfang-macos/blob/master/LICENSE) Licensed. You can use the config for free under the Maruyama License.
