# Program cariHuruf

# KAMUS
# N : int
# cc : str
chars = []
isValidN = False

def find(list, func, errMsg):
    for i in range(len(list)):
        if(func(list[i])):
            print(i+1,list[i])
            return
    
    print(errMsg)
    
# ALGORITMA
while(not isValidN):
    N = int(input())

    if(0 < N <= 100):
        isValidN = True
    else:
        print("Masukan salah. Ulangi!")

for i in range(N):
    chars.append(input())

cc = input()

if(cc == "S" or cc == "s"):
    find(chars,
        lambda x : 97<=ord(x)<=122, 
        "Tidak ada huruf kecil")
elif(cc == "L" or cc == "l"):
    find(chars,
        lambda x : 65<=ord(x)<=90, 
        "Tidak ada huruf besar")
elif(cc == "X" or cc == "x"):
    find(chars,
        lambda x : not ((97<=ord(x)<=122) 
                or (65<=ord(x)<=90)), 
        "Semua huruf")
else:
    print("Tidak diproses")