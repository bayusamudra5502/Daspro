def SortJmlPeserta(T, asc):
    if len(T) > 1:
        for i in range(len(T)):
            for j in range(1,len(T)-i-1):
                if asc:
                    compare = T[j]["Nilai"] > T[j+1]["Nilai"]
                else:
                    compare = T[j]["Nilai"] < T[j+1]["Nilai"]
                
                if compare:
                    tmp = T[j]
                    T[j] = T[j+1]
                    T[j+1] = tmp

data = []
inp = input()
while inp != "99999999":
    data.append({
        "NIM": inp,
        "KodeMK": input(),
        "Nilai": int(input())
    })

    inp = input()

SortJmlPeserta(data, True)
print(data)

print("===")
SortJmlPeserta(data, False)
print(data)