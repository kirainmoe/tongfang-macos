/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190215 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-FN.aml, Sat Feb  8 21:13:31 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000212 (530)
 *     Revision         0x02
 *     Checksum         0x45
 *     OEM ID           "hack"
 *     OEM Table ID     "fnkey"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190215 (538509845)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "fnkey", 0x00000000)
{
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_.XQ0A, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.XQ14, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.XQ15, MethodObj)    // 0 Arguments
    External (OSDF, UnknownObj)
    External (PS2K, UnknownObj)
    External (XQ53, MethodObj)    // 0 Arguments
    External (XQ77, MethodObj)    // 0 Arguments
    External (XQ78, MethodObj)    // 0 Arguments

    Scope (_SB.PCI0.LPCB.EC0)
    {
        Method (_Q0A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                Notify (PS2K, 0x045F)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ0A ()
            }
        }

        Method (FNF4, 1, NotSerialized)
        {
            If ((OSDF == 0x1A))
            {
                Notify (PS2K, 0x0460)
                Return (Zero)
            }

            If ((OSDF == 0x1B))
            {
                Notify (PS2K, 0x0461)
                Return (Zero)
            }

            Return (Zero)
        }

        Method (_Q77, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                Notify (PS2K, 0x0462)
            }

            XQ77 ()
        }

        Method (_Q78, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                Notify (PS2K, 0x0463)
            }

            XQ78 ()
        }

        Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                Notify (PS2K, 0x0405)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ14 ()
            }
        }

        Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                Notify (PS2K, 0x0406)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ15 ()
            }
        }

        Method (_Q53, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                If (((OSDF == 0x1A) || (OSDF == 0x1B)))
                {
                    FNF4 (OSDF)
                    Return (Zero)
                }
            }

            XQ53 ()
            Return (Zero)
        }
    }
}

