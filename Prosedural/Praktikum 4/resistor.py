# Bayu Samudra - 16520420 - 26 Maret 2021

# program Resistor
# Input : R1, R2, R3 berupa  bilangan Real Positif
#         dan sebuah karakter P dan S
# OUtput : Jika input tidak valid, keluar error
#           Jika, valid akan mengeluarkan besar resistansi pengganti

# Kamus
#   R1, R2, R3 : Real
#   Op : character
#   isValidInput : Bool

def isValidResistor(R):
    # I.S. R : real, berupa besar resistor
    # F.S. menghasillkan True bila R > 0
    return (R > 0)

def isValidResistors(R1,R2,R3):
    # I.S. R1,R2,R3 : real, berupa besar resistor
    # F.S. menghasillkan True bila semua resistor R > 0
    return isValidResistor(R1) and isValidResistor(R2) and isValidResistor(R3)

def isValidOperator(Op):
    # I.S. Op : character
    # F.S. menghasilkan True bila Op merupakan "S", "s", "P", atau "p"
    return (Op.lower() == "s" or Op.lower() == "p")

def hitungRSeri(R1, R2, R3):
    # I.S. R1,R2,R3 > 0 dan merupakan real
    # F.S. Menghasilkan besar resistansi pengganti seri
    return R1 + R2 + R3;

def hitungRParalel(R1, R2, R3):
    # I.S. R1,R2,R3 > 0 dan merupakan real
    # F.S. Menghasilkan besar resistansi pengganti paralel
    return (1/(1/R1 + 1/R2 + 1/R3))

isValidInput = False
while(not isValidInput):
    R1 = float(input())
    R2 = float(input())
    R3 = float(input())

    Op = input()

    if isValidResistors(R1, R2, R3) and isValidOperator(Op):
        isValidInput = True
    else:
        print("Masukan salah")

if Op.lower() == "s" : 
    print("%.2f" % hitungRSeri(R1,R2,R3))
else: # Operator Paralel
    print("%.2f" % hitungRParalel(R1,R2,R3))
