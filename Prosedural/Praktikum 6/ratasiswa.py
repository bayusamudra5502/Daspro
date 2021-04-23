# program rataSiswa
# Mendapatkan nilai rata-rata siswa

import tulisdata

# KAMUS
# constant MARK : string = "99999999"
MARK = "99999999"

# namafile: string
# type dataSiswa  : <NoInduk: string, KodeKursus : string, Nilai : integer>
# type nilaiRata  : <sum : integer,  jumlah_kursus : integer>
# db : Array of nilaiRata

# ALGORITMA PROGRAM UTAMA
namafile = input()
tulisdata.TulisDataSiswa(namafile)

f = open(namafile, "r")
data = f.readline()
db = {}

if(data == MARK):
    print("File kosong")
else:
    nim = []

    while data != MARK:
        namaMK = f.readline()[:-1]
        nilai = int(f.readline()[:-1])

        if(not data in db.keys()):
            nim.append(data)
            db[data] = {
                "sum" : 0,
                "jumlah_kursus" :0
            }

        db[data]["sum"] += nilai
        db[data]["jumlah_kursus"] += 1

        data = f.readline()
    
    # SORTING NIM
    for i in range(len(nim)):
        min = i

        for j in range(i,len(nim)):
            if(nim[min] > nim[j]):
                min = j
        
        # SWAPPING
        tmp = nim[i]
        nim[i] = nim[min]
        nim[min] = tmp
    
    for i in nim:
        sNilai = db[i]["sum"]
        cnt = db[i]["jumlah_kursus"]

        print("{}={:.2f}".format(i[:-1],round(sNilai/cnt,2)))
