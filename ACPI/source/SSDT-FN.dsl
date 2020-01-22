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
    
    //External(RMDT.PUSH, MethodObj)
    //External(RMDT.P2, MethodObj)
    //External(RMDT.P4, MethodObj)

    Scope (_SB.PCI0.LPCB.EC0)
    {
        Method (_Q0A, 0, NotSerialized)  // F1
        {
            Notify (PS2K, 0x045f)
        }

        Method (FNF4, 1, NotSerialized)  // F4
        {
            //\RMDT.PUSH("Trigger Fn + F4")
            
            If (LEqual(OSDF, 0x1a))
            {
                //\RMDT.PUSH("Turn on WiFi")
                Notify (PS2K, 0x0460)
                Return ()
            }
            If (LEqual(OSDF, 0x1b))
            {
                //\RMDT.PUSH("Turn off WiFi")
                Notify (PS2K, 0x0461)
                Return ()
            }
            
            Return ()
        }
        
        External(XQ77, MethodObj)
        Method (_Q77, 0, NotSerialized)  // F6
        {
            //\RMDT.PUSH("Entering _Q77")
            Notify (PS2K, 0x0462)

            // call into original _Q77 method
            XQ77()

        }

        External(XQ78, MethodObj)
        Method (_Q78, 0, NotSerialized)  // F7
        {
            //\RMDT.PUSH("Entering _Q78")
            Notify (PS2K, 0x0463)

            // call into original _Q78 method
            XQ78()

        }


        
        Method (_Q14, 0, NotSerialized)  // F11
        {
            Notify (PS2K, 0x0405)
        }

        Method (_Q15, 0, NotSerialized)  // F12
        {
            Notify (PS2K, 0x0406)
        }
        
        
        
        External(XQ53, MethodObj)
        External(OSDF, IntObj)
        Method (_Q53, 0, NotSerialized)  // Fn F2, F4, F8-10 dispatch here
        {
            //\RMDT.PUSH("Entering _Q53")
            //\RMDT.P2("OSDF: ", OSDF)
            
            If (LOr(LEqual(OSDF, 0x1a), LEqual(OSDF, 0x1b)))
            {
                FNF4 (OSDF)
                Return ()
            }

            // call into original _Q53 method
            XQ53()
            
            Return ()

        }
        

    }
}

