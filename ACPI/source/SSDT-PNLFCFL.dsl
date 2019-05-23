/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-PNLFCFL.aml, Tue May 14 22:48:53 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000068 (104)
 *     Revision         0x02
 *     Checksum         0x54
 *     OEM ID           "hack"
 *     OEM Table ID     "_PNLFCFL"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "_PNLFCFL", 0x00000000)
{
    Device (_SB.PCI0.IGPU.PNLF)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
        Name (_CID, "backlight")  // _CID: Compatible ID
        Name (_UID, 0x13)  // _UID: Unique ID
        Name (_STA, 0x0B)  // _STA: Status
    }
}

