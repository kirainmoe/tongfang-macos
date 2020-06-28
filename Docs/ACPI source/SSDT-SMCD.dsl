/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190215 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLFjWvNf.aml, Sun Jun 28 14:05:08 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000124 (292)
 *     Revision         0x02
 *     Checksum         0xB4
 *     OEM ID           "hack"
 *     OEM Table ID     "TEMP"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190215 (538509845)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "TEMP", 0x00000000)
{
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)

    Scope (_SB.PCI0.LPCB.EC0)
    {
        If (_OSI ("Darwin"))
        {
            OperationRegion (YUME, EmbeddedControl, Zero, 0xFF)
            Field (YUME, ByteAcc, Lock, Preserve)
            {
                Offset (0x64), 
                CPUF,   8, 
                Offset (0x6C), 
                GPUF,   8, 
                Offset (0x8D), 
                FNMD,   8
            }
        }
    }

    Device (SMCD)
    {
        Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
        Name (_CID, "MON00000")  // _CID: Compatible ID
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0B)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (FAN0, 0, Serialized)
        {
            Local0 = \_SB.PCI0.LPCB.EC0.CPUF
            If ((Local0 <= Zero))
            {
                Return (Zero)
            }

            Local0 *= 0x80
            Return (Local0)
        }

        Method (FAN1, 0, Serialized)
        {
            Local0 = \_SB.PCI0.LPCB.EC0.GPUF
            If ((Local0 <= Zero))
            {
                Return (Zero)
            }

            Local0 *= 0x80
            Return (Local0)
        }
    }
}

