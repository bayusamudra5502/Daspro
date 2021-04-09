# Bayu Samudra (16520420) - 2 April 2021

# program luasTrapesium
# Menerima 3 buah bilangan float (t, s1, s2) secara
# berturut-turut lalu menghitung dengan rumus :
# L = .5 * t * (s1 + s2)

# KAMUS
#   t, s1, s2 : real

# ALGORITMA
t = float(input())
s1 = float(input())
s2 = float(input())

print("%.2f" % (.5 * t * (s1 + s2)))