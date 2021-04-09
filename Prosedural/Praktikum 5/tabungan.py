# program Tabungan
# program ini aka menghitung jumlah
# tabungan dari seluruh siswa

# KAMUS
#   sum, N : integer

N = int(input())
sum = 0

for i in range(N):
    sum += int(input())

print(sum)