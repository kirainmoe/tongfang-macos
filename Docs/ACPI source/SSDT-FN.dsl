DefinitionBlock ("", "SSDT", 2, "hack", "fnkey", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)
    External (ATKP, IntObj)

    External (SLPB, DeviceObj)

    Device (TFKU)
    {
        Name(_HID, "TFU0007")
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }        
    }

    Scope (_SB.PCI0.LPCB.EC0)
    {
        Method (_Q0A, 0, NotSerialized)  // F1: sleep
        {
            Notify (SLPB, 0x80)  // same with original _Q0A
        }

        Method (FNF4, 1, NotSerialized)  // F4: toggle WiFi
        {
            Notify (TFKU, 0x40)
        }

        External (XQ77, MethodObj)
        Method (_Q77, 0, NotSerialized)  // F6: decrease keyboard backlight
        {
            If (_OSI ("Darwin"))
            {
                Notify (TFKU, 0x60)
            }

            // call into original _Q77 method
            XQ77()
        }

        External (XQ78, MethodObj)
        Method (_Q78, 0, NotSerialized)  // F7: increase keyboard backlight
        {
            If (_OSI ("Darwin"))
            {
                Notify (TFKU, 0x70)
            }

            // call into original _Q78 method
            XQ78()
        }

        External (XQ14, MethodObj)
        Method (_Q14, 0, NotSerialized)  // F11: decrease screen backlight
        {
            If (_OSI ("Darwin"))
            {
                Notify (TFKU, 0xB0)
            }
            Else
            {
                XQ14 ()
            }
        }

        External (XQ15, MethodObj)
        Method (_Q15, 0, NotSerialized)  // F12: increase screen backlight
        {
            If (_OSI ("Darwin"))
            {
                Notify (TFKU, 0xC0)
            }
            Else
            {
                XQ15 ()
            }
        }

        External (XQ53, MethodObj)
        External (OSDF, IntObj)
        Method (_Q53, 0, NotSerialized)  // Fn F2, F4, F8-10 dispatch here
        {
            If (_OSI ("Darwin"))
            {
                If (LOr(LEqual(OSDF, 0x1a), LEqual(OSDF, 0x1b)))
                {
                    FNF4 (OSDF)
                    Return ()
                }
            }

            // call into original _Q53 method
            XQ53()

            Return ()
        }
    }

    // remap Fn+F5
    Name (_SB.PCI0.LPCB.PS2K.RMCF, Package()
    {
        "Keyboard", Package()
        {
            "Custom PS2 Map", Package()
            {
                Package () {},
                "76=64",  // Fn+F5=F13
            },
        },
    })
}
