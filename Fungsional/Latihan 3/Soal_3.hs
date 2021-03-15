-- Menghitung Jumlah list			sumIsiList(l)

--DEFINISI DAN SPESIFIKASI LIST
    --type List of Int: [ ] atau [e o List]
         --Definisi type List of Int
         --Basis: List of Int kosong adalah list of Int
         --Rekurens: List tidak kosong dibuat dengan menambahkan sebuah
         --elemen bertype Int di awal sebuah list

    --type List of Int: [ ] atau [List • e]
         --Definisi type List of Int:
         --Basis: List of Int kosong adalah list of Int
         --Rekurens: List tidak kosong dibuat dengan menambahkan sebuah
         --elemen bertype Int di akhir sebuah list

--DEFINISI DAN SPESIFIKASI KONSTRUKTOR
    konso:: Int -> [Int] -> [Int]
    --konso(e,l) menghasilkan sebuah list dari e (sebuah
    --elemen) dan l (list of elemen), 
    --dengan e sebagai elemen pertama: e o l -> l' 

    --REALISASI
    konso e l = [e] ++ l

    konsDot:: [Int]-> Int -> [Int]
    --konsDot(l,e) menghasilkan sebuah list dari l (list of
    --elemen) dan e (sebuah elemen), 
    --dengan e sebagai elemen terakhir: l •e -> l'
    
    --REALISASI
    konsDot l e = l ++ [e]
    
--DEFINISI DAN SPESIFIKASI SELEKTOR
    --head : [Int] -> Int
    --head(l) menghasilkan elemen pertama list l, l tidak kosong

    --tail : [Int] ->[Int]
    --tail(l) menghasilkan list tanpa elemen pertama list l, 
    --l tidak kosong
    
    --last : [Int]->Int
    --last(l) menghasilkan elemen terakhir list l, l tidak kosong

    --init: [Int]->[Int]
    --init(l) menghasilkanlist tanpa elemen terakhirlist l,
    --l tidak kosong

--DEFINISI DAN SPESIFIKASI PREDIKAT
    isEmpty :: [Int] -> Bool
    --isEmpty(l) true jika list of Int kosong
    --REALISASI
    isEmpty l = null l

    isOneElmt :: [Int] -> Bool
    --isOneElmt(l) true jika list of Int l hanya
    --mempunyai satu elemen
    --REALISASI
    isOneElmt l = (length l) == 1

    -- DEFINISI DAN SPESIFIKASI
    sumIsiList::[Int] -> Int
    {- sumIsiList l Menghiutng Sum dari Integer 
    dalam List l -}

    -- IMPLEMENTASI
    sumIsiList l
        | isOneElmt l = head l -- Basis
        | otherwise = head l + sumIsiList (tail l) -- Rekurens