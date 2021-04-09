# Bayu Samudra (16520420) - 2 April 2021

# PROGRAM fasa
# Program ini akan menerima input suhu dalam celcius
# lalu memberikan fasanya.

# KAMUS
#   T : integer

# ALGORTIMA
T = int(input())

if T < 0:
    print("PADAT")
elif T == 0:
    print("ANTARA PADAT-CAIR")
elif T < 100 :
    print("CAIR")
elif T == 100:
    print("ANTARA CAIR-GAS")
else: # T > 100
    print("GAS")