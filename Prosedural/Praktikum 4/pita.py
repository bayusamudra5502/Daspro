
# Bayu Samudra - 16520420 - 26 Maret 2021

# Program GambarPita
# Input: N : integer
# Output: Jika N > 0 dan ganjil, gambar pita sesuai dengan N
#         Jika tidak, tampilkan pesan kesalahan: 

# KAMUS
# Variabel
#    N : int

def GambarBintang(N,width):
    # I.S. N > 0 , N ganjil, N < width, dan width Ganjil
    # F.S. Menggambar bintang di tengah

    # KAMUS LOKAL
    #    val : int
    if(N == width):
        print("*" * N)
    else:
        val = (width-N)//2
        print(" " * val, end="")
        print("*" * N)
    

def GambarPita(N):
    # I.S. N > 0 dan N ganjil
    # F.S. Gambar pita dengan lebar sebesar N sesuai spesifikasi soal
    for i in range(N, 0, -2):
        GambarBintang(i,N)
    
    for i in range(3, N+1, 2):
        GambarBintang(i,N)

def IsValid(N):
    # menghasilkan true jika N positif dan ganjil, false jika tidak
    return (N % 2 == 1) and (N > 0)

# ALGORITMA PROGRAM UTAMA
N = int(input())
if (IsValid(N)): # lengkapi dengan pemanggilan fungsi IsValid
    GambarPita(N)    # lengkapi dengan pemanggilan prosedur GambarPita
else: # N tidak positif atau N tidak ganjil
    print("Masukan tidak valid")