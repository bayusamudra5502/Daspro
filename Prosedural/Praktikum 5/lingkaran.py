# program Lingkaran
# program ini akan menerima jari-jari
# yang valid lalu menghitung luas lingkaran

# KAMUS
#   r : integer

# ALGORITMA
r = int(input())

if(r > 0):
    print("%.2f" % (3.1415 * r * r))
else:
    print("Jari-jari harus > 0")