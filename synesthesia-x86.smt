(set-logic BV)
(define-sort Bit () (_ BitVec 1))
(define-sort Byte () (_ BitVec 8))
(define-sort Word () (_ BitVec 16))
(define-sort Dword () (_ BitVec 32))
(define-sort RegIdx () (_ BitVec 3))
(define-fun EaxIdx () RegIdx #b000)
(define-fun AxIdx () RegIdx #b000)
(define-fun ALIdx () RegIdx #b000)
(define-fun EcxIdx () RegIdx #b001)
(define-fun CxIdx () RegIdx #b001)
(define-fun CLIdx () RegIdx #b001)
(define-fun EdxIdx () RegIdx #b010)
(define-fun DxIdx () RegIdx #b010)
(define-fun DLIdx () RegIdx #b010)
(define-fun EbxIdx () RegIdx #b011)
(define-fun BxIdx () RegIdx #b011)
(define-fun BLIdx () RegIdx #b011)
(define-fun EspIdx () RegIdx #b100)
(define-fun SpIdx () RegIdx #b100)
(define-fun AHIdx () RegIdx #b100)
(define-fun EbpIdx () RegIdx #b101)
(define-fun BpIdx () RegIdx #b101)
(define-fun CHIdx () RegIdx #b101)
(define-fun EsiIdx () RegIdx #b110)
(define-fun SiIdx () RegIdx #b110)
(define-fun DHIdx () RegIdx #b110)
(define-fun EdiIdx () RegIdx #b111)
(define-fun DiIdx () RegIdx #b111)
(define-fun BHIdx () RegIdx #b111)
(define-sort FlagIdx () (_ BitVec 3))
(define-fun CFIdx () RegIdx #b000)
(define-fun PFIdx () RegIdx #b001)
(define-fun AFIdx () RegIdx #b010)
(define-fun ZFIdx () RegIdx #b011)
(define-fun SFIdx () RegIdx #b100)
(define-fun DFIdx () RegIdx #b101)
(define-fun OFIdx () RegIdx #b110)
(define-sort Reg32State () (_ BitVec 256))
(define-sort MachineState () (_ BitVec 264))
(define-sort MachineStateRes8 () (_ BitVec 272))
(define-sort MachineStateRes16 () (_ BitVec 280))
(define-sort MachineStateRes32 () (_ BitVec 296))
(define-sort DecodedMachineState () (_ BitVec 268))
(declare-const NumInstrs Byte)
(declare-const bytecode00 Byte)
(declare-const bytecode01 Byte)
(declare-const bytecode02 Byte)
(declare-const bytecode03 Byte)
(declare-const bytecode04 Byte)
(declare-const bytecode05 Byte)
(declare-const bytecode06 Byte)
(declare-const bytecode07 Byte)
(declare-const bytecode08 Byte)
(declare-const bytecode09 Byte)
(declare-const bytecode0A Byte)
(declare-const bytecode0B Byte)
(declare-const bytecode0C Byte)
(declare-const bytecode0D Byte)
(declare-const bytecode0E Byte)
(declare-const bytecode0F Byte)
(declare-const bytecode10 Byte)
(declare-const bytecode11 Byte)
(declare-const bytecode12 Byte)
(declare-const bytecode13 Byte)
(declare-const bytecode14 Byte)
(declare-const bytecode15 Byte)
(declare-const bytecode16 Byte)
(declare-const bytecode17 Byte)
(declare-const bytecode18 Byte)
(declare-const bytecode19 Byte)
(declare-const bytecode1A Byte)
(declare-const bytecode1B Byte)
(declare-const bytecode1C Byte)
(declare-const bytecode1D Byte)
(declare-const bytecode1E Byte)
(declare-const bytecode1F Byte)
(declare-const bytecode20 Byte)
(declare-const bytecode21 Byte)
(declare-const bytecode22 Byte)
(declare-const bytecode23 Byte)
(declare-const bytecode24 Byte)
(declare-const bytecode25 Byte)
(declare-const bytecode26 Byte)
(declare-const bytecode27 Byte)
(declare-const bytecode28 Byte)
(declare-const bytecode29 Byte)
(declare-const bytecode2A Byte)
(declare-const bytecode2B Byte)
(declare-const bytecode2C Byte)
(declare-const bytecode2D Byte)
(declare-const bytecode2E Byte)
(declare-const bytecode2F Byte)
(declare-const bytecode30 Byte)
(declare-const bytecode31 Byte)
(declare-const bytecode32 Byte)
(declare-const bytecode33 Byte)
(declare-const bytecode34 Byte)
(declare-const bytecode35 Byte)
(declare-const bytecode36 Byte)
(declare-const bytecode37 Byte)
(declare-const bytecode38 Byte)
(declare-const bytecode39 Byte)
(declare-const bytecode3A Byte)
(declare-const bytecode3B Byte)
(declare-const bytecode3C Byte)
(declare-const bytecode3D Byte)
(declare-const bytecode3E Byte)
(declare-const bytecode3F Byte)
(declare-const bytecode40 Byte)
(declare-const bytecode41 Byte)
(declare-const bytecode42 Byte)
(declare-const bytecode43 Byte)
(declare-const bytecode44 Byte)
(declare-const bytecode45 Byte)
(declare-const bytecode46 Byte)
(declare-const bytecode47 Byte)
(declare-const bytecode48 Byte)
(declare-const bytecode49 Byte)
(declare-const bytecode4A Byte)
(declare-const bytecode4B Byte)
(declare-const bytecode4C Byte)
(declare-const bytecode4D Byte)
(declare-const bytecode4E Byte)
(declare-const bytecode4F Byte)
(declare-const bytecode50 Byte)
(declare-const bytecode51 Byte)
(declare-const bytecode52 Byte)
(declare-const bytecode53 Byte)
(declare-const bytecode54 Byte)
(declare-const bytecode55 Byte)
(declare-const bytecode56 Byte)
(declare-const bytecode57 Byte)
(declare-const bytecode58 Byte)
(declare-const bytecode59 Byte)
(declare-const bytecode5A Byte)
(declare-const bytecode5B Byte)
(declare-const bytecode5C Byte)
(declare-const bytecode5D Byte)
(declare-const bytecode5E Byte)
(declare-const bytecode5F Byte)
(declare-const bytecode60 Byte)
(declare-const bytecode61 Byte)
(declare-const bytecode62 Byte)
(declare-const bytecode63 Byte)
(declare-const bytecode64 Byte)
(declare-const bytecode65 Byte)
(declare-const bytecode66 Byte)
(declare-const bytecode67 Byte)
(declare-const bytecode68 Byte)
(declare-const bytecode69 Byte)
(declare-const bytecode6A Byte)
(declare-const bytecode6B Byte)
(declare-const bytecode6C Byte)
(declare-const bytecode6D Byte)
(declare-const bytecode6E Byte)
(declare-const bytecode6F Byte)
(declare-const bytecode70 Byte)
(declare-const bytecode71 Byte)
(declare-const bytecode72 Byte)
(declare-const bytecode73 Byte)
(declare-const bytecode74 Byte)
(declare-const bytecode75 Byte)
(declare-const bytecode76 Byte)
(declare-const bytecode77 Byte)
(declare-const bytecode78 Byte)
(declare-const bytecode79 Byte)
(declare-const bytecode7A Byte)
(declare-const bytecode7B Byte)
(declare-const bytecode7C Byte)
(declare-const bytecode7D Byte)
(declare-const bytecode7E Byte)
(declare-const bytecode7F Byte)
(declare-const bytecode80 Byte)
(declare-const bytecode81 Byte)
(declare-const bytecode82 Byte)
(declare-const bytecode83 Byte)
(declare-const bytecode84 Byte)
(declare-const bytecode85 Byte)
(declare-const bytecode86 Byte)
(declare-const bytecode87 Byte)
(declare-const bytecode88 Byte)
(declare-const bytecode89 Byte)
(declare-const bytecode8A Byte)
(declare-const bytecode8B Byte)
(declare-const bytecode8C Byte)
(declare-const bytecode8D Byte)
(declare-const bytecode8E Byte)
(declare-const bytecode8F Byte)
(declare-const bytecode90 Byte)
(declare-const bytecode91 Byte)
(declare-const bytecode92 Byte)
(declare-const bytecode93 Byte)
(declare-const bytecode94 Byte)
(declare-const bytecode95 Byte)
(declare-const bytecode96 Byte)
(declare-const bytecode97 Byte)
(declare-const bytecode98 Byte)
(declare-const bytecode99 Byte)
(declare-const bytecode9A Byte)
(declare-const bytecode9B Byte)
(declare-const bytecode9C Byte)
(declare-const bytecode9D Byte)
(declare-const bytecode9E Byte)
(declare-const bytecode9F Byte)
(declare-const bytecodeA0 Byte)
(declare-const bytecodeA1 Byte)
(declare-const bytecodeA2 Byte)
(declare-const bytecodeA3 Byte)
(declare-const bytecodeA4 Byte)
(declare-const bytecodeA5 Byte)
(declare-const bytecodeA6 Byte)
(declare-const bytecodeA7 Byte)
(declare-const bytecodeA8 Byte)
(declare-const bytecodeA9 Byte)
(declare-const bytecodeAA Byte)
(declare-const bytecodeAB Byte)
(declare-const bytecodeAC Byte)
(declare-const bytecodeAD Byte)
(declare-const bytecodeAE Byte)
(declare-const bytecodeAF Byte)
(declare-const bytecodeB0 Byte)
(declare-const bytecodeB1 Byte)
(declare-const bytecodeB2 Byte)
(declare-const bytecodeB3 Byte)
(declare-const bytecodeB4 Byte)
(declare-const bytecodeB5 Byte)
(declare-const bytecodeB6 Byte)
(declare-const bytecodeB7 Byte)
(declare-const bytecodeB8 Byte)
(declare-const bytecodeB9 Byte)
(declare-const bytecodeBA Byte)
(declare-const bytecodeBB Byte)
(declare-const bytecodeBC Byte)
(declare-const bytecodeBD Byte)
(declare-const bytecodeBE Byte)
(declare-const bytecodeBF Byte)
(declare-const bytecodeC0 Byte)
(declare-const bytecodeC1 Byte)
(declare-const bytecodeC2 Byte)
(declare-const bytecodeC3 Byte)
(declare-const bytecodeC4 Byte)
(declare-const bytecodeC5 Byte)
(declare-const bytecodeC6 Byte)
(declare-const bytecodeC7 Byte)
(declare-const bytecodeC8 Byte)
(declare-const bytecodeC9 Byte)
(declare-const bytecodeCA Byte)
(declare-const bytecodeCB Byte)
(declare-const bytecodeCC Byte)
(declare-const bytecodeCD Byte)
(declare-const bytecodeCE Byte)
(declare-const bytecodeCF Byte)
(declare-const bytecodeD0 Byte)
(declare-const bytecodeD1 Byte)
(declare-const bytecodeD2 Byte)
(declare-const bytecodeD3 Byte)
(declare-const bytecodeD4 Byte)
(declare-const bytecodeD5 Byte)
(declare-const bytecodeD6 Byte)
(declare-const bytecodeD7 Byte)
(declare-const bytecodeD8 Byte)
(declare-const bytecodeD9 Byte)
(declare-const bytecodeDA Byte)
(declare-const bytecodeDB Byte)
(declare-const bytecodeDC Byte)
(declare-const bytecodeDD Byte)
(declare-const bytecodeDE Byte)
(declare-const bytecodeDF Byte)
(declare-const bytecodeE0 Byte)
(declare-const bytecodeE1 Byte)
(declare-const bytecodeE2 Byte)
(declare-const bytecodeE3 Byte)
(declare-const bytecodeE4 Byte)
(declare-const bytecodeE5 Byte)
(declare-const bytecodeE6 Byte)
(declare-const bytecodeE7 Byte)
(declare-const bytecodeE8 Byte)
(declare-const bytecodeE9 Byte)
(declare-const bytecodeEA Byte)
(declare-const bytecodeEB Byte)
(declare-const bytecodeEC Byte)
(declare-const bytecodeED Byte)
(declare-const bytecodeEE Byte)
(declare-const bytecodeEF Byte)
(declare-const bytecodeF0 Byte)
(declare-const bytecodeF1 Byte)
(declare-const bytecodeF2 Byte)
(declare-const bytecodeF3 Byte)
(declare-const bytecodeF4 Byte)
(declare-const bytecodeF5 Byte)
(declare-const bytecodeF6 Byte)
(declare-const bytecodeF7 Byte)
(declare-const bytecodeF8 Byte)
(declare-const bytecodeF9 Byte)
(declare-const bytecodeFA Byte)
(declare-const bytecodeFB Byte)
(declare-const bytecodeFC Byte)
(declare-const bytecodeFD Byte)
(declare-const bytecodeFE Byte)
(declare-const bytecodeFF Byte)
(define-fun
 get-byte
 ((x Byte))
 Byte
 (ite
  (= x #x00)
  bytecode00
  (ite
   (= x #x01)
   bytecode01
   (ite
    (= x #x02)
    bytecode02
    (ite
     (= x #x03)
     bytecode03
     (ite
      (= x #x04)
      bytecode04
      (ite
       (= x #x05)
       bytecode05
       (ite
        (= x #x06)
        bytecode06
        (ite
         (= x #x07)
         bytecode07
         (ite
          (= x #x08)
          bytecode08
          (ite
           (= x #x09)
           bytecode09
           (ite
            (= x #x0A)
            bytecode0A
            (ite
             (= x #x0B)
             bytecode0B
             (ite
              (= x #x0C)
              bytecode0C
              (ite
               (= x #x0D)
               bytecode0D
               (ite
                (= x #x0E)
                bytecode0E
                (ite
                 (= x #x0F)
                 bytecode0F
                 (ite
                  (= x #x10)
                  bytecode10
                  (ite
                   (= x #x11)
                   bytecode11
                   (ite
                    (= x #x12)
                    bytecode12
                    (ite
                     (= x #x13)
                     bytecode13
                     (ite
                      (= x #x14)
                      bytecode14
                      (ite
                       (= x #x15)
                       bytecode15
                       (ite
                        (= x #x16)
                        bytecode16
                        (ite
                         (= x #x17)
                         bytecode17
                         (ite
                          (= x #x18)
                          bytecode18
                          (ite
                           (= x #x19)
                           bytecode19
                           (ite
                            (= x #x1A)
                            bytecode1A
                            (ite
                             (= x #x1B)
                             bytecode1B
                             (ite
                              (= x #x1C)
                              bytecode1C
                              (ite
                               (= x #x1D)
                               bytecode1D
                               (ite
                                (= x #x1E)
                                bytecode1E
                                (ite
                                 (= x #x1F)
                                 bytecode1F
                                 (ite
                                  (= x #x20)
                                  bytecode20
                                  (ite
                                   (= x #x21)
                                   bytecode21
                                   (ite
                                    (= x #x22)
                                    bytecode22
                                    (ite
                                     (= x #x23)
                                     bytecode23
                                     (ite
                                      (= x #x24)
                                      bytecode24
                                      (ite
                                       (= x #x25)
                                       bytecode25
                                       (ite
                                        (= x #x26)
                                        bytecode26
                                        (ite
                                         (= x #x27)
                                         bytecode27
                                         (ite
                                          (= x #x28)
                                          bytecode28
                                          (ite
                                           (= x #x29)
                                           bytecode29
                                           (ite
                                            (= x #x2A)
                                            bytecode2A
                                            (ite
                                             (= x #x2B)
                                             bytecode2B
                                             (ite
                                              (= x #x2C)
                                              bytecode2C
                                              (ite
                                               (= x #x2D)
                                               bytecode2D
                                               (ite
                                                (= x #x2E)
                                                bytecode2E
                                                (ite
                                                 (= x #x2F)
                                                 bytecode2F
                                                 (ite
                                                  (= x #x30)
                                                  bytecode30
                                                  (ite
                                                   (= x #x31)
                                                   bytecode31
                                                   (ite
                                                    (= x #x32)
                                                    bytecode32
                                                    (ite
                                                     (= x #x33)
                                                     bytecode33
                                                     (ite
                                                      (= x #x34)
                                                      bytecode34
                                                      (ite
                                                       (= x #x35)
                                                       bytecode35
                                                       (ite
                                                        (= x #x36)
                                                        bytecode36
                                                        (ite
                                                         (= x #x37)
                                                         bytecode37
                                                         (ite
                                                          (= x #x38)
                                                          bytecode38
                                                          (ite
                                                           (= x #x39)
                                                           bytecode39
                                                           (ite
                                                            (= x #x3A)
                                                            bytecode3A
                                                            (ite
                                                             (= x #x3B)
                                                             bytecode3B
                                                             (ite
                                                              (= x #x3C)
                                                              bytecode3C
                                                              (ite
                                                               (= x #x3D)
                                                               bytecode3D
                                                               (ite
                                                                (= x #x3E)
                                                                bytecode3E
                                                                (ite
                                                                 (= x #x3F)
                                                                 bytecode3F
                                                                 (ite
                                                                  (= x #x40)
                                                                  bytecode40
                                                                  (ite
                                                                   (= x #x41)
                                                                   bytecode41
                                                                   (ite
                                                                    (=
                                                                     x
                                                                     #x42)
                                                                    bytecode42
                                                                    (ite
                                                                     (=
                                                                      x
                                                                      #x43)
                                                                     bytecode43
                                                                     (ite
                                                                      (=
                                                                       x
                                                                       #x44)
                                                                      bytecode44
                                                                      (ite
                                                                       (=
                                                                        x
                                                                        #x45)
                                                                       bytecode45
                                                                       (ite
                                                                        (=
                                                                         x
                                                                         #x46)
                                                                        bytecode46
                                                                        (ite
                                                                         (=
                                                                          x
                                                                          #x47)
                                                                         bytecode47
                                                                         (ite
                                                                          (=
                                                                           x
                                                                           #x48)
                                                                          bytecode48
                                                                          (ite
                                                                           (=
                                                                            x
                                                                            #x49)
                                                                           bytecode49
                                                                           (ite
                                                                            (=
                                                                             x
                                                                             #x4A)
                                                                            bytecode4A
                                                                            (ite
                                                                             (=
                                                                              x
                                                                              #x4B)
                                                                             bytecode4B
                                                                             (ite
                                                                              (=
                                                                               x
                                                                               #x4C)
                                                                              bytecode4C
                                                                              (ite
                                                                               (=
                                                                                x
                                                                                #x4D)
                                                                               bytecode4D
                                                                               (ite
                                                                                (=
                                                                                 x
                                                                                 #x4E)
                                                                                bytecode4E
                                                                                (ite
                                                                                 (=
                                                                                  x
                                                                                  #x4F)
                                                                                 bytecode4F
                                                                                 (ite
                                                                                  (=
                                                                                   x
                                                                                   #x50)
                                                                                  bytecode50
                                                                                  (ite
                                                                                   (=
                                                                                    x
                                                                                    #x51)
                                                                                   bytecode51
                                                                                   (ite
                                                                                    (=
                                                                                     x
                                                                                     #x52)
                                                                                    bytecode52
                                                                                    (ite
                                                                                     (=
                                                                                      x
                                                                                      #x53)
                                                                                     bytecode53
                                                                                     (ite
                                                                                      (=
                                                                                       x
                                                                                       #x54)
                                                                                      bytecode54
                                                                                      (ite
                                                                                       (=
                                                                                        x
                                                                                        #x55)
                                                                                       bytecode55
                                                                                       (ite
                                                                                        (=
                                                                                         x
                                                                                         #x56)
                                                                                        bytecode56
                                                                                        (ite
                                                                                         (=
                                                                                          x
                                                                                          #x57)
                                                                                         bytecode57
                                                                                         (ite
                                                                                          (=
                                                                                           x
                                                                                           #x58)
                                                                                          bytecode58
                                                                                          (ite
                                                                                           (=
                                                                                            x
                                                                                            #x59)
                                                                                           bytecode59
                                                                                           (ite
                                                                                            (=
                                                                                             x
                                                                                             #x5A)
                                                                                            bytecode5A
                                                                                            (ite
                                                                                             (=
                                                                                              x
                                                                                              #x5B)
                                                                                             bytecode5B
                                                                                             (ite
                                                                                              (=
                                                                                               x
                                                                                               #x5C)
                                                                                              bytecode5C
                                                                                              (ite
                                                                                               (=
                                                                                                x
                                                                                                #x5D)
                                                                                               bytecode5D
                                                                                               (ite
                                                                                                (=
                                                                                                 x
                                                                                                 #x5E)
                                                                                                bytecode5E
                                                                                                (ite
                                                                                                 (=
                                                                                                  x
                                                                                                  #x5F)
                                                                                                 bytecode5F
                                                                                                 (ite
                                                                                                  (=
                                                                                                   x
                                                                                                   #x60)
                                                                                                  bytecode60
                                                                                                  (ite
                                                                                                   (=
                                                                                                    x
                                                                                                    #x61)
                                                                                                   bytecode61
                                                                                                   (ite
                                                                                                    (=
                                                                                                     x
                                                                                                     #x62)
                                                                                                    bytecode62
                                                                                                    (ite
                                                                                                     (=
                                                                                                      x
                                                                                                      #x63)
                                                                                                     bytecode63
                                                                                                     (ite
                                                                                                      (=
                                                                                                       x
                                                                                                       #x64)
                                                                                                      bytecode64
                                                                                                      (ite
                                                                                                       (=
                                                                                                        x
                                                                                                        #x65)
                                                                                                       bytecode65
                                                                                                       (ite
                                                                                                        (=
                                                                                                         x
                                                                                                         #x66)
                                                                                                        bytecode66
                                                                                                        (ite
                                                                                                         (=
                                                                                                          x
                                                                                                          #x67)
                                                                                                         bytecode67
                                                                                                         (ite
                                                                                                          (=
                                                                                                           x
                                                                                                           #x68)
                                                                                                          bytecode68
                                                                                                          (ite
                                                                                                           (=
                                                                                                            x
                                                                                                            #x69)
                                                                                                           bytecode69
                                                                                                           (ite
                                                                                                            (=
                                                                                                             x
                                                                                                             #x6A)
                                                                                                            bytecode6A
                                                                                                            (ite
                                                                                                             (=
                                                                                                              x
                                                                                                              #x6B)
                                                                                                             bytecode6B
                                                                                                             (ite
                                                                                                              (=
                                                                                                               x
                                                                                                               #x6C)
                                                                                                              bytecode6C
                                                                                                              (ite
                                                                                                               (=
                                                                                                                x
                                                                                                                #x6D)
                                                                                                               bytecode6D
                                                                                                               (ite
                                                                                                                (=
                                                                                                                 x
                                                                                                                 #x6E)
                                                                                                                bytecode6E
                                                                                                                (ite
                                                                                                                 (=
                                                                                                                  x
                                                                                                                  #x6F)
                                                                                                                 bytecode6F
                                                                                                                 (ite
                                                                                                                  (=
                                                                                                                   x
                                                                                                                   #x70)
                                                                                                                  bytecode70
                                                                                                                  (ite
                                                                                                                   (=
                                                                                                                    x
                                                                                                                    #x71)
                                                                                                                   bytecode71
                                                                                                                   (ite
                                                                                                                    (=
                                                                                                                     x
                                                                                                                     #x72)
                                                                                                                    bytecode72
                                                                                                                    (ite
                                                                                                                     (=
                                                                                                                      x
                                                                                                                      #x73)
                                                                                                                     bytecode73
                                                                                                                     (ite
                                                                                                                      (=
                                                                                                                       x
                                                                                                                       #x74)
                                                                                                                      bytecode74
                                                                                                                      (ite
                                                                                                                       (=
                                                                                                                        x
                                                                                                                        #x75)
                                                                                                                       bytecode75
                                                                                                                       (ite
                                                                                                                        (=
                                                                                                                         x
                                                                                                                         #x76)
                                                                                                                        bytecode76
                                                                                                                        (ite
                                                                                                                         (=
                                                                                                                          x
                                                                                                                          #x77)
                                                                                                                         bytecode77
                                                                                                                         (ite
                                                                                                                          (=
                                                                                                                           x
                                                                                                                           #x78)
                                                                                                                          bytecode78
                                                                                                                          (ite
                                                                                                                           (=
                                                                                                                            x
                                                                                                                            #x79)
                                                                                                                           bytecode79
                                                                                                                           (ite
                                                                                                                            (=
                                                                                                                             x
                                                                                                                             #x7A)
                                                                                                                            bytecode7A
                                                                                                                            (ite
                                                                                                                             (=
                                                                                                                              x
                                                                                                                              #x7B)
                                                                                                                             bytecode7B
                                                                                                                             (ite
                                                                                                                              (=
                                                                                                                               x
                                                                                                                               #x7C)
                                                                                                                              bytecode7C
                                                                                                                              (ite
                                                                                                                               (=
                                                                                                                                x
                                                                                                                                #x7D)
                                                                                                                               bytecode7D
                                                                                                                               (ite
                                                                                                                                (=
                                                                                                                                 x
                                                                                                                                 #x7E)
                                                                                                                                bytecode7E
                                                                                                                                (ite
                                                                                                                                 (=
                                                                                                                                  x
                                                                                                                                  #x7F)
                                                                                                                                 bytecode7F
                                                                                                                                 (ite
                                                                                                                                  (=
                                                                                                                                   x
                                                                                                                                   #x80)
                                                                                                                                  bytecode80
                                                                                                                                  (ite
                                                                                                                                   (=
                                                                                                                                    x
                                                                                                                                    #x81)
                                                                                                                                   bytecode81
                                                                                                                                   (ite
                                                                                                                                    (=
                                                                                                                                     x
                                                                                                                                     #x82)
                                                                                                                                    bytecode82
                                                                                                                                    (ite
                                                                                                                                     (=
                                                                                                                                      x
                                                                                                                                      #x83)
                                                                                                                                     bytecode83
                                                                                                                                     (ite
                                                                                                                                      (=
                                                                                                                                       x
                                                                                                                                       #x84)
                                                                                                                                      bytecode84
                                                                                                                                      (ite
                                                                                                                                       (=
                                                                                                                                        x
                                                                                                                                        #x85)
                                                                                                                                       bytecode85
                                                                                                                                       (ite
                                                                                                                                        (=
                                                                                                                                         x
                                                                                                                                         #x86)
                                                                                                                                        bytecode86
                                                                                                                                        (ite
                                                                                                                                         (=
                                                                                                                                          x
                                                                                                                                          #x87)
                                                                                                                                         bytecode87
                                                                                                                                         (ite
                                                                                                                                          (=
                                                                                                                                           x
                                                                                                                                           #x88)
                                                                                                                                          bytecode88
                                                                                                                                          (ite
                                                                                                                                           (=
                                                                                                                                            x
                                                                                                                                            #x89)
                                                                                                                                           bytecode89
                                                                                                                                           (ite
                                                                                                                                            (=
                                                                                                                                             x
                                                                                                                                             #x8A)
                                                                                                                                            bytecode8A
                                                                                                                                            (ite
                                                                                                                                             (=
                                                                                                                                              x
                                                                                                                                              #x8B)
                                                                                                                                             bytecode8B
                                                                                                                                             (ite
                                                                                                                                              (=
                                                                                                                                               x
                                                                                                                                               #x8C)
                                                                                                                                              bytecode8C
                                                                                                                                              (ite
                                                                                                                                               (=
                                                                                                                                                x
                                                                                                                                                #x8D)
                                                                                                                                               bytecode8D
                                                                                                                                               (ite
                                                                                                                                                (=
                                                                                                                                                 x
                                                                                                                                                 #x8E)
                                                                                                                                                bytecode8E
                                                                                                                                                (ite
                                                                                                                                                 (=
                                                                                                                                                  x
                                                                                                                                                  #x8F)
                                                                                                                                                 bytecode8F
                                                                                                                                                 (ite
                                                                                                                                                  (=
                                                                                                                                                   x
                                                                                                                                                   #x90)
                                                                                                                                                  bytecode90
                                                                                                                                                  (ite
                                                                                                                                                   (=
                                                                                                                                                    x
                                                                                                                                                    #x91)
                                                                                                                                                   bytecode91
                                                                                                                                                   (ite
                                                                                                                                                    (=
                                                                                                                                                     x
                                                                                                                                                     #x92)
                                                                                                                                                    bytecode92
                                                                                                                                                    (ite
                                                                                                                                                     (=
                                                                                                                                                      x
                                                                                                                                                      #x93)
                                                                                                                                                     bytecode93
                                                                                                                                                     (ite
                                                                                                                                                      (=
                                                                                                                                                       x
                                                                                                                                                       #x94)
                                                                                                                                                      bytecode94
                                                                                                                                                      (ite
                                                                                                                                                       (=
                                                                                                                                                        x
                                                                                                                                                        #x95)
                                                                                                                                                       bytecode95
                                                                                                                                                       (ite
                                                                                                                                                        (=
                                                                                                                                                         x
                                                                                                                                                         #x96)
                                                                                                                                                        bytecode96
                                                                                                                                                        (ite
                                                                                                                                                         (=
                                                                                                                                                          x
                                                                                                                                                          #x97)
                                                                                                                                                         bytecode97
                                                                                                                                                         (ite
                                                                                                                                                          (=
                                                                                                                                                           x
                                                                                                                                                           #x98)
                                                                                                                                                          bytecode98
                                                                                                                                                          (ite
                                                                                                                                                           (=
                                                                                                                                                            x
                                                                                                                                                            #x99)
                                                                                                                                                           bytecode99
                                                                                                                                                           (ite
                                                                                                                                                            (=
                                                                                                                                                             x
                                                                                                                                                             #x9A)
                                                                                                                                                            bytecode9A
                                                                                                                                                            (ite
                                                                                                                                                             (=
                                                                                                                                                              x
                                                                                                                                                              #x9B)
                                                                                                                                                             bytecode9B
                                                                                                                                                             (ite
                                                                                                                                                              (=
                                                                                                                                                               x
                                                                                                                                                               #x9C)
                                                                                                                                                              bytecode9C
                                                                                                                                                              (ite
                                                                                                                                                               (=
                                                                                                                                                                x
                                                                                                                                                                #x9D)
                                                                                                                                                               bytecode9D
                                                                                                                                                               (ite
                                                                                                                                                                (=
                                                                                                                                                                 x
                                                                                                                                                                 #x9E)
                                                                                                                                                                bytecode9E
                                                                                                                                                                (ite
                                                                                                                                                                 (=
                                                                                                                                                                  x
                                                                                                                                                                  #x9F)
                                                                                                                                                                 bytecode9F
                                                                                                                                                                 (ite
                                                                                                                                                                  (=
                                                                                                                                                                   x
                                                                                                                                                                   #xA0)
                                                                                                                                                                  bytecodeA0
                                                                                                                                                                  (ite
                                                                                                                                                                   (=
                                                                                                                                                                    x
                                                                                                                                                                    #xA1)
                                                                                                                                                                   bytecodeA1
                                                                                                                                                                   (ite
                                                                                                                                                                    (=
                                                                                                                                                                     x
                                                                                                                                                                     #xA2)
                                                                                                                                                                    bytecodeA2
                                                                                                                                                                    (ite
                                                                                                                                                                     (=
                                                                                                                                                                      x
                                                                                                                                                                      #xA3)
                                                                                                                                                                     bytecodeA3
                                                                                                                                                                     (ite
                                                                                                                                                                      (=
                                                                                                                                                                       x
                                                                                                                                                                       #xA4)
                                                                                                                                                                      bytecodeA4
                                                                                                                                                                      (ite
                                                                                                                                                                       (=
                                                                                                                                                                        x
                                                                                                                                                                        #xA5)
                                                                                                                                                                       bytecodeA5
                                                                                                                                                                       (ite
                                                                                                                                                                        (=
                                                                                                                                                                         x
                                                                                                                                                                         #xA6)
                                                                                                                                                                        bytecodeA6
                                                                                                                                                                        (ite
                                                                                                                                                                         (=
                                                                                                                                                                          x
                                                                                                                                                                          #xA7)
                                                                                                                                                                         bytecodeA7
                                                                                                                                                                         (ite
                                                                                                                                                                          (=
                                                                                                                                                                           x
                                                                                                                                                                           #xA8)
                                                                                                                                                                          bytecodeA8
                                                                                                                                                                          (ite
                                                                                                                                                                           (=
                                                                                                                                                                            x
                                                                                                                                                                            #xA9)
                                                                                                                                                                           bytecodeA9
                                                                                                                                                                           (ite
                                                                                                                                                                            (=
                                                                                                                                                                             x
                                                                                                                                                                             #xAA)
                                                                                                                                                                            bytecodeAA
                                                                                                                                                                            (ite
                                                                                                                                                                             (=
                                                                                                                                                                              x
                                                                                                                                                                              #xAB)
                                                                                                                                                                             bytecodeAB
                                                                                                                                                                             (ite
                                                                                                                                                                              (=
                                                                                                                                                                               x
                                                                                                                                                                               #xAC)
                                                                                                                                                                              bytecodeAC
                                                                                                                                                                              (ite
                                                                                                                                                                               (=
                                                                                                                                                                                x
                                                                                                                                                                                #xAD)
                                                                                                                                                                               bytecodeAD
                                                                                                                                                                               (ite
                                                                                                                                                                                (=
                                                                                                                                                                                 x
                                                                                                                                                                                 #xAE)
                                                                                                                                                                                bytecodeAE
                                                                                                                                                                                (ite
                                                                                                                                                                                 (=
                                                                                                                                                                                  x
                                                                                                                                                                                  #xAF)
                                                                                                                                                                                 bytecodeAF
                                                                                                                                                                                 (ite
                                                                                                                                                                                  (=
                                                                                                                                                                                   x
                                                                                                                                                                                   #xB0)
                                                                                                                                                                                  bytecodeB0
                                                                                                                                                                                  (ite
                                                                                                                                                                                   (=
                                                                                                                                                                                    x
                                                                                                                                                                                    #xB1)
                                                                                                                                                                                   bytecodeB1
                                                                                                                                                                                   (ite
                                                                                                                                                                                    (=
                                                                                                                                                                                     x
                                                                                                                                                                                     #xB2)
                                                                                                                                                                                    bytecodeB2
                                                                                                                                                                                    (ite
                                                                                                                                                                                     (=
                                                                                                                                                                                      x
                                                                                                                                                                                      #xB3)
                                                                                                                                                                                     bytecodeB3
                                                                                                                                                                                     (ite
                                                                                                                                                                                      (=
                                                                                                                                                                                       x
                                                                                                                                                                                       #xB4)
                                                                                                                                                                                      bytecodeB4
                                                                                                                                                                                      (ite
                                                                                                                                                                                       (=
                                                                                                                                                                                        x
                                                                                                                                                                                        #xB5)
                                                                                                                                                                                       bytecodeB5
                                                                                                                                                                                       (ite
                                                                                                                                                                                        (=
                                                                                                                                                                                         x
                                                                                                                                                                                         #xB6)
                                                                                                                                                                                        bytecodeB6
                                                                                                                                                                                        (ite
                                                                                                                                                                                         (=
                                                                                                                                                                                          x
                                                                                                                                                                                          #xB7)
                                                                                                                                                                                         bytecodeB7
                                                                                                                                                                                         (ite
                                                                                                                                                                                          (=
                                                                                                                                                                                           x
                                                                                                                                                                                           #xB8)
                                                                                                                                                                                          bytecodeB8
                                                                                                                                                                                          (ite
                                                                                                                                                                                           (=
                                                                                                                                                                                            x
                                                                                                                                                                                            #xB9)
                                                                                                                                                                                           bytecodeB9
                                                                                                                                                                                           (ite
                                                                                                                                                                                            (=
                                                                                                                                                                                             x
                                                                                                                                                                                             #xBA)
                                                                                                                                                                                            bytecodeBA
                                                                                                                                                                                            (ite
                                                                                                                                                                                             (=
                                                                                                                                                                                              x
                                                                                                                                                                                              #xBB)
                                                                                                                                                                                             bytecodeBB
                                                                                                                                                                                             (ite
                                                                                                                                                                                              (=
                                                                                                                                                                                               x
                                                                                                                                                                                               #xBC)
                                                                                                                                                                                              bytecodeBC
                                                                                                                                                                                              (ite
                                                                                                                                                                                               (=
                                                                                                                                                                                                x
                                                                                                                                                                                                #xBD)
                                                                                                                                                                                               bytecodeBD
                                                                                                                                                                                               (ite
                                                                                                                                                                                                (=
                                                                                                                                                                                                 x
                                                                                                                                                                                                 #xBE)
                                                                                                                                                                                                bytecodeBE
                                                                                                                                                                                                (ite
                                                                                                                                                                                                 (=
                                                                                                                                                                                                  x
                                                                                                                                                                                                  #xBF)
                                                                                                                                                                                                 bytecodeBF
                                                                                                                                                                                                 (ite
                                                                                                                                                                                                  (=
                                                                                                                                                                                                   x
                                                                                                                                                                                                   #xC0)
                                                                                                                                                                                                  bytecodeC0
                                                                                                                                                                                                  (ite
                                                                                                                                                                                                   (=
                                                                                                                                                                                                    x
                                                                                                                                                                                                    #xC1)
                                                                                                                                                                                                   bytecodeC1
                                                                                                                                                                                                   (ite
                                                                                                                                                                                                    (=
                                                                                                                                                                                                     x
                                                                                                                                                                                                     #xC2)
                                                                                                                                                                                                    bytecodeC2
                                                                                                                                                                                                    (ite
                                                                                                                                                                                                     (=
                                                                                                                                                                                                      x
                                                                                                                                                                                                      #xC3)
                                                                                                                                                                                                     bytecodeC3
                                                                                                                                                                                                     (ite
                                                                                                                                                                                                      (=
                                                                                                                                                                                                       x
                                                                                                                                                                                                       #xC4)
                                                                                                                                                                                                      bytecodeC4
                                                                                                                                                                                                      (ite
                                                                                                                                                                                                       (=
                                                                                                                                                                                                        x
                                                                                                                                                                                                        #xC5)
                                                                                                                                                                                                       bytecodeC5
                                                                                                                                                                                                       (ite
                                                                                                                                                                                                        (=
                                                                                                                                                                                                         x
                                                                                                                                                                                                         #xC6)
                                                                                                                                                                                                        bytecodeC6
                                                                                                                                                                                                        (ite
                                                                                                                                                                                                         (=
                                                                                                                                                                                                          x
                                                                                                                                                                                                          #xC7)
                                                                                                                                                                                                         bytecodeC7
                                                                                                                                                                                                         (ite
                                                                                                                                                                                                          (=
                                                                                                                                                                                                           x
                                                                                                                                                                                                           #xC8)
                                                                                                                                                                                                          bytecodeC8
                                                                                                                                                                                                          (ite
                                                                                                                                                                                                           (=
                                                                                                                                                                                                            x
                                                                                                                                                                                                            #xC9)
                                                                                                                                                                                                           bytecodeC9
                                                                                                                                                                                                           (ite
                                                                                                                                                                                                            (=
                                                                                                                                                                                                             x
                                                                                                                                                                                                             #xCA)
                                                                                                                                                                                                            bytecodeCA
                                                                                                                                                                                                            (ite
                                                                                                                                                                                                             (=
                                                                                                                                                                                                              x
                                                                                                                                                                                                              #xCB)
                                                                                                                                                                                                             bytecodeCB
                                                                                                                                                                                                             (ite
                                                                                                                                                                                                              (=
                                                                                                                                                                                                               x
                                                                                                                                                                                                               #xCC)
                                                                                                                                                                                                              bytecodeCC
                                                                                                                                                                                                              (ite
                                                                                                                                                                                                               (=
                                                                                                                                                                                                                x
                                                                                                                                                                                                                #xCD)
                                                                                                                                                                                                               bytecodeCD
                                                                                                                                                                                                               (ite
                                                                                                                                                                                                                (=
                                                                                                                                                                                                                 x
                                                                                                                                                                                                                 #xCE)
                                                                                                                                                                                                                bytecodeCE
                                                                                                                                                                                                                (ite
                                                                                                                                                                                                                 (=
                                                                                                                                                                                                                  x
                                                                                                                                                                                                                  #xCF)
                                                                                                                                                                                                                 bytecodeCF
                                                                                                                                                                                                                 (ite
                                                                                                                                                                                                                  (=
                                                                                                                                                                                                                   x
                                                                                                                                                                                                                   #xD0)
                                                                                                                                                                                                                  bytecodeD0
                                                                                                                                                                                                                  (ite
                                                                                                                                                                                                                   (=
                                                                                                                                                                                                                    x
                                                                                                                                                                                                                    #xD1)
                                                                                                                                                                                                                   bytecodeD1
                                                                                                                                                                                                                   (ite
                                                                                                                                                                                                                    (=
                                                                                                                                                                                                                     x
                                                                                                                                                                                                                     #xD2)
                                                                                                                                                                                                                    bytecodeD2
                                                                                                                                                                                                                    (ite
                                                                                                                                                                                                                     (=
                                                                                                                                                                                                                      x
                                                                                                                                                                                                                      #xD3)
                                                                                                                                                                                                                     bytecodeD3
                                                                                                                                                                                                                     (ite
                                                                                                                                                                                                                      (=
                                                                                                                                                                                                                       x
                                                                                                                                                                                                                       #xD4)
                                                                                                                                                                                                                      bytecodeD4
                                                                                                                                                                                                                      (ite
                                                                                                                                                                                                                       (=
                                                                                                                                                                                                                        x
                                                                                                                                                                                                                        #xD5)
                                                                                                                                                                                                                       bytecodeD5
                                                                                                                                                                                                                       (ite
                                                                                                                                                                                                                        (=
                                                                                                                                                                                                                         x
                                                                                                                                                                                                                         #xD6)
                                                                                                                                                                                                                        bytecodeD6
                                                                                                                                                                                                                        (ite
                                                                                                                                                                                                                         (=
                                                                                                                                                                                                                          x
                                                                                                                                                                                                                          #xD7)
                                                                                                                                                                                                                         bytecodeD7
                                                                                                                                                                                                                         (ite
                                                                                                                                                                                                                          (=
                                                                                                                                                                                                                           x
                                                                                                                                                                                                                           #xD8)
                                                                                                                                                                                                                          bytecodeD8
                                                                                                                                                                                                                          (ite
                                                                                                                                                                                                                           (=
                                                                                                                                                                                                                            x
                                                                                                                                                                                                                            #xD9)
                                                                                                                                                                                                                           bytecodeD9
                                                                                                                                                                                                                           (ite
                                                                                                                                                                                                                            (=
                                                                                                                                                                                                                             x
                                                                                                                                                                                                                             #xDA)
                                                                                                                                                                                                                            bytecodeDA
                                                                                                                                                                                                                            (ite
                                                                                                                                                                                                                             (=
                                                                                                                                                                                                                              x
                                                                                                                                                                                                                              #xDB)
                                                                                                                                                                                                                             bytecodeDB
                                                                                                                                                                                                                             (ite
                                                                                                                                                                                                                              (=
                                                                                                                                                                                                                               x
                                                                                                                                                                                                                               #xDC)
                                                                                                                                                                                                                              bytecodeDC
                                                                                                                                                                                                                              (ite
                                                                                                                                                                                                                               (=
                                                                                                                                                                                                                                x
                                                                                                                                                                                                                                #xDD)
                                                                                                                                                                                                                               bytecodeDD
                                                                                                                                                                                                                               (ite
                                                                                                                                                                                                                                (=
                                                                                                                                                                                                                                 x
                                                                                                                                                                                                                                 #xDE)
                                                                                                                                                                                                                                bytecodeDE
                                                                                                                                                                                                                                (ite
                                                                                                                                                                                                                                 (=
                                                                                                                                                                                                                                  x
                                                                                                                                                                                                                                  #xDF)
                                                                                                                                                                                                                                 bytecodeDF
                                                                                                                                                                                                                                 (ite
                                                                                                                                                                                                                                  (=
                                                                                                                                                                                                                                   x
                                                                                                                                                                                                                                   #xE0)
                                                                                                                                                                                                                                  bytecodeE0
                                                                                                                                                                                                                                  (ite
                                                                                                                                                                                                                                   (=
                                                                                                                                                                                                                                    x
                                                                                                                                                                                                                                    #xE1)
                                                                                                                                                                                                                                   bytecodeE1
                                                                                                                                                                                                                                   (ite
                                                                                                                                                                                                                                    (=
                                                                                                                                                                                                                                     x
                                                                                                                                                                                                                                     #xE2)
                                                                                                                                                                                                                                    bytecodeE2
                                                                                                                                                                                                                                    (ite
                                                                                                                                                                                                                                     (=
                                                                                                                                                                                                                                      x
                                                                                                                                                                                                                                      #xE3)
                                                                                                                                                                                                                                     bytecodeE3
                                                                                                                                                                                                                                     (ite
                                                                                                                                                                                                                                      (=
                                                                                                                                                                                                                                       x
                                                                                                                                                                                                                                       #xE4)
                                                                                                                                                                                                                                      bytecodeE4
                                                                                                                                                                                                                                      (ite
                                                                                                                                                                                                                                       (=
                                                                                                                                                                                                                                        x
                                                                                                                                                                                                                                        #xE5)
                                                                                                                                                                                                                                       bytecodeE5
                                                                                                                                                                                                                                       (ite
                                                                                                                                                                                                                                        (=
                                                                                                                                                                                                                                         x
                                                                                                                                                                                                                                         #xE6)
                                                                                                                                                                                                                                        bytecodeE6
                                                                                                                                                                                                                                        (ite
                                                                                                                                                                                                                                         (=
                                                                                                                                                                                                                                          x
                                                                                                                                                                                                                                          #xE7)
                                                                                                                                                                                                                                         bytecodeE7
                                                                                                                                                                                                                                         (ite
                                                                                                                                                                                                                                          (=
                                                                                                                                                                                                                                           x
                                                                                                                                                                                                                                           #xE8)
                                                                                                                                                                                                                                          bytecodeE8
                                                                                                                                                                                                                                          (ite
                                                                                                                                                                                                                                           (=
                                                                                                                                                                                                                                            x
                                                                                                                                                                                                                                            #xE9)
                                                                                                                                                                                                                                           bytecodeE9
                                                                                                                                                                                                                                           (ite
                                                                                                                                                                                                                                            (=
                                                                                                                                                                                                                                             x
                                                                                                                                                                                                                                             #xEA)
                                                                                                                                                                                                                                            bytecodeEA
                                                                                                                                                                                                                                            (ite
                                                                                                                                                                                                                                             (=
                                                                                                                                                                                                                                              x
                                                                                                                                                                                                                                              #xEB)
                                                                                                                                                                                                                                             bytecodeEB
                                                                                                                                                                                                                                             (ite
                                                                                                                                                                                                                                              (=
                                                                                                                                                                                                                                               x
                                                                                                                                                                                                                                               #xEC)
                                                                                                                                                                                                                                              bytecodeEC
                                                                                                                                                                                                                                              (ite
                                                                                                                                                                                                                                               (=
                                                                                                                                                                                                                                                x
                                                                                                                                                                                                                                                #xED)
                                                                                                                                                                                                                                               bytecodeED
                                                                                                                                                                                                                                               (ite
                                                                                                                                                                                                                                                (=
                                                                                                                                                                                                                                                 x
                                                                                                                                                                                                                                                 #xEE)
                                                                                                                                                                                                                                                bytecodeEE
                                                                                                                                                                                                                                                (ite
                                                                                                                                                                                                                                                 (=
                                                                                                                                                                                                                                                  x
                                                                                                                                                                                                                                                  #xEF)
                                                                                                                                                                                                                                                 bytecodeEF
                                                                                                                                                                                                                                                 (ite
                                                                                                                                                                                                                                                  (=
                                                                                                                                                                                                                                                   x
                                                                                                                                                                                                                                                   #xF0)
                                                                                                                                                                                                                                                  bytecodeF0
                                                                                                                                                                                                                                                  (ite
                                                                                                                                                                                                                                                   (=
                                                                                                                                                                                                                                                    x
                                                                                                                                                                                                                                                    #xF1)
                                                                                                                                                                                                                                                   bytecodeF1
                                                                                                                                                                                                                                                   (ite
                                                                                                                                                                                                                                                    (=
                                                                                                                                                                                                                                                     x
                                                                                                                                                                                                                                                     #xF2)
                                                                                                                                                                                                                                                    bytecodeF2
                                                                                                                                                                                                                                                    (ite
                                                                                                                                                                                                                                                     (=
                                                                                                                                                                                                                                                      x
                                                                                                                                                                                                                                                      #xF3)
                                                                                                                                                                                                                                                     bytecodeF3
                                                                                                                                                                                                                                                     (ite
                                                                                                                                                                                                                                                      (=
                                                                                                                                                                                                                                                       x
                                                                                                                                                                                                                                                       #xF4)
                                                                                                                                                                                                                                                      bytecodeF4
                                                                                                                                                                                                                                                      (ite
                                                                                                                                                                                                                                                       (=
                                                                                                                                                                                                                                                        x
                                                                                                                                                                                                                                                        #xF5)
                                                                                                                                                                                                                                                       bytecodeF5
                                                                                                                                                                                                                                                       (ite
                                                                                                                                                                                                                                                        (=
                                                                                                                                                                                                                                                         x
                                                                                                                                                                                                                                                         #xF6)
                                                                                                                                                                                                                                                        bytecodeF6
                                                                                                                                                                                                                                                        (ite
                                                                                                                                                                                                                                                         (=
                                                                                                                                                                                                                                                          x
                                                                                                                                                                                                                                                          #xF7)
                                                                                                                                                                                                                                                         bytecodeF7
                                                                                                                                                                                                                                                         (ite
                                                                                                                                                                                                                                                          (=
                                                                                                                                                                                                                                                           x
                                                                                                                                                                                                                                                           #xF8)
                                                                                                                                                                                                                                                          bytecodeF8
                                                                                                                                                                                                                                                          (ite
                                                                                                                                                                                                                                                           (=
                                                                                                                                                                                                                                                            x
                                                                                                                                                                                                                                                            #xF9)
                                                                                                                                                                                                                                                           bytecodeF9
                                                                                                                                                                                                                                                           (ite
                                                                                                                                                                                                                                                            (=
                                                                                                                                                                                                                                                             x
                                                                                                                                                                                                                                                             #xFA)
                                                                                                                                                                                                                                                            bytecodeFA
                                                                                                                                                                                                                                                            (ite
                                                                                                                                                                                                                                                             (=
                                                                                                                                                                                                                                                              x
                                                                                                                                                                                                                                                              #xFB)
                                                                                                                                                                                                                                                             bytecodeFB
                                                                                                                                                                                                                                                             (ite
                                                                                                                                                                                                                                                              (=
                                                                                                                                                                                                                                                               x
                                                                                                                                                                                                                                                               #xFC)
                                                                                                                                                                                                                                                              bytecodeFC
                                                                                                                                                                                                                                                              (ite
                                                                                                                                                                                                                                                               (=
                                                                                                                                                                                                                                                                x
                                                                                                                                                                                                                                                                #xFD)
                                                                                                                                                                                                                                                               bytecodeFD
                                                                                                                                                                                                                                                               (ite
                                                                                                                                                                                                                                                                (=
                                                                                                                                                                                                                                                                 x
                                                                                                                                                                                                                                                                 #xFE)
                                                                                                                                                                                                                                                                bytecodeFE
                                                                                                                                                                                                                                                                (ite
                                                                                                                                                                                                                                                                 (=
                                                                                                                                                                                                                                                                  x
                                                                                                                                                                                                                                                                  #xFF)
                                                                                                                                                                                                                                                                 bytecodeFF
                                                                                                                                                                                                                                                                 bytecode04)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(define-fun
 get-word
 ((x Byte))
 Word
 (concat (get-byte (bvadd x #x01)) (get-byte x)))
(define-fun
 get-dword
 ((x Byte))
 Dword
 (concat
  (get-byte (bvadd x #x03))
  (get-byte (bvadd x #x02))
  (get-byte (bvadd x #x01))
  (get-byte x)))
(define-fun
 getreg32
 ((x RegIdx) (z MachineState))
 Dword
 (ite
  (= x #b000)
  ((_ extract 31 0) z)
  (ite
   (= x #b001)
   ((_ extract 63 32) z)
   (ite
    (= x #b010)
    ((_ extract 95 64) z)
    (ite
     (= x #b011)
     ((_ extract 127 96) z)
     (ite
      (= x #b100)
      ((_ extract 159 128) z)
      (ite
       (= x #b101)
       ((_ extract 191 160) z)
       (ite
        (= x #b110)
        ((_ extract 223 192) z)
        ((_ extract 255 224) z)))))))))
(define-fun
 getreg16
 ((x RegIdx) (z MachineState))
 Word
 (ite
  (= x #b000)
  ((_ extract 15 0) z)
  (ite
   (= x #b001)
   ((_ extract 47 32) z)
   (ite
    (= x #b010)
    ((_ extract 79 64) z)
    (ite
     (= x #b011)
     ((_ extract 111 96) z)
     (ite
      (= x #b100)
      ((_ extract 143 128) z)
      (ite
       (= x #b101)
       ((_ extract 175 160) z)
       (ite
        (= x #b110)
        ((_ extract 207 192) z)
        ((_ extract 239 224) z)))))))))
(define-fun
 getreg8
 ((x RegIdx) (z MachineState))
 Byte
 (ite
  (= x #b000)
  ((_ extract 7 0) z)
  (ite
   (= x #b001)
   ((_ extract 39 32) z)
   (ite
    (= x #b010)
    ((_ extract 71 64) z)
    (ite
     (= x #b011)
     ((_ extract 103 96) z)
     (ite
      (= x #b100)
      ((_ extract 15 8) z)
      (ite
       (= x #b101)
       ((_ extract 47 40) z)
       (ite (= x #b110) ((_ extract 79 72) z) ((_ extract 111 104) z)))))))))
(define-fun
 getflag
 ((x FlagIdx) (z MachineState))
 Bit
 (let ((fs ((_ extract 263 256) z)))
   (ite
    (= x #b000)
    ((_ extract 0 0) fs)
    (ite
     (= x #b001)
     ((_ extract 1 1) fs)
     (ite
      (= x #b010)
      ((_ extract 2 2) fs)
      (ite
       (= x #b011)
       ((_ extract 3 3) fs)
       (ite
        (= x #b100)
        ((_ extract 4 4) fs)
        (ite
         (= x #b101)
         ((_ extract 5 5) fs)
         (ite (= x #b110) ((_ extract 6 6) fs) ((_ extract 6 6) fs))))))))))
(define-fun getextra ((z MachineState)) Bit ((_ extract 263 263) z))
(define-fun
 putreg32
 ((x RegIdx) (y Dword) (z MachineState))
 MachineState
 (let ((rs ((_ extract 255 0) z)))
   (let ((fs ((_ extract 263 256) z)))
     (concat
      fs
      (ite
       (= x #b000)
       (concat ((_ extract 255 32) rs) y)
       (ite
        (= x #b001)
        (concat ((_ extract 255 64) rs) y ((_ extract 31 0) rs))
        (ite
         (= x #b010)
         (concat ((_ extract 255 96) rs) y ((_ extract 63 0) rs))
         (ite
          (= x #b011)
          (concat ((_ extract 255 128) rs) y ((_ extract 95 0) rs))
          (ite
           (= x #b100)
           (concat ((_ extract 255 160) rs) y ((_ extract 127 0) rs))
           (ite
            (= x #b101)
            (concat ((_ extract 255 192) rs) y ((_ extract 159 0) rs))
            (ite
             (= x #b110)
             (concat ((_ extract 255 224) rs) y ((_ extract 191 0) rs))
             (concat y ((_ extract 223 0) rs)))))))))))))
(define-fun
 putreg16
 ((x RegIdx) (y Word) (z MachineState))
 MachineState
 (let ((rs ((_ extract 255 0) z)))
   (let ((fs ((_ extract 263 256) z)))
     (concat
      fs
      (ite
       (= x #b000)
       (concat ((_ extract 255 16) rs) y)
       (ite
        (= x #b001)
        (concat ((_ extract 255 48) rs) y ((_ extract 31 0) rs))
        (ite
         (= x #b010)
         (concat ((_ extract 255 80) rs) y ((_ extract 63 0) rs))
         (ite
          (= x #b011)
          (concat ((_ extract 255 112) rs) y ((_ extract 95 0) rs))
          (ite
           (= x #b100)
           (concat ((_ extract 255 144) rs) y ((_ extract 127 0) rs))
           (ite
            (= x #b101)
            (concat ((_ extract 255 176) rs) y ((_ extract 159 0) rs))
            (ite
             (= x #b110)
             (concat ((_ extract 255 208) rs) y ((_ extract 191 0) rs))
             (concat
              ((_ extract 255 240) rs)
              y
              ((_ extract 223 0) rs)))))))))))))
(define-fun
 putreg8
 ((x RegIdx) (y Byte) (z MachineState))
 MachineState
 (let ((rs ((_ extract 255 0) z)))
   (let ((fs ((_ extract 263 256) z)))
     (concat
      fs
      (ite
       (= x #b000)
       (concat ((_ extract 255 8) rs) y)
       (ite
        (= x #b001)
        (concat ((_ extract 255 40) rs) y ((_ extract 31 0) rs))
        (ite
         (= x #b010)
         (concat ((_ extract 255 72) rs) y ((_ extract 63 0) rs))
         (ite
          (= x #b011)
          (concat ((_ extract 255 104) rs) y ((_ extract 95 0) rs))
          (ite
           (= x #b100)
           (concat ((_ extract 255 16) rs) y ((_ extract 7 0) rs))
           (ite
            (= x #b101)
            (concat ((_ extract 255 48) rs) y ((_ extract 39 0) rs))
            (ite
             (= x #b110)
             (concat ((_ extract 255 80) rs) y ((_ extract 71 0) rs))
             (concat
              ((_ extract 255 112) rs)
              y
              ((_ extract 103 0) rs)))))))))))))
(define-fun
 putflag
 ((x FlagIdx) (y Bit) (z MachineState))
 MachineState
 (let ((rs ((_ extract 255 0) z)))
   (let ((fs ((_ extract 263 256) z)))
     (let ((newfs
            (ite
             (= x #b000)
             (concat ((_ extract 7 1) fs) y)
             (ite
              (= x #b001)
              (concat ((_ extract 7 2) fs) y ((_ extract 0 0) fs))
              (ite
               (= x #b010)
               (concat ((_ extract 7 3) fs) y ((_ extract 1 0) fs))
               (ite
                (= x #b011)
                (concat ((_ extract 7 4) fs) y ((_ extract 2 0) fs))
                (ite
                 (= x #b100)
                 (concat ((_ extract 7 5) fs) y ((_ extract 3 0) fs))
                 (ite
                  (= x #b101)
                  (concat ((_ extract 7 6) fs) y ((_ extract 4 0) fs))
                  (ite
                   (= x #b110)
                   (concat ((_ extract 7 7) fs) y ((_ extract 5 0) fs))
                   (concat
                    ((_ extract 7 7) fs)
                    y
                    ((_ extract 5 0) fs)))))))))))
       (concat newfs rs)))))
(define-fun
 putextra
 ((b Bit) (z MachineState))
 MachineState
 (concat b ((_ extract 262 0) z)))
(define-fun
 consume-opsize-prefix
 ((byte Byte))
 Bit
 (ite (= byte #x66) #b1 #b0))
(define-fun
 consume-addrsize-prefix
 ((byte Byte))
 Bit
 (ite (= byte #x67) #b1 #b0))
(define-fun
 update-eip
 ((eip Byte) (b Bit))
 Byte
 (ite (= #b1 b) (bvadd eip #x01) eip))
(define-fun bool-to-bit ((b Bool)) Bit (ite b #b1 #b0))
(define-fun bit-to-bool ((b Bit)) Bool (= b #b1))
(define-fun
 x86-parity8
 ((b Byte))
 Bit
 (bvnot
  (bvxor
   ((_ extract 7 7) b)
   ((_ extract 6 6) b)
   ((_ extract 5 5) b)
   ((_ extract 4 4) b)
   ((_ extract 3 3) b)
   ((_ extract 2 2) b)
   ((_ extract 1 1) b)
   ((_ extract 0 0) b))))
(define-fun x86-parity16 ((w Word)) Bit (x86-parity8 ((_ extract 7 0) w)))
(define-fun x86-parity32 ((d Dword)) Bit (x86-parity8 ((_ extract 7 0) d)))
(define-fun
 x86-signdiff8
 ((lhs Byte) (rhs Byte))
 Bit
 (bvxor ((_ extract 7 7) lhs) ((_ extract 7 7) rhs)))
(define-fun
 x86-signdiff16
 ((lhs Word) (rhs Word))
 Bit
 (bvxor ((_ extract 15 15) lhs) ((_ extract 15 15) rhs)))
(define-fun
 x86-signdiff32
 ((lhs Dword) (rhs Dword))
 Bit
 (bvxor ((_ extract 31 31) lhs) ((_ extract 31 31) rhs)))
(define-fun
 x86-zero-cao
 ((state MachineState))
 MachineState
 (let ((cfstate (putflag CFIdx #b0 state)))
   (let ((afstate (putflag AFIdx #b0 cfstate)))
     (let ((ofstate (putflag OFIdx #b0 afstate))) ofstate))))
(define-fun
 x86-standard-zps8
 ((res Byte) (state MachineState))
 MachineState
 (let ((zfstate (putflag ZFIdx (bool-to-bit (= res #x00)) state)))
   (let ((sfstate (putflag SFIdx ((_ extract 7 7) res) zfstate)))
     (let ((pfstate (putflag PFIdx (x86-parity8 res) sfstate))) pfstate))))
(define-fun
 x86-standard-zps16
 ((res Word) (state MachineState))
 MachineState
 (let ((zfstate (putflag ZFIdx (bool-to-bit (= res #x0000)) state)))
   (let ((sfstate (putflag SFIdx ((_ extract 15 15) res) zfstate)))
     (let ((pfstate (putflag PFIdx (x86-parity16 res) sfstate))) pfstate))))
(define-fun
 x86-standard-zps32
 ((res Dword) (state MachineState))
 MachineState
 (let ((zfstate (putflag ZFIdx (bool-to-bit (= res #x00000000)) state)))
   (let ((sfstate (putflag SFIdx ((_ extract 31 31) res) zfstate)))
     (let ((pfstate (putflag PFIdx (x86-parity32 res) sfstate))) pfstate))))
(define-fun
 x86-predicated-flag
 ((idx FlagIdx) (cond Bit) (fexpr Bit) (state MachineState))
 MachineState
 (let ((ef (getflag idx state)))
   (putflag idx (ite (bit-to-bool cond) ef fexpr) state)))
(define-fun
 x86-predicated-zps8
 ((count Byte) (res Byte) (state MachineState))
 MachineState
 (let ((cond (bool-to-bit (= count #x00))))
   (let ((zfstate
          (x86-predicated-flag ZFIdx cond (bool-to-bit (= res #x00)) state)))
     (let ((sfstate
            (x86-predicated-flag SFIdx cond ((_ extract 7 7) res) zfstate)))
       (let ((pfstate
              (x86-predicated-flag PFIdx cond (x86-parity8 res) sfstate)))
         pfstate)))))
(define-fun
 x86-predicated-zps16
 ((count Byte) (res Word) (state MachineState))
 MachineState
 (let ((cond (bool-to-bit (= count #x00))))
   (let ((zfstate
          (x86-predicated-flag
           ZFIdx
           cond
           (bool-to-bit (= res #x0000))
           state)))
     (let ((sfstate
            (x86-predicated-flag SFIdx cond ((_ extract 15 15) res) zfstate)))
       (let ((pfstate
              (x86-predicated-flag PFIdx cond (x86-parity16 res) sfstate)))
         pfstate)))))
(define-fun
 x86-predicated-zps32
 ((count Byte) (res Dword) (state MachineState))
 MachineState
 (let ((cond (bool-to-bit (= count #x00))))
   (let ((zfstate
          (x86-predicated-flag
           ZFIdx
           cond
           (bool-to-bit (= res #x00000000))
           state)))
     (let ((sfstate
            (x86-predicated-flag SFIdx cond ((_ extract 31 31) res) zfstate)))
       (let ((pfstate
              (x86-predicated-flag PFIdx cond (x86-parity32 res) sfstate)))
         pfstate)))))
(define-fun
 x86-store-res8
 ((mrr8 MachineStateRes8) (idx RegIdx))
 MachineState
 (let ((ms ((_ extract 263 0) mrr8)))
   (let ((res ((_ extract 271 264) mrr8))) (putreg8 idx res ms))))
(define-fun
 x86-store-res16
 ((mrr16 MachineStateRes16) (idx RegIdx))
 MachineState
 (let ((ms ((_ extract 263 0) mrr16)))
   (let ((res ((_ extract 279 264) mrr16))) (putreg16 idx res ms))))
(define-fun
 x86-store-res32
 ((mrr32 MachineStateRes32) (idx RegIdx))
 MachineState
 (let ((ms ((_ extract 263 0) mrr32)))
   (let ((res ((_ extract 295 264) mrr32))) (putreg32 idx res ms))))
(define-fun
 x86-add8
 ((lhs Byte) (rhs Byte) (state MachineState))
 MachineStateRes8
 (let ((eRes (bvadd lhs rhs)))
   (let ((zpsState (x86-standard-zps8 eRes state)))
     (let ((zpsaState
            (putflag AFIdx ((_ extract 4 4) (bvxor lhs rhs)) zpsState)))
       (let ((zpsaoState
              (putflag
               OFIdx
               (bvand (x86-signdiff8 eRes lhs) (x86-signdiff8 eRes rhs))
               zpsaState)))
         (let ((zpsaocState
                (putflag CFIdx (bool-to-bit (bvult eRes rhs)) zpsaoState)))
           (concat eRes zpsaocState)))))))
(define-fun
 x86-add16
 ((lhs Word) (rhs Word) (state MachineState))
 MachineStateRes16
 (let ((eRes (bvadd lhs rhs)))
   (let ((zpsState (x86-standard-zps16 eRes state)))
     (let ((zpsaState
            (putflag AFIdx ((_ extract 4 4) (bvxor lhs rhs)) zpsState)))
       (let ((zpsaoState
              (putflag
               OFIdx
               (bvand (x86-signdiff16 eRes lhs) (x86-signdiff16 eRes rhs))
               zpsaState)))
         (let ((zpsaocState
                (putflag CFIdx (bool-to-bit (bvult eRes rhs)) zpsaoState)))
           (concat eRes zpsaocState)))))))
(define-fun
 x86-add32
 ((lhs Dword) (rhs Dword) (state MachineState))
 MachineStateRes32
 (let ((eRes (bvadd lhs rhs)))
   (let ((zpsState (x86-standard-zps32 eRes state)))
     (let ((zpsaState
            (putflag AFIdx ((_ extract 4 4) (bvxor lhs rhs)) zpsState)))
       (let ((zpsaoState
              (putflag
               OFIdx
               (bvand (x86-signdiff32 eRes lhs) (x86-signdiff32 eRes rhs))
               zpsaState)))
         (let ((zpsaocState
                (putflag CFIdx (bool-to-bit (bvult eRes rhs)) zpsaoState)))
           (concat eRes zpsaocState)))))))
(define-fun
 x86-inc8
 ((lhs Byte) (state MachineState))
 MachineStateRes8
 (let ((rhs #x01))
   (let ((eRes (bvadd lhs rhs)))
     (let ((zpsState (x86-standard-zps8 eRes state)))
       (let ((zpsaState
              (putflag AFIdx ((_ extract 4 4) (bvxor lhs rhs)) zpsState)))
         (let ((zpsaoState
                (putflag
                 OFIdx
                 (bvand (x86-signdiff8 eRes lhs) (x86-signdiff8 eRes rhs))
                 zpsaState)))
           (concat eRes zpsaoState)))))))
(define-fun
 x86-inc16
 ((lhs Word) (state MachineState))
 MachineStateRes16
 (let ((rhs #x0001))
   (let ((eRes (bvadd lhs rhs)))
     (let ((zpsState (x86-standard-zps16 eRes state)))
       (let ((zpsaState
              (putflag AFIdx ((_ extract 4 4) (bvxor lhs rhs)) zpsState)))
         (let ((zpsaoState
                (putflag
                 OFIdx
                 (bvand (x86-signdiff16 eRes lhs) (x86-signdiff16 eRes rhs))
                 zpsaState)))
           (concat eRes zpsaoState)))))))
(define-fun
 x86-inc32
 ((lhs Dword) (state MachineState))
 MachineStateRes32
 (let ((rhs #x00000001))
   (let ((eRes (bvadd lhs rhs)))
     (let ((zpsState (x86-standard-zps32 eRes state)))
       (let ((zpsaState
              (putflag AFIdx ((_ extract 4 4) (bvxor lhs rhs)) zpsState)))
         (let ((zpsaoState
                (putflag
                 OFIdx
                 (bvand (x86-signdiff32 eRes lhs) (x86-signdiff32 eRes rhs))
                 zpsaState)))
           (concat eRes zpsaoState)))))))
(define-fun
 x86-or8
 ((lhs Byte) (rhs Byte) (state MachineState))
 MachineStateRes8
 (let ((eRes (bvor lhs rhs)))
   (let ((zpsState (x86-standard-zps8 eRes state)))
     (let ((zpsaocState (x86-zero-cao zpsState))) (concat eRes zpsaocState)))))
(define-fun
 x86-or16
 ((lhs Word) (rhs Word) (state MachineState))
 MachineStateRes16
 (let ((eRes (bvor lhs rhs)))
   (let ((zpsState (x86-standard-zps16 eRes state)))
     (let ((zpsaocState (x86-zero-cao zpsState))) (concat eRes zpsaocState)))))
(define-fun
 x86-or32
 ((lhs Dword) (rhs Dword) (state MachineState))
 MachineStateRes32
 (let ((eRes (bvor lhs rhs)))
   (let ((zpsState (x86-standard-zps32 eRes state)))
     (let ((zpsaocState (x86-zero-cao zpsState))) (concat eRes zpsaocState)))))
(define-fun
 x86-xor8
 ((lhs Byte) (rhs Byte) (state MachineState))
 MachineStateRes8
 (let ((eRes (bvxor lhs rhs)))
   (let ((zpsState (x86-standard-zps8 eRes state)))
     (let ((zpsaocState (x86-zero-cao zpsState))) (concat eRes zpsaocState)))))
(define-fun
 x86-xor16
 ((lhs Word) (rhs Word) (state MachineState))
 MachineStateRes16
 (let ((eRes (bvxor lhs rhs)))
   (let ((zpsState (x86-standard-zps16 eRes state)))
     (let ((zpsaocState (x86-zero-cao zpsState))) (concat eRes zpsaocState)))))
(define-fun
 x86-xor32
 ((lhs Dword) (rhs Dword) (state MachineState))
 MachineStateRes32
 (let ((eRes (bvxor lhs rhs)))
   (let ((zpsState (x86-standard-zps32 eRes state)))
     (let ((zpsaocState (x86-zero-cao zpsState))) (concat eRes zpsaocState)))))
(define-fun
 x86-and8
 ((lhs Byte) (rhs Byte) (state MachineState))
 MachineStateRes8
 (let ((eRes (bvand lhs rhs)))
   (let ((zpsState (x86-standard-zps8 eRes state)))
     (let ((zpsaocState (x86-zero-cao zpsState))) (concat eRes zpsaocState)))))
(define-fun
 x86-and16
 ((lhs Word) (rhs Word) (state MachineState))
 MachineStateRes16
 (let ((eRes (bvand lhs rhs)))
   (let ((zpsState (x86-standard-zps16 eRes state)))
     (let ((zpsaocState (x86-zero-cao zpsState))) (concat eRes zpsaocState)))))
(define-fun
 x86-and32
 ((lhs Dword) (rhs Dword) (state MachineState))
 MachineStateRes32
 (let ((eRes (bvand lhs rhs)))
   (let ((zpsState (x86-standard-zps32 eRes state)))
     (let ((zpsaocState (x86-zero-cao zpsState))) (concat eRes zpsaocState)))))
(define-fun
 x86-adc8
 ((lhs Byte) (rhs Byte) (state MachineState))
 MachineStateRes8
 (let ((eRhsPlus (bvadd rhs ((_ zero_extend 7) (getflag CFIdx state)))))
   (let ((eRes (bvadd lhs eRhsPlus)))
     (let ((zpsState (x86-standard-zps8 eRes state)))
       (let ((zpsaState
              (putflag AFIdx ((_ extract 4 4) (bvxor lhs rhs eRes)) zpsState)))
         (let ((zpsaoState
                (putflag
                 OFIdx
                 (bvand (x86-signdiff8 eRes lhs) (x86-signdiff8 eRes rhs))
                 zpsaState)))
           (let ((zpsaocState
                  (putflag
                   CFIdx
                   (bvor
                    (bool-to-bit (bvult eRes rhs))
                    (bool-to-bit (bvult eRhsPlus rhs)))
                   zpsaoState)))
             (concat eRes zpsaocState))))))))
(define-fun
 x86-adc16
 ((lhs Word) (rhs Word) (state MachineState))
 MachineStateRes16
 (let ((eRhsPlus (bvadd rhs ((_ zero_extend 15) (getflag CFIdx state)))))
   (let ((eRes (bvadd lhs rhs)))
     (let ((zpsState (x86-standard-zps16 eRes state)))
       (let ((zpsaState
              (putflag AFIdx ((_ extract 4 4) (bvxor lhs rhs eRes)) zpsState)))
         (let ((zpsaoState
                (putflag
                 OFIdx
                 (bvand (x86-signdiff16 eRes lhs) (x86-signdiff16 eRes rhs))
                 zpsaState)))
           (let ((zpsaocState
                  (putflag
                   CFIdx
                   (bvor
                    (bool-to-bit (bvult eRes rhs))
                    (bool-to-bit (bvult eRhsPlus rhs)))
                   zpsaoState)))
             (concat eRes zpsaocState))))))))
(define-fun
 x86-adc32
 ((lhs Dword) (rhs Dword) (state MachineState))
 MachineStateRes32
 (let ((eRhsPlus (bvadd rhs ((_ zero_extend 31) (getflag CFIdx state)))))
   (let ((eRes (bvadd lhs rhs)))
     (let ((zpsState (x86-standard-zps32 eRes state)))
       (let ((zpsaState
              (putflag AFIdx ((_ extract 4 4) (bvxor lhs rhs eRes)) zpsState)))
         (let ((zpsaoState
                (putflag
                 OFIdx
                 (bvand (x86-signdiff32 eRes lhs) (x86-signdiff32 eRes rhs))
                 zpsaState)))
           (let ((zpsaocState
                  (putflag
                   CFIdx
                   (bvor
                    (bool-to-bit (bvult eRes rhs))
                    (bool-to-bit (bvult eRhsPlus rhs)))
                   zpsaoState)))
             (concat eRes zpsaocState))))))))
(define-fun
 x86-sbb8
 ((lhs Byte) (rhs Byte) (state MachineState))
 MachineStateRes8
 (let ((eRhsPlus (bvadd rhs ((_ zero_extend 7) (getflag CFIdx state)))))
   (let ((eRes (bvsub lhs eRhsPlus)))
     (let ((zpsState (x86-standard-zps8 eRes state)))
       (let ((zpsaState
              (putflag AFIdx ((_ extract 4 4) (bvxor lhs rhs eRes)) zpsState)))
         (let ((zpsaoState
                (putflag
                 OFIdx
                 (bvand (x86-signdiff8 eRes lhs) (x86-signdiff8 lhs rhs))
                 zpsaState)))
           (let ((zpsaocState
                  (putflag
                   CFIdx
                   (bvor
                    (bool-to-bit (bvult lhs eRhsPlus))
                    (bool-to-bit (bvult eRhsPlus rhs)))
                   zpsaoState)))
             (concat eRes zpsaocState))))))))
(define-fun
 x86-sbb16
 ((lhs Word) (rhs Word) (state MachineState))
 MachineStateRes16
 (let ((eRhsPlus (bvadd rhs ((_ zero_extend 15) (getflag CFIdx state)))))
   (let ((eRes (bvsub lhs rhs)))
     (let ((zpsState (x86-standard-zps16 eRes state)))
       (let ((zpsaState
              (putflag AFIdx ((_ extract 4 4) (bvxor lhs rhs eRes)) zpsState)))
         (let ((zpsaoState
                (putflag
                 OFIdx
                 (bvand (x86-signdiff16 eRes lhs) (x86-signdiff16 lhs rhs))
                 zpsaState)))
           (let ((zpsaocState
                  (putflag
                   CFIdx
                   (bvor
                    (bool-to-bit (bvult lhs eRhsPlus))
                    (bool-to-bit (bvult eRhsPlus rhs)))
                   zpsaoState)))
             (concat eRes zpsaocState))))))))
(define-fun
 x86-sbb32
 ((lhs Dword) (rhs Dword) (state MachineState))
 MachineStateRes32
 (let ((eRhsPlus (bvadd rhs ((_ zero_extend 31) (getflag CFIdx state)))))
   (let ((eRes (bvsub lhs rhs)))
     (let ((zpsState (x86-standard-zps32 eRes state)))
       (let ((zpsaState
              (putflag AFIdx ((_ extract 4 4) (bvxor lhs rhs eRes)) zpsState)))
         (let ((zpsaoState
                (putflag
                 OFIdx
                 (bvand (x86-signdiff32 eRes lhs) (x86-signdiff32 lhs rhs))
                 zpsaState)))
           (let ((zpsaocState
                  (putflag
                   CFIdx
                   (bvor
                    (bool-to-bit (bvult lhs eRhsPlus))
                    (bool-to-bit (bvult eRhsPlus rhs)))
                   zpsaoState)))
             (concat eRes zpsaocState))))))))
(define-fun
 x86-sub8
 ((lhs Byte) (rhs Byte) (state MachineState))
 MachineStateRes8
 (let ((eRes (bvsub lhs rhs)))
   (let ((zpsState (x86-standard-zps8 eRes state)))
     (let ((zpsaState
            (putflag AFIdx ((_ extract 4 4) (bvxor lhs rhs eRes)) zpsState)))
       (let ((zpsaoState
              (putflag
               OFIdx
               (bvand (x86-signdiff8 eRes lhs) (x86-signdiff8 lhs rhs))
               zpsaState)))
         (let ((zpsaocState
                (putflag CFIdx (bool-to-bit (bvult lhs rhs)) zpsaoState)))
           (concat eRes zpsaocState)))))))
(define-fun
 x86-sub16
 ((lhs Word) (rhs Word) (state MachineState))
 MachineStateRes16
 (let ((eRes (bvsub lhs rhs)))
   (let ((zpsState (x86-standard-zps16 eRes state)))
     (let ((zpsaState
            (putflag AFIdx ((_ extract 4 4) (bvxor lhs rhs eRes)) zpsState)))
       (let ((zpsaoState
              (putflag
               OFIdx
               (bvand (x86-signdiff16 eRes lhs) (x86-signdiff16 lhs rhs))
               zpsaState)))
         (let ((zpsaocState
                (putflag CFIdx (bool-to-bit (bvult lhs rhs)) zpsaoState)))
           (concat eRes zpsaocState)))))))
(define-fun
 x86-sub32
 ((lhs Dword) (rhs Dword) (state MachineState))
 MachineStateRes32
 (let ((eRes (bvsub lhs rhs)))
   (let ((zpsState (x86-standard-zps32 eRes state)))
     (let ((zpsaState
            (putflag AFIdx ((_ extract 4 4) (bvxor lhs rhs eRes)) zpsState)))
       (let ((zpsaoState
              (putflag
               OFIdx
               (bvand (x86-signdiff32 eRes lhs) (x86-signdiff32 lhs rhs))
               zpsaState)))
         (let ((zpsaocState
                (putflag CFIdx (bool-to-bit (bvult lhs rhs)) zpsaoState)))
           (concat eRes zpsaocState)))))))
(define-fun
 x86-dec8
 ((lhs Byte) (state MachineState))
 MachineStateRes8
 (let ((rhs #x01))
   (let ((eRes (bvsub lhs rhs)))
     (let ((zpsState (x86-standard-zps8 eRes state)))
       (let ((zpsaState
              (putflag AFIdx ((_ extract 4 4) (bvxor lhs rhs eRes)) zpsState)))
         (let ((zpsaoState
                (putflag
                 OFIdx
                 (bvand (x86-signdiff8 eRes lhs) (x86-signdiff8 lhs rhs))
                 zpsaState)))
           (concat eRes zpsaoState)))))))
(define-fun
 x86-dec16
 ((lhs Word) (state MachineState))
 MachineStateRes16
 (let ((rhs #x0001))
   (let ((eRes (bvsub lhs rhs)))
     (let ((zpsState (x86-standard-zps16 eRes state)))
       (let ((zpsaState
              (putflag AFIdx ((_ extract 4 4) (bvxor lhs rhs eRes)) zpsState)))
         (let ((zpsaoState
                (putflag
                 OFIdx
                 (bvand (x86-signdiff16 eRes lhs) (x86-signdiff16 lhs rhs))
                 zpsaState)))
           (concat eRes zpsaoState)))))))
(define-fun
 x86-dec32
 ((lhs Dword) (state MachineState))
 MachineStateRes32
 (let ((rhs #x00000001))
   (let ((eRes (bvsub lhs rhs)))
     (let ((zpsState (x86-standard-zps32 eRes state)))
       (let ((zpsaState
              (putflag AFIdx ((_ extract 4 4) (bvxor lhs rhs eRes)) zpsState)))
         (let ((zpsaoState
                (putflag
                 OFIdx
                 (bvand (x86-signdiff32 eRes lhs) (x86-signdiff32 lhs rhs))
                 zpsaState)))
           (concat eRes zpsaoState)))))))
(define-fun
 x86-shr8
 ((lhs Byte) (rhs Byte) (state MachineState))
 MachineStateRes8
 (let ((eCount (bvand rhs #x1F)))
   (let ((cCount (bool-to-bit (= eCount #x00))))
     (let ((eRes (bvlshr lhs eCount)))
       (let ((zpsState (x86-predicated-zps8 eRes eCount state)))
         (let ((zpsaState (x86-predicated-flag AFIdx cCount #b0 zpsState)))
           (let ((zpsaoState
                  (x86-predicated-flag
                   OFIdx
                   cCount
                   (ite
                    (= eCount #x01)
                    (bool-to-bit (bvslt lhs #x00))
                    #b0)
                   zpsaState)))
             (let ((zpsaocState
                    (x86-predicated-flag
                     CFIdx
                     cCount
                     ((_ extract 0 0) (bvlshr lhs (bvsub eCount #x01)))
                     zpsaoState)))
               (concat eRes zpsaoState)))))))))
(define-fun
 x86-shr16
 ((lhs Word) (rhs Byte) (state MachineState))
 MachineStateRes16
 (let ((eCount (bvand rhs #x1F)))
   (let ((cCount (bool-to-bit (= eCount #x00))))
     (let ((eRes (bvlshr lhs ((_ zero_extend 8) eCount))))
       (let ((zpsState (x86-predicated-zps16 eCount eRes state)))
         (let ((zpsaState (x86-predicated-flag AFIdx cCount #b0 zpsState)))
           (let ((zpsaoState
                  (x86-predicated-flag
                   OFIdx
                   cCount
                   (ite
                    (= eCount #x01)
                    (bool-to-bit (bvslt lhs #x0000))
                    #b0)
                   zpsaState)))
             (let ((zpsaocState
                    (x86-predicated-flag
                     CFIdx
                     cCount
                     ((_ extract 0 0)
                      (bvlshr lhs ((_ zero_extend 8) (bvsub eCount #x01))))
                     zpsaoState)))
               (concat eRes zpsaoState)))))))))
(define-fun
 x86-shr32
 ((lhs Dword) (rhs Byte) (state MachineState))
 MachineStateRes32
 (let ((eCount (bvand rhs #x1F)))
   (let ((cCount (bool-to-bit (= eCount #x00))))
     (let ((eRes (bvlshr lhs ((_ zero_extend 24) eCount))))
       (let ((zpsState (x86-predicated-zps32 eCount eRes state)))
         (let ((zpsaState (x86-predicated-flag AFIdx cCount #b0 zpsState)))
           (let ((zpsaoState
                  (x86-predicated-flag
                   OFIdx
                   cCount
                   (ite
                    (= eCount #x01)
                    (bool-to-bit (bvslt lhs #x00000000))
                    #b0)
                   zpsaState)))
             (let ((zpsaocState
                    (x86-predicated-flag
                     CFIdx
                     cCount
                     ((_ extract 0 0)
                      (bvlshr lhs ((_ zero_extend 24) (bvsub eCount #x01))))
                     zpsaoState)))
               (concat eRes zpsaoState)))))))))
(define-fun
 x86-sar8
 ((lhs Byte) (rhs Byte) (state MachineState))
 MachineStateRes8
 (let ((eCount (bvand rhs #x1F)))
   (let ((cCount (bool-to-bit (= eCount #x00))))
     (let ((eRes (bvashr lhs eCount)))
       (let ((zpsState (x86-predicated-zps8 eRes eCount state)))
         (let ((zpsaState (x86-predicated-flag AFIdx cCount #b0 zpsState)))
           (let ((zpsaoState
                  (x86-predicated-flag
                   OFIdx
                   cCount
                   (ite (= eCount #x01) #b0 #b1)
                   zpsaState)))
             (let ((zpsaocState
                    (x86-predicated-flag
                     CFIdx
                     cCount
                     ((_ extract 0 0) (bvashr lhs (bvsub eCount #x01)))
                     zpsaoState)))
               (concat eRes zpsaoState)))))))))
(define-fun
 x86-sar16
 ((lhs Word) (rhs Byte) (state MachineState))
 MachineStateRes16
 (let ((eCount (bvand rhs #x1F)))
   (let ((cCount (bool-to-bit (= eCount #x00))))
     (let ((eRes (bvashr lhs ((_ zero_extend 8) eCount))))
       (let ((zpsState (x86-predicated-zps16 eCount eRes state)))
         (let ((zpsaState (x86-predicated-flag AFIdx cCount #b0 zpsState)))
           (let ((zpsaoState
                  (x86-predicated-flag
                   OFIdx
                   cCount
                   (ite (= eCount #x01) #b0 #b1)
                   zpsaState)))
             (let ((zpsaocState
                    (x86-predicated-flag
                     CFIdx
                     cCount
                     ((_ extract 0 0)
                      (bvashr lhs ((_ zero_extend 8) (bvsub eCount #x01))))
                     zpsaoState)))
               (concat eRes zpsaoState)))))))))
(define-fun
 x86-sar32
 ((lhs Dword) (rhs Byte) (state MachineState))
 MachineStateRes32
 (let ((eCount (bvand rhs #x1F)))
   (let ((cCount (bool-to-bit (= eCount #x00))))
     (let ((eRes (bvashr lhs ((_ zero_extend 24) eCount))))
       (let ((zpsState (x86-predicated-zps32 eCount eRes state)))
         (let ((zpsaState (x86-predicated-flag AFIdx cCount #b0 zpsState)))
           (let ((zpsaoState
                  (x86-predicated-flag
                   OFIdx
                   cCount
                   (ite (= eCount #x01) #b0 #b1)
                   zpsaState)))
             (let ((zpsaocState
                    (x86-predicated-flag
                     CFIdx
                     cCount
                     ((_ extract 0 0)
                      (bvashr lhs ((_ zero_extend 24) (bvsub eCount #x01))))
                     zpsaoState)))
               (concat eRes zpsaoState)))))))))
(define-fun
 x86-shl8
 ((lhs Byte) (rhs Byte) (state MachineState))
 MachineStateRes8
 (let ((eCount (bvand rhs #x1F)))
   (let ((cCount (bool-to-bit (= eCount #x00))))
     (let ((eRes (bvshl lhs eCount)))
       (let ((zpsState (x86-predicated-zps8 eRes eCount state)))
         (let ((zpsaState (x86-predicated-flag AFIdx cCount #b0 zpsState)))
           (let ((zpsaoState
                  (x86-predicated-flag
                   OFIdx
                   cCount
                   (ite (= eCount #x01) (x86-signdiff8 lhs eRes) #b0)
                   zpsaState)))
             (let ((zpsaocState
                    (x86-predicated-flag
                     CFIdx
                     cCount
                     (bool-to-bit
                      (bvslt (bvshl lhs (bvsub eCount #x01)) #x00))
                     zpsaoState)))
               (concat eRes zpsaoState)))))))))
(define-fun
 x86-shl16
 ((lhs Word) (rhs Byte) (state MachineState))
 MachineStateRes16
 (let ((eCount (bvand rhs #x1F)))
   (let ((cCount (bool-to-bit (= eCount #x00))))
     (let ((eRes (bvshl lhs ((_ zero_extend 8) eCount))))
       (let ((zpsState (x86-predicated-zps16 eCount eRes state)))
         (let ((zpsaState (x86-predicated-flag AFIdx cCount #b0 zpsState)))
           (let ((zpsaoState
                  (x86-predicated-flag
                   OFIdx
                   cCount
                   (ite (= eCount #x01) (x86-signdiff16 lhs eRes) #b0)
                   zpsaState)))
             (let ((zpsaocState
                    (x86-predicated-flag
                     CFIdx
                     cCount
                     (bool-to-bit
                      (bvslt
                       (bvshl lhs ((_ zero_extend 8) (bvsub eCount #x01)))
                       #x0000))
                     zpsaoState)))
               (concat eRes zpsaoState)))))))))
(define-fun
 x86-shl32
 ((lhs Dword) (rhs Byte) (state MachineState))
 MachineStateRes32
 (let ((eCount (bvand rhs #x1F)))
   (let ((cCount (bool-to-bit (= eCount #x00))))
     (let ((eRes (bvshl lhs ((_ zero_extend 24) eCount))))
       (let ((zpsState (x86-predicated-zps32 eCount eRes state)))
         (let ((zpsaState (x86-predicated-flag AFIdx cCount #b0 zpsState)))
           (let ((zpsaoState
                  (x86-predicated-flag
                   OFIdx
                   cCount
                   (ite (= eCount #x01) (x86-signdiff32 lhs eRes) #b0)
                   zpsaState)))
             (let ((zpsaocState
                    (x86-predicated-flag
                     CFIdx
                     cCount
                     (bool-to-bit
                      (bvslt
                       (bvshl lhs ((_ zero_extend 24) (bvsub eCount #x01)))
                       #x00000000))
                     zpsaoState)))
               (concat eRes zpsaoState)))))))))
(define-fun
 x86-rol8
 ((lhs Byte) (rhs Byte) (state MachineState))
 MachineStateRes8
 (let ((eCount (bvand rhs #x1F)))
   (let ((cCount (bool-to-bit (= eCount #x00))))
     (let ((eCount2 (bvand rhs #x07)))
       (let ((eRes
              (ite
               (= eCount2 #x00)
               lhs
               (bvor
                (bvshl lhs eCount2)
                (bvlshr lhs (bvsub #x08 eCount2))))))
         (let ((oState
                (x86-predicated-flag
                 OFIdx
                 cCount
                 (ite (= eCount #x01) (x86-signdiff8 lhs eRes) #b0)
                 state)))
           (let ((ocState
                  (x86-predicated-flag
                   CFIdx
                   cCount
                   ((_ extract 0 0) eRes)
                   oState)))
             (concat eRes ocState))))))))
(define-fun
 x86-rol16
 ((lhs Word) (rhs Byte) (state MachineState))
 MachineStateRes16
 (let ((eCount (bvand rhs #x1F)))
   (let ((cCount (bool-to-bit (= eCount #x01))))
     (let ((eCount2 (bvand rhs #x0F)))
       (let ((eCount2Ext ((_ zero_extend 8) (bvand rhs #x0F))))
         (let ((eRes
                (ite
                 (= eCount2 #x00)
                 lhs
                 (bvor
                  (bvshl lhs eCount2Ext)
                  (bvlshr lhs (bvsub #x0008 eCount2Ext))))))
           (let ((oState
                  (x86-predicated-flag
                   OFIdx
                   cCount
                   (ite (= eCount #x01) (x86-signdiff16 lhs eRes) #b0)
                   state)))
             (let ((ocState
                    (x86-predicated-flag
                     CFIdx
                     cCount
                     ((_ extract 0 0) eRes)
                     oState)))
               (concat eRes ocState)))))))))
(define-fun
 x86-rol32
 ((lhs Dword) (rhs Byte) (state MachineState))
 MachineStateRes32
 (let ((eCount (bvand rhs #x1F)))
   (let ((cCount (bool-to-bit (= eCount #x01))))
     (let ((eCount2 (bvand rhs #x1F)))
       (let ((eCount2Ext ((_ zero_extend 24) (bvand rhs #x1F))))
         (let ((eRes
                (ite
                 (= eCount2 #x00)
                 lhs
                 (bvor
                  (bvshl lhs eCount2Ext)
                  (bvlshr lhs (bvsub #x00000008 eCount2Ext))))))
           (let ((oState
                  (x86-predicated-flag
                   OFIdx
                   cCount
                   (ite (= eCount #x01) (x86-signdiff32 lhs eRes) #b0)
                   state)))
             (let ((ocState
                    (x86-predicated-flag
                     CFIdx
                     cCount
                     ((_ extract 0 0) eRes)
                     oState)))
               (concat eRes ocState)))))))))
(define-fun
 x86-ror8
 ((lhs Byte) (rhs Byte) (state MachineState))
 MachineStateRes8
 (let ((eCount (bvand rhs #x1F)))
   (let ((cCount (bool-to-bit (= eCount #x00))))
     (let ((eCount2 (bvand rhs #x07)))
       (let ((eRes
              (ite
               (= eCount2 #x00)
               lhs
               (bvor
                (bvlshr lhs eCount2)
                (bvshl lhs (bvsub #x08 eCount2))))))
         (let ((oState
                (x86-predicated-flag
                 OFIdx
                 cCount
                 (ite (= eCount #x01) (x86-signdiff8 lhs eRes) #b0)
                 state)))
           (let ((ocState
                  (x86-predicated-flag
                   CFIdx
                   cCount
                   (bool-to-bit (bvslt eRes #x00))
                   oState)))
             (concat eRes ocState))))))))
(define-fun
 x86-ror16
 ((lhs Word) (rhs Byte) (state MachineState))
 MachineStateRes16
 (let ((eCount (bvand rhs #x1F)))
   (let ((cCount (bool-to-bit (= eCount #x01))))
     (let ((eCount2 (bvand rhs #x0F)))
       (let ((eCount2Ext ((_ zero_extend 8) (bvand rhs #x0F))))
         (let ((eRes
                (ite
                 (= eCount2 #x00)
                 lhs
                 (bvor
                  (bvlshr lhs eCount2Ext)
                  (bvshl lhs (bvsub #x0008 eCount2Ext))))))
           (let ((oState
                  (x86-predicated-flag
                   OFIdx
                   cCount
                   (ite (= eCount #x01) (x86-signdiff16 lhs eRes) #b0)
                   state)))
             (let ((ocState
                    (x86-predicated-flag
                     CFIdx
                     cCount
                     (bool-to-bit (bvslt eRes #x0000))
                     oState)))
               (concat eRes ocState)))))))))
(define-fun
 x86-ror32
 ((lhs Dword) (rhs Byte) (state MachineState))
 MachineStateRes32
 (let ((eCount (bvand rhs #x1F)))
   (let ((cCount (bool-to-bit (= eCount #x01))))
     (let ((eCount2 (bvand rhs #x1F)))
       (let ((eCount2Ext ((_ zero_extend 24) (bvand rhs #x1F))))
         (let ((eRes
                (ite
                 (= eCount2 #x00)
                 lhs
                 (bvor
                  (bvlshr lhs eCount2Ext)
                  (bvshl lhs (bvsub #x00000008 eCount2Ext))))))
           (let ((oState
                  (x86-predicated-flag
                   OFIdx
                   cCount
                   (ite (= eCount #x01) (x86-signdiff32 lhs eRes) #b0)
                   state)))
             (let ((ocState
                    (x86-predicated-flag
                     CFIdx
                     cCount
                     (bool-to-bit (bvslt eRes #x00000000))
                     oState)))
               (concat eRes ocState)))))))))
(define-fun
 x86-range0x1F-mod9
 ((b Byte))
 Byte
 (ite
  (bvslt b #x09)
  b
  (ite
   (bvslt b #x12)
   (bvsub b #x09)
   (ite (bvslt b #x1B) (bvsub b #x12) (bvsub b #x1B)))))
(define-fun
 x86-range0x1F-mod17
 ((b Byte))
 Byte
 (ite (bvslt b #x11) b (bvsub b #x11)))
(define-fun
 x86-rcl8
 ((lhs Byte) (rhs Byte) (state MachineState))
 MachineStateRes8
 (let ((eCount (x86-range0x1F-mod9 (bvand rhs #x1F))))
   (let ((cCount (bool-to-bit (= eCount #x00))))
     (let ((eCountExt eCount))
       (let ((eCountM1 (bvsub eCount #x01)))
         (let ((eCFExt ((_ zero_extend 7) (getflag CFIdx state))))
           (let ((eRes
                  (ite
                   (= eCount #x00)
                   lhs
                   (bvor
                    (bvshl (bvor (bvshl lhs #x01) eCFExt) eCountM1)
                    (bvlshr lhs (bvsub #x08 eCountM1))))))
             (let ((oState
                    (x86-predicated-flag
                     OFIdx
                     cCount
                     (ite (= eCount #x01) (x86-signdiff8 lhs eRes) #b0)
                     state)))
               (let ((ocState
                      (x86-predicated-flag
                       CFIdx
                       cCount
                       ((_ extract 0 0) (bvlshr lhs (bvsub #x08 eCountExt)))
                       oState)))
                 (concat eRes ocState))))))))))
(define-fun
 x86-rcl16
 ((lhs Word) (rhs Byte) (state MachineState))
 MachineStateRes16
 (let ((eCount (x86-range0x1F-mod17 (bvand rhs #x1F))))
   (let ((cCount (bool-to-bit (= eCount #x00))))
     (let ((eCountExt ((_ zero_extend 8) eCount)))
       (let ((eCountM1 ((_ zero_extend 8) (bvsub eCount #x01))))
         (let ((eCFExt ((_ zero_extend 15) (getflag CFIdx state))))
           (let ((eRes
                  (ite
                   (= eCount #x00)
                   lhs
                   (bvor
                    (bvshl (bvor (bvshl lhs #x0001) eCFExt) eCountM1)
                    (bvlshr lhs (bvsub #x0010 eCountM1))))))
             (let ((oState
                    (x86-predicated-flag
                     OFIdx
                     cCount
                     (ite (= eCount #x01) (x86-signdiff16 lhs eRes) #b0)
                     state)))
               (let ((ocState
                      (x86-predicated-flag
                       CFIdx
                       cCount
                       ((_ extract 0 0)
                        (bvlshr lhs (bvsub #x0010 eCountExt)))
                       oState)))
                 (concat eRes ocState))))))))))
(define-fun
 x86-rcl32
 ((lhs Dword) (rhs Byte) (state MachineState))
 MachineStateRes32
 (let ((eCount (bvand rhs #x1F)))
   (let ((cCount (bool-to-bit (= eCount #x00))))
     (let ((eCountExt ((_ zero_extend 24) eCount)))
       (let ((eCountM1 ((_ zero_extend 24) (bvsub eCount #x01))))
         (let ((eCFExt ((_ zero_extend 31) (getflag CFIdx state))))
           (let ((eRes
                  (ite
                   (= eCount #x00)
                   lhs
                   (bvor
                    (bvshl (bvor (bvshl lhs #x00000001) eCFExt) eCountM1)
                    (bvlshr lhs (bvsub #x00000020 eCountM1))))))
             (let ((oState
                    (x86-predicated-flag
                     OFIdx
                     cCount
                     (ite (= eCount #x01) (x86-signdiff32 lhs eRes) #b0)
                     state)))
               (let ((ocState
                      (x86-predicated-flag
                       CFIdx
                       cCount
                       ((_ extract 0 0)
                        (bvlshr lhs (bvsub #x00000020 eCountExt)))
                       oState)))
                 (concat eRes ocState))))))))))
(define-fun
 x86-rcr8
 ((lhs Byte) (rhs Byte) (state MachineState))
 MachineStateRes8
 (let ((eCount (x86-range0x1F-mod9 (bvand rhs #x1F))))
   (let ((cCount (bool-to-bit (= eCount #x00))))
     (let ((eCountExt eCount))
       (let ((eCountM1 (bvsub eCount #x01)))
         (let ((eCFExt ((_ zero_extend 7) (getflag CFIdx state))))
           (let ((eRes
                  (ite
                   (= eCount #x00)
                   lhs
                   (bvor
                    (bvlshr
                     (bvor (bvshl eCFExt #x07) (bvlshr lhs #x01))
                     eCountM1)
                    (bvshl lhs (bvsub #x08 eCountM1))))))
             (let ((oState
                    (x86-predicated-flag
                     OFIdx
                     cCount
                     (ite (= eCount #x01) (x86-signdiff8 lhs eRes) #b0)
                     state)))
               (let ((ocState
                      (x86-predicated-flag
                       CFIdx
                       cCount
                       ((_ extract 0 0) (bvlshr lhs eCountM1))
                       oState)))
                 (concat eRes ocState))))))))))
(define-fun
 x86-rcr16
 ((lhs Word) (rhs Byte) (state MachineState))
 MachineStateRes16
 (let ((eCount (x86-range0x1F-mod17 (bvand rhs #x1F))))
   (let ((cCount (bool-to-bit (= eCount #x00))))
     (let ((eCountExt ((_ zero_extend 8) eCount)))
       (let ((eCountM1 ((_ zero_extend 8) (bvsub eCount #x01))))
         (let ((eCFExt ((_ zero_extend 15) (getflag CFIdx state))))
           (let ((eRes
                  (ite
                   (= eCount #x00)
                   lhs
                   (bvor
                    (bvlshr
                     (bvor (bvshl eCFExt #x000F) (bvlshr lhs #x0001))
                     eCountM1)
                    (bvshl lhs (bvsub #x0010 eCountM1))))))
             (let ((oState
                    (x86-predicated-flag
                     OFIdx
                     cCount
                     (ite (= eCount #x01) (x86-signdiff16 lhs eRes) #b0)
                     state)))
               (let ((ocState
                      (x86-predicated-flag
                       CFIdx
                       cCount
                       ((_ extract 0 0) (bvlshr lhs eCountM1))
                       oState)))
                 (concat eRes ocState))))))))))
(define-fun
 x86-rcr32
 ((lhs Dword) (rhs Byte) (state MachineState))
 MachineStateRes32
 (let ((eCount (bvand rhs #x1F)))
   (let ((cCount (bool-to-bit (= eCount #x00))))
     (let ((eCountExt ((_ zero_extend 24) eCount)))
       (let ((eCountM1 ((_ zero_extend 24) (bvsub eCount #x01))))
         (let ((eCFExt ((_ zero_extend 31) (getflag CFIdx state))))
           (let ((eRes
                  (ite
                   (= eCount #x00)
                   lhs
                   (bvor
                    (bvlshr
                     (bvor
                      (bvshl eCFExt #x0000001F)
                      (bvlshr lhs #x00000001))
                     eCountM1)
                    (bvshl lhs (bvsub #x0000001F eCountM1))))))
             (let ((oState
                    (x86-predicated-flag
                     OFIdx
                     cCount
                     (ite (= eCount #x01) (x86-signdiff32 lhs eRes) #b0)
                     state)))
               (let ((ocState
                      (x86-predicated-flag
                       CFIdx
                       cCount
                       ((_ extract 0 0) (bvlshr lhs eCountM1))
                       oState)))
                 (concat eRes ocState))))))))))
(define-fun
 x86-badstate
 ((state MachineState))
 DecodedMachineState
 (concat #x0 state))
(define-fun
 x86-insnlength
 ((base (_ BitVec 4)) (opsize Bit) (addrsize Bit))
 (_ BitVec 4)
 (bvadd base ((_ zero_extend 3) opsize) ((_ zero_extend 3) addrsize)))
(define-fun
 x86-done-insn
 ((state MachineState) (base (_ BitVec 4)) (opsize Bit) (addrsize Bit))
 DecodedMachineState
 (concat (x86-insnlength base opsize addrsize) state))
(define-fun
 x86-singlebyte-0x0F-0x00
 ((eip Byte) (state MachineState) (opsize Bit) (addrsize Bit))
 DecodedMachineState
 (let ((opcode (get-byte eip)))
   (let ((eip0 (bvadd eip #x01)))
     (ite
      (= #x00 opcode)
      (let ((modrm (get-byte eip0)))
        (let ((extra (= ((_ extract 7 6) modrm) #b11)))
          (let ((lhsidx ((_ extract 2 0) modrm)))
            (let ((rhsidx ((_ extract 5 3) modrm)))
              (let ((lhs (getreg8 lhsidx state)))
                (let ((rhs (getreg8 rhsidx state)))
                  (let ((mrr8 (x86-add8 lhs rhs state)))
                    (let ((ms (x86-store-res8 mrr8 lhsidx)))
                      (let ((ms1 (putextra (bool-to-bit extra) ms)))
                        (x86-done-insn ms1 #x2 opsize addrsize))))))))))
      (ite
       (= #x01 opcode)
       (let ((modrm (get-byte eip0)))
         (ite
          (= #b1 opsize)
          (let ((extra (= ((_ extract 7 6) modrm) #b11)))
            (let ((lhsidx ((_ extract 2 0) modrm)))
              (let ((rhsidx ((_ extract 5 3) modrm)))
                (let ((lhs (getreg16 lhsidx state)))
                  (let ((rhs (getreg16 rhsidx state)))
                    (let ((mrr16 (x86-add16 lhs rhs state)))
                      (let ((ms (x86-store-res16 mrr16 lhsidx)))
                        (let ((ms1 (putextra (bool-to-bit extra) ms)))
                          (x86-done-insn ms1 #x2 opsize addrsize)))))))))
          (let ((extra (= ((_ extract 7 6) modrm) #b11)))
            (let ((lhsidx ((_ extract 2 0) modrm)))
              (let ((rhsidx ((_ extract 5 3) modrm)))
                (let ((lhs (getreg32 lhsidx state)))
                  (let ((rhs (getreg32 rhsidx state)))
                    (let ((mrr32 (x86-add32 lhs rhs state)))
                      (let ((ms (x86-store-res32 mrr32 lhsidx)))
                        (let ((ms1 (putextra (bool-to-bit extra) ms)))
                          (x86-done-insn ms1 #x2 opsize addrsize)))))))))))
       (ite
        (= #x02 opcode)
        (let ((modrm (get-byte eip0)))
          (let ((extra (= ((_ extract 7 6) modrm) #b11)))
            (let ((lhsidx ((_ extract 5 3) modrm)))
              (let ((rhsidx ((_ extract 2 0) modrm)))
                (let ((lhs (getreg8 lhsidx state)))
                  (let ((rhs (getreg8 rhsidx state)))
                    (let ((mrr8 (x86-add8 lhs rhs state)))
                      (let ((ms (x86-store-res8 mrr8 lhsidx)))
                        (let ((ms1 (putextra (bool-to-bit extra) ms)))
                          (x86-done-insn ms1 #x2 opsize addrsize))))))))))
        (ite
         (= #x03 opcode)
         (let ((modrm (get-byte eip0)))
           (ite
            (= #b1 opsize)
            (let ((extra (= ((_ extract 7 6) modrm) #b11)))
              (let ((lhsidx ((_ extract 5 3) modrm)))
                (let ((rhsidx ((_ extract 2 0) modrm)))
                  (let ((lhs (getreg16 lhsidx state)))
                    (let ((rhs (getreg16 rhsidx state)))
                      (let ((mrr16 (x86-add16 lhs rhs state)))
                        (let ((ms (x86-store-res16 mrr16 lhsidx)))
                          (let ((ms1 (putextra (bool-to-bit extra) ms)))
                            (x86-done-insn ms1 #x2 opsize addrsize)))))))))
            (let ((extra (= ((_ extract 7 6) modrm) #b11)))
              (let ((lhsidx ((_ extract 5 3) modrm)))
                (let ((rhsidx ((_ extract 2 0) modrm)))
                  (let ((lhs (getreg32 lhsidx state)))
                    (let ((rhs (getreg32 rhsidx state)))
                      (let ((mrr32 (x86-add32 lhs rhs state)))
                        (let ((ms (x86-store-res32 mrr32 lhsidx)))
                          (let ((ms1 (putextra (bool-to-bit extra) ms)))
                            (x86-done-insn ms1 #x2 opsize addrsize)))))))))))
         (ite
          (= #x04 opcode)
          (let ((lhs (getreg8 ALIdx state)))
            (let ((rhs (get-byte eip0)))
              (let ((mrr8 (x86-add8 lhs rhs state)))
                (let ((ms (x86-store-res8 mrr8 ALIdx)))
                  (x86-done-insn ms #x2 opsize addrsize)))))
          (ite
           (= #x05 opcode)
           (ite
            (= #b1 opsize)
            (let ((lhs (getreg16 AxIdx state)))
              (let ((rhs (get-word eip0)))
                (let ((mrr16 (x86-add16 lhs rhs state)))
                  (let ((ms (x86-store-res16 mrr16 AxIdx)))
                    (x86-done-insn ms #x3 opsize addrsize)))))
            (let ((lhs (getreg32 EaxIdx state)))
              (let ((rhs (get-dword eip0)))
                (let ((mrr32 (x86-add32 lhs rhs state)))
                  (let ((ms (x86-store-res32 mrr32 EaxIdx)))
                    (x86-done-insn ms #x5 opsize addrsize))))))
           (ite
            (= #x06 opcode)
            (x86-badstate state)
            (ite
             (= #x07 opcode)
             (x86-badstate state)
             (ite
              (= #x08 opcode)
              (let ((modrm (get-byte eip0)))
                (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                  (let ((lhsidx ((_ extract 2 0) modrm)))
                    (let ((rhsidx ((_ extract 5 3) modrm)))
                      (let ((lhs (getreg8 lhsidx state)))
                        (let ((rhs (getreg8 rhsidx state)))
                          (let ((mrr8 (x86-or8 lhs rhs state)))
                            (let ((ms (x86-store-res8 mrr8 lhsidx)))
                              (let ((ms1 (putextra (bool-to-bit extra) ms)))
                                (x86-done-insn
                                 ms1
                                 #x2
                                 opsize
                                 addrsize))))))))))
              (ite
               (= #x09 opcode)
               (let ((modrm (get-byte eip0)))
                 (ite
                  (= #b1 opsize)
                  (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                    (let ((lhsidx ((_ extract 2 0) modrm)))
                      (let ((rhsidx ((_ extract 5 3) modrm)))
                        (let ((lhs (getreg16 lhsidx state)))
                          (let ((rhs (getreg16 rhsidx state)))
                            (let ((mrr16 (x86-or16 lhs rhs state)))
                              (let ((ms (x86-store-res16 mrr16 lhsidx)))
                                (let ((ms1 (putextra (bool-to-bit extra) ms)))
                                  (x86-done-insn
                                   ms1
                                   #x2
                                   opsize
                                   addrsize)))))))))
                  (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                    (let ((lhsidx ((_ extract 2 0) modrm)))
                      (let ((rhsidx ((_ extract 5 3) modrm)))
                        (let ((lhs (getreg32 lhsidx state)))
                          (let ((rhs (getreg32 rhsidx state)))
                            (let ((mrr32 (x86-or32 lhs rhs state)))
                              (let ((ms (x86-store-res32 mrr32 lhsidx)))
                                (let ((ms1 (putextra (bool-to-bit extra) ms)))
                                  (x86-done-insn
                                   ms1
                                   #x2
                                   opsize
                                   addrsize)))))))))))
               (ite
                (= #x0A opcode)
                (let ((modrm (get-byte eip0)))
                  (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                    (let ((lhsidx ((_ extract 5 3) modrm)))
                      (let ((rhsidx ((_ extract 2 0) modrm)))
                        (let ((lhs (getreg8 lhsidx state)))
                          (let ((rhs (getreg8 rhsidx state)))
                            (let ((mrr8 (x86-or8 lhs rhs state)))
                              (let ((ms (x86-store-res8 mrr8 lhsidx)))
                                (let ((ms1 (putextra (bool-to-bit extra) ms)))
                                  (x86-done-insn
                                   ms1
                                   #x2
                                   opsize
                                   addrsize))))))))))
                (ite
                 (= #x0B opcode)
                 (let ((modrm (get-byte eip0)))
                   (ite
                    (= #b1 opsize)
                    (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                      (let ((lhsidx ((_ extract 5 3) modrm)))
                        (let ((rhsidx ((_ extract 2 0) modrm)))
                          (let ((lhs (getreg16 lhsidx state)))
                            (let ((rhs (getreg16 rhsidx state)))
                              (let ((mrr16 (x86-or16 lhs rhs state)))
                                (let ((ms (x86-store-res16 mrr16 lhsidx)))
                                  (let ((ms1
                                         (putextra (bool-to-bit extra) ms)))
                                    (x86-done-insn
                                     ms1
                                     #x2
                                     opsize
                                     addrsize)))))))))
                    (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                      (let ((lhsidx ((_ extract 5 3) modrm)))
                        (let ((rhsidx ((_ extract 2 0) modrm)))
                          (let ((lhs (getreg32 lhsidx state)))
                            (let ((rhs (getreg32 rhsidx state)))
                              (let ((mrr32 (x86-or32 lhs rhs state)))
                                (let ((ms (x86-store-res32 mrr32 lhsidx)))
                                  (let ((ms1
                                         (putextra (bool-to-bit extra) ms)))
                                    (x86-done-insn
                                     ms1
                                     #x2
                                     opsize
                                     addrsize)))))))))))
                 (ite
                  (= #x0C opcode)
                  (let ((lhs (getreg8 ALIdx state)))
                    (let ((rhs (get-byte (bvadd eip #x01))))
                      (let ((mrr8 (x86-or8 lhs rhs state)))
                        (let ((ms (x86-store-res8 mrr8 ALIdx)))
                          (x86-done-insn ms #x2 opsize addrsize)))))
                  (ite
                   (= #x0D opcode)
                   (ite
                    (= #b1 opsize)
                    (let ((lhs (getreg16 AxIdx state)))
                      (let ((rhs (get-word eip0)))
                        (let ((mrr16 (x86-or16 lhs rhs state)))
                          (let ((ms (x86-store-res16 mrr16 AxIdx)))
                            (x86-done-insn ms #x3 opsize addrsize)))))
                    (let ((lhs (getreg32 EaxIdx state)))
                      (let ((rhs (get-dword eip0)))
                        (let ((mrr32 (x86-or32 lhs rhs state)))
                          (let ((ms (x86-store-res32 mrr32 EaxIdx)))
                            (x86-done-insn ms #x5 opsize addrsize))))))
                   (ite
                    (= #x0E opcode)
                    (x86-badstate state)
                    (x86-badstate state)))))))))))))))))))
(define-fun
 x86-singlebyte-0x1F-0x10
 ((eip Byte) (state MachineState) (opsize Bit) (addrsize Bit))
 DecodedMachineState
 (let ((opcode (get-byte eip)))
   (let ((eip0 (bvadd eip #x01)))
     (ite
      (= #x10 opcode)
      (let ((modrm (get-byte eip0)))
        (let ((extra (= ((_ extract 7 6) modrm) #b11)))
          (let ((lhsidx ((_ extract 2 0) modrm)))
            (let ((rhsidx ((_ extract 5 3) modrm)))
              (let ((lhs (getreg8 lhsidx state)))
                (let ((rhs (getreg8 rhsidx state)))
                  (let ((mrr8 (x86-adc8 lhs rhs state)))
                    (let ((ms (x86-store-res8 mrr8 lhsidx)))
                      (let ((ms1 (putextra (bool-to-bit extra) ms)))
                        (x86-done-insn ms1 #x2 opsize addrsize))))))))))
      (ite
       (= #x11 opcode)
       (let ((modrm (get-byte eip0)))
         (ite
          (= #b1 opsize)
          (let ((extra (= ((_ extract 7 6) modrm) #b11)))
            (let ((lhsidx ((_ extract 2 0) modrm)))
              (let ((rhsidx ((_ extract 5 3) modrm)))
                (let ((lhs (getreg16 lhsidx state)))
                  (let ((rhs (getreg16 rhsidx state)))
                    (let ((mrr16 (x86-adc16 lhs rhs state)))
                      (let ((ms (x86-store-res16 mrr16 lhsidx)))
                        (let ((ms1 (putextra (bool-to-bit extra) ms)))
                          (x86-done-insn ms1 #x2 opsize addrsize)))))))))
          (let ((extra (= ((_ extract 7 6) modrm) #b11)))
            (let ((lhsidx ((_ extract 2 0) modrm)))
              (let ((rhsidx ((_ extract 5 3) modrm)))
                (let ((lhs (getreg32 lhsidx state)))
                  (let ((rhs (getreg32 rhsidx state)))
                    (let ((mrr32 (x86-adc32 lhs rhs state)))
                      (let ((ms (x86-store-res32 mrr32 lhsidx)))
                        (let ((ms1 (putextra (bool-to-bit extra) ms)))
                          (x86-done-insn ms1 #x2 opsize addrsize)))))))))))
       (ite
        (= #x12 opcode)
        (let ((modrm (get-byte eip0)))
          (let ((extra (= ((_ extract 7 6) modrm) #b11)))
            (let ((lhsidx ((_ extract 5 3) modrm)))
              (let ((rhsidx ((_ extract 2 0) modrm)))
                (let ((lhs (getreg8 lhsidx state)))
                  (let ((rhs (getreg8 rhsidx state)))
                    (let ((mrr8 (x86-adc8 lhs rhs state)))
                      (let ((ms (x86-store-res8 mrr8 lhsidx)))
                        (let ((ms1 (putextra (bool-to-bit extra) ms)))
                          (x86-done-insn ms1 #x2 opsize addrsize))))))))))
        (ite
         (= #x13 opcode)
         (let ((modrm (get-byte eip0)))
           (ite
            (= #b1 opsize)
            (let ((extra (= ((_ extract 7 6) modrm) #b11)))
              (let ((lhsidx ((_ extract 5 3) modrm)))
                (let ((rhsidx ((_ extract 2 0) modrm)))
                  (let ((lhs (getreg16 lhsidx state)))
                    (let ((rhs (getreg16 rhsidx state)))
                      (let ((mrr16 (x86-adc16 lhs rhs state)))
                        (let ((ms (x86-store-res16 mrr16 lhsidx)))
                          (let ((ms1 (putextra (bool-to-bit extra) ms)))
                            (x86-done-insn ms1 #x2 opsize addrsize)))))))))
            (let ((extra (= ((_ extract 7 6) modrm) #b11)))
              (let ((lhsidx ((_ extract 5 3) modrm)))
                (let ((rhsidx ((_ extract 2 0) modrm)))
                  (let ((lhs (getreg32 lhsidx state)))
                    (let ((rhs (getreg32 rhsidx state)))
                      (let ((mrr32 (x86-adc32 lhs rhs state)))
                        (let ((ms (x86-store-res32 mrr32 lhsidx)))
                          (let ((ms1 (putextra (bool-to-bit extra) ms)))
                            (x86-done-insn ms1 #x2 opsize addrsize)))))))))))
         (ite
          (= #x14 opcode)
          (let ((lhs (getreg8 ALIdx state)))
            (let ((rhs (get-byte eip0)))
              (let ((mrr8 (x86-adc8 lhs rhs state)))
                (let ((ms (x86-store-res8 mrr8 ALIdx)))
                  (x86-done-insn ms #x2 opsize addrsize)))))
          (ite
           (= #x15 opcode)
           (ite
            (= #b1 opsize)
            (let ((lhs (getreg16 AxIdx state)))
              (let ((rhs (get-word eip0)))
                (let ((mrr16 (x86-adc16 lhs rhs state)))
                  (let ((ms (x86-store-res16 mrr16 AxIdx)))
                    (x86-done-insn ms #x3 opsize addrsize)))))
            (let ((lhs (getreg32 EaxIdx state)))
              (let ((rhs (get-dword eip0)))
                (let ((mrr32 (x86-adc32 lhs rhs state)))
                  (let ((ms (x86-store-res32 mrr32 EaxIdx)))
                    (x86-done-insn ms #x5 opsize addrsize))))))
           (ite
            (= #x16 opcode)
            (x86-badstate state)
            (ite
             (= #x17 opcode)
             (x86-badstate state)
             (ite
              (= #x18 opcode)
              (let ((modrm (get-byte eip0)))
                (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                  (let ((lhsidx ((_ extract 2 0) modrm)))
                    (let ((rhsidx ((_ extract 5 3) modrm)))
                      (let ((lhs (getreg8 lhsidx state)))
                        (let ((rhs (getreg8 rhsidx state)))
                          (let ((mrr8 (x86-sbb8 lhs rhs state)))
                            (let ((ms (x86-store-res8 mrr8 lhsidx)))
                              (let ((ms1 (putextra (bool-to-bit extra) ms)))
                                (x86-done-insn
                                 ms1
                                 #x2
                                 opsize
                                 addrsize))))))))))
              (ite
               (= #x19 opcode)
               (let ((modrm (get-byte eip0)))
                 (ite
                  (= #b1 opsize)
                  (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                    (let ((lhsidx ((_ extract 2 0) modrm)))
                      (let ((rhsidx ((_ extract 5 3) modrm)))
                        (let ((lhs (getreg16 lhsidx state)))
                          (let ((rhs (getreg16 rhsidx state)))
                            (let ((mrr16 (x86-sbb16 lhs rhs state)))
                              (let ((ms (x86-store-res16 mrr16 lhsidx)))
                                (let ((ms1 (putextra (bool-to-bit extra) ms)))
                                  (x86-done-insn
                                   ms1
                                   #x2
                                   opsize
                                   addrsize)))))))))
                  (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                    (let ((lhsidx ((_ extract 2 0) modrm)))
                      (let ((rhsidx ((_ extract 5 3) modrm)))
                        (let ((lhs (getreg32 lhsidx state)))
                          (let ((rhs (getreg32 rhsidx state)))
                            (let ((mrr32 (x86-sbb32 lhs rhs state)))
                              (let ((ms (x86-store-res32 mrr32 lhsidx)))
                                (let ((ms1 (putextra (bool-to-bit extra) ms)))
                                  (x86-done-insn
                                   ms1
                                   #x2
                                   opsize
                                   addrsize)))))))))))
               (ite
                (= #x1A opcode)
                (let ((modrm (get-byte eip0)))
                  (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                    (let ((lhsidx ((_ extract 5 3) modrm)))
                      (let ((rhsidx ((_ extract 2 0) modrm)))
                        (let ((lhs (getreg8 lhsidx state)))
                          (let ((rhs (getreg8 rhsidx state)))
                            (let ((mrr8 (x86-sbb8 lhs rhs state)))
                              (let ((ms (x86-store-res8 mrr8 lhsidx)))
                                (let ((ms1 (putextra (bool-to-bit extra) ms)))
                                  (x86-done-insn
                                   ms1
                                   #x2
                                   opsize
                                   addrsize))))))))))
                (ite
                 (= #x1B opcode)
                 (let ((modrm (get-byte eip0)))
                   (ite
                    (= #b1 opsize)
                    (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                      (let ((lhsidx ((_ extract 5 3) modrm)))
                        (let ((rhsidx ((_ extract 2 0) modrm)))
                          (let ((lhs (getreg16 lhsidx state)))
                            (let ((rhs (getreg16 rhsidx state)))
                              (let ((mrr16 (x86-sbb16 lhs rhs state)))
                                (let ((ms (x86-store-res16 mrr16 lhsidx)))
                                  (let ((ms1
                                         (putextra (bool-to-bit extra) ms)))
                                    (x86-done-insn
                                     ms1
                                     #x2
                                     opsize
                                     addrsize)))))))))
                    (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                      (let ((lhsidx ((_ extract 5 3) modrm)))
                        (let ((rhsidx ((_ extract 2 0) modrm)))
                          (let ((lhs (getreg32 lhsidx state)))
                            (let ((rhs (getreg32 rhsidx state)))
                              (let ((mrr32 (x86-sbb32 lhs rhs state)))
                                (let ((ms (x86-store-res32 mrr32 lhsidx)))
                                  (let ((ms1
                                         (putextra (bool-to-bit extra) ms)))
                                    (x86-done-insn
                                     ms1
                                     #x2
                                     opsize
                                     addrsize)))))))))))
                 (ite
                  (= #x1C opcode)
                  (let ((lhs (getreg8 ALIdx state)))
                    (let ((rhs (get-byte (bvadd eip #x01))))
                      (let ((mrr8 (x86-sbb8 lhs rhs state)))
                        (let ((ms (x86-store-res8 mrr8 ALIdx)))
                          (x86-done-insn ms #x2 opsize addrsize)))))
                  (ite
                   (= #x1D opcode)
                   (ite
                    (= #b1 opsize)
                    (let ((lhs (getreg16 AxIdx state)))
                      (let ((rhs (get-word eip0)))
                        (let ((mrr16 (x86-sbb16 lhs rhs state)))
                          (let ((ms (x86-store-res16 mrr16 AxIdx)))
                            (x86-done-insn ms #x3 opsize addrsize)))))
                    (let ((lhs (getreg32 EaxIdx state)))
                      (let ((rhs (get-dword eip0)))
                        (let ((mrr32 (x86-sbb32 lhs rhs state)))
                          (let ((ms (x86-store-res32 mrr32 EaxIdx)))
                            (x86-done-insn ms #x5 opsize addrsize))))))
                   (ite
                    (= #x1E opcode)
                    (x86-badstate state)
                    (x86-badstate state)))))))))))))))))))
(define-fun
 x86-singlebyte-0x2F-0x20
 ((eip Byte) (state MachineState) (opsize Bit) (addrsize Bit))
 DecodedMachineState
 (let ((opcode (get-byte eip)))
   (let ((eip0 (bvadd eip #x01)))
     (ite
      (= #x20 opcode)
      (let ((modrm (get-byte eip0)))
        (let ((extra (= ((_ extract 7 6) modrm) #b11)))
          (let ((lhsidx ((_ extract 2 0) modrm)))
            (let ((rhsidx ((_ extract 5 3) modrm)))
              (let ((lhs (getreg8 lhsidx state)))
                (let ((rhs (getreg8 rhsidx state)))
                  (let ((mrr8 (x86-and8 lhs rhs state)))
                    (let ((ms (x86-store-res8 mrr8 lhsidx)))
                      (let ((ms1 (putextra (bool-to-bit extra) ms)))
                        (x86-done-insn ms1 #x2 opsize addrsize))))))))))
      (ite
       (= #x21 opcode)
       (let ((modrm (get-byte eip0)))
         (ite
          (= #b1 opsize)
          (let ((extra (= ((_ extract 7 6) modrm) #b11)))
            (let ((lhsidx ((_ extract 2 0) modrm)))
              (let ((rhsidx ((_ extract 5 3) modrm)))
                (let ((lhs (getreg16 lhsidx state)))
                  (let ((rhs (getreg16 rhsidx state)))
                    (let ((mrr16 (x86-and16 lhs rhs state)))
                      (let ((ms (x86-store-res16 mrr16 lhsidx)))
                        (let ((ms1 (putextra (bool-to-bit extra) ms)))
                          (x86-done-insn ms1 #x2 opsize addrsize)))))))))
          (let ((extra (= ((_ extract 7 6) modrm) #b11)))
            (let ((lhsidx ((_ extract 2 0) modrm)))
              (let ((rhsidx ((_ extract 5 3) modrm)))
                (let ((lhs (getreg32 lhsidx state)))
                  (let ((rhs (getreg32 rhsidx state)))
                    (let ((mrr32 (x86-and32 lhs rhs state)))
                      (let ((ms (x86-store-res32 mrr32 lhsidx)))
                        (let ((ms1 (putextra (bool-to-bit extra) ms)))
                          (x86-done-insn ms1 #x2 opsize addrsize)))))))))))
       (ite
        (= #x22 opcode)
        (let ((modrm (get-byte eip0)))
          (let ((extra (= ((_ extract 7 6) modrm) #b11)))
            (let ((lhsidx ((_ extract 5 3) modrm)))
              (let ((rhsidx ((_ extract 2 0) modrm)))
                (let ((lhs (getreg8 lhsidx state)))
                  (let ((rhs (getreg8 rhsidx state)))
                    (let ((mrr8 (x86-and8 lhs rhs state)))
                      (let ((ms (x86-store-res8 mrr8 lhsidx)))
                        (let ((ms1 (putextra (bool-to-bit extra) ms)))
                          (x86-done-insn ms1 #x2 opsize addrsize))))))))))
        (ite
         (= #x23 opcode)
         (let ((modrm (get-byte eip0)))
           (ite
            (= #b1 opsize)
            (let ((extra (= ((_ extract 7 6) modrm) #b11)))
              (let ((lhsidx ((_ extract 5 3) modrm)))
                (let ((rhsidx ((_ extract 2 0) modrm)))
                  (let ((lhs (getreg16 lhsidx state)))
                    (let ((rhs (getreg16 rhsidx state)))
                      (let ((mrr16 (x86-and16 lhs rhs state)))
                        (let ((ms (x86-store-res16 mrr16 lhsidx)))
                          (let ((ms1 (putextra (bool-to-bit extra) ms)))
                            (x86-done-insn ms1 #x2 opsize addrsize)))))))))
            (let ((extra (= ((_ extract 7 6) modrm) #b11)))
              (let ((lhsidx ((_ extract 5 3) modrm)))
                (let ((rhsidx ((_ extract 2 0) modrm)))
                  (let ((lhs (getreg32 lhsidx state)))
                    (let ((rhs (getreg32 rhsidx state)))
                      (let ((mrr32 (x86-and32 lhs rhs state)))
                        (let ((ms (x86-store-res32 mrr32 lhsidx)))
                          (let ((ms1 (putextra (bool-to-bit extra) ms)))
                            (x86-done-insn ms1 #x2 opsize addrsize)))))))))))
         (ite
          (= #x24 opcode)
          (let ((lhs (getreg8 ALIdx state)))
            (let ((rhs (get-byte eip0)))
              (let ((mrr8 (x86-and8 lhs rhs state)))
                (let ((ms (x86-store-res8 mrr8 ALIdx)))
                  (x86-done-insn ms #x2 opsize addrsize)))))
          (ite
           (= #x25 opcode)
           (ite
            (= #b1 opsize)
            (let ((lhs (getreg16 AxIdx state)))
              (let ((rhs (get-word eip0)))
                (let ((mrr16 (x86-and16 lhs rhs state)))
                  (let ((ms (x86-store-res16 mrr16 AxIdx)))
                    (x86-done-insn ms #x3 opsize addrsize)))))
            (let ((lhs (getreg32 EaxIdx state)))
              (let ((rhs (get-dword eip0)))
                (let ((mrr32 (x86-and32 lhs rhs state)))
                  (let ((ms (x86-store-res32 mrr32 EaxIdx)))
                    (x86-done-insn ms #x5 opsize addrsize))))))
           (ite
            (= #x26 opcode)
            (x86-badstate state)
            (ite
             (= #x27 opcode)
             (x86-badstate state)
             (ite
              (= #x28 opcode)
              (let ((modrm (get-byte eip0)))
                (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                  (let ((lhsidx ((_ extract 2 0) modrm)))
                    (let ((rhsidx ((_ extract 5 3) modrm)))
                      (let ((lhs (getreg8 lhsidx state)))
                        (let ((rhs (getreg8 rhsidx state)))
                          (let ((mrr8 (x86-sub8 lhs rhs state)))
                            (let ((ms (x86-store-res8 mrr8 lhsidx)))
                              (let ((ms1 (putextra (bool-to-bit extra) ms)))
                                (x86-done-insn
                                 ms1
                                 #x2
                                 opsize
                                 addrsize))))))))))
              (ite
               (= #x29 opcode)
               (let ((modrm (get-byte eip0)))
                 (ite
                  (= #b1 opsize)
                  (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                    (let ((lhsidx ((_ extract 2 0) modrm)))
                      (let ((rhsidx ((_ extract 5 3) modrm)))
                        (let ((lhs (getreg16 lhsidx state)))
                          (let ((rhs (getreg16 rhsidx state)))
                            (let ((mrr16 (x86-sub16 lhs rhs state)))
                              (let ((ms (x86-store-res16 mrr16 lhsidx)))
                                (let ((ms1 (putextra (bool-to-bit extra) ms)))
                                  (x86-done-insn
                                   ms1
                                   #x2
                                   opsize
                                   addrsize)))))))))
                  (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                    (let ((lhsidx ((_ extract 2 0) modrm)))
                      (let ((rhsidx ((_ extract 5 3) modrm)))
                        (let ((lhs (getreg32 lhsidx state)))
                          (let ((rhs (getreg32 rhsidx state)))
                            (let ((mrr32 (x86-sub32 lhs rhs state)))
                              (let ((ms (x86-store-res32 mrr32 lhsidx)))
                                (let ((ms1 (putextra (bool-to-bit extra) ms)))
                                  (x86-done-insn
                                   ms1
                                   #x2
                                   opsize
                                   addrsize)))))))))))
               (ite
                (= #x2A opcode)
                (let ((modrm (get-byte eip0)))
                  (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                    (let ((lhsidx ((_ extract 5 3) modrm)))
                      (let ((rhsidx ((_ extract 2 0) modrm)))
                        (let ((lhs (getreg8 lhsidx state)))
                          (let ((rhs (getreg8 rhsidx state)))
                            (let ((mrr8 (x86-sub8 lhs rhs state)))
                              (let ((ms (x86-store-res8 mrr8 lhsidx)))
                                (let ((ms1 (putextra (bool-to-bit extra) ms)))
                                  (x86-done-insn
                                   ms1
                                   #x2
                                   opsize
                                   addrsize))))))))))
                (ite
                 (= #x2B opcode)
                 (let ((modrm (get-byte eip0)))
                   (ite
                    (= #b1 opsize)
                    (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                      (let ((lhsidx ((_ extract 5 3) modrm)))
                        (let ((rhsidx ((_ extract 2 0) modrm)))
                          (let ((lhs (getreg16 lhsidx state)))
                            (let ((rhs (getreg16 rhsidx state)))
                              (let ((mrr16 (x86-sub16 lhs rhs state)))
                                (let ((ms (x86-store-res16 mrr16 lhsidx)))
                                  (let ((ms1
                                         (putextra (bool-to-bit extra) ms)))
                                    (x86-done-insn
                                     ms1
                                     #x2
                                     opsize
                                     addrsize)))))))))
                    (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                      (let ((lhsidx ((_ extract 5 3) modrm)))
                        (let ((rhsidx ((_ extract 2 0) modrm)))
                          (let ((lhs (getreg32 lhsidx state)))
                            (let ((rhs (getreg32 rhsidx state)))
                              (let ((mrr32 (x86-sub32 lhs rhs state)))
                                (let ((ms (x86-store-res32 mrr32 lhsidx)))
                                  (let ((ms1
                                         (putextra (bool-to-bit extra) ms)))
                                    (x86-done-insn
                                     ms1
                                     #x2
                                     opsize
                                     addrsize)))))))))))
                 (ite
                  (= #x2C opcode)
                  (let ((lhs (getreg8 ALIdx state)))
                    (let ((rhs (get-byte (bvadd eip #x01))))
                      (let ((mrr8 (x86-sub8 lhs rhs state)))
                        (let ((ms (x86-store-res8 mrr8 ALIdx)))
                          (x86-done-insn ms #x2 opsize addrsize)))))
                  (ite
                   (= #x2D opcode)
                   (ite
                    (= #b1 opsize)
                    (let ((lhs (getreg16 AxIdx state)))
                      (let ((rhs (get-word eip0)))
                        (let ((mrr16 (x86-sub16 lhs rhs state)))
                          (let ((ms (x86-store-res16 mrr16 AxIdx)))
                            (x86-done-insn ms #x3 opsize addrsize)))))
                    (let ((lhs (getreg32 EaxIdx state)))
                      (let ((rhs (get-dword eip0)))
                        (let ((mrr32 (x86-sub32 lhs rhs state)))
                          (let ((ms (x86-store-res32 mrr32 EaxIdx)))
                            (x86-done-insn ms #x5 opsize addrsize))))))
                   (ite
                    (= #x2E opcode)
                    (concat #x0 state)
                    (x86-badstate state)))))))))))))))))))
(define-fun
 x86-singlebyte-0x3F-0x30
 ((eip Byte) (state MachineState) (opsize Bit) (addrsize Bit))
 DecodedMachineState
 (let ((opcode (get-byte eip)))
   (let ((eip0 (bvadd eip #x01)))
     (ite
      (= #x30 opcode)
      (let ((modrm (get-byte eip0)))
        (let ((extra (= ((_ extract 7 6) modrm) #b11)))
          (let ((lhsidx ((_ extract 2 0) modrm)))
            (let ((rhsidx ((_ extract 5 3) modrm)))
              (let ((lhs (getreg8 lhsidx state)))
                (let ((rhs (getreg8 rhsidx state)))
                  (let ((mrr8 (x86-xor8 lhs rhs state)))
                    (let ((ms (x86-store-res8 mrr8 lhsidx)))
                      (let ((ms1 (putextra (bool-to-bit extra) ms)))
                        (x86-done-insn ms1 #x2 opsize addrsize))))))))))
      (ite
       (= #x31 opcode)
       (let ((modrm (get-byte eip0)))
         (ite
          (= #b1 opsize)
          (let ((extra (= ((_ extract 7 6) modrm) #b11)))
            (let ((lhsidx ((_ extract 2 0) modrm)))
              (let ((rhsidx ((_ extract 5 3) modrm)))
                (let ((lhs (getreg16 lhsidx state)))
                  (let ((rhs (getreg16 rhsidx state)))
                    (let ((mrr16 (x86-xor16 lhs rhs state)))
                      (let ((ms (x86-store-res16 mrr16 lhsidx)))
                        (let ((ms1 (putextra (bool-to-bit extra) ms)))
                          (x86-done-insn ms1 #x2 opsize addrsize)))))))))
          (let ((extra (= ((_ extract 7 6) modrm) #b11)))
            (let ((lhsidx ((_ extract 2 0) modrm)))
              (let ((rhsidx ((_ extract 5 3) modrm)))
                (let ((lhs (getreg32 lhsidx state)))
                  (let ((rhs (getreg32 rhsidx state)))
                    (let ((mrr32 (x86-xor32 lhs rhs state)))
                      (let ((ms (x86-store-res32 mrr32 lhsidx)))
                        (let ((ms1 (putextra (bool-to-bit extra) ms)))
                          (x86-done-insn ms1 #x2 opsize addrsize)))))))))))
       (ite
        (= #x32 opcode)
        (let ((modrm (get-byte eip0)))
          (let ((extra (= ((_ extract 7 6) modrm) #b11)))
            (let ((lhsidx ((_ extract 5 3) modrm)))
              (let ((rhsidx ((_ extract 2 0) modrm)))
                (let ((lhs (getreg8 lhsidx state)))
                  (let ((rhs (getreg8 rhsidx state)))
                    (let ((mrr8 (x86-xor8 lhs rhs state)))
                      (let ((ms (x86-store-res8 mrr8 lhsidx)))
                        (let ((ms1 (putextra (bool-to-bit extra) ms)))
                          (x86-done-insn ms1 #x2 opsize addrsize))))))))))
        (ite
         (= #x33 opcode)
         (let ((modrm (get-byte eip0)))
           (ite
            (= #b1 opsize)
            (let ((extra (= ((_ extract 7 6) modrm) #b11)))
              (let ((lhsidx ((_ extract 5 3) modrm)))
                (let ((rhsidx ((_ extract 2 0) modrm)))
                  (let ((lhs (getreg16 lhsidx state)))
                    (let ((rhs (getreg16 rhsidx state)))
                      (let ((mrr16 (x86-xor16 lhs rhs state)))
                        (let ((ms (x86-store-res16 mrr16 lhsidx)))
                          (let ((ms1 (putextra (bool-to-bit extra) ms)))
                            (x86-done-insn ms1 #x2 opsize addrsize)))))))))
            (let ((extra (= ((_ extract 7 6) modrm) #b11)))
              (let ((lhsidx ((_ extract 5 3) modrm)))
                (let ((rhsidx ((_ extract 2 0) modrm)))
                  (let ((lhs (getreg32 lhsidx state)))
                    (let ((rhs (getreg32 rhsidx state)))
                      (let ((mrr32 (x86-xor32 lhs rhs state)))
                        (let ((ms (x86-store-res32 mrr32 lhsidx)))
                          (let ((ms1 (putextra (bool-to-bit extra) ms)))
                            (x86-done-insn ms1 #x2 opsize addrsize)))))))))))
         (ite
          (= #x34 opcode)
          (let ((lhs (getreg8 ALIdx state)))
            (let ((rhs (get-byte eip0)))
              (let ((mrr8 (x86-xor8 lhs rhs state)))
                (let ((ms (x86-store-res8 mrr8 ALIdx)))
                  (x86-done-insn ms #x2 opsize addrsize)))))
          (ite
           (= #x35 opcode)
           (ite
            (= #b1 opsize)
            (let ((lhs (getreg16 AxIdx state)))
              (let ((rhs (get-word eip0)))
                (let ((mrr16 (x86-xor16 lhs rhs state)))
                  (let ((ms (x86-store-res16 mrr16 AxIdx)))
                    (x86-done-insn ms #x3 opsize addrsize)))))
            (let ((lhs (getreg32 EaxIdx state)))
              (let ((rhs (get-dword eip0)))
                (let ((mrr32 (x86-xor32 lhs rhs state)))
                  (let ((ms (x86-store-res32 mrr32 EaxIdx)))
                    (x86-done-insn ms #x5 opsize addrsize))))))
           (ite
            (= #x36 opcode)
            (x86-badstate state)
            (ite
             (= #x37 opcode)
             (x86-badstate state)
             (ite
              (= #x38 opcode)
              (let ((modrm (get-byte eip0)))
                (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                  (let ((lhsidx ((_ extract 2 0) modrm)))
                    (let ((rhsidx ((_ extract 5 3) modrm)))
                      (let ((lhs (getreg8 lhsidx state)))
                        (let ((rhs (getreg8 rhsidx state)))
                          (let ((mrr8 (x86-sub8 lhs rhs state)))
                            (let ((ms ((_ extract 263 0) mrr8)))
                              (let ((ms1 (putextra (bool-to-bit extra) ms)))
                                (x86-done-insn
                                 ms1
                                 #x2
                                 opsize
                                 addrsize))))))))))
              (ite
               (= #x39 opcode)
               (let ((modrm (get-byte eip0)))
                 (ite
                  (= #b1 opsize)
                  (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                    (let ((lhsidx ((_ extract 2 0) modrm)))
                      (let ((rhsidx ((_ extract 5 3) modrm)))
                        (let ((lhs (getreg16 lhsidx state)))
                          (let ((rhs (getreg16 rhsidx state)))
                            (let ((mrr16 (x86-sub16 lhs rhs state)))
                              (let ((ms ((_ extract 263 0) mrr16)))
                                (let ((ms1 (putextra (bool-to-bit extra) ms)))
                                  (x86-done-insn
                                   ms1
                                   #x2
                                   opsize
                                   addrsize)))))))))
                  (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                    (let ((lhsidx ((_ extract 2 0) modrm)))
                      (let ((rhsidx ((_ extract 5 3) modrm)))
                        (let ((lhs (getreg32 lhsidx state)))
                          (let ((rhs (getreg32 rhsidx state)))
                            (let ((mrr32 (x86-sub32 lhs rhs state)))
                              (let ((ms ((_ extract 263 0) mrr32)))
                                (let ((ms1 (putextra (bool-to-bit extra) ms)))
                                  (x86-done-insn
                                   ms1
                                   #x2
                                   opsize
                                   addrsize)))))))))))
               (ite
                (= #x3A opcode)
                (let ((modrm (get-byte eip0)))
                  (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                    (let ((lhsidx ((_ extract 5 3) modrm)))
                      (let ((rhsidx ((_ extract 2 0) modrm)))
                        (let ((lhs (getreg8 lhsidx state)))
                          (let ((rhs (getreg8 rhsidx state)))
                            (let ((mrr8 (x86-sub8 lhs rhs state)))
                              (let ((ms ((_ extract 263 0) mrr8)))
                                (let ((ms1 (putextra (bool-to-bit extra) ms)))
                                  (x86-done-insn
                                   ms1
                                   #x2
                                   opsize
                                   addrsize))))))))))
                (ite
                 (= #x3B opcode)
                 (let ((modrm (get-byte eip0)))
                   (ite
                    (= #b1 opsize)
                    (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                      (let ((lhsidx ((_ extract 5 3) modrm)))
                        (let ((rhsidx ((_ extract 2 0) modrm)))
                          (let ((lhs (getreg16 lhsidx state)))
                            (let ((rhs (getreg16 rhsidx state)))
                              (let ((mrr16 (x86-sub16 lhs rhs state)))
                                (let ((ms ((_ extract 263 0) mrr16)))
                                  (let ((ms1
                                         (putextra (bool-to-bit extra) ms)))
                                    (x86-done-insn
                                     ms1
                                     #x2
                                     opsize
                                     addrsize)))))))))
                    (let ((extra (= ((_ extract 7 6) modrm) #b11)))
                      (let ((lhsidx ((_ extract 5 3) modrm)))
                        (let ((rhsidx ((_ extract 2 0) modrm)))
                          (let ((lhs (getreg32 lhsidx state)))
                            (let ((rhs (getreg32 rhsidx state)))
                              (let ((mrr32 (x86-sub32 lhs rhs state)))
                                (let ((ms ((_ extract 263 0) mrr32)))
                                  (let ((ms1
                                         (putextra (bool-to-bit extra) ms)))
                                    (x86-done-insn
                                     ms1
                                     #x2
                                     opsize
                                     addrsize)))))))))))
                 (ite
                  (= #x3C opcode)
                  (let ((lhs (getreg8 ALIdx state)))
                    (let ((rhs (get-byte (bvadd eip #x01))))
                      (let ((mrr8 (x86-sub8 lhs rhs state)))
                        (let ((ms ((_ extract 263 0) mrr8)))
                          (x86-done-insn ms #x2 opsize addrsize)))))
                  (ite
                   (= #x3D opcode)
                   (ite
                    (= #b1 opsize)
                    (let ((lhs (getreg16 AxIdx state)))
                      (let ((rhs (get-word eip0)))
                        (let ((mrr16 (x86-sub16 lhs rhs state)))
                          (let ((ms ((_ extract 263 0) mrr16)))
                            (x86-done-insn ms #x3 opsize addrsize)))))
                    (let ((lhs (getreg32 EaxIdx state)))
                      (let ((rhs (get-dword eip0)))
                        (let ((mrr32 (x86-sub32 lhs rhs state)))
                          (let ((ms ((_ extract 263 0) mrr32)))
                            (x86-done-insn ms #x5 opsize addrsize))))))
                   (ite
                    (= #x3E opcode)
                    (x86-badstate state)
                    (x86-badstate state)))))))))))))))))))
(define-fun
 x86-singlebyte-0x4F-0x40
 ((eip Byte) (state MachineState) (opsize Bit) (addrsize Bit))
 DecodedMachineState
 (let ((opcode (get-byte eip)))
   (let ((eip0 (bvadd eip #x01)))
     (ite
      (= #x40 opcode)
      (let ((lhsidx EaxIdx))
        (ite
         (= #b1 opsize)
         (let ((lhs (getreg16 lhsidx state)))
           (let ((mrr16 (x86-inc16 lhs state)))
             (let ((ms (x86-store-res16 mrr16 lhsidx)))
               (x86-done-insn ms #x1 opsize addrsize))))
         (let ((lhs (getreg32 lhsidx state)))
           (let ((mrr32 (x86-inc32 lhs state)))
             (let ((ms (x86-store-res32 mrr32 lhsidx)))
               (x86-done-insn ms #x1 opsize addrsize))))))
      (ite
       (= #x41 opcode)
       (let ((lhsidx EcxIdx))
         (ite
          (= #b1 opsize)
          (let ((lhs (getreg16 lhsidx state)))
            (let ((mrr16 (x86-inc16 lhs state)))
              (let ((ms (x86-store-res16 mrr16 lhsidx)))
                (x86-done-insn ms #x1 opsize addrsize))))
          (let ((lhs (getreg32 lhsidx state)))
            (let ((mrr32 (x86-inc32 lhs state)))
              (let ((ms (x86-store-res32 mrr32 lhsidx)))
                (x86-done-insn ms #x1 opsize addrsize))))))
       (ite
        (= #x42 opcode)
        (let ((lhsidx EdxIdx))
          (ite
           (= #b1 opsize)
           (let ((lhs (getreg16 lhsidx state)))
             (let ((mrr16 (x86-inc16 lhs state)))
               (let ((ms (x86-store-res16 mrr16 lhsidx)))
                 (x86-done-insn ms #x1 opsize addrsize))))
           (let ((lhs (getreg32 lhsidx state)))
             (let ((mrr32 (x86-inc32 lhs state)))
               (let ((ms (x86-store-res32 mrr32 lhsidx)))
                 (x86-done-insn ms #x1 opsize addrsize))))))
        (ite
         (= #x43 opcode)
         (let ((lhsidx EbxIdx))
           (ite
            (= #b1 opsize)
            (let ((lhs (getreg16 lhsidx state)))
              (let ((mrr16 (x86-inc16 lhs state)))
                (let ((ms (x86-store-res16 mrr16 lhsidx)))
                  (x86-done-insn ms #x1 opsize addrsize))))
            (let ((lhs (getreg32 lhsidx state)))
              (let ((mrr32 (x86-inc32 lhs state)))
                (let ((ms (x86-store-res32 mrr32 lhsidx)))
                  (x86-done-insn ms #x1 opsize addrsize))))))
         (ite
          (= #x44 opcode)
          (let ((lhsidx EspIdx))
            (ite
             (= #b1 opsize)
             (let ((lhs (getreg16 lhsidx state)))
               (let ((mrr16 (x86-inc16 lhs state)))
                 (let ((ms (x86-store-res16 mrr16 lhsidx)))
                   (x86-done-insn ms #x1 opsize addrsize))))
             (let ((lhs (getreg32 lhsidx state)))
               (let ((mrr32 (x86-inc32 lhs state)))
                 (let ((ms (x86-store-res32 mrr32 lhsidx)))
                   (x86-done-insn ms #x1 opsize addrsize))))))
          (ite
           (= #x45 opcode)
           (let ((lhsidx EbpIdx))
             (ite
              (= #b1 opsize)
              (let ((lhs (getreg16 lhsidx state)))
                (let ((mrr16 (x86-inc16 lhs state)))
                  (let ((ms (x86-store-res16 mrr16 lhsidx)))
                    (x86-done-insn ms #x1 opsize addrsize))))
              (let ((lhs (getreg32 lhsidx state)))
                (let ((mrr32 (x86-inc32 lhs state)))
                  (let ((ms (x86-store-res32 mrr32 lhsidx)))
                    (x86-done-insn ms #x1 opsize addrsize))))))
           (ite
            (= #x46 opcode)
            (let ((lhsidx EsiIdx))
              (ite
               (= #b1 opsize)
               (let ((lhs (getreg16 lhsidx state)))
                 (let ((mrr16 (x86-inc16 lhs state)))
                   (let ((ms (x86-store-res16 mrr16 lhsidx)))
                     (x86-done-insn ms #x1 opsize addrsize))))
               (let ((lhs (getreg32 lhsidx state)))
                 (let ((mrr32 (x86-inc32 lhs state)))
                   (let ((ms (x86-store-res32 mrr32 lhsidx)))
                     (x86-done-insn ms #x1 opsize addrsize))))))
            (ite
             (= #x47 opcode)
             (let ((lhsidx EdiIdx))
               (ite
                (= #b1 opsize)
                (let ((lhs (getreg16 lhsidx state)))
                  (let ((mrr16 (x86-inc16 lhs state)))
                    (let ((ms (x86-store-res16 mrr16 lhsidx)))
                      (x86-done-insn ms #x1 opsize addrsize))))
                (let ((lhs (getreg32 lhsidx state)))
                  (let ((mrr32 (x86-inc32 lhs state)))
                    (let ((ms (x86-store-res32 mrr32 lhsidx)))
                      (x86-done-insn ms #x1 opsize addrsize))))))
             (ite
              (= #x48 opcode)
              (let ((lhsidx EaxIdx))
                (ite
                 (= #b1 opsize)
                 (let ((lhs (getreg16 lhsidx state)))
                   (let ((mrr16 (x86-dec16 lhs state)))
                     (let ((ms (x86-store-res16 mrr16 lhsidx)))
                       (x86-done-insn ms #x1 opsize addrsize))))
                 (let ((lhs (getreg32 lhsidx state)))
                   (let ((mrr32 (x86-dec32 lhs state)))
                     (let ((ms (x86-store-res32 mrr32 lhsidx)))
                       (x86-done-insn ms #x1 opsize addrsize))))))
              (ite
               (= #x49 opcode)
               (let ((lhsidx EcxIdx))
                 (ite
                  (= #b1 opsize)
                  (let ((lhs (getreg16 lhsidx state)))
                    (let ((mrr16 (x86-dec16 lhs state)))
                      (let ((ms (x86-store-res16 mrr16 lhsidx)))
                        (x86-done-insn ms #x1 opsize addrsize))))
                  (let ((lhs (getreg32 lhsidx state)))
                    (let ((mrr32 (x86-dec32 lhs state)))
                      (let ((ms (x86-store-res32 mrr32 lhsidx)))
                        (x86-done-insn ms #x1 opsize addrsize))))))
               (ite
                (= #x4A opcode)
                (let ((lhsidx EdxIdx))
                  (ite
                   (= #b1 opsize)
                   (let ((lhs (getreg16 lhsidx state)))
                     (let ((mrr16 (x86-dec16 lhs state)))
                       (let ((ms (x86-store-res16 mrr16 lhsidx)))
                         (x86-done-insn ms #x1 opsize addrsize))))
                   (let ((lhs (getreg32 lhsidx state)))
                     (let ((mrr32 (x86-dec32 lhs state)))
                       (let ((ms (x86-store-res32 mrr32 lhsidx)))
                         (x86-done-insn ms #x1 opsize addrsize))))))
                (ite
                 (= #x4B opcode)
                 (let ((lhsidx EbxIdx))
                   (ite
                    (= #b1 opsize)
                    (let ((lhs (getreg16 lhsidx state)))
                      (let ((mrr16 (x86-dec16 lhs state)))
                        (let ((ms (x86-store-res16 mrr16 lhsidx)))
                          (x86-done-insn ms #x1 opsize addrsize))))
                    (let ((lhs (getreg32 lhsidx state)))
                      (let ((mrr32 (x86-dec32 lhs state)))
                        (let ((ms (x86-store-res32 mrr32 lhsidx)))
                          (x86-done-insn ms #x1 opsize addrsize))))))
                 (ite
                  (= #x4C opcode)
                  (let ((lhsidx EspIdx))
                    (ite
                     (= #b1 opsize)
                     (let ((lhs (getreg16 lhsidx state)))
                       (let ((mrr16 (x86-dec16 lhs state)))
                         (let ((ms (x86-store-res16 mrr16 lhsidx)))
                           (x86-done-insn ms #x1 opsize addrsize))))
                     (let ((lhs (getreg32 lhsidx state)))
                       (let ((mrr32 (x86-dec32 lhs state)))
                         (let ((ms (x86-store-res32 mrr32 lhsidx)))
                           (x86-done-insn ms #x1 opsize addrsize))))))
                  (ite
                   (= #x4D opcode)
                   (let ((lhsidx EbpIdx))
                     (ite
                      (= #b1 opsize)
                      (let ((lhs (getreg16 lhsidx state)))
                        (let ((mrr16 (x86-dec16 lhs state)))
                          (let ((ms (x86-store-res16 mrr16 lhsidx)))
                            (x86-done-insn ms #x1 opsize addrsize))))
                      (let ((lhs (getreg32 lhsidx state)))
                        (let ((mrr32 (x86-dec32 lhs state)))
                          (let ((ms (x86-store-res32 mrr32 lhsidx)))
                            (x86-done-insn ms #x1 opsize addrsize))))))
                   (ite
                    (= #x4E opcode)
                    (let ((lhsidx EsiIdx))
                      (ite
                       (= #b1 opsize)
                       (let ((lhs (getreg16 lhsidx state)))
                         (let ((mrr16 (x86-dec16 lhs state)))
                           (let ((ms (x86-store-res16 mrr16 lhsidx)))
                             (x86-done-insn ms #x1 opsize addrsize))))
                       (let ((lhs (getreg32 lhsidx state)))
                         (let ((mrr32 (x86-dec32 lhs state)))
                           (let ((ms (x86-store-res32 mrr32 lhsidx)))
                             (x86-done-insn ms #x1 opsize addrsize))))))
                    (let ((lhsidx EdiIdx))
                      (ite
                       (= #b1 opsize)
                       (let ((lhs (getreg16 lhsidx state)))
                         (let ((mrr16 (x86-dec16 lhs state)))
                           (let ((ms (x86-store-res16 mrr16 lhsidx)))
                             (x86-done-insn ms #x1 opsize addrsize))))
                       (let ((lhs (getreg32 lhsidx state)))
                         (let ((mrr32 (x86-dec32 lhs state)))
                           (let ((ms (x86-store-res32 mrr32 lhsidx)))
                             (x86-done-insn
                              ms
                              #x1
                              opsize
                              addrsize))))))))))))))))))))))))
(define-fun
 x86-singlebyte-0x5F-0x50
 ((eip Byte) (state MachineState) (opsize Bit) (addrsize Bit))
 DecodedMachineState
 (x86-badstate state))
(define-fun
 x86-singlebyte-0x6F-0x60
 ((eip Byte) (state MachineState) (opsize Bit) (addrsize Bit))
 DecodedMachineState
 (let ((opcode (get-byte eip)))
   (let ((eip0 (bvadd eip #x01)))
     (ite
      (= #x60 opcode)
      (x86-badstate state)
      (ite
       (= #x61 opcode)
       (x86-badstate state)
       (ite
        (= #x62 opcode)
        (x86-badstate state)
        (ite
         (= #x63 opcode)
         (x86-badstate state)
         (ite
          (= #x64 opcode)
          (x86-badstate state)
          (ite
           (= #x65 opcode)
           (x86-badstate state)
           (ite
            (= #x66 opcode)
            (x86-badstate state)
            (ite
             (= #x67 opcode)
             (x86-badstate state)
             (ite
              (= #x68 opcode)
              (x86-badstate state)
              (ite
               (= #x69 opcode)
               (x86-badstate state)
               (ite
                (= #x6A opcode)
                (x86-badstate state)
                (ite
                 (= #x6B opcode)
                 (x86-badstate state)
                 (ite
                  (= #x6C opcode)
                  (x86-badstate state)
                  (ite
                   (= #x6D opcode)
                   (x86-badstate state)
                   (ite
                    (= #x6E opcode)
                    (x86-badstate state)
                    (x86-badstate state)))))))))))))))))))
(define-fun
 x86-singlebyte-0x7F-0x70
 ((eip Byte) (state MachineState) (opsize Bit) (addrsize Bit))
 DecodedMachineState
 (x86-badstate state))
(define-fun
 x86-singlebyte-0x8F-0x80
 ((eip Byte) (state MachineState) (opsize Bit) (addrsize Bit))
 DecodedMachineState
 (let ((opcode (get-byte eip)))
   (let ((eip0 (bvadd eip #x01)))
     (let ((modrm (get-byte eip0)))
       (let ((ggg ((_ extract 5 3) modrm)))
         (let ((epart ((_ extract 2 0) modrm)))
           (let ((extra (bool-to-bit (= ((_ extract 7 6) modrm) #b11))))
             (let ((newstate (putextra extra state)))
               (ite
                (= #x80 opcode)
                (let ((lhs (getreg8 epart state)))
                  (let ((rhs (get-byte (bvadd eip #x02))))
                    (ite
                     (= #b000 ggg)
                     (let ((mrr8 (x86-add8 lhs rhs newstate)))
                       (let ((ms (x86-store-res8 mrr8 epart)))
                         (x86-done-insn ms #x3 opsize addrsize)))
                     (ite
                      (= #b001 ggg)
                      (let ((mrr8 (x86-or8 lhs rhs newstate)))
                        (let ((ms (x86-store-res8 mrr8 epart)))
                          (x86-done-insn ms #x3 opsize addrsize)))
                      (ite
                       (= #b010 ggg)
                       (let ((mrr8 (x86-adc8 lhs rhs newstate)))
                         (let ((ms (x86-store-res8 mrr8 epart)))
                           (x86-done-insn ms #x3 opsize addrsize)))
                       (ite
                        (= #b011 ggg)
                        (let ((mrr8 (x86-sbb8 lhs rhs newstate)))
                          (let ((ms (x86-store-res8 mrr8 epart)))
                            (x86-done-insn ms #x3 opsize addrsize)))
                        (ite
                         (= #b100 ggg)
                         (let ((mrr8 (x86-and8 lhs rhs newstate)))
                           (let ((ms (x86-store-res8 mrr8 epart)))
                             (x86-done-insn ms #x3 opsize addrsize)))
                         (ite
                          (= #b101 ggg)
                          (let ((mrr8 (x86-sub8 lhs rhs newstate)))
                            (let ((ms (x86-store-res8 mrr8 epart)))
                              (x86-done-insn ms #x3 opsize addrsize)))
                          (ite
                           (= #b110 ggg)
                           (let ((mrr8 (x86-xor8 lhs rhs newstate)))
                             (let ((ms (x86-store-res8 mrr8 epart)))
                               (x86-done-insn ms #x3 opsize addrsize)))
                           (let ((mrr8 (x86-sub8 lhs rhs newstate)))
                             (let ((ms ((_ extract 263 0) mrr8)))
                               (x86-done-insn
                                ms
                                #x3
                                opsize
                                addrsize))))))))))))
                (ite
                 (= #x81 opcode)
                 (ite
                  (= #b1 opsize)
                  (let ((lhs (getreg16 epart state)))
                    (let ((rhs (get-word (bvadd eip #x02))))
                      (ite
                       (= #b000 ggg)
                       (let ((mrr16 (x86-add16 lhs rhs newstate)))
                         (let ((ms (x86-store-res16 mrr16 epart)))
                           (x86-done-insn ms #x4 opsize addrsize)))
                       (ite
                        (= #b001 ggg)
                        (let ((mrr16 (x86-or16 lhs rhs newstate)))
                          (let ((ms (x86-store-res16 mrr16 epart)))
                            (x86-done-insn ms #x4 opsize addrsize)))
                        (ite
                         (= #b010 ggg)
                         (let ((mrr16 (x86-adc16 lhs rhs newstate)))
                           (let ((ms (x86-store-res16 mrr16 epart)))
                             (x86-done-insn ms #x4 opsize addrsize)))
                         (ite
                          (= #b011 ggg)
                          (let ((mrr16 (x86-sbb16 lhs rhs newstate)))
                            (let ((ms (x86-store-res16 mrr16 epart)))
                              (x86-done-insn ms #x4 opsize addrsize)))
                          (ite
                           (= #b100 ggg)
                           (let ((mrr16 (x86-and16 lhs rhs newstate)))
                             (let ((ms (x86-store-res16 mrr16 epart)))
                               (x86-done-insn ms #x4 opsize addrsize)))
                           (ite
                            (= #b101 ggg)
                            (let ((mrr16 (x86-sub16 lhs rhs newstate)))
                              (let ((ms (x86-store-res16 mrr16 epart)))
                                (x86-done-insn ms #x4 opsize addrsize)))
                            (ite
                             (= #b110 ggg)
                             (let ((mrr16 (x86-xor16 lhs rhs newstate)))
                               (let ((ms (x86-store-res16 mrr16 epart)))
                                 (x86-done-insn ms #x4 opsize addrsize)))
                             (let ((mrr16 (x86-sub16 lhs rhs newstate)))
                               (let ((ms ((_ extract 263 0) mrr16)))
                                 (x86-done-insn
                                  ms
                                  #x4
                                  opsize
                                  addrsize))))))))))))
                  (let ((lhs (getreg32 epart state)))
                    (let ((rhs (get-dword (bvadd eip #x02))))
                      (ite
                       (= #b000 ggg)
                       (let ((mrr32 (x86-add32 lhs rhs newstate)))
                         (let ((ms (x86-store-res32 mrr32 epart)))
                           (x86-done-insn ms #x6 opsize addrsize)))
                       (ite
                        (= #b001 ggg)
                        (let ((mrr32 (x86-or32 lhs rhs newstate)))
                          (let ((ms (x86-store-res32 mrr32 epart)))
                            (x86-done-insn ms #x6 opsize addrsize)))
                        (ite
                         (= #b010 ggg)
                         (let ((mrr32 (x86-adc32 lhs rhs newstate)))
                           (let ((ms (x86-store-res32 mrr32 epart)))
                             (x86-done-insn ms #x6 opsize addrsize)))
                         (ite
                          (= #b011 ggg)
                          (let ((mrr32 (x86-sbb32 lhs rhs newstate)))
                            (let ((ms (x86-store-res32 mrr32 epart)))
                              (x86-done-insn ms #x6 opsize addrsize)))
                          (ite
                           (= #b100 ggg)
                           (let ((mrr32 (x86-and32 lhs rhs newstate)))
                             (let ((ms (x86-store-res32 mrr32 epart)))
                               (x86-done-insn ms #x6 opsize addrsize)))
                           (ite
                            (= #b101 ggg)
                            (let ((mrr32 (x86-sub32 lhs rhs newstate)))
                              (let ((ms (x86-store-res32 mrr32 epart)))
                                (x86-done-insn ms #x6 opsize addrsize)))
                            (ite
                             (= #b110 ggg)
                             (let ((mrr32 (x86-xor32 lhs rhs newstate)))
                               (let ((ms (x86-store-res32 mrr32 epart)))
                                 (x86-done-insn ms #x6 opsize addrsize)))
                             (let ((mrr32 (x86-sub32 lhs rhs newstate)))
                               (let ((ms ((_ extract 263 0) mrr32)))
                                 (x86-done-insn
                                  ms
                                  #x6
                                  opsize
                                  addrsize)))))))))))))
                 (ite
                  (= #x82 opcode)
                  (let ((lhs (getreg8 epart state)))
                    (let ((rhs (get-byte (bvadd eip #x02))))
                      (ite
                       (= #b000 ggg)
                       (let ((mrr8 (x86-add8 lhs rhs newstate)))
                         (let ((ms (x86-store-res8 mrr8 epart)))
                           (x86-done-insn ms #x3 opsize addrsize)))
                       (ite
                        (= #b001 ggg)
                        (let ((mrr8 (x86-or8 lhs rhs newstate)))
                          (let ((ms (x86-store-res8 mrr8 epart)))
                            (x86-done-insn ms #x3 opsize addrsize)))
                        (ite
                         (= #b010 ggg)
                         (let ((mrr8 (x86-adc8 lhs rhs newstate)))
                           (let ((ms (x86-store-res8 mrr8 epart)))
                             (x86-done-insn ms #x3 opsize addrsize)))
                         (ite
                          (= #b011 ggg)
                          (let ((mrr8 (x86-sbb8 lhs rhs newstate)))
                            (let ((ms (x86-store-res8 mrr8 epart)))
                              (x86-done-insn ms #x3 opsize addrsize)))
                          (ite
                           (= #b100 ggg)
                           (let ((mrr8 (x86-and8 lhs rhs newstate)))
                             (let ((ms (x86-store-res8 mrr8 epart)))
                               (x86-done-insn ms #x3 opsize addrsize)))
                           (ite
                            (= #b101 ggg)
                            (let ((mrr8 (x86-sub8 lhs rhs newstate)))
                              (let ((ms (x86-store-res8 mrr8 epart)))
                                (x86-done-insn ms #x3 opsize addrsize)))
                            (ite
                             (= #b110 ggg)
                             (let ((mrr8 (x86-xor8 lhs rhs newstate)))
                               (let ((ms (x86-store-res8 mrr8 epart)))
                                 (x86-done-insn ms #x3 opsize addrsize)))
                             (let ((mrr8 (x86-sub8 lhs rhs newstate)))
                               (let ((ms ((_ extract 263 0) mrr8)))
                                 (x86-done-insn
                                  ms
                                  #x3
                                  opsize
                                  addrsize))))))))))))
                  (ite
                   (= #x83 opcode)
                   (ite
                    (= #b1 opsize)
                    (let ((lhs (getreg16 epart state)))
                      (let ((rhs
                             ((_ sign_extend 8)
                              (get-byte (bvadd eip #x02)))))
                        (ite
                         (= #b000 ggg)
                         (let ((mrr16 (x86-add16 lhs rhs newstate)))
                           (let ((ms (x86-store-res16 mrr16 epart)))
                             (x86-done-insn ms #x3 opsize addrsize)))
                         (ite
                          (= #b001 ggg)
                          (let ((mrr16 (x86-or16 lhs rhs newstate)))
                            (let ((ms (x86-store-res16 mrr16 epart)))
                              (x86-done-insn ms #x3 opsize addrsize)))
                          (ite
                           (= #b010 ggg)
                           (let ((mrr16 (x86-adc16 lhs rhs newstate)))
                             (let ((ms (x86-store-res16 mrr16 epart)))
                               (x86-done-insn ms #x3 opsize addrsize)))
                           (ite
                            (= #b011 ggg)
                            (let ((mrr16 (x86-sbb16 lhs rhs newstate)))
                              (let ((ms (x86-store-res16 mrr16 epart)))
                                (x86-done-insn ms #x3 opsize addrsize)))
                            (ite
                             (= #b100 ggg)
                             (let ((mrr16 (x86-and16 lhs rhs newstate)))
                               (let ((ms (x86-store-res16 mrr16 epart)))
                                 (x86-done-insn ms #x3 opsize addrsize)))
                             (ite
                              (= #b101 ggg)
                              (let ((mrr16 (x86-sub16 lhs rhs newstate)))
                                (let ((ms (x86-store-res16 mrr16 epart)))
                                  (x86-done-insn ms #x3 opsize addrsize)))
                              (ite
                               (= #b110 ggg)
                               (let ((mrr16 (x86-xor16 lhs rhs newstate)))
                                 (let ((ms (x86-store-res16 mrr16 epart)))
                                   (x86-done-insn ms #x3 opsize addrsize)))
                               (let ((mrr16 (x86-sub16 lhs rhs newstate)))
                                 (let ((ms ((_ extract 263 0) mrr16)))
                                   (x86-done-insn
                                    ms
                                    #x3
                                    opsize
                                    addrsize))))))))))))
                    (let ((lhs (getreg32 epart state)))
                      (let ((rhs
                             ((_ sign_extend 24)
                              (get-byte (bvadd eip #x02)))))
                        (ite
                         (= #b000 ggg)
                         (let ((mrr32 (x86-add32 lhs rhs newstate)))
                           (let ((ms (x86-store-res32 mrr32 epart)))
                             (x86-done-insn ms #x3 opsize addrsize)))
                         (ite
                          (= #b001 ggg)
                          (let ((mrr32 (x86-or32 lhs rhs newstate)))
                            (let ((ms (x86-store-res32 mrr32 epart)))
                              (x86-done-insn ms #x3 opsize addrsize)))
                          (ite
                           (= #b010 ggg)
                           (let ((mrr32 (x86-adc32 lhs rhs newstate)))
                             (let ((ms (x86-store-res32 mrr32 epart)))
                               (x86-done-insn ms #x3 opsize addrsize)))
                           (ite
                            (= #b011 ggg)
                            (let ((mrr32 (x86-sbb32 lhs rhs newstate)))
                              (let ((ms (x86-store-res32 mrr32 epart)))
                                (x86-done-insn ms #x3 opsize addrsize)))
                            (ite
                             (= #b100 ggg)
                             (let ((mrr32 (x86-and32 lhs rhs newstate)))
                               (let ((ms (x86-store-res32 mrr32 epart)))
                                 (x86-done-insn ms #x3 opsize addrsize)))
                             (ite
                              (= #b101 ggg)
                              (let ((mrr32 (x86-sub32 lhs rhs newstate)))
                                (let ((ms (x86-store-res32 mrr32 epart)))
                                  (x86-done-insn ms #x3 opsize addrsize)))
                              (ite
                               (= #b110 ggg)
                               (let ((mrr32 (x86-xor32 lhs rhs newstate)))
                                 (let ((ms (x86-store-res32 mrr32 epart)))
                                   (x86-done-insn ms #x3 opsize addrsize)))
                               (let ((mrr32 (x86-sub32 lhs rhs newstate)))
                                 (let ((ms ((_ extract 263 0) mrr32)))
                                   (x86-done-insn
                                    ms
                                    #x3
                                    opsize
                                    addrsize)))))))))))))
                   (ite
                    (= #x84 opcode)
                    (let ((lhs (getreg8 epart state)))
                      (let ((rhs (getreg8 ggg state)))
                        (let ((mrr8 (x86-and8 lhs rhs newstate)))
                          (let ((ms ((_ extract 263 0) mrr8)))
                            (x86-done-insn ms #x2 opsize addrsize)))))
                    (ite
                     (= #x85 opcode)
                     (ite
                      (= #b1 opsize)
                      (let ((lhs (getreg16 epart state)))
                        (let ((rhs (getreg16 ggg state)))
                          (let ((mrr16 (x86-and16 lhs rhs newstate)))
                            (let ((ms ((_ extract 263 0) mrr16)))
                              (x86-done-insn ms #x2 opsize addrsize)))))
                      (let ((lhs (getreg32 epart state)))
                        (let ((rhs (getreg32 ggg state)))
                          (let ((mrr16 (x86-and32 lhs rhs newstate)))
                            (let ((ms ((_ extract 263 0) mrr16)))
                              (x86-done-insn ms #x2 opsize addrsize))))))
                     (ite
                      (= #x86 opcode)
                      (let ((lhs (getreg8 epart state)))
                        (let ((rhs (getreg8 ggg state)))
                          (let ((s1 (putreg8 ggg lhs newstate)))
                            (let ((s2 (putreg8 epart rhs s1)))
                              (x86-done-insn s2 #x2 opsize addrsize)))))
                      (ite
                       (= #x87 opcode)
                       (ite
                        (= #b1 opsize)
                        (let ((lhs (getreg16 epart state)))
                          (let ((rhs (getreg16 ggg state)))
                            (let ((s1 (putreg16 ggg lhs newstate)))
                              (let ((s2 (putreg16 epart rhs s1)))
                                (x86-done-insn s2 #x2 opsize addrsize)))))
                        (let ((lhs (getreg32 epart state)))
                          (let ((rhs (getreg32 ggg state)))
                            (let ((s1 (putreg32 ggg lhs newstate)))
                              (let ((s2 (putreg32 epart rhs s1)))
                                (x86-done-insn s2 #x2 opsize addrsize))))))
                       (ite
                        (= #x88 opcode)
                        (let ((rhs (getreg8 ggg state)))
                          (let ((s2 (putreg8 epart rhs newstate)))
                            (x86-done-insn s2 #x2 opsize addrsize)))
                        (ite
                         (= #x89 opcode)
                         (ite
                          (= #b1 opsize)
                          (let ((rhs (getreg16 ggg state)))
                            (let ((s2 (putreg16 epart rhs newstate)))
                              (x86-done-insn s2 #x2 opsize addrsize)))
                          (let ((rhs (getreg32 ggg state)))
                            (let ((s2 (putreg32 epart rhs newstate)))
                              (x86-done-insn s2 #x2 opsize addrsize))))
                         (ite
                          (= #x8A opcode)
                          (let ((rhs (getreg8 epart state)))
                            (let ((s2 (putreg8 ggg rhs newstate)))
                              (x86-done-insn s2 #x2 opsize addrsize)))
                          (ite
                           (= #x8B opcode)
                           (ite
                            (= #b1 opsize)
                            (let ((rhs (getreg16 epart state)))
                              (let ((s2 (putreg16 ggg rhs newstate)))
                                (x86-done-insn s2 #x2 opsize addrsize)))
                            (let ((rhs (getreg32 epart state)))
                              (let ((s2 (putreg32 ggg rhs newstate)))
                                (x86-done-insn s2 #x2 opsize addrsize))))
                           (ite
                            (= #x8C opcode)
                            (x86-badstate state)
                            (ite
                             (= #x8D opcode)
                             (x86-badstate state)
                             (ite
                              (= #x8E opcode)
                              (x86-badstate state)
                              (x86-badstate state))))))))))))))))))))))))
(define-fun
 x86-singlebyte-0x9F-0x90
 ((eip Byte) (state MachineState) (opsize Bit) (addrsize Bit))
 DecodedMachineState
 (let ((opcode (get-byte eip)))
   (let ((rhsidx ((_ extract 2 0) opcode)))
     (let ((lhsidx EaxIdx))
       (ite
        (= #b10010 ((_ extract 7 3) opcode))
        (ite
         (= #b1 opsize)
         (let ((lhs (getreg16 lhsidx state)))
           (let ((rhs (getreg16 rhsidx state)))
             (let ((s1 (putreg16 lhsidx rhs state)))
               (let ((s2 (putreg16 rhsidx lhs s1)))
                 (x86-done-insn s2 #x1 opsize addrsize)))))
         (let ((lhs (getreg32 lhsidx state)))
           (let ((rhs (getreg32 rhsidx state)))
             (let ((s1 (putreg32 lhsidx rhs state)))
               (let ((s2 (putreg32 rhsidx lhs s1)))
                 (x86-done-insn s2 #x1 opsize addrsize))))))
        (ite
         (= #x98 opcode)
         (ite
          (= #b1 opsize)
          (x86-done-insn
           (putreg16 AxIdx ((_ sign_extend 8) (getreg8 ALIdx state)) state)
           #x1
           opsize
           addrsize)
          (x86-done-insn
           (putreg32 EaxIdx ((_ sign_extend 16) (getreg16 AxIdx state)) state)
           #x1
           opsize
           addrsize))
         (ite
          (= #x99 opcode)
          (ite
           (= #b1 opsize)
           (let ((extended ((_ sign_extend 16) (getreg16 AxIdx state))))
             (x86-done-insn
              (putreg16 DxIdx ((_ extract 31 16) extended) state)
              #x1
              opsize
              addrsize))
           (let ((extended ((_ sign_extend 32) (getreg32 EaxIdx state))))
             (x86-done-insn
              (putreg32 EdxIdx ((_ extract 63 32) extended) state)
              #x1
              opsize
              addrsize)))
          (ite
           (= #x9A opcode)
           (x86-badstate state)
           (ite
            (= #x9B opcode)
            (x86-done-insn state #x1 opsize addrsize)
            (ite
             (= #x9C opcode)
             (x86-badstate state)
             (ite
              (= #x9D opcode)
              (x86-badstate state)
              (ite
               (= #x9E opcode)
               (x86-badstate state)
               (x86-badstate state)))))))))))))
(define-fun
 x86-singlebyte-0xAF-0xA0
 ((eip Byte) (state MachineState) (opsize Bit) (addrsize Bit))
 DecodedMachineState
 (let ((opcode (get-byte eip)))
   (let ((eip0 (bvadd eip #x01)))
     (ite
      (= #xA0 opcode)
      (x86-badstate state)
      (ite
       (= #xA1 opcode)
       (x86-badstate state)
       (ite
        (= #xA2 opcode)
        (x86-badstate state)
        (ite
         (= #xA3 opcode)
         (x86-badstate state)
         (ite
          (= #xA4 opcode)
          (x86-badstate state)
          (ite
           (= #xA5 opcode)
           (x86-badstate state)
           (ite
            (= #xA6 opcode)
            (x86-badstate state)
            (ite
             (= #xA7 opcode)
             (x86-badstate state)
             (ite
              (= #xA8 opcode)
              (let ((lhs (getreg8 ALIdx state)))
                (let ((rhs (get-byte eip0)))
                  (let ((mrr8 (x86-and8 lhs rhs state)))
                    (let ((ms ((_ extract 263 0) mrr8)))
                      (x86-done-insn ms #x2 opsize addrsize)))))
              (ite
               (= #xA9 opcode)
               (ite
                (= #b1 opsize)
                (let ((lhs (getreg16 AxIdx state)))
                  (let ((rhs (get-word eip0)))
                    (let ((mrr16 (x86-and16 lhs rhs state)))
                      (let ((ms ((_ extract 263 0) mrr16)))
                        (x86-done-insn ms #x3 opsize addrsize)))))
                (let ((lhs (getreg32 AxIdx state)))
                  (let ((rhs (get-dword eip0)))
                    (let ((mrr32 (x86-and32 lhs rhs state)))
                      (let ((ms ((_ extract 263 0) mrr32)))
                        (x86-done-insn ms #x5 opsize addrsize))))))
               (ite
                (= #xAA opcode)
                (x86-badstate state)
                (ite
                 (= #xAB opcode)
                 (x86-badstate state)
                 (ite
                  (= #xAC opcode)
                  (x86-badstate state)
                  (ite
                   (= #xAD opcode)
                   (x86-badstate state)
                   (ite
                    (= #xAE opcode)
                    (x86-badstate state)
                    (x86-badstate state)))))))))))))))))))
(define-fun
 x86-singlebyte-0xBF-0xB0
 ((eip Byte) (state MachineState) (opsize Bit) (addrsize Bit))
 DecodedMachineState
 (let ((opcode (get-byte eip)))
   (let ((eip0 (bvadd eip #x01)))
     (let ((lhsidx ((_ extract 2 0) opcode)))
       (let ((isupper ((_ extract 3 3) opcode)))
         (ite
          (= #b0 isupper)
          (let ((rhs (get-byte eip0)))
            (x86-done-insn (putreg8 lhsidx rhs state) #x2 opsize addrsize))
          (ite
           (= #b1 opsize)
           (let ((rhs (get-word eip0)))
             (x86-done-insn (putreg16 lhsidx rhs state) #x3 opsize addrsize))
           (let ((rhs (get-dword eip0)))
             (x86-done-insn
              (putreg32 lhsidx rhs state)
              #x5
              opsize
              addrsize)))))))))
(define-fun
 x86-singlebyte-0xCF-0xC0
 ((eip Byte) (state MachineState) (opsize Bit) (addrsize Bit))
 DecodedMachineState
 (let ((opcode (get-byte eip)))
   (let ((eip0 (bvadd eip #x01)))
     (let ((modrm (get-byte eip0)))
       (let ((ggg ((_ extract 5 3) modrm)))
         (let ((epart ((_ extract 2 0) modrm)))
           (let ((extra (bool-to-bit (= ((_ extract 7 6) modrm) #b11))))
             (let ((newstate (putextra extra state)))
               (ite
                (= #xC0 opcode)
                (let ((lhs (getreg8 epart state)))
                  (let ((rhs (get-byte (bvadd eip0 #x01))))
                    (ite
                     (= #b000 ggg)
                     (let ((mrr8 (x86-rol8 lhs rhs newstate)))
                       (let ((ms (x86-store-res8 mrr8 epart)))
                         (x86-done-insn ms #x3 opsize addrsize)))
                     (ite
                      (= #b001 ggg)
                      (let ((mrr8 (x86-ror8 lhs rhs newstate)))
                        (let ((ms (x86-store-res8 mrr8 epart)))
                          (x86-done-insn ms #x3 opsize addrsize)))
                      (ite
                       (= #b010 ggg)
                       (let ((mrr8 (x86-rcl8 lhs rhs newstate)))
                         (let ((ms (x86-store-res8 mrr8 epart)))
                           (x86-done-insn ms #x3 opsize addrsize)))
                       (ite
                        (= #b011 ggg)
                        (let ((mrr8 (x86-rcr8 lhs rhs newstate)))
                          (let ((ms (x86-store-res8 mrr8 epart)))
                            (x86-done-insn ms #x3 opsize addrsize)))
                        (ite
                         (= #b100 ggg)
                         (let ((mrr8 (x86-shl8 lhs rhs newstate)))
                           (let ((ms (x86-store-res8 mrr8 epart)))
                             (x86-done-insn ms #x3 opsize addrsize)))
                         (ite
                          (= #b101 ggg)
                          (let ((mrr8 (x86-shr8 lhs rhs newstate)))
                            (let ((ms (x86-store-res8 mrr8 epart)))
                              (x86-done-insn ms #x3 opsize addrsize)))
                          (ite
                           (= #b110 ggg)
                           (let ((mrr8 (x86-shl8 lhs rhs newstate)))
                             (let ((ms (x86-store-res8 mrr8 epart)))
                               (x86-done-insn ms #x3 opsize addrsize)))
                           (let ((mrr8 (x86-sar8 lhs rhs newstate)))
                             (let ((ms (x86-store-res8 mrr8 epart)))
                               (x86-done-insn
                                ms
                                #x3
                                opsize
                                addrsize))))))))))))
                (ite
                 (= #xC1 opcode)
                 (let ((rhs (get-byte (bvadd eip #x02))))
                   (ite
                    (= #b1 opsize)
                    (let ((lhs (getreg16 epart state)))
                      (ite
                       (= #b000 ggg)
                       (let ((mrr16 (x86-rol16 lhs rhs newstate)))
                         (let ((ms (x86-store-res16 mrr16 epart)))
                           (x86-done-insn ms #x3 opsize addrsize)))
                       (ite
                        (= #b001 ggg)
                        (let ((mrr16 (x86-ror16 lhs rhs newstate)))
                          (let ((ms (x86-store-res16 mrr16 epart)))
                            (x86-done-insn ms #x3 opsize addrsize)))
                        (ite
                         (= #b010 ggg)
                         (let ((mrr16 (x86-rcl16 lhs rhs newstate)))
                           (let ((ms (x86-store-res16 mrr16 epart)))
                             (x86-done-insn ms #x3 opsize addrsize)))
                         (ite
                          (= #b011 ggg)
                          (let ((mrr16 (x86-rcr16 lhs rhs newstate)))
                            (let ((ms (x86-store-res16 mrr16 epart)))
                              (x86-done-insn ms #x3 opsize addrsize)))
                          (ite
                           (= #b100 ggg)
                           (let ((mrr16 (x86-shl16 lhs rhs newstate)))
                             (let ((ms (x86-store-res16 mrr16 epart)))
                               (x86-done-insn ms #x3 opsize addrsize)))
                           (ite
                            (= #b101 ggg)
                            (let ((mrr16 (x86-shr16 lhs rhs newstate)))
                              (let ((ms (x86-store-res16 mrr16 epart)))
                                (x86-done-insn ms #x3 opsize addrsize)))
                            (ite
                             (= #b110 ggg)
                             (let ((mrr16 (x86-shl16 lhs rhs newstate)))
                               (let ((ms (x86-store-res16 mrr16 epart)))
                                 (x86-done-insn ms #x3 opsize addrsize)))
                             (let ((mrr16 (x86-sar16 lhs rhs newstate)))
                               (let ((ms (x86-store-res16 mrr16 epart)))
                                 (x86-done-insn
                                  ms
                                  #x3
                                  opsize
                                  addrsize)))))))))))
                    (let ((lhs (getreg32 epart state)))
                      (ite
                       (= #b000 ggg)
                       (let ((mrr32 (x86-rol32 lhs rhs newstate)))
                         (let ((ms (x86-store-res32 mrr32 epart)))
                           (x86-done-insn ms #x3 opsize addrsize)))
                       (ite
                        (= #b001 ggg)
                        (let ((mrr32 (x86-ror32 lhs rhs newstate)))
                          (let ((ms (x86-store-res32 mrr32 epart)))
                            (x86-done-insn ms #x3 opsize addrsize)))
                        (ite
                         (= #b010 ggg)
                         (let ((mrr32 (x86-rcl32 lhs rhs newstate)))
                           (let ((ms (x86-store-res32 mrr32 epart)))
                             (x86-done-insn ms #x3 opsize addrsize)))
                         (ite
                          (= #b011 ggg)
                          (let ((mrr32 (x86-rcr32 lhs rhs newstate)))
                            (let ((ms (x86-store-res32 mrr32 epart)))
                              (x86-done-insn ms #x3 opsize addrsize)))
                          (ite
                           (= #b100 ggg)
                           (let ((mrr32 (x86-shl32 lhs rhs newstate)))
                             (let ((ms (x86-store-res32 mrr32 epart)))
                               (x86-done-insn ms #x3 opsize addrsize)))
                           (ite
                            (= #b101 ggg)
                            (let ((mrr32 (x86-shr32 lhs rhs newstate)))
                              (let ((ms (x86-store-res32 mrr32 epart)))
                                (x86-done-insn ms #x3 opsize addrsize)))
                            (ite
                             (= #b110 ggg)
                             (let ((mrr32 (x86-shl32 lhs rhs newstate)))
                               (let ((ms (x86-store-res32 mrr32 epart)))
                                 (x86-done-insn ms #x3 opsize addrsize)))
                             (let ((mrr32 (x86-sar32 lhs rhs newstate)))
                               (let ((ms (x86-store-res32 mrr32 epart)))
                                 (x86-done-insn
                                  ms
                                  #x3
                                  opsize
                                  addrsize)))))))))))))
                 (ite
                  (= #xC2 opcode)
                  (x86-badstate state)
                  (ite
                   (= #xC3 opcode)
                   (x86-badstate state)
                   (ite
                    (= #xC4 opcode)
                    (x86-badstate state)
                    (ite
                     (= #xC5 opcode)
                     (x86-badstate state)
                     (ite
                      (= #xC6 opcode)
                      (x86-badstate state)
                      (ite
                       (= #xC7 opcode)
                       (x86-badstate state)
                       (ite
                        (= #xC8 opcode)
                        (x86-badstate state)
                        (ite
                         (= #xC9 opcode)
                         (x86-badstate state)
                         (ite
                          (= #xCA opcode)
                          (x86-badstate state)
                          (ite
                           (= #xCB opcode)
                           (x86-badstate state)
                           (ite
                            (= #xCC opcode)
                            (x86-badstate state)
                            (ite
                             (= #xCD opcode)
                             (x86-badstate state)
                             (ite
                              (= #xCE opcode)
                              (x86-badstate state)
                              (x86-badstate state))))))))))))))))))))))))
(define-fun
 x86-singlebyte-0xDF-0xD0
 ((eip Byte) (state MachineState) (opsize Bit) (addrsize Bit))
 DecodedMachineState
 (let ((opcode (get-byte eip)))
   (let ((eip0 (bvadd eip #x01)))
     (let ((modrm (get-byte eip0)))
       (let ((ggg ((_ extract 5 3) modrm)))
         (let ((epart ((_ extract 2 0) modrm)))
           (let ((extra (bool-to-bit (= ((_ extract 7 6) modrm) #b11))))
             (let ((newstate (putextra extra state)))
               (ite
                (= #xD0 opcode)
                (let ((lhs (getreg8 epart state)))
                  (ite
                   (= #b000 ggg)
                   (let ((mrr8 (x86-rol8 lhs #x01 newstate)))
                     (let ((ms (x86-store-res8 mrr8 epart)))
                       (x86-done-insn ms #x2 opsize addrsize)))
                   (ite
                    (= #b001 ggg)
                    (let ((mrr8 (x86-ror8 lhs #x01 newstate)))
                      (let ((ms (x86-store-res8 mrr8 epart)))
                        (x86-done-insn ms #x2 opsize addrsize)))
                    (ite
                     (= #b010 ggg)
                     (let ((mrr8 (x86-rcl8 lhs #x01 newstate)))
                       (let ((ms (x86-store-res8 mrr8 epart)))
                         (x86-done-insn ms #x2 opsize addrsize)))
                     (ite
                      (= #b011 ggg)
                      (let ((mrr8 (x86-rcr8 lhs #x01 newstate)))
                        (let ((ms (x86-store-res8 mrr8 epart)))
                          (x86-done-insn ms #x2 opsize addrsize)))
                      (ite
                       (= #b100 ggg)
                       (let ((mrr8 (x86-shl8 lhs #x01 newstate)))
                         (let ((ms (x86-store-res8 mrr8 epart)))
                           (x86-done-insn ms #x2 opsize addrsize)))
                       (ite
                        (= #b101 ggg)
                        (let ((mrr8 (x86-shr8 lhs #x01 newstate)))
                          (let ((ms (x86-store-res8 mrr8 epart)))
                            (x86-done-insn ms #x2 opsize addrsize)))
                        (ite
                         (= #b110 ggg)
                         (let ((mrr8 (x86-shl8 lhs #x01 newstate)))
                           (let ((ms (x86-store-res8 mrr8 epart)))
                             (x86-done-insn ms #x2 opsize addrsize)))
                         (let ((mrr8 (x86-sar8 lhs #x01 newstate)))
                           (let ((ms (x86-store-res8 mrr8 epart)))
                             (x86-done-insn ms #x2 opsize addrsize)))))))))))
                (ite
                 (= #xD1 opcode)
                 (ite
                  (= #b1 opsize)
                  (let ((lhs (getreg16 epart state)))
                    (ite
                     (= #b000 ggg)
                     (let ((mrr16 (x86-rol16 lhs #x01 newstate)))
                       (let ((ms (x86-store-res16 mrr16 epart)))
                         (x86-done-insn ms #x2 opsize addrsize)))
                     (ite
                      (= #b001 ggg)
                      (let ((mrr16 (x86-ror16 lhs #x01 newstate)))
                        (let ((ms (x86-store-res16 mrr16 epart)))
                          (x86-done-insn ms #x2 opsize addrsize)))
                      (ite
                       (= #b010 ggg)
                       (let ((mrr16 (x86-rcl16 lhs #x01 newstate)))
                         (let ((ms (x86-store-res16 mrr16 epart)))
                           (x86-done-insn ms #x2 opsize addrsize)))
                       (ite
                        (= #b011 ggg)
                        (let ((mrr16 (x86-rcr16 lhs #x01 newstate)))
                          (let ((ms (x86-store-res16 mrr16 epart)))
                            (x86-done-insn ms #x2 opsize addrsize)))
                        (ite
                         (= #b100 ggg)
                         (let ((mrr16 (x86-shl16 lhs #x01 newstate)))
                           (let ((ms (x86-store-res16 mrr16 epart)))
                             (x86-done-insn ms #x2 opsize addrsize)))
                         (ite
                          (= #b101 ggg)
                          (let ((mrr16 (x86-shr16 lhs #x01 newstate)))
                            (let ((ms (x86-store-res16 mrr16 epart)))
                              (x86-done-insn ms #x2 opsize addrsize)))
                          (ite
                           (= #b110 ggg)
                           (let ((mrr16 (x86-shl16 lhs #x01 newstate)))
                             (let ((ms (x86-store-res16 mrr16 epart)))
                               (x86-done-insn ms #x2 opsize addrsize)))
                           (let ((mrr16 (x86-sar16 lhs #x01 newstate)))
                             (let ((ms (x86-store-res16 mrr16 epart)))
                               (x86-done-insn
                                ms
                                #x2
                                opsize
                                addrsize)))))))))))
                  (let ((lhs (getreg32 epart state)))
                    (ite
                     (= #b000 ggg)
                     (let ((mrr32 (x86-rol32 lhs #x01 newstate)))
                       (let ((ms (x86-store-res32 mrr32 epart)))
                         (x86-done-insn ms #x2 opsize addrsize)))
                     (ite
                      (= #b001 ggg)
                      (let ((mrr32 (x86-ror32 lhs #x01 newstate)))
                        (let ((ms (x86-store-res32 mrr32 epart)))
                          (x86-done-insn ms #x2 opsize addrsize)))
                      (ite
                       (= #b010 ggg)
                       (let ((mrr32 (x86-rcl32 lhs #x01 newstate)))
                         (let ((ms (x86-store-res32 mrr32 epart)))
                           (x86-done-insn ms #x2 opsize addrsize)))
                       (ite
                        (= #b011 ggg)
                        (let ((mrr32 (x86-rcr32 lhs #x01 newstate)))
                          (let ((ms (x86-store-res32 mrr32 epart)))
                            (x86-done-insn ms #x2 opsize addrsize)))
                        (ite
                         (= #b100 ggg)
                         (let ((mrr32 (x86-shl32 lhs #x01 newstate)))
                           (let ((ms (x86-store-res32 mrr32 epart)))
                             (x86-done-insn ms #x2 opsize addrsize)))
                         (ite
                          (= #b101 ggg)
                          (let ((mrr32 (x86-shr32 lhs #x01 newstate)))
                            (let ((ms (x86-store-res32 mrr32 epart)))
                              (x86-done-insn ms #x2 opsize addrsize)))
                          (ite
                           (= #b110 ggg)
                           (let ((mrr32 (x86-shl32 lhs #x01 newstate)))
                             (let ((ms (x86-store-res32 mrr32 epart)))
                               (x86-done-insn ms #x2 opsize addrsize)))
                           (let ((mrr32 (x86-sar32 lhs #x01 newstate)))
                             (let ((ms (x86-store-res32 mrr32 epart)))
                               (x86-done-insn
                                ms
                                #x2
                                opsize
                                addrsize))))))))))))
                 (ite
                  (= #xD2 opcode)
                  (let ((lhs (getreg8 epart state)))
                    (ite
                     (= #b000 ggg)
                     (let ((mrr8
                            (x86-rol8 lhs (getreg8 CLIdx newstate) newstate)))
                       (let ((ms (x86-store-res8 mrr8 epart)))
                         (x86-done-insn ms #x2 opsize addrsize)))
                     (ite
                      (= #b001 ggg)
                      (let ((mrr8
                             (x86-ror8 lhs (getreg8 CLIdx newstate) newstate)))
                        (let ((ms (x86-store-res8 mrr8 epart)))
                          (x86-done-insn ms #x2 opsize addrsize)))
                      (ite
                       (= #b010 ggg)
                       (let ((mrr8
                              (x86-rcl8
                               lhs
                               (getreg8 CLIdx newstate)
                               newstate)))
                         (let ((ms (x86-store-res8 mrr8 epart)))
                           (x86-done-insn ms #x2 opsize addrsize)))
                       (ite
                        (= #b011 ggg)
                        (let ((mrr8
                               (x86-rcr8
                                lhs
                                (getreg8 CLIdx newstate)
                                newstate)))
                          (let ((ms (x86-store-res8 mrr8 epart)))
                            (x86-done-insn ms #x2 opsize addrsize)))
                        (ite
                         (= #b100 ggg)
                         (let ((mrr8
                                (x86-shl8
                                 lhs
                                 (getreg8 CLIdx newstate)
                                 newstate)))
                           (let ((ms (x86-store-res8 mrr8 epart)))
                             (x86-done-insn ms #x2 opsize addrsize)))
                         (ite
                          (= #b101 ggg)
                          (let ((mrr8
                                 (x86-shr8
                                  lhs
                                  (getreg8 CLIdx newstate)
                                  newstate)))
                            (let ((ms (x86-store-res8 mrr8 epart)))
                              (x86-done-insn ms #x2 opsize addrsize)))
                          (ite
                           (= #b110 ggg)
                           (let ((mrr8
                                  (x86-shl8
                                   lhs
                                   (getreg8 CLIdx newstate)
                                   newstate)))
                             (let ((ms (x86-store-res8 mrr8 epart)))
                               (x86-done-insn ms #x2 opsize addrsize)))
                           (let ((mrr8
                                  (x86-sar8
                                   lhs
                                   (getreg8 CLIdx newstate)
                                   newstate)))
                             (let ((ms (x86-store-res8 mrr8 epart)))
                               (x86-done-insn
                                ms
                                #x2
                                opsize
                                addrsize)))))))))))
                  (ite
                   (= #xD3 opcode)
                   (ite
                    (= #b1 opsize)
                    (let ((lhs (getreg16 epart state)))
                      (ite
                       (= #b000 ggg)
                       (let ((mrr16
                              (x86-rol16
                               lhs
                               (getreg8 CLIdx newstate)
                               newstate)))
                         (let ((ms (x86-store-res16 mrr16 epart)))
                           (x86-done-insn ms #x2 opsize addrsize)))
                       (ite
                        (= #b001 ggg)
                        (let ((mrr16
                               (x86-ror16
                                lhs
                                (getreg8 CLIdx newstate)
                                newstate)))
                          (let ((ms (x86-store-res16 mrr16 epart)))
                            (x86-done-insn ms #x2 opsize addrsize)))
                        (ite
                         (= #b010 ggg)
                         (let ((mrr16
                                (x86-rcl16
                                 lhs
                                 (getreg8 CLIdx newstate)
                                 newstate)))
                           (let ((ms (x86-store-res16 mrr16 epart)))
                             (x86-done-insn ms #x2 opsize addrsize)))
                         (ite
                          (= #b011 ggg)
                          (let ((mrr16
                                 (x86-rcr16
                                  lhs
                                  (getreg8 CLIdx newstate)
                                  newstate)))
                            (let ((ms (x86-store-res16 mrr16 epart)))
                              (x86-done-insn ms #x2 opsize addrsize)))
                          (ite
                           (= #b100 ggg)
                           (let ((mrr16
                                  (x86-shl16
                                   lhs
                                   (getreg8 CLIdx newstate)
                                   newstate)))
                             (let ((ms (x86-store-res16 mrr16 epart)))
                               (x86-done-insn ms #x2 opsize addrsize)))
                           (ite
                            (= #b101 ggg)
                            (let ((mrr16
                                   (x86-shr16
                                    lhs
                                    (getreg8 CLIdx newstate)
                                    newstate)))
                              (let ((ms (x86-store-res16 mrr16 epart)))
                                (x86-done-insn ms #x2 opsize addrsize)))
                            (ite
                             (= #b110 ggg)
                             (let ((mrr16
                                    (x86-shl16
                                     lhs
                                     (getreg8 CLIdx newstate)
                                     newstate)))
                               (let ((ms (x86-store-res16 mrr16 epart)))
                                 (x86-done-insn ms #x2 opsize addrsize)))
                             (let ((mrr16
                                    (x86-sar16
                                     lhs
                                     (getreg8 CLIdx newstate)
                                     newstate)))
                               (let ((ms (x86-store-res16 mrr16 epart)))
                                 (x86-done-insn
                                  ms
                                  #x2
                                  opsize
                                  addrsize)))))))))))
                    (let ((lhs (getreg32 epart state)))
                      (ite
                       (= #b000 ggg)
                       (let ((mrr32
                              (x86-rol32
                               lhs
                               (getreg8 CLIdx newstate)
                               newstate)))
                         (let ((ms (x86-store-res32 mrr32 epart)))
                           (x86-done-insn ms #x2 opsize addrsize)))
                       (ite
                        (= #b001 ggg)
                        (let ((mrr32
                               (x86-ror32
                                lhs
                                (getreg8 CLIdx newstate)
                                newstate)))
                          (let ((ms (x86-store-res32 mrr32 epart)))
                            (x86-done-insn ms #x2 opsize addrsize)))
                        (ite
                         (= #b010 ggg)
                         (let ((mrr32
                                (x86-rcl32
                                 lhs
                                 (getreg8 CLIdx newstate)
                                 newstate)))
                           (let ((ms (x86-store-res32 mrr32 epart)))
                             (x86-done-insn ms #x2 opsize addrsize)))
                         (ite
                          (= #b011 ggg)
                          (let ((mrr32
                                 (x86-rcr32
                                  lhs
                                  (getreg8 CLIdx newstate)
                                  newstate)))
                            (let ((ms (x86-store-res32 mrr32 epart)))
                              (x86-done-insn ms #x2 opsize addrsize)))
                          (ite
                           (= #b100 ggg)
                           (let ((mrr32
                                  (x86-shl32
                                   lhs
                                   (getreg8 CLIdx newstate)
                                   newstate)))
                             (let ((ms (x86-store-res32 mrr32 epart)))
                               (x86-done-insn ms #x2 opsize addrsize)))
                           (ite
                            (= #b101 ggg)
                            (let ((mrr32
                                   (x86-shr32
                                    lhs
                                    (getreg8 CLIdx newstate)
                                    newstate)))
                              (let ((ms (x86-store-res32 mrr32 epart)))
                                (x86-done-insn ms #x2 opsize addrsize)))
                            (ite
                             (= #b110 ggg)
                             (let ((mrr32
                                    (x86-shl32
                                     lhs
                                     (getreg8 CLIdx newstate)
                                     newstate)))
                               (let ((ms (x86-store-res32 mrr32 epart)))
                                 (x86-done-insn ms #x2 opsize addrsize)))
                             (let ((mrr32
                                    (x86-sar32
                                     lhs
                                     (getreg8 CLIdx newstate)
                                     newstate)))
                               (let ((ms (x86-store-res32 mrr32 epart)))
                                 (x86-done-insn
                                  ms
                                  #x2
                                  opsize
                                  addrsize))))))))))))
                   (ite
                    (= #xD4 opcode)
                    (x86-badstate state)
                    (ite
                     (= #xD5 opcode)
                     (x86-badstate state)
                     (ite
                      (= #xD6 opcode)
                      (x86-badstate state)
                      (ite
                       (= #xD7 opcode)
                       (x86-badstate state)
                       (ite
                        (= #xD8 opcode)
                        (x86-badstate state)
                        (ite
                         (= #xD9 opcode)
                         (x86-badstate state)
                         (ite
                          (= #xDA opcode)
                          (x86-badstate state)
                          (ite
                           (= #xDB opcode)
                           (x86-badstate state)
                           (ite
                            (= #xDC opcode)
                            (x86-badstate state)
                            (ite
                             (= #xDD opcode)
                             (x86-badstate state)
                             (ite
                              (= #xDE opcode)
                              (x86-badstate state)
                              (x86-badstate state))))))))))))))))))))))))
(define-fun
 x86-singlebyte-0xEF-0xE0
 ((eip Byte) (state MachineState) (opsize Bit) (addrsize Bit))
 DecodedMachineState
 (let ((opcode (get-byte eip)))
   (ite
    (= #xE0 opcode)
    (x86-badstate state)
    (ite
     (= #xE1 opcode)
     (x86-badstate state)
     (ite
      (= #xE2 opcode)
      (x86-badstate state)
      (ite
       (= #xE3 opcode)
       (x86-badstate state)
       (ite
        (= #xE4 opcode)
        (x86-badstate state)
        (ite
         (= #xE5 opcode)
         (x86-badstate state)
         (ite
          (= #xE6 opcode)
          (x86-badstate state)
          (ite
           (= #xE7 opcode)
           (x86-badstate state)
           (ite
            (= #xE8 opcode)
            (x86-badstate state)
            (ite
             (= #xE9 opcode)
             (x86-badstate state)
             (ite
              (= #xEA opcode)
              (x86-badstate state)
              (ite
               (= #xEB opcode)
               (x86-badstate state)
               (ite
                (= #xEC opcode)
                (x86-badstate state)
                (ite
                 (= #xED opcode)
                 (x86-badstate state)
                 (ite
                  (= #xEE opcode)
                  (x86-badstate state)
                  (x86-badstate state))))))))))))))))))
(define-fun
 x86-singlebyte
 ((eip Byte) (state MachineState) (opsize Bit) (addrsize Bit))
 DecodedMachineState
 (let ((opcode ((_ extract 7 4) (get-byte eip))))
   (ite
    (= opcode #x0)
    (x86-singlebyte-0x0F-0x00 eip state opsize addrsize)
    (ite
     (= opcode #x1)
     (x86-singlebyte-0x1F-0x10 eip state opsize addrsize)
     (ite
      (= opcode #x2)
      (x86-singlebyte-0x2F-0x20 eip state opsize addrsize)
      (ite
       (= opcode #x3)
       (x86-singlebyte-0x3F-0x30 eip state opsize addrsize)
       (ite
        (= opcode #x4)
        (x86-singlebyte-0x4F-0x40 eip state opsize addrsize)
        (ite
         (= opcode #x5)
         (x86-singlebyte-0x5F-0x50 eip state opsize addrsize)
         (ite
          (= opcode #x6)
          (x86-singlebyte-0x6F-0x60 eip state opsize addrsize)
          (ite
           (= opcode #x7)
           (x86-singlebyte-0x7F-0x70 eip state opsize addrsize)
           (ite
            (= opcode #x8)
            (x86-singlebyte-0x8F-0x80 eip state opsize addrsize)
            (ite
             (= opcode #x9)
             (x86-singlebyte-0x9F-0x90 eip state opsize addrsize)
             (ite
              (= opcode #xA)
              (x86-singlebyte-0xAF-0xA0 eip state opsize addrsize)
              (ite
               (= opcode #xB)
               (x86-singlebyte-0xBF-0xB0 eip state opsize addrsize)
               (ite
                (= opcode #xC)
                (x86-singlebyte-0xCF-0xC0 eip state opsize addrsize)
                (ite
                 (= opcode #xD)
                 (x86-singlebyte-0xDF-0xD0 eip state opsize addrsize)
                 (ite
                  (= opcode #xE)
                  (x86-singlebyte-0xEF-0xE0 eip state opsize addrsize)
                  (x86-badstate state))))))))))))))))))
(define-fun
 symbolic-insn
 ((eip Byte) (state MachineState))
 DecodedMachineState
 (let ((has-opsize (consume-opsize-prefix eip)))
   (let ((eip0 (update-eip eip has-opsize)))
     (let ((has-addrsize (consume-addrsize-prefix eip0)))
       (let ((eip1 (update-eip eip0 has-opsize)))
         (x86-singlebyte eip1 state has-opsize has-addrsize))))))
(assert
 (forall
  ((cf (_ BitVec 1))
   (pf (_ BitVec 1))
   (af (_ BitVec 1))
   (zf (_ BitVec 1))
   (sf (_ BitVec 1))
   (df (_ BitVec 1))
   (of (_ BitVec 1))
   (eax (_ BitVec 32))
   (ecx (_ BitVec 32))
   (edx (_ BitVec 32))
   (ebx (_ BitVec 32))
   (esp (_ BitVec 32))
   (ebp (_ BitVec 32))
   (esi (_ BitVec 32))
   (edi (_ BitVec 32))
   (idx (_ BitVec 8)))
  (let ((extra0 true))
    (let ((state0
           (concat
            #b1
            of
            df
            sf
            zf
            af
            pf
            cf
            edi
            esi
            ebp
            esp
            ebx
            edx
            ecx
            eax)))
      (let ((eip0 #x00))
        (let ((decstate1 (symbolic-insn eip0 state0)))
          (let ((len1 ((_ extract 267 264) decstate1)))
            (let ((state1 ((_ extract 263 0) decstate1)))
              (let ((extra1 (= #b1 (getextra state1))))
                (let ((lenpred1 (not (= len1 #x0))))
                  (let ((eip1 (bvadd ((_ zero_extend 4) len1) eip0)))
                    (let ((decstate2 (symbolic-insn eip1 state1)))
                      (let ((len2 ((_ extract 267 264) decstate2)))
                        (let ((state2 ((_ extract 263 0) decstate2)))
                          (let ((extra2
                                 (and extra1 (= #b1 (getextra state2)))))
                            (let ((lenpred2
                                   (and lenpred1 (not (= len2 #x0)))))
                              (let ((eip2
                                     (bvadd ((_ zero_extend 4) len2) eip1)))
                                (let ((decstate3 (symbolic-insn eip2 state2)))
                                  (let ((len3 ((_ extract 267 264) decstate3)))
                                    (let ((state3
                                           ((_ extract 263 0) decstate3)))
                                      (let ((extra3
                                             (and extra2
                                                  (=
                                                   #b1
                                                   (getextra state3)))))
                                        (let ((lenpred3
                                               (and lenpred2
                                                    (not (= len3 #x0)))))
                                          (let ((eip3
                                                 (bvadd
                                                  ((_ zero_extend 4) len3)
                                                  eip2)))
                                            (let ((decstate4
                                                   (symbolic-insn
                                                    eip3
                                                    state3)))
                                              (let ((len4
                                                     ((_ extract 267 264)
                                                      decstate4)))
                                                (let ((state4
                                                       ((_ extract 263 0)
                                                        decstate4)))
                                                  (let ((extra4
                                                         (and extra3
                                                              (=
                                                               #b1
                                                               (getextra
                                                                state4)))))
                                                    (let ((lenpred4
                                                           (and lenpred3
                                                                (not
                                                                 (=
                                                                  len4
                                                                  #x0)))))
                                                      (let ((eip4
                                                             (bvadd
                                                              ((_
                                                                zero_extend
                                                                4)
                                                               len4)
                                                              eip3)))
                                                        (let ((decstate5
                                                               (symbolic-insn
                                                                eip4
                                                                state4)))
                                                          (let ((len5
                                                                 ((_
                                                                   extract
                                                                   267
                                                                   264)
                                                                  decstate5)))
                                                            (let ((state5
                                                                   ((_
                                                                     extract
                                                                     263
                                                                     0)
                                                                    decstate5)))
                                                              (let ((extra5
                                                                     (and extra4
                                                                          (=
                                                                           #b1
                                                                           (getextra
                                                                            state5)))))
                                                                (let ((lenpred5
                                                                       (and lenpred4
                                                                            (not
                                                                             (=
                                                                              len5
                                                                              #x0)))))
                                                                  (let ((eip5
                                                                         (bvadd
                                                                          ((_
                                                                            zero_extend
                                                                            4)
                                                                           len5)
                                                                          eip4)))
                                                                    (let ((decstate6
                                                                           (symbolic-insn
                                                                            eip5
                                                                            state5)))
                                                                      (let ((len6
                                                                             ((_
                                                                               extract
                                                                               267
                                                                               264)
                                                                              decstate6)))
                                                                        (let ((state6
                                                                               ((_
                                                                                 extract
                                                                                 263
                                                                                 0)
                                                                                decstate6)))
                                                                          (let ((extra6
                                                                                 (and extra5
                                                                                      (=
                                                                                       #b1
                                                                                       (getextra
                                                                                        state6)))))
                                                                            (let ((lenpred6
                                                                                   (and lenpred5
                                                                                        (not
                                                                                         (=
                                                                                          len6
                                                                                          #x0)))))
                                                                              (let ((eip6
                                                                                     (bvadd
                                                                                      ((_
                                                                                        zero_extend
                                                                                        4)
                                                                                       len6)
                                                                                      eip5)))
                                                                                (let ((decstate7
                                                                                       (symbolic-insn
                                                                                        eip6
                                                                                        state6)))
                                                                                  (let ((len7
                                                                                         ((_
                                                                                           extract
                                                                                           267
                                                                                           264)
                                                                                          decstate7)))
                                                                                    (let ((state7
                                                                                           ((_
                                                                                             extract
                                                                                             263
                                                                                             0)
                                                                                            decstate7)))
                                                                                      (let ((extra7
                                                                                             (and extra6
                                                                                                  (=
                                                                                                   #b1
                                                                                                   (getextra
                                                                                                    state7)))))
                                                                                        (let ((lenpred7
                                                                                               (and lenpred6
                                                                                                    (not
                                                                                                     (=
                                                                                                      len7
                                                                                                      #x0)))))
                                                                                          (let ((eip7
                                                                                                 (bvadd
                                                                                                  ((_
                                                                                                    zero_extend
                                                                                                    4)
                                                                                                   len7)
                                                                                                  eip6)))
                                                                                            (let ((decstate8
                                                                                                   (symbolic-insn
                                                                                                    eip7
                                                                                                    state7)))
                                                                                              (let ((len8
                                                                                                     ((_
                                                                                                       extract
                                                                                                       267
                                                                                                       264)
                                                                                                      decstate8)))
                                                                                                (let ((state8
                                                                                                       ((_
                                                                                                         extract
                                                                                                         263
                                                                                                         0)
                                                                                                        decstate8)))
                                                                                                  (let ((extra8
                                                                                                         (and extra7
                                                                                                              (=
                                                                                                               #b1
                                                                                                               (getextra
                                                                                                                state8)))))
                                                                                                    (let ((lenpred8
                                                                                                           (and lenpred7
                                                                                                                (not
                                                                                                                 (=
                                                                                                                  len8
                                                                                                                  #x0)))))
                                                                                                      (let ((eip8
                                                                                                             (bvadd
                                                                                                              ((_
                                                                                                                zero_extend
                                                                                                                4)
                                                                                                               len8)
                                                                                                              eip7)))
                                                                                                        (let ((decstate9
                                                                                                               (symbolic-insn
                                                                                                                eip8
                                                                                                                state8)))
                                                                                                          (let ((len9
                                                                                                                 ((_
                                                                                                                   extract
                                                                                                                   267
                                                                                                                   264)
                                                                                                                  decstate9)))
                                                                                                            (let ((state9
                                                                                                                   ((_
                                                                                                                     extract
                                                                                                                     263
                                                                                                                     0)
                                                                                                                    decstate9)))
                                                                                                              (let ((extra9
                                                                                                                     (and extra8
                                                                                                                          (=
                                                                                                                           #b1
                                                                                                                           (getextra
                                                                                                                            state9)))))
                                                                                                                (let ((lenpred9
                                                                                                                       (and lenpred8
                                                                                                                            (not
                                                                                                                             (=
                                                                                                                              len9
                                                                                                                              #x0)))))
                                                                                                                  (let ((eip9
                                                                                                                         (bvadd
                                                                                                                          ((_
                                                                                                                            zero_extend
                                                                                                                            4)
                                                                                                                           len9)
                                                                                                                          eip8)))
                                                                                                                    (let ((decstateA
                                                                                                                           (symbolic-insn
                                                                                                                            eip9
                                                                                                                            state9)))
                                                                                                                      (let ((lenA
                                                                                                                             ((_
                                                                                                                               extract
                                                                                                                               267
                                                                                                                               264)
                                                                                                                              decstateA)))
                                                                                                                        (let ((stateA
                                                                                                                               ((_
                                                                                                                                 extract
                                                                                                                                 263
                                                                                                                                 0)
                                                                                                                                decstateA)))
                                                                                                                          (let ((extraA
                                                                                                                                 (and extra9
                                                                                                                                      (=
                                                                                                                                       #b1
                                                                                                                                       (getextra
                                                                                                                                        stateA)))))
                                                                                                                            (let ((lenpredA
                                                                                                                                   (and lenpred9
                                                                                                                                        (not
                                                                                                                                         (=
                                                                                                                                          lenA
                                                                                                                                          #x0)))))
                                                                                                                              (let ((eipA
                                                                                                                                     (bvadd
                                                                                                                                      ((_
                                                                                                                                        zero_extend
                                                                                                                                        4)
                                                                                                                                       lenA)
                                                                                                                                      eip9)))
                                                                                                                                (let ((decstateB
                                                                                                                                       (symbolic-insn
                                                                                                                                        eipA
                                                                                                                                        stateA)))
                                                                                                                                  (let ((lenB
                                                                                                                                         ((_
                                                                                                                                           extract
                                                                                                                                           267
                                                                                                                                           264)
                                                                                                                                          decstateB)))
                                                                                                                                    (let ((stateB
                                                                                                                                           ((_
                                                                                                                                             extract
                                                                                                                                             263
                                                                                                                                             0)
                                                                                                                                            decstateB)))
                                                                                                                                      (let ((extraB
                                                                                                                                             (and extraA
                                                                                                                                                  (=
                                                                                                                                                   #b1
                                                                                                                                                   (getextra
                                                                                                                                                    stateB)))))
                                                                                                                                        (let ((lenpredB
                                                                                                                                               (and lenpredA
                                                                                                                                                    (not
                                                                                                                                                     (=
                                                                                                                                                      lenB
                                                                                                                                                      #x0)))))
                                                                                                                                          (let ((eipB
                                                                                                                                                 (bvadd
                                                                                                                                                  ((_
                                                                                                                                                    zero_extend
                                                                                                                                                    4)
                                                                                                                                                   lenB)
                                                                                                                                                  eipA)))
                                                                                                                                            (let ((decstateC
                                                                                                                                                   (symbolic-insn
                                                                                                                                                    eipB
                                                                                                                                                    stateB)))
                                                                                                                                              (let ((lenC
                                                                                                                                                     ((_
                                                                                                                                                       extract
                                                                                                                                                       267
                                                                                                                                                       264)
                                                                                                                                                      decstateC)))
                                                                                                                                                (let ((stateC
                                                                                                                                                       ((_
                                                                                                                                                         extract
                                                                                                                                                         263
                                                                                                                                                         0)
                                                                                                                                                        decstateC)))
                                                                                                                                                  (let ((extraC
                                                                                                                                                         (and extraB
                                                                                                                                                              (=
                                                                                                                                                               #b1
                                                                                                                                                               (getextra
                                                                                                                                                                stateC)))))
                                                                                                                                                    (let ((lenpredC
                                                                                                                                                           (and lenpredB
                                                                                                                                                                (not
                                                                                                                                                                 (=
                                                                                                                                                                  lenC
                                                                                                                                                                  #x0)))))
                                                                                                                                                      (let ((eipC
                                                                                                                                                             (bvadd
                                                                                                                                                              ((_
                                                                                                                                                                zero_extend
                                                                                                                                                                4)
                                                                                                                                                               lenC)
                                                                                                                                                              eipB)))
                                                                                                                                                        (let ((decstateD
                                                                                                                                                               (symbolic-insn
                                                                                                                                                                eipC
                                                                                                                                                                stateC)))
                                                                                                                                                          (let ((lenD
                                                                                                                                                                 ((_
                                                                                                                                                                   extract
                                                                                                                                                                   267
                                                                                                                                                                   264)
                                                                                                                                                                  decstate4)))
                                                                                                                                                            (let ((stateD
                                                                                                                                                                   ((_
                                                                                                                                                                     extract
                                                                                                                                                                     263
                                                                                                                                                                     0)
                                                                                                                                                                    decstate4)))
                                                                                                                                                              (let ((extraD
                                                                                                                                                                     (and extraC
                                                                                                                                                                          (=
                                                                                                                                                                           #b1
                                                                                                                                                                           (getextra
                                                                                                                                                                            state4)))))
                                                                                                                                                                (let ((lenpredD
                                                                                                                                                                       (and lenpredC
                                                                                                                                                                            (not
                                                                                                                                                                             (=
                                                                                                                                                                              lenD
                                                                                                                                                                              #x0)))))
                                                                                                                                                                  (let ((eipD
                                                                                                                                                                         (bvadd
                                                                                                                                                                          ((_
                                                                                                                                                                            zero_extend
                                                                                                                                                                            4)
                                                                                                                                                                           lenD)
                                                                                                                                                                          eipC)))
                                                                                                                                                                    (let ((decstateE
                                                                                                                                                                           (symbolic-insn
                                                                                                                                                                            eipD
                                                                                                                                                                            state4)))
                                                                                                                                                                      (let ((lenE
                                                                                                                                                                             ((_
                                                                                                                                                                               extract
                                                                                                                                                                               267
                                                                                                                                                                               264)
                                                                                                                                                                              decstateE)))
                                                                                                                                                                        (let ((stateE
                                                                                                                                                                               ((_
                                                                                                                                                                                 extract
                                                                                                                                                                                 263
                                                                                                                                                                                 0)
                                                                                                                                                                                decstateE)))
                                                                                                                                                                          (let ((extraE
                                                                                                                                                                                 (and extraD
                                                                                                                                                                                      (=
                                                                                                                                                                                       #b1
                                                                                                                                                                                       (getextra
                                                                                                                                                                                        stateE)))))
                                                                                                                                                                            (let ((lenpredE
                                                                                                                                                                                   (and lenpredD
                                                                                                                                                                                        (not
                                                                                                                                                                                         (=
                                                                                                                                                                                          lenE
                                                                                                                                                                                          #x0)))))
                                                                                                                                                                              (let ((eipE
                                                                                                                                                                                     (bvadd
                                                                                                                                                                                      ((_
                                                                                                                                                                                        zero_extend
                                                                                                                                                                                        4)
                                                                                                                                                                                       lenE)
                                                                                                                                                                                      eipD)))
                                                                                                                                                                                (let ((decstateF
                                                                                                                                                                                       (symbolic-insn
                                                                                                                                                                                        eipE
                                                                                                                                                                                        stateE)))
                                                                                                                                                                                  (let ((lenF
                                                                                                                                                                                         ((_
                                                                                                                                                                                           extract
                                                                                                                                                                                           267
                                                                                                                                                                                           264)
                                                                                                                                                                                          decstateF)))
                                                                                                                                                                                    (let ((stateF
                                                                                                                                                                                           ((_
                                                                                                                                                                                             extract
                                                                                                                                                                                             263
                                                                                                                                                                                             0)
                                                                                                                                                                                            decstateF)))
                                                                                                                                                                                      (let ((extraF
                                                                                                                                                                                             (and extraE
                                                                                                                                                                                                  (=
                                                                                                                                                                                                   #b1
                                                                                                                                                                                                   (getextra
                                                                                                                                                                                                    stateF)))))
                                                                                                                                                                                        (let ((lenpredF
                                                                                                                                                                                               (and lenpredE
                                                                                                                                                                                                    (not
                                                                                                                                                                                                     (=
                                                                                                                                                                                                      lenF
                                                                                                                                                                                                      #x0)))))
                                                                                                                                                                                          (let ((eipF
                                                                                                                                                                                                 (bvadd
                                                                                                                                                                                                  ((_
                                                                                                                                                                                                    zero_extend
                                                                                                                                                                                                    4)
                                                                                                                                                                                                   lenF)
                                                                                                                                                                                                  eipE)))
                                                                                                                                                                                            (let ((decstate10
                                                                                                                                                                                                   (symbolic-insn
                                                                                                                                                                                                    eipF
                                                                                                                                                                                                    stateF)))
                                                                                                                                                                                              (let ((len10
                                                                                                                                                                                                     ((_
                                                                                                                                                                                                       extract
                                                                                                                                                                                                       267
                                                                                                                                                                                                       264)
                                                                                                                                                                                                      decstate10)))
                                                                                                                                                                                                (let ((state10
                                                                                                                                                                                                       ((_
                                                                                                                                                                                                         extract
                                                                                                                                                                                                         263
                                                                                                                                                                                                         0)
                                                                                                                                                                                                        decstate10)))
                                                                                                                                                                                                  (let ((extra10
                                                                                                                                                                                                         (and extraF
                                                                                                                                                                                                              (=
                                                                                                                                                                                                               #b1
                                                                                                                                                                                                               (getextra
                                                                                                                                                                                                                state10)))))
                                                                                                                                                                                                    (let ((lenpred10
                                                                                                                                                                                                           (and lenpredF
                                                                                                                                                                                                                (not
                                                                                                                                                                                                                 (=
                                                                                                                                                                                                                  len10
                                                                                                                                                                                                                  #x0)))))
                                                                                                                                                                                                      (let ((eip10
                                                                                                                                                                                                             (bvadd
                                                                                                                                                                                                              ((_
                                                                                                                                                                                                                zero_extend
                                                                                                                                                                                                                4)
                                                                                                                                                                                                               len10)
                                                                                                                                                                                                              eipF)))
                                                                                                                                                                                                        (let ((decstate11
                                                                                                                                                                                                               (symbolic-insn
                                                                                                                                                                                                                eip10
                                                                                                                                                                                                                state10)))
                                                                                                                                                                                                          (let ((len11
                                                                                                                                                                                                                 ((_
                                                                                                                                                                                                                   extract
                                                                                                                                                                                                                   267
                                                                                                                                                                                                                   264)
                                                                                                                                                                                                                  decstate11)))
                                                                                                                                                                                                            (let ((state11
                                                                                                                                                                                                                   ((_
                                                                                                                                                                                                                     extract
                                                                                                                                                                                                                     263
                                                                                                                                                                                                                     0)
                                                                                                                                                                                                                    decstate11)))
                                                                                                                                                                                                              (let ((extra11
                                                                                                                                                                                                                     (and extra10
                                                                                                                                                                                                                          (=
                                                                                                                                                                                                                           #b1
                                                                                                                                                                                                                           (getextra
                                                                                                                                                                                                                            state11)))))
                                                                                                                                                                                                                (let ((lenpred11
                                                                                                                                                                                                                       (and lenpred10
                                                                                                                                                                                                                            (not
                                                                                                                                                                                                                             (=
                                                                                                                                                                                                                              len11
                                                                                                                                                                                                                              #x0)))))
                                                                                                                                                                                                                  (let ((eip11
                                                                                                                                                                                                                         (bvadd
                                                                                                                                                                                                                          ((_
                                                                                                                                                                                                                            zero_extend
                                                                                                                                                                                                                            4)
                                                                                                                                                                                                                           len11)
                                                                                                                                                                                                                          eip10)))
                                                                                                                                                                                                                    (let ((decstate12
                                                                                                                                                                                                                           (symbolic-insn
                                                                                                                                                                                                                            eip11
                                                                                                                                                                                                                            state11)))
                                                                                                                                                                                                                      (let ((len12
                                                                                                                                                                                                                             ((_
                                                                                                                                                                                                                               extract
                                                                                                                                                                                                                               267
                                                                                                                                                                                                                               264)
                                                                                                                                                                                                                              decstate12)))
                                                                                                                                                                                                                        (let ((state12
                                                                                                                                                                                                                               ((_
                                                                                                                                                                                                                                 extract
                                                                                                                                                                                                                                 263
                                                                                                                                                                                                                                 0)
                                                                                                                                                                                                                                decstate12)))
                                                                                                                                                                                                                          (let ((extra12
                                                                                                                                                                                                                                 (and extra11
                                                                                                                                                                                                                                      (=
                                                                                                                                                                                                                                       #b1
                                                                                                                                                                                                                                       (getextra
                                                                                                                                                                                                                                        state12)))))
                                                                                                                                                                                                                            (let ((lenpred12
                                                                                                                                                                                                                                   (and lenpred11
                                                                                                                                                                                                                                        (not
                                                                                                                                                                                                                                         (=
                                                                                                                                                                                                                                          len12
                                                                                                                                                                                                                                          #x0)))))
                                                                                                                                                                                                                              (let ((eip12
                                                                                                                                                                                                                                     (bvadd
                                                                                                                                                                                                                                      ((_
                                                                                                                                                                                                                                        zero_extend
                                                                                                                                                                                                                                        4)
                                                                                                                                                                                                                                       len12)
                                                                                                                                                                                                                                      eip11)))
                                                                                                                                                                                                                                (let ((decstate13
                                                                                                                                                                                                                                       (symbolic-insn
                                                                                                                                                                                                                                        eip12
                                                                                                                                                                                                                                        state12)))
                                                                                                                                                                                                                                  (let ((len13
                                                                                                                                                                                                                                         ((_
                                                                                                                                                                                                                                           extract
                                                                                                                                                                                                                                           267
                                                                                                                                                                                                                                           264)
                                                                                                                                                                                                                                          decstate13)))
                                                                                                                                                                                                                                    (let ((state13
                                                                                                                                                                                                                                           ((_
                                                                                                                                                                                                                                             extract
                                                                                                                                                                                                                                             263
                                                                                                                                                                                                                                             0)
                                                                                                                                                                                                                                            decstate13)))
                                                                                                                                                                                                                                      (let ((extra13
                                                                                                                                                                                                                                             (and extra12
                                                                                                                                                                                                                                                  (=
                                                                                                                                                                                                                                                   #b1
                                                                                                                                                                                                                                                   (getextra
                                                                                                                                                                                                                                                    state13)))))
                                                                                                                                                                                                                                        (let ((lenpred13
                                                                                                                                                                                                                                               (and lenpred12
                                                                                                                                                                                                                                                    (not
                                                                                                                                                                                                                                                     (=
                                                                                                                                                                                                                                                      len13
                                                                                                                                                                                                                                                      #x0)))))
                                                                                                                                                                                                                                          (let ((eip13
                                                                                                                                                                                                                                                 (bvadd
                                                                                                                                                                                                                                                  ((_
                                                                                                                                                                                                                                                    zero_extend
                                                                                                                                                                                                                                                    4)
                                                                                                                                                                                                                                                   len13)
                                                                                                                                                                                                                                                  eip12)))
                                                                                                                                                                                                                                            (let ((decstate14
                                                                                                                                                                                                                                                   (symbolic-insn
                                                                                                                                                                                                                                                    eip13
                                                                                                                                                                                                                                                    state13)))
                                                                                                                                                                                                                                              (let ((len14
                                                                                                                                                                                                                                                     ((_
                                                                                                                                                                                                                                                       extract
                                                                                                                                                                                                                                                       267
                                                                                                                                                                                                                                                       264)
                                                                                                                                                                                                                                                      decstate14)))
                                                                                                                                                                                                                                                (let ((state14
                                                                                                                                                                                                                                                       ((_
                                                                                                                                                                                                                                                         extract
                                                                                                                                                                                                                                                         263
                                                                                                                                                                                                                                                         0)
                                                                                                                                                                                                                                                        decstate14)))
                                                                                                                                                                                                                                                  (let ((extra14
                                                                                                                                                                                                                                                         (and extra13
                                                                                                                                                                                                                                                              (=
                                                                                                                                                                                                                                                               #b1
                                                                                                                                                                                                                                                               (getextra
                                                                                                                                                                                                                                                                state14)))))
                                                                                                                                                                                                                                                    (let ((lenpred14
                                                                                                                                                                                                                                                           (and lenpred13
                                                                                                                                                                                                                                                                (not
                                                                                                                                                                                                                                                                 (=
                                                                                                                                                                                                                                                                  len14
                                                                                                                                                                                                                                                                  #x0)))))
                                                                                                                                                                                                                                                      (let ((eip14
                                                                                                                                                                                                                                                             (bvadd
                                                                                                                                                                                                                                                              ((_
                                                                                                                                                                                                                                                                zero_extend
                                                                                                                                                                                                                                                                4)
                                                                                                                                                                                                                                                               len14)
                                                                                                                                                                                                                                                              eip13)))
                                                                                                                                                                                                                                                        (let ((finalstate
                                                                                                                                                                                                                                                               (ite
                                                                                                                                                                                                                                                                (=
                                                                                                                                                                                                                                                                 NumInstrs
                                                                                                                                                                                                                                                                 #x01)
                                                                                                                                                                                                                                                                state1
                                                                                                                                                                                                                                                                (ite
                                                                                                                                                                                                                                                                 (=
                                                                                                                                                                                                                                                                  NumInstrs
                                                                                                                                                                                                                                                                  #x02)
                                                                                                                                                                                                                                                                 state2
                                                                                                                                                                                                                                                                 (ite
                                                                                                                                                                                                                                                                  (=
                                                                                                                                                                                                                                                                   NumInstrs
                                                                                                                                                                                                                                                                   #x03)
                                                                                                                                                                                                                                                                  state3
                                                                                                                                                                                                                                                                  (ite
                                                                                                                                                                                                                                                                   (=
                                                                                                                                                                                                                                                                    NumInstrs
                                                                                                                                                                                                                                                                    #x04)
                                                                                                                                                                                                                                                                   state4
                                                                                                                                                                                                                                                                   (ite
                                                                                                                                                                                                                                                                    (=
                                                                                                                                                                                                                                                                     NumInstrs
                                                                                                                                                                                                                                                                     #x05)
                                                                                                                                                                                                                                                                    state5
                                                                                                                                                                                                                                                                    (ite
                                                                                                                                                                                                                                                                     (=
                                                                                                                                                                                                                                                                      NumInstrs
                                                                                                                                                                                                                                                                      #x06)
                                                                                                                                                                                                                                                                     state6
                                                                                                                                                                                                                                                                     (ite
                                                                                                                                                                                                                                                                      (=
                                                                                                                                                                                                                                                                       NumInstrs
                                                                                                                                                                                                                                                                       #x07)
                                                                                                                                                                                                                                                                      state7
                                                                                                                                                                                                                                                                      (ite
                                                                                                                                                                                                                                                                       (=
                                                                                                                                                                                                                                                                        NumInstrs
                                                                                                                                                                                                                                                                        #x08)
                                                                                                                                                                                                                                                                       state8
                                                                                                                                                                                                                                                                       (ite
                                                                                                                                                                                                                                                                        (=
                                                                                                                                                                                                                                                                         NumInstrs
                                                                                                                                                                                                                                                                         #x09)
                                                                                                                                                                                                                                                                        state9
                                                                                                                                                                                                                                                                        (ite
                                                                                                                                                                                                                                                                         (=
                                                                                                                                                                                                                                                                          NumInstrs
                                                                                                                                                                                                                                                                          #x0A)
                                                                                                                                                                                                                                                                         stateA
                                                                                                                                                                                                                                                                         (ite
                                                                                                                                                                                                                                                                          (=
                                                                                                                                                                                                                                                                           NumInstrs
                                                                                                                                                                                                                                                                           #x0B)
                                                                                                                                                                                                                                                                          stateB
                                                                                                                                                                                                                                                                          (ite
                                                                                                                                                                                                                                                                           (=
                                                                                                                                                                                                                                                                            NumInstrs
                                                                                                                                                                                                                                                                            #x0C)
                                                                                                                                                                                                                                                                           stateC
                                                                                                                                                                                                                                                                           (ite
                                                                                                                                                                                                                                                                            (=
                                                                                                                                                                                                                                                                             NumInstrs
                                                                                                                                                                                                                                                                             #x0D)
                                                                                                                                                                                                                                                                            stateD
                                                                                                                                                                                                                                                                            (ite
                                                                                                                                                                                                                                                                             (=
                                                                                                                                                                                                                                                                              NumInstrs
                                                                                                                                                                                                                                                                              #x0E)
                                                                                                                                                                                                                                                                             stateE
                                                                                                                                                                                                                                                                             (ite
                                                                                                                                                                                                                                                                              (=
                                                                                                                                                                                                                                                                               NumInstrs
                                                                                                                                                                                                                                                                               #x0F)
                                                                                                                                                                                                                                                                              stateF
                                                                                                                                                                                                                                                                              (ite
                                                                                                                                                                                                                                                                               (=
                                                                                                                                                                                                                                                                                NumInstrs
                                                                                                                                                                                                                                                                                #x10)
                                                                                                                                                                                                                                                                               state10
                                                                                                                                                                                                                                                                               (ite
                                                                                                                                                                                                                                                                                (=
                                                                                                                                                                                                                                                                                 NumInstrs
                                                                                                                                                                                                                                                                                 #x11)
                                                                                                                                                                                                                                                                                state11
                                                                                                                                                                                                                                                                                (ite
                                                                                                                                                                                                                                                                                 (=
                                                                                                                                                                                                                                                                                  NumInstrs
                                                                                                                                                                                                                                                                                  #x12)
                                                                                                                                                                                                                                                                                 state12
                                                                                                                                                                                                                                                                                 (ite
                                                                                                                                                                                                                                                                                  (=
                                                                                                                                                                                                                                                                                   NumInstrs
                                                                                                                                                                                                                                                                                   #x13)
                                                                                                                                                                                                                                                                                  state13
                                                                                                                                                                                                                                                                                  state14)))))))))))))))))))))
                                                                                                                                                                                                                                                          (let ((finaleip
                                                                                                                                                                                                                                                                 (ite
                                                                                                                                                                                                                                                                  (=
                                                                                                                                                                                                                                                                   NumInstrs
                                                                                                                                                                                                                                                                   #x01)
                                                                                                                                                                                                                                                                  eip1
                                                                                                                                                                                                                                                                  (ite
                                                                                                                                                                                                                                                                   (=
                                                                                                                                                                                                                                                                    NumInstrs
                                                                                                                                                                                                                                                                    #x02)
                                                                                                                                                                                                                                                                   eip2
                                                                                                                                                                                                                                                                   (ite
                                                                                                                                                                                                                                                                    (=
                                                                                                                                                                                                                                                                     NumInstrs
                                                                                                                                                                                                                                                                     #x03)
                                                                                                                                                                                                                                                                    eip3
                                                                                                                                                                                                                                                                    (ite
                                                                                                                                                                                                                                                                     (=
                                                                                                                                                                                                                                                                      NumInstrs
                                                                                                                                                                                                                                                                      #x04)
                                                                                                                                                                                                                                                                     eip4
                                                                                                                                                                                                                                                                     (ite
                                                                                                                                                                                                                                                                      (=
                                                                                                                                                                                                                                                                       NumInstrs
                                                                                                                                                                                                                                                                       #x05)
                                                                                                                                                                                                                                                                      eip5
                                                                                                                                                                                                                                                                      (ite
                                                                                                                                                                                                                                                                       (=
                                                                                                                                                                                                                                                                        NumInstrs
                                                                                                                                                                                                                                                                        #x06)
                                                                                                                                                                                                                                                                       eip6
                                                                                                                                                                                                                                                                       (ite
                                                                                                                                                                                                                                                                        (=
                                                                                                                                                                                                                                                                         NumInstrs
                                                                                                                                                                                                                                                                         #x07)
                                                                                                                                                                                                                                                                        eip7
                                                                                                                                                                                                                                                                        (ite
                                                                                                                                                                                                                                                                         (=
                                                                                                                                                                                                                                                                          NumInstrs
                                                                                                                                                                                                                                                                          #x08)
                                                                                                                                                                                                                                                                         eip8
                                                                                                                                                                                                                                                                         (ite
                                                                                                                                                                                                                                                                          (=
                                                                                                                                                                                                                                                                           NumInstrs
                                                                                                                                                                                                                                                                           #x09)
                                                                                                                                                                                                                                                                          eip9
                                                                                                                                                                                                                                                                          (ite
                                                                                                                                                                                                                                                                           (=
                                                                                                                                                                                                                                                                            NumInstrs
                                                                                                                                                                                                                                                                            #x0A)
                                                                                                                                                                                                                                                                           eipA
                                                                                                                                                                                                                                                                           (ite
                                                                                                                                                                                                                                                                            (=
                                                                                                                                                                                                                                                                             NumInstrs
                                                                                                                                                                                                                                                                             #x0B)
                                                                                                                                                                                                                                                                            eipB
                                                                                                                                                                                                                                                                            (ite
                                                                                                                                                                                                                                                                             (=
                                                                                                                                                                                                                                                                              NumInstrs
                                                                                                                                                                                                                                                                              #x0C)
                                                                                                                                                                                                                                                                             eipC
                                                                                                                                                                                                                                                                             (ite
                                                                                                                                                                                                                                                                              (=
                                                                                                                                                                                                                                                                               NumInstrs
                                                                                                                                                                                                                                                                               #x0D)
                                                                                                                                                                                                                                                                              eipD
                                                                                                                                                                                                                                                                              (ite
                                                                                                                                                                                                                                                                               (=
                                                                                                                                                                                                                                                                                NumInstrs
                                                                                                                                                                                                                                                                                #x0E)
                                                                                                                                                                                                                                                                               eipE
                                                                                                                                                                                                                                                                               (ite
                                                                                                                                                                                                                                                                                (=
                                                                                                                                                                                                                                                                                 NumInstrs
                                                                                                                                                                                                                                                                                 #x0F)
                                                                                                                                                                                                                                                                                eipF
                                                                                                                                                                                                                                                                                (ite
                                                                                                                                                                                                                                                                                 (=
                                                                                                                                                                                                                                                                                  NumInstrs
                                                                                                                                                                                                                                                                                  #x10)
                                                                                                                                                                                                                                                                                 eip10
                                                                                                                                                                                                                                                                                 (ite
                                                                                                                                                                                                                                                                                  (=
                                                                                                                                                                                                                                                                                   NumInstrs
                                                                                                                                                                                                                                                                                   #x11)
                                                                                                                                                                                                                                                                                  eip11
                                                                                                                                                                                                                                                                                  (ite
                                                                                                                                                                                                                                                                                   (=
                                                                                                                                                                                                                                                                                    NumInstrs
                                                                                                                                                                                                                                                                                    #x12)
                                                                                                                                                                                                                                                                                   eip12
                                                                                                                                                                                                                                                                                   (ite
                                                                                                                                                                                                                                                                                    (=
                                                                                                                                                                                                                                                                                     NumInstrs
                                                                                                                                                                                                                                                                                     #x13)
                                                                                                                                                                                                                                                                                    eip13
                                                                                                                                                                                                                                                                                    eip14)))))))))))))))))))))
                                                                                                                                                                                                                                                            (let ((extrapred
                                                                                                                                                                                                                                                                   (ite
                                                                                                                                                                                                                                                                    (=
                                                                                                                                                                                                                                                                     NumInstrs
                                                                                                                                                                                                                                                                     #x01)
                                                                                                                                                                                                                                                                    extra1
                                                                                                                                                                                                                                                                    (ite
                                                                                                                                                                                                                                                                     (=
                                                                                                                                                                                                                                                                      NumInstrs
                                                                                                                                                                                                                                                                      #x02)
                                                                                                                                                                                                                                                                     extra2
                                                                                                                                                                                                                                                                     (ite
                                                                                                                                                                                                                                                                      (=
                                                                                                                                                                                                                                                                       NumInstrs
                                                                                                                                                                                                                                                                       #x03)
                                                                                                                                                                                                                                                                      extra3
                                                                                                                                                                                                                                                                      (ite
                                                                                                                                                                                                                                                                       (=
                                                                                                                                                                                                                                                                        NumInstrs
                                                                                                                                                                                                                                                                        #x04)
                                                                                                                                                                                                                                                                       extra4
                                                                                                                                                                                                                                                                       (ite
                                                                                                                                                                                                                                                                        (=
                                                                                                                                                                                                                                                                         NumInstrs
                                                                                                                                                                                                                                                                         #x05)
                                                                                                                                                                                                                                                                        extra5
                                                                                                                                                                                                                                                                        (ite
                                                                                                                                                                                                                                                                         (=
                                                                                                                                                                                                                                                                          NumInstrs
                                                                                                                                                                                                                                                                          #x06)
                                                                                                                                                                                                                                                                         extra6
                                                                                                                                                                                                                                                                         (ite
                                                                                                                                                                                                                                                                          (=
                                                                                                                                                                                                                                                                           NumInstrs
                                                                                                                                                                                                                                                                           #x07)
                                                                                                                                                                                                                                                                          extra7
                                                                                                                                                                                                                                                                          (ite
                                                                                                                                                                                                                                                                           (=
                                                                                                                                                                                                                                                                            NumInstrs
                                                                                                                                                                                                                                                                            #x08)
                                                                                                                                                                                                                                                                           extra8
                                                                                                                                                                                                                                                                           (ite
                                                                                                                                                                                                                                                                            (=
                                                                                                                                                                                                                                                                             NumInstrs
                                                                                                                                                                                                                                                                             #x09)
                                                                                                                                                                                                                                                                            extra9
                                                                                                                                                                                                                                                                            (ite
                                                                                                                                                                                                                                                                             (=
                                                                                                                                                                                                                                                                              NumInstrs
                                                                                                                                                                                                                                                                              #x0A)
                                                                                                                                                                                                                                                                             extraA
                                                                                                                                                                                                                                                                             (ite
                                                                                                                                                                                                                                                                              (=
                                                                                                                                                                                                                                                                               NumInstrs
                                                                                                                                                                                                                                                                               #x0B)
                                                                                                                                                                                                                                                                              extraB
                                                                                                                                                                                                                                                                              (ite
                                                                                                                                                                                                                                                                               (=
                                                                                                                                                                                                                                                                                NumInstrs
                                                                                                                                                                                                                                                                                #x0C)
                                                                                                                                                                                                                                                                               extraC
                                                                                                                                                                                                                                                                               (ite
                                                                                                                                                                                                                                                                                (=
                                                                                                                                                                                                                                                                                 NumInstrs
                                                                                                                                                                                                                                                                                 #x0D)
                                                                                                                                                                                                                                                                                extraD
                                                                                                                                                                                                                                                                                (ite
                                                                                                                                                                                                                                                                                 (=
                                                                                                                                                                                                                                                                                  NumInstrs
                                                                                                                                                                                                                                                                                  #x0E)
                                                                                                                                                                                                                                                                                 extraE
                                                                                                                                                                                                                                                                                 (ite
                                                                                                                                                                                                                                                                                  (=
                                                                                                                                                                                                                                                                                   NumInstrs
                                                                                                                                                                                                                                                                                   #x0F)
                                                                                                                                                                                                                                                                                  extraF
                                                                                                                                                                                                                                                                                  (ite
                                                                                                                                                                                                                                                                                   (=
                                                                                                                                                                                                                                                                                    NumInstrs
                                                                                                                                                                                                                                                                                    #x10)
                                                                                                                                                                                                                                                                                   extra10
                                                                                                                                                                                                                                                                                   (ite
                                                                                                                                                                                                                                                                                    (=
                                                                                                                                                                                                                                                                                     NumInstrs
                                                                                                                                                                                                                                                                                     #x11)
                                                                                                                                                                                                                                                                                    extra11
                                                                                                                                                                                                                                                                                    (ite
                                                                                                                                                                                                                                                                                     (=
                                                                                                                                                                                                                                                                                      NumInstrs
                                                                                                                                                                                                                                                                                      #x12)
                                                                                                                                                                                                                                                                                     extra12
                                                                                                                                                                                                                                                                                     (ite
                                                                                                                                                                                                                                                                                      (=
                                                                                                                                                                                                                                                                                       NumInstrs
                                                                                                                                                                                                                                                                                       #x13)
                                                                                                                                                                                                                                                                                      extra13
                                                                                                                                                                                                                                                                                      extra14)))))))))))))))))))))
                                                                                                                                                                                                                                                              (let ((lenpred
                                                                                                                                                                                                                                                                     (ite
                                                                                                                                                                                                                                                                      (=
                                                                                                                                                                                                                                                                       NumInstrs
                                                                                                                                                                                                                                                                       #x01)
                                                                                                                                                                                                                                                                      lenpred1
                                                                                                                                                                                                                                                                      (ite
                                                                                                                                                                                                                                                                       (=
                                                                                                                                                                                                                                                                        NumInstrs
                                                                                                                                                                                                                                                                        #x02)
                                                                                                                                                                                                                                                                       lenpred2
                                                                                                                                                                                                                                                                       (ite
                                                                                                                                                                                                                                                                        (=
                                                                                                                                                                                                                                                                         NumInstrs
                                                                                                                                                                                                                                                                         #x03)
                                                                                                                                                                                                                                                                        lenpred3
                                                                                                                                                                                                                                                                        (ite
                                                                                                                                                                                                                                                                         (=
                                                                                                                                                                                                                                                                          NumInstrs
                                                                                                                                                                                                                                                                          #x04)
                                                                                                                                                                                                                                                                         lenpred4
                                                                                                                                                                                                                                                                         (ite
                                                                                                                                                                                                                                                                          (=
                                                                                                                                                                                                                                                                           NumInstrs
                                                                                                                                                                                                                                                                           #x05)
                                                                                                                                                                                                                                                                          lenpred5
                                                                                                                                                                                                                                                                          (ite
                                                                                                                                                                                                                                                                           (=
                                                                                                                                                                                                                                                                            NumInstrs
                                                                                                                                                                                                                                                                            #x06)
                                                                                                                                                                                                                                                                           lenpred6
                                                                                                                                                                                                                                                                           (ite
                                                                                                                                                                                                                                                                            (=
                                                                                                                                                                                                                                                                             NumInstrs
                                                                                                                                                                                                                                                                             #x07)
                                                                                                                                                                                                                                                                            lenpred7
                                                                                                                                                                                                                                                                            (ite
                                                                                                                                                                                                                                                                             (=
                                                                                                                                                                                                                                                                              NumInstrs
                                                                                                                                                                                                                                                                              #x08)
                                                                                                                                                                                                                                                                             lenpred8
                                                                                                                                                                                                                                                                             (ite
                                                                                                                                                                                                                                                                              (=
                                                                                                                                                                                                                                                                               NumInstrs
                                                                                                                                                                                                                                                                               #x09)
                                                                                                                                                                                                                                                                              lenpred9
                                                                                                                                                                                                                                                                              (ite
                                                                                                                                                                                                                                                                               (=
                                                                                                                                                                                                                                                                                NumInstrs
                                                                                                                                                                                                                                                                                #x0A)
                                                                                                                                                                                                                                                                               lenpredA
                                                                                                                                                                                                                                                                               (ite
                                                                                                                                                                                                                                                                                (=
                                                                                                                                                                                                                                                                                 NumInstrs
                                                                                                                                                                                                                                                                                 #x0B)
                                                                                                                                                                                                                                                                                lenpredB
                                                                                                                                                                                                                                                                                (ite
                                                                                                                                                                                                                                                                                 (=
                                                                                                                                                                                                                                                                                  NumInstrs
                                                                                                                                                                                                                                                                                  #x0C)
                                                                                                                                                                                                                                                                                 lenpredC
                                                                                                                                                                                                                                                                                 (ite
                                                                                                                                                                                                                                                                                  (=
                                                                                                                                                                                                                                                                                   NumInstrs
                                                                                                                                                                                                                                                                                   #x0D)
                                                                                                                                                                                                                                                                                  lenpredD
                                                                                                                                                                                                                                                                                  (ite
                                                                                                                                                                                                                                                                                   (=
                                                                                                                                                                                                                                                                                    NumInstrs
                                                                                                                                                                                                                                                                                    #x0E)
                                                                                                                                                                                                                                                                                   lenpredE
                                                                                                                                                                                                                                                                                   (ite
                                                                                                                                                                                                                                                                                    (=
                                                                                                                                                                                                                                                                                     NumInstrs
                                                                                                                                                                                                                                                                                     #x0F)
                                                                                                                                                                                                                                                                                    lenpredF
                                                                                                                                                                                                                                                                                    (ite
                                                                                                                                                                                                                                                                                     (=
                                                                                                                                                                                                                                                                                      NumInstrs
                                                                                                                                                                                                                                                                                      #x10)
                                                                                                                                                                                                                                                                                     lenpred10
                                                                                                                                                                                                                                                                                     (ite
                                                                                                                                                                                                                                                                                      (=
                                                                                                                                                                                                                                                                                       NumInstrs
                                                                                                                                                                                                                                                                                       #x11)
                                                                                                                                                                                                                                                                                      lenpred11
                                                                                                                                                                                                                                                                                      (ite
                                                                                                                                                                                                                                                                                       (=
                                                                                                                                                                                                                                                                                        NumInstrs
                                                                                                                                                                                                                                                                                        #x12)
                                                                                                                                                                                                                                                                                       lenpred12
                                                                                                                                                                                                                                                                                       (ite
                                                                                                                                                                                                                                                                                        (=
                                                                                                                                                                                                                                                                                         NumInstrs
                                                                                                                                                                                                                                                                                         #x13)
                                                                                                                                                                                                                                                                                        lenpred13
                                                                                                                                                                                                                                                                                        lenpred14)))))))))))))))))))))
                                                                                                                                                                                                                                                                (and lenpred
                                                                                                                                                                                                                                                                     extrapred
                                                                                                                                                                                                                                                                     (=
                                                                                                                                                                                                                                                                      (getreg32
                                                                                                                                                                                                                                                                       EaxIdx
                                                                                                                                                                                                                                                                       finalstate)
                                                                                                                                                                                                                                                                      #xdeadbeef)
                                                                                                                                                                                                                                                                     (=
                                                                                                                                                                                                                                                                      (getreg32
                                                                                                                                                                                                                                                                       EbxIdx
                                                                                                                                                                                                                                                                       finalstate)
                                                                                                                                                                                                                                                                      #x0badc0de)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
(get-model)
