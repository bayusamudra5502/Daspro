# program Tinggi

# KAMUS
def validInput(x):
    return 100<=x<=300

N = 0
tinggi = []

inp = int(input())
while (inp != -999):
    if validInput(inp):
        tinggi.append(inp)
        N += 1
    
    inp = int(input())

if N == 0:
    print("Data kosong")
else:
    print(N)
    
    sum = 0
    H170 = 0
    L150 = 0
    for i in tinggi:
        sum += i

        if(i >= 170):
            H170 += 1
        elif(i <= 150):
            L150 += 1
    
    print(L150)
    print(H170)
    print(int(round(sum / N)))
    
