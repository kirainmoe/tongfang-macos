/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-GPRW.aml, Tue May 14 22:48:53 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000004A (74)
 *     Revision         0x02
 *     Checksum         0xF6
 *     OEM ID           "hack"
 *     OEM Table ID     "XPRW"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "XPRW", 0x00000000)
{
    External (XPRW, MethodObj)    // 2 Arguments (from opcode)

    Method (GPRW, 2, NotSerialized)
    {
        If ((0x6D == Arg0))
        {
            Return (Package (0x02)
            {
                0x6D, 
                Zero
            })
        }

        Return (XPRW (Arg0, Arg1))
    }
}

