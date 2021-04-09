# Bayu Samudra (16520420) - 15 Maret 2021

# PROGRAM cetakSegiempat
# Program ini akan mencetak segiempat dengan
# sisi n dan sisi berbentuk c1 dan isi berbentuk c2

# KAMUS
#   n : integer
#   c1,c2 : character

# ALGORTIMA
n = int(input())
c1 = input()
c2 = input()

if((n > 0) and c1 != c2):
    for i in range(n):
        if (i == 0 or i == n-1):
            print(c1*n)
        else: # 0 < i < n-1
            print(c1, end="")
            print(c2*(n-2), end="")
            print(c1)
else:
    print("Masukan tidak valid")