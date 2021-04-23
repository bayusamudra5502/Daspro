# Melakukan sorting
# Program ini akan melakukan sorting sebuah
# array yang diinputkan lalu akan ditampilkan
# array hasil sorting ke layar

def get_max(arr, index_start):
    # mendapatkan maksimum array dari indeks indeks_start sampai selesai
    if(index_start == len(arr) - 1):
        return arr[index_start]
    else:
        maxValue = arr[index_start]
        for i in range(index_start, len(arr)):
            if(arr[i] > maxValue):
                maxValue = arr[i]
        
        return maxValue

def get_idx(arr, number):
    # mendapatkan index dari suatu angka dalam array
    for i in range(len(arr)):
        if(arr[i] == number):
            return i
    
    return -1

def swap(array, indeks_1, indeks_2):
    # swap elemen array indeks 1 dengan indeks 2
    tmp = array[indeks_1]
    array[indeks_1] = array[indeks_2]
    array[indeks_2] = tmp

def sort(arr):
    for i in range(len(arr)):
        maxArr = get_max(arr, i)
        maxIdx = get_idx(arr, maxArr)
        swap(arr, i, maxIdx)
    print(arr)

cnt = int(input())
arr = []
for i in range(cnt):
    arr.append(int(input()))

sort(arr)