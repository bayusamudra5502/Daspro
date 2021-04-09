# Bayu Samudra - 16520420

# Program maxBil
# Program ini akan menerima beberapa bilangan lalu
# akan mengeluarkan bilangan terbesarnnya

# KAMUS
# max : Integer/None

maks = None
while True:
    try:
        if maks == None:
            maks = int(input())
        else:
            maks = max(int(input()), maks)
    except EOFError:
        break

print(maks)