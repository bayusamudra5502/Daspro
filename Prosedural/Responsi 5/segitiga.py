# Program segitiga
# Program ini akan menerima dua buah integer
# a dan t lalu menghitung luas segitiga dengan
# rumus .5 * a * t bila a, t > 0

a, t = input().split(" ")

a = int(a)
t = int(t)

if(a > 0 and t > 0):
    print("%.0f" % (.5 * a * t))
else:
    print("Alas dan tinggi harus > 0")