<!-- omit in toc -->
#  macOS on Tongfang Laptops

<img align="right" src="https://i.loli.net/2020/07/28/p6YFWyzeNE2Iqcn.png" width="200px" alt="logo">

OpenCore config for "hackintoshing" on Tongfang barebones-based 8th/9th generation platform laptops.

<img src="https://img.shields.io/travis/com/kirainmoe/hasee-tongfang-macos/oc-general"/> <img src="https://img.shields.io/badge/bootloader-OpenCore-lightgrey.svg"/> <img src="https://img.shields.io/badge/support_macOS-11.0_Beta_6-9cf.svg"/>  <img src="https://img.shields.io/badge/built_by-Yume_Maruyama-ff69b4.svg"/> <a href="https://discord.gg/CDQNnMc
"><img src="https://img.shields.io/discord/750367447688937503?label=chat%20on%20discord"></a>

<h3>
<a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/Docs/Changelog.md">Changelog</a> | <a href="https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/README.md">简体中文</a>
</h3>



<!-- omit in toc -->
# Table of Contents

- [Quick Start](#quick-start)
- [Community Resources](#community-resources)
    - [Tutorials](#tutorials)
    - [Tools](#tools)
- [Compatibility](#compatibility)
    - [macOS version](#macos-version)
    - [Barebones](#barebones)
    - [Models](#models)
- [Current Status](#current-status)
  - [What are working](#what-are-working)
  - [What are partially working](#what-are-partially-working)
  - [What are not working](#what-are-not-working)
  - [Unsolved Problems](#unsolved-problems)
- [Contribute & Support](#contribute--support)
- [License](#license)

# Quick Start

- Check if this repo's config supports your laptop, see *[Compatibility](#compatibility)*.
- Download [Tongfang Hackintosh Utility](https://github.com/kirainmoe/tongfang-hackintosh-utility/releases) and customize the OpenCore config for your model. 
  - You will have `Tongfang_EFI` folder on your `~/Desktop`.
  - **Do not download the full repository using "Download Zip" button.**

> <details><summary>Example</summary><img src="https://i.loli.net/2020/03/11/uV8n9Cmj7cT5vLB.png" alt="download from github" ><img src="https://i.loli.net/2020/03/11/tBXgf7lGFZbW2UQ.png" alt="tongfang hackintosh utility"></details>

- Download a latest version of macOS from somewhere. 
  - If you are using Windows, the most convenient way is to use [GibMacOS](https://github.com/corpnewt/gibMacOS), click [here](https://dortania.github.io/OpenCore-Install-Guide/installer-guide/winblows-install.html#downloading-macos) to learn more.
  - If you already has a modified DMG file, use [BalenaEtcher](https://balena.io/etcher) to make a installer flash.
- Part your disk that you are going to install macOS.
  - You should have a GUID partition table and a 200M+ ESP (EFI System Partition). 
- Copy `Tongfang_EFI/BOOT` and `Tongfang_EFI/OC` folder you obtained in the first step to the `EFI` folder of the ESP of your flash disk.
  - After this progress you will have `EFI/BOOT` and `EFI/OC` on your ESP.
- Disable `Secure Boot`, `Launch CSM` and change to `UEFI Mode` in BIOS.
- Boot OpenCore from USB flash and install macOS.
- After boot into the system, use [Tongfang Hackintosh Utility](https://github.com/kirainmoe/tongfang-hackintosh-utility/releases) (for macOS) to improve the experience.
- Enjoy your hackintosh build!

# Community Resources

### Tutorials

[Monster Laptop Hackintosh Tutorial (@sutsurup)](https://github.com/sutsurup/MONSTER-Hackintosh) (in Turkish)

[EVOO Hackintosh Guide (@N0tJust1n)](https://github.com/N0tJust1n/EVOO-LP5-LP4-Hackintosh) (in English)

### Tools

[Tongfang Hackintosh Utility (@kirainmoe)](https://github.com/kirainmoe/project-starbeat/releases): all-in-one hackintosh toolbox and keyboard light controlling for ITE devices with revision 0.02

[AUCC (@rodgomesc)](https://github.com/rodgomesc/avell-unofficial-control-center):   keyboard light controlling for ITE devices with revision 0.03


# Compatibility

### macOS version

Current EFI release is `20.9.8`. This release is compatible with the following macOS version:


| macOS | Compatible | Fresh Install | OTA | Tested version | Notes |
|-------------|--------|---------------|--------|-----------|------|
| 10.13 High Sierra | ❌ | ❌ | ❌ | None | |
| 10.14 Mojave | ❓ | ❓ |  ❓ | Untested | Some kext may not work |
| 10.15 Catalina | ✅ | ✅ | ✅ | 10.15.6 (19G73) | |
| 11.0 Big Sur | 💡 | ✅ | ✅ | 11.0 Developer Beta 6 (20A5364e) <br> 11.0 Public Beta 3 (20A5364f) | 4K display is currently not available |

> Tips: while updating & reinstalling macOS Big Sur Beta, the log may stick on "Forcing CS_RUNTIME for entitlement" for about 15-20 minutes. Don't worry about it.

### Barebones

Currently, this config is known to be compatible with all 8th / 9th generation Tongfang barebones (although some barebones models are not listed in the following table). For example:

| Barebone | Platform Generation |
|----------|---------------------|
| GK5CN5X, GK5CN6X | 8th |
| GK5CN5Z, GK5CN6Z | 8th |
| GK7CN6S, GK7CN5S | 8th |
| GI5CN54, GJ5CN64 (PS/2 Touchpad) | 8th |
| GK5CP6Z, GK5CP5Z | 9th |
| GK5CP6X, GK5CP5X | 9th |
| GK7CP6R, GK7CP0R | 9th |
| GK5CP5V, GK5CP6V | 9th |

If you have 8th gen platform laptops with I2C touchpad but the barebone model is not in the list, try one of GK5CN6X, GK5CN6Z (GTX 1060) or GK5CN5X, GK5CN5Z (GTX 1050Ti).

If you have 8th gen platform laptops with PS/2 touchpad but the barebone model is not in the list, try one of GJ5CN64 (GTX 1060) or GI5CN54 (GTX 1050Ti).

If you have 9th gen platform laptops but the barebone model is not in the list, try one of *GK7CP6R, GK5CP6X, GK5CP5X, GK5CP6V, GK5CP5V, GK5CP6Z, GK5CP5Z...*

**Please use [Tongfang Hackintosh Utility](https://github.com/kirainmoe/project-starbeat/releases) to download / customize the OC config.**


### Models

> Notes: I was not sure that some models can work perfectly with this config. The models listed in the following table are those would be theoretically supported gussing by their barebone model.  
**If you have any Tongfang laptop and successfully installed with one of the following configs, please open an issue and tell me.**

<!-- omit in toc -->
#### Tips

It is recommended to create a USB map for your machine after installation if your barebone model is not in the following table.

| Barebone | Models Theoretically Supported | Generation
|-----|------|-----|
| GK5CN5X <br> GK5CN6X <br> GK5CN6Z <br> GK5CN5Z <br>GK7CN6S<br>GK7CN5S | Mechrevo Z2 (Air) <br>XMG Neo 15<br>Overpowered Gaming Laptop 15<br>MACHENIKE F117-B1/2 <br> Monster Abra A7 v10.1 <br> Monster Abra A5 v13.4 <br>Overpowered 17+ laptop | 8th Generation |
| GJ5CN64 <br> GI5CN54 | Avell A52-5 BS<br>CyberPower NB-408-109<br>Machenike T90 | 8th Generation |
| GK7CP6R | Illegear Rogue Laptop<br>XMG Core 17<br>Mechrevo X3<br>CyberPowerPC Tracer-III-17<br>Monster Tulpar T7 v19.3 <br>Monster Tulpar T7 V20.1  | 9th Generation |
| GK5CP6X<br>GK5CP5X | Mechrevo Z2 Air-G <br> EVOO 15.6" model laptops (LP4 / LP5)| 9th Generation | 

# Current Status

- OpenCore: 0.6.1 (official)
- SMBIOS: MacBook Pro 15-inch 2019 (MacBookPro15,3)
- Dual-Boot of Windows & macOS is supported

## What are working

- Turbo boost and CPU frequency stage.

- Intel UHD Graphics 630 
  - platform-id: `3E9B0000`

- Audio Realtek ALC269vc 
  - layout-id: `29`

- Realtek Ethernet RTL8168H

- Intel Bluetooth

- USB 3.0 and Type-C

- Brightness control

- Touchpad
  - PS/2 Touchpad (GJ5CN64, GI5CN54) has limited gesture support
  - I2C Touchpad has full gesture support

- Battery status

- Sleep

- Camera

- FileVault 2

- Fn shortcut keys with OSD

- Keyboard light controlling with [Tongfang Hackintosh Utility](https://github.com/kirainmoe/tongfang-hackintosh-utility) or [AUCC](https://github.com/rodgomesc/avell-unofficial-control-center)

- etc.

## What are partially working

- Intel Wi-Fi based on [itlwm](https://github.com/OpenIntelWireless/itlwm) and [HeliPort](https://github.com/OpenIntelWireless/HeliPort) (not stable enough yet)

## What are not working

- nVidia discrete GPU (used SSDT to disable it)
- HDMI/mini DP (connected to non-working DGPU directly, buy a USB Display Adapter to extend the screen)
- AirDrop & Handoff & Wireless Sidecar (Replace a Wi-Fi card that is compatible with macOS can solve this)
- SD Card reader

## Unsolved Problems

- S4 hibernation cannot be recovered on macOS
  - Have disabled hibernation in `config.plist`

- S4 hibernation cannot be recovered on Windows
  - Do not use OpenCore to boot Windows if you rely on the S4 hiberanation.

# Contribute & Support

Issues & Pull request & Translation are welcomed.

[Join the Discord](https://discord.gg/CDQNnMc) to get community support.

# License

`hasee-tongfang-macos` is [MARUYAMA](https://github.com/kirainmoe/hasee-tongfang-macos/blob/oc-general/LICENSE) Licensed.

You can use the config for free under this license, but we are **NOT** guaranteed for any damage of your device.
