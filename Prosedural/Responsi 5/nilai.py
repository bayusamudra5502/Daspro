# program Nilai
# Profram ini akan membaca jumlah mahasiswa
# yang bernilai valid, lalu menghitung jumlah
# mahasiswa yang lulus dan rata-ratanya.

# program nilai

# KAMUS
def validInput(x):
    return 0<=x<=100

N = 0
nilai = []

looping = False
inp = int(input())
while (inp != -9999):
    looping = True
    if validInput(inp):
        nilai.append(inp)
        N += 1
    
    inp = int(input())

if N == 0:
    if not looping:
        print("Data nilai kosong")
    else:
        print(0)
else:
    print(N)
    
    sum = 0
    SG40 = 0
    SL40 = 0
    for i in nilai:
        sum += i

        if(i >= 40):
            SG40 += 1
        elif(i < 40):
            SL40 += 1
    
    print(SG40)
    print(SL40)
    print("%.2f" % (sum / N))
