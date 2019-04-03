<p align="center">

<img src="https://ws2.sinaimg.cn/large/9f1137b1gy1g1hg3epia2j20n505jt9q.jpg" width="300px" alt="logo">

<p>

<h1 align="center">Hasee God-of-War Z7(m)-KP7(5)GZ macOS</h1>

<p align="center">
<a href="https://github.com/kirainmoe/hasee-z7-kp7gz-macos/blob/master/README.md">简体中文</a> | <a href="#tutorial">Tutorial</a> | <a href="#question">Question</a> | <a href="https://github.com/kirainmoe/hasee-z7-kp7gz-macos/issues?q=is%3Aissue+is%3Aclosed">Known Issues</a> | <a href="https://jq.qq.com/?_wv=1027&k=5G82zlQ">QQ Group(Chinese)</a>
</p>

<p align="center">
<img src="https://img.shields.io/badge/build-passing-brightgreen.svg"/> <img src="https://img.shields.io/badge/macOS_version-10.14.4-9cf.svg"/> <img src="https://img.shields.io/badge/built_by-Yume_Maruyama-ff69b4.svg"/> 
</p>

![screenshot](https://ws4.sinaimg.cn/large/9f1137b1gy1g1m6rjq0r5j21hc0u07k7.jpg)


Clover configuration EFI folder for installing latest macOS Mojave (Hackintosh) on Hasee Z7-KP7GZ series laptop, incluing Z7(m)-KP7/5(G)Z. Theoretically it will work on Shinelon Yao 7000 and Mechrevo Z2 Air.

This EFI config works well on 10.14.2/10.14.3/10.14.4 under my test. Using Clover Hotpatch technology.

Before you start, be sure that you have already read [Toturial & Tips](#toturial) and [FAQs](#FAQ).

# Table of Content

- [Tutorial and Tips](#tutorial-and-tips)
- [Component Info](#info)
- [Device Working Status](#whats-working)
- [Frequently Asked Questions](#faq)
- [Question](#question)
- [Detailed Screenshot](#detail-screenshot)
- [Contributing](#contribute)

# Tutorial and Tips

1. The method of using the config: mount EFI part, backup and delete any files in /EFI/CLOVER and replace them with files in this repo. 

2. Before you replace EFI folder you must install macOS with default Clover EFI config attached in your DMG and ensure that you can reach to the desktop environment. Or you may be not able to see the macOS installer interface.

3. We suggest that you backup currrent EFI config before you replace the EFI from this repo so that you can rollback when system is not working.

4. When you find some devices aren't working after replace the EFI, you can install the kexts in /EFI/CLOVER/Kexts/Other to /Library/Extensions.

5. **Before you replace EFI config you must read [FAQs](#FAQ) to know some common issues and solution.**

6. If you don't now how to install macOS Mojave on a new Windows computer, there are many posts and videos that guide you through installing it, and you can find them on Tonymacx86/InsanelyMac/Youtube/Reddit, etc. Or, if you can read Chinese, you may refer to [this post](http://blog.daliansky.net/Lenovo-Xiaoxin-Air-13-macOS-Mojave-installation-tutorial.html).

7. If you have already installed macOS Mojave on your Z7(m)-KP7(5)GZ, but you have failed to make some devices work, please refer to my post [Installing macOS Mojave on Hasee God-of-War KP7GZ](https://kirainmoe.com/blog/post/guide-on-hasee-z7-kp7gz-hackintosh-macos-mojave/). (But it is in Chinese :D), or you may use my whole EFI folder directly.

8. In some cases that you meet with other problems are not referred in README, please open an issue. About the issue format please see [Question part](#question).

9. When you are use the config from this repo, you have read and known the tip content above. Some negative effects(incluing: failed installation, devices not working, failed system boot, even the damage of device) result from your mistake should be afforded by yourself.


# Info

| Component | Model |
|--|--|
| CPU | Intel Core(TM) i7-8750H | 
| GPU | Intel UHD630 / Nvidia GTX1060
| RAM | 8GB |
| Wireless | Intel AC9462 |
| Ethernet | Realtek RTL8168H |
| Audio | Realtek ALC269vc |

# What's working

- Turbo boost and CPU frequency stage
- Intel UHD630 Graphics
- Brightness control and Brightness key (You may plug in a USB keyboard to configurate it)
- I2C HID touchpad (Battery must work normally before you set gestures)
- Ethernet
- Sound (ALC269vc, using AppleALC, injecting layout-id 88. Speakers, Headphone Jack and Microphone all work)
- Battery status (Not a Clover Hotpatch, please apply the dsdt patch in this repository using MaciASL by yourself)
- USB (no port count limit)
- Sleep
- etc.

# What's partial working

- Bluetooth (To enable Bluetooth, you must boot to Windows, and the reboot to macOS.)

# What's not working

- DGPU (GTX1060 is not available because Optium is not supported by macOS, and we currently have no Nvidia WebDriver that supports Mojave)
- WLAN (Intel Wireless AC9462 is not available)
- HDMI/MiniDP (HDMI/MiniDP is linked to DGPU, so it won't work)


# FAQ

Q: How to use this config?  
A: Replace files on /EFI/CLOVER with files from this repo.  

Q: What is the post-install script?  
A: It's the `optimize.sh` file on this repo. It is used for setting hibernate params, emulate NVRAM, enable HiDPI, etc. If you want to perform those operations by yourself, you can skip this. Else we recommend every user execute this script after replace EFI config:
```shell
chmod +x ./optimize.sh
sudo ./optimize.sh
```

Q: How to make battery status / hibernation / brightness saving work?  
A: Nothing should be done. They are fixed by Clover Hotpatch.

Q: Touchpad is not working. Why?  
A: This may be caused by your wrongly apply the DSDT patch from VoodooI2C's source in MaciASL. No need to do this.  

Q: Audio is not working. Why?  
A: Ensure that AppleALC.kext is loading. If not, please install AppleALC.kext to /Library/Extensions. 

Q：Why GTX1060 is not working? Why external monitor(HDMI/MiniDP) is not working?   
A：Read above content again. 

Q: Why the system was broken after I updated to 10.14.4, showing `busy timeout(60s): AppleACPICPU`？  
A: Update Clover to 4903 or later version.

Q: Why it stuck in boot progress after executed the optimize script (or enabled HiDPI)?  
A: It's a common problem happens after enable the HiDPI. There is no good solution now.  

Q: MaciASL return errors after applying the patch from this repo?  
A: DSDT patch is tested under my laptop, I think that my and most computer will be compatiable to the patch. However changes of the BIOS and devices can make your DSDT looks different from most of ours. In this case, you need to fix errors by yourself. Most errors are caused by the redundant / missing '{}' or failed patching.


# Question

If you meet problems during your installtion, please open an issue or mail me at kirainmoe@gmail.com. [Click here to open an issue](https://github.com/kirainmoe/hasee-z7-kp7gz-macos/issues/new).

Some problems are known to happen or solved. Before you open an issue you can [check here if there has your issue](https://github.com/kirainmoe/hasee-z7-kp7gz-macos/issues?q=is%3Aissue+is%3Aclosed).

Make a clear statment about the phenomena of your problem and your operation. I won't answer issues rather than Z7(m)-KP7/5(G)Z models. It is recommend to upload a "problem reporting files", see: https://www.tonymacx86.com/threads/tool-generate-proper-problem-reporting-files.235953/

Here is a Chinese QQ Group: https://jq.qq.com/?_wv=1027&k=5G82zlQ , id: 833022235.

![QQ-group](https://ws3.sinaimg.cn/large/9f1137b1gy1g1hh6nhk8gj20f00kkt9u.jpg)

# Detail screenshot

USB  
![usb](https://ws2.sinaimg.cn/large/9f1137b1gy1g0fimkywrfj20gv0bp3zn.jpg)

Ethernet  
![network](https://wx3.sinaimg.cn/large/9f1137b1gy1g0finlomxaj20gv0bpaap.jpg)

IGPU  
![uhd630](https://ws1.sinaimg.cn/large/9f1137b1gy1g0fipr3magj20gv0bpjs9.jpg)

Battery(S/N is hidden)  
![battery](https://wx3.sinaimg.cn/large/9f1137b1gy1g0fiq7gu9ej20gv0bpwfl.jpg)

Bluetooth(MAC address is hidden)  
![bluetooth](https://ws4.sinaimg.cn/large/9f1137b1gy1g0fiqm7c70j20gv0bpdh4.jpg)

Audio  
![sound](https://wx2.sinaimg.cn/large/9f1137b1gy1g0fir5cqzmj20gv0bp751.jpg)  
![sound-2](https://ws3.sinaimg.cn/large/9f1137b1gy1g0firigeyhj20f00b7t95.jpg)  

Brightness, HiDPI  
![hidpi](https://wx3.sinaimg.cn/large/9f1137b1gy1g0firynbysj21770oa477.jpg)  
![brightness-key](https://ws2.sinaimg.cn/large/9f1137b1gy1g0fisj7r1kj206j0660sx.jpg)  

Turbo boost, LPC  
![hwmonitor](https://wx3.sinaimg.cn/large/9f1137b1gy1g0fisxsg8jj206m0c3wf8.jpg)  
![lpc](https://wx2.sinaimg.cn/large/9f1137b1gy1g0fitafzljj20f00a1gm4.jpg)  

Touchpad gesture  
![gesture](https://wx4.sinaimg.cn/large/9f1137b1gy1g0fitjrcoqj20f00bk75e.jpg)  

Screenfetch  
![screenfetch](https://wx1.sinaimg.cn/large/9f1137b1gy1g0fitwobg3j20d5087my0.jpg)

# Contribute

Feel free to contribute.