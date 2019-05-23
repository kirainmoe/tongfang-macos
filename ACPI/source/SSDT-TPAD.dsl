/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-TPAD.aml, Tue May 14 22:48:53 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000063 (99)
 *     Revision         0x02
 *     Checksum         0xF5
 *     OEM ID           "hack"
 *     OEM Table ID     "TPAD"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "TPAD", 0x00000000)
{
    External (_SB_.PCI0.I2C0.TPAD, DeviceObj)    // (from opcode)

    Name (_SB.PCI0.I2C0.TPAD.SBFS, ResourceTemplate ()
    {
        Interrupt (ResourceConsumer, Level, ActiveLow, ExclusiveAndWake, ,, )
        {
            0x00000400,
        }
    })
}

