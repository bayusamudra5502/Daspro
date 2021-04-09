# Bayu Samudra -16520420 - 26 Maret 2021

# Program EmpatInteger
# Input: 4 integer: A, B, C, D
# Output: Sifat integer dari A, B, C, D (positif/negatif/nol) 
#         Jika semua integer positif, tampilkan:
#         nilai maksimum, minimum, dan mean olympic
 
# KAMUS
# variabel
#    A, B, C, D : int
#    mo : real
 
# PROCEDURE DAN FUNCTION
def CekInteger (x):
    # I.S.: x terdefinisi, bertype int
    # F.S.: Jika x positif, maka tertulis di layar: POSITIF
    #       Jika x negatif, maka tertulis di layar: NEGATIF
    #       Jika x nol, maka tertulis di layar: NOL
    if(x > 0):
        print("POSITIF")
    elif(x == 0):
        print("NOL")
    else:
        print("NEGATIF")


def Max (*input):
    # menghasilkan nilai terbesar di antara a, b, c, d (integer)
    max = input[0]
    for i in input:
        max = i if i > max else max
    
    return max
            
def Min (*input):
    # menghasilkan nilai terkecil di antara a, b, c, d (integer)
    min = input[0]
    for i in input:
        min = i if i < min else min
    
    return min

def IsAllPositif (a, b, c, d):
    # menghasilkan true jika a, b, c, d seluruhnya positif
    # false jika tidak
    return (a > 0) and (b > 0) and (c > 0) and (d > 0)
            
# PROGRAM UTAMA
# Tidak boleh diubah-ubah
# Input
A = int(input())
B = int(input())
C = int(input())
D = int(input())

# Menuliskan sifat integer
CekInteger(A)
CekInteger(B)
CekInteger(C)
CekInteger(D)

# Penulisan maksimum, minimum, dan mean olympic
if (IsAllPositif(A,B,C,D)):
    print(Max(A,B,C,D))
    print(Min(A,B,C,D))
    mo = (A + B + C + D - Max(A,B,C,D) - Min(A,B,C,D)) / 2
    print("%.2f" % mo)