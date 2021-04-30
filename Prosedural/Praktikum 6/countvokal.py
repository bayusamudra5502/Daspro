# Program HitungVokal
# Membaca masukan sejumlah karakter dan menyimpannya ke file data.txt
# Membaca isi file data.txt, menghitung dan menampilkan ada berapa
# banyak karakter huruf hidup dalam file

# KAMUS
mark = '.' # constant mark : character = '.'
# seqfile : SQEFILE of char.

def TulisTeks():
# Membaca kalimat (kumpulan karakter) diakhiri mark dari keyboard
# dan menyimpannya ke file data.txt
    # KAMUS LOKAL
    # f : SEQFILE of char
    # kalimat
    # ALGORITMA
    f = open("dataku.txt",'w')
    kalimat = input() # Baca sebuah kalimat dari keyboard
                      # diakhiri mark '.'
                      # Kalimat kosong hanya ada mark
    f.write(kalimat)  # Menuliskan kalimat ke file
    f.close()

# ALGORITMA PROGRAM UTAMA
TulisTeks()

seqfile = open("dataku.txt", "r")
fileInp = seqfile.read(1)
cntVokal = 0

if(fileInp == "."):
    print(0)
else:
    while True:
        if(fileInp in "AaIiUuEeOo"):
            cntVokal += 1
        
        if fileInp == ".":
            print(cntVokal)
            break
        else:
            fileInp = seqfile.read(1)