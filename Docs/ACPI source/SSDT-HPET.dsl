/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190215 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-HPET.aml, Sat Feb  8 21:13:31 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000074 (116)
 *     Revision         0x02
 *     Checksum         0x4B
 *     OEM ID           "hack"
 *     OEM Table ID     "_HPET"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190405 (538510341)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "_HPET", 0x00000000)
{
    External (_SB_.PCI0.LPCB.HPET, DeviceObj)
    External (HPTE, FieldUnitObj)

    Scope (_SB.PCI0.LPCB.HPET)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (_OSI ("Darwin"))
            {
                HPTE = Zero
            }
        }
    }
}

