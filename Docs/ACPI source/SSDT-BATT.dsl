/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190215 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-BATT.aml, Sat Feb  8 21:13:31 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000007DD (2013)
 *     Revision         0x02
 *     Checksum         0x91
 *     OEM ID           "hack"
 *     OEM Table ID     "bat0"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190215 (538509845)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "bat0", 0x00000000)
{
    External (_SB_.BAT0, DeviceObj)
    External (_SB_.BAT0.BFB0, PkgObj)
    External (_SB_.BAT0.PAK0, PkgObj)
    External (_SB_.BAT0.XBIF, MethodObj)    // 0 Arguments
    External (_SB_.BAT0.XBST, MethodObj)    // 0 Arguments
    External (_SB_.BAT0.XCBE, MethodObj)    // 0 Arguments
    External (_SB_.MUEX, MutexObj)
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)
    External (BFB0, IntObj)
    External (PAK0, IntObj)

    Method (B1B2, 2, NotSerialized)
    {
        Return ((Arg0 | (Arg1 << 0x08)))
    }

    Scope (_SB.PCI0.LPCB.EC0)
    {
        If (_OSI ("Darwin"))
        {
            OperationRegion (XCXP, EmbeddedControl, Zero, 0xFF)
            Field (XCXP, ByteAcc, Lock, Preserve)
            {
                F000,   8, 
                F001,   8, 
                F100,   8, 
                F101,   8, 
                F200,   8, 
                F201,   8, 
                F300,   8, 
                F301,   8, 
                F400,   8, 
                F401,   8, 
                F500,   8, 
                F501,   8, 
                F600,   8, 
                F601,   8, 
                F700,   8, 
                F701,   8, 
                F800,   8, 
                F801,   8, 
                Offset (0x32), 
                T000,   8, 
                T001,   8, 
                T100,   8, 
                T101,   8, 
                T200,   8, 
                T201,   8, 
                T300,   8, 
                T301,   8, 
                XP00,   8, 
                XP01,   8, 
                Offset (0x62), 
                S0LU,   8, 
                S1LU,   8, 
                Offset (0x90), 
                ACIC,   1, 
                BPST,   1, 
                BSOK,   1, 
                Offset (0xA0), 
                Offset (0xA6), 
                CYN0,   8, 
                CYN1,   8, 
                Offset (0xC0), 
                BF00,   8, 
                BF01,   8, 
                BF10,   8, 
                BF11,   8, 
                BF20,   8, 
                BF21,   8, 
                BF30,   8, 
                BF31,   8, 
                BF40,   8, 
                BF41,   8, 
                BF50,   8, 
                BF51,   8, 
                BF60,   8, 
                BF61,   8, 
                BF70,   8, 
                BF71,   8, 
                BF80,   8, 
                BF81,   8, 
                Offset (0xF2), 
                BT00,   8, 
                BT01,   8, 
                BT10,   8, 
                BT11,   8, 
                BT20,   8, 
                BT21,   8, 
                BT30,   8, 
                BT31,   8, 
                BP00,   8, 
                BP01,   8
            }
        }
    }

    Scope (_SB.BAT0)
    {
        Method (ECBE, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Acquire (MUEX, 0xFFFF)
                Debug = "ECBE"
                PAK0 [One] = B1B2 (^^PCI0.LPCB.EC0.F100, ^^PCI0.LPCB.EC0.F101)
                If ((B1B2 (^^PCI0.LPCB.EC0.CYN0, ^^PCI0.LPCB.EC0.CYN1) >= 0x32))
                {
                    PAK0 [0x02] = B1B2 (^^PCI0.LPCB.EC0.F200, ^^PCI0.LPCB.EC0.F201)
                }
                Else
                {
                    PAK0 [0x02] = B1B2 (^^PCI0.LPCB.EC0.F100, ^^PCI0.LPCB.EC0.F101)
                }

                PAK0 [0x03] = B1B2 (^^PCI0.LPCB.EC0.F300, ^^PCI0.LPCB.EC0.F301)
                PAK0 [0x04] = B1B2 (^^PCI0.LPCB.EC0.F400, ^^PCI0.LPCB.EC0.F401)
                PAK0 [0x07] = B1B2 (^^PCI0.LPCB.EC0.F700, ^^PCI0.LPCB.EC0.F701)
                Release (MUEX)
            }
            Else
            {
                \_SB.BAT0.XCBE ()
            }
        }

        Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
        {
            If (_OSI ("Darwin"))
            {
                Acquire (MUEX, 0xFFFF)
                PAK0 [One] = B1B2 (^^PCI0.LPCB.EC0.F100, ^^PCI0.LPCB.EC0.F101)
                If ((B1B2 (^^PCI0.LPCB.EC0.CYN0, ^^PCI0.LPCB.EC0.CYN1) >= 0x32))
                {
                    PAK0 [0x02] = B1B2 (^^PCI0.LPCB.EC0.F200, ^^PCI0.LPCB.EC0.F201)
                }
                Else
                {
                    PAK0 [0x02] = B1B2 (^^PCI0.LPCB.EC0.F100, ^^PCI0.LPCB.EC0.F101)
                }

                PAK0 [0x03] = B1B2 (^^PCI0.LPCB.EC0.F300, ^^PCI0.LPCB.EC0.F301)
                PAK0 [0x04] = B1B2 (^^PCI0.LPCB.EC0.F400, ^^PCI0.LPCB.EC0.F401)
                PAK0 [0x07] = B1B2 (^^PCI0.LPCB.EC0.F700, ^^PCI0.LPCB.EC0.F701)
                Release (MUEX)
                Return (PAK0) /* External reference */
            }
            Else
            {
                Local0 = \_SB.BAT0.XBIF ()
                Return (Local0)
            }
        }

        Method (_BST, 0, NotSerialized)  // _BST: Battery Status
        {
            If (_OSI ("Darwin"))
            {
                Acquire (MUEX, 0xFFFF)
                Debug = "BST1 Start"
                If ((^^PCI0.LPCB.EC0.BSOK == One))
                {
                    BFB0 [Zero] = B1B2 (^^PCI0.LPCB.EC0.T000, ^^PCI0.LPCB.EC0.T001)
                    BFB0 [One] = B1B2 (^^PCI0.LPCB.EC0.T100, ^^PCI0.LPCB.EC0.T101)
                    If ((B1B2 (^^PCI0.LPCB.EC0.CYN0, ^^PCI0.LPCB.EC0.CYN1) >= 0x32))
                    {
                        BFB0 [0x02] = B1B2 (^^PCI0.LPCB.EC0.T200, ^^PCI0.LPCB.EC0.T201)
                    }
                    Else
                    {
                        Local0 = ((B1B2 (^^PCI0.LPCB.EC0.T200, ^^PCI0.LPCB.EC0.T201) * 0x64) / B1B2 (^^PCI0.LPCB.EC0.F200, ^^PCI0.LPCB.EC0.F201))
                        Local1 = (B1B2 (^^PCI0.LPCB.EC0.F100, ^^PCI0.LPCB.EC0.F101) / 0x64)
                        BFB0 [0x02] = (Local0 * Local1)
                    }

                    BFB0 [0x03] = B1B2 (^^PCI0.LPCB.EC0.T300, ^^PCI0.LPCB.EC0.T301)
                    Debug = "BST1 End"
                }

                Release (MUEX)
                Return (BFB0) /* External reference */
            }
            Else
            {
                Local0 = \_SB.BAT0.XBST ()
                Return (Local0)
            }
        }
    }
}

