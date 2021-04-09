# program NIlaiEkstem

# ALGORITMA
N = int(input())

min = max = int(input())
data = [min]
for i in range(N-1):
    tmp = int(input())
    data.append(tmp)

    if(min > tmp):
        min = tmp
    
    if(tmp > max):
        max = tmp

num = int(input())

if(num == min or num == max):
    if(max == num):
        print("maksimum")
        
    if(min == num):
        print("minimum")
else:
    isAvailable = False
    for i in data:
        if i == num:
            isAvailable = True
            break

    if(isAvailable):
        print("N#A")
    else:
        print("%d tidak ada" % num)