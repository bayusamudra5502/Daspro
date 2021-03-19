# Bayu Samudra (16520420) - 15 Maret 2021

# PROGRAM maxbil3
# Program ini menghasilkan bilangan terbesar dari 3
# buah input bilangan bulat

# KAMUS
#   a,b,c,max: integer

# ALGORTIMA
a = int(input())
max = a

b = int(input())
max = b if b > max else max

c = int(input())
max = c if c > max else max

print(max)