# program berat
# Program ini akan menerima berat mahasiswa
# dan menghitung jumlah mahasiswa valid
# 

# KAMUS
def validInput(x):
    return 30<=x<=200

N = 0
berat = []

inp = int(input())
while (inp != -999):
    if validInput(inp):
        berat.append(inp)
        N += 1
    
    inp = int(input())

if N == 0:
    print("Data kosong")
else:
    print(N)
    
    sum = 0
    H100 = 0
    L50 = 0
    for i in berat:
        sum += i

        if(i >= 100):
            H100 += 1
        elif(i <= 50):
            L50 += 1
    
    print(L50)
    print(H100)
    print(int(round(sum / N)))
    
