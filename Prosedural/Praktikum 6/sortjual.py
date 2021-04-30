# program sortJual
# Membaca sebuah file lalu mengurutkan berdasarkan
# kategori KdProduknya dan menampilkan hasilnya
# ke layar.

import tulisdata

# KAMUS
# constant MARK : string = "99999999"
MARK = "99999999"

# type dataJual  : <KdKategori: string, { Kode kategori produk }
#                   KdProduk : string,  { Kode produk }
#                   Hasil : integer     { Hasil Penjualan } >

# f : SEQFILE of dataJual
#       (*) data : string
#       (1) "99999999"

# db : Array of dataJual
# namafile: string

# ALGORITMA PROGRAM UTAMA
namafile = input()
tulisdata.TulisDataJual(namafile)

f = open(namafile, "r")
data = f.readline()
db = []

if data == MARK:
    print("File kosong")
else:
    while(data != MARK):
        obj = {}
        obj["KdKategori"] = data[:-1]
        obj["KdProduk"] = f.readline()[:-1]
        obj["Hasil"] = int(f.readline())
        db.append(obj)

        data = f.readline()
    
    # SORTING
    for i in range(len(db)):
        minKategori = i

        for j in range(i,len(db)):
            if(db[minKategori]["KdKategori"] > db[j]["KdKategori"]):
                minKategori = j
        
        # SWAPPING
        tmp = db[i]
        db[i] = db[minKategori]
        db[minKategori] = tmp
    
    # Pencetakan ke layar
    for i in db:
        print("%s,%s,%d" % (i["KdKategori"], i["KdProduk"], i["Hasil"]))

