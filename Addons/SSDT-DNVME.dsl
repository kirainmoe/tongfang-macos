/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190215 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASL8So435.aml, Wed Jan 22 11:25:49 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000077 (119)
 *     Revision         0x02
 *     Checksum         0xB3
 *     OEM ID           "hack"
 *     OEM Table ID     "NVMe-Pcc"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190215 (538509845)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "NVMe-Pcc", 0x00000000)
{
    External (_SB_.PCI0.RP21.PXSX, DeviceObj)

    Method (_SB.PCI0.RP21.PXSX._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x02)
        {
            "class-code", 
            Buffer (0x04)
            {
                 0xFF, 0x08, 0x01, 0x00                           // ....
            }
        })
    }
}

