/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-FN.aml, Tue May 14 22:48:53 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000AD (173)
 *     Revision         0x02
 *     Checksum         0x91
 *     OEM ID           "hack"
 *     OEM Table ID     "fnkey"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "fnkey", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)    // (from opcode)
    External (ATKP, IntObj)    // (from opcode)

    Scope (_SB.PCI0.LPCB.EC0)
    {
        Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (PS2K, 0x0405)
        }

        Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (PS2K, 0x0406)
        }
    }
}

