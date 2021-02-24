-- Memeriksa Awalan Sama			isEqFront(l1,l2)

--DEFINISI DAN SPESIFIKASI LIST
    --type List of Char: [ ] atau [e o List]
         --Definisi type List of Char
         --Basis: List of Char kosong adalah list of Char
         --Rekurens: List tidak kosong dibuat dengan menambahkan sebuah
         --elemen bertype Char di awal sebuah list

    --type List of Char: [ ] atau [List • e]
         --Definisi type List of Char:
         --Basis: List of Char kosong adalah list of Char
         --Rekurens: List tidak kosong dibuat dengan menambahkan sebuah
         --elemen bertype Char di akhir sebuah list

--DEFINISI DAN SPESIFIKASI KONSTRUKTOR
    konso:: Char -> [Char] -> [Char]
    --konso(e,l) menghasilkan sebuah list dari e (sebuah
    --elemen) dan l (list of elemen), 
    --dengan e sebagai elemen pertama: e o l -> l' 

    --REALISASI
    konso e l = [e] ++ l

    konsDot:: [Char]-> Char -> [Char]
    --konsDot(l,e) menghasilkan sebuah list dari l (list of
    --elemen) dan e (sebuah elemen), 
    --dengan e sebagai elemen terakhir: l •e -> l'
    
    --REALISASI
    konsDot l e = l ++ [e]
    
--DEFINISI DAN SPESIFIKASI SELEKTOR
    --head : [Char] -> Char
    --head(l) menghasilkan elemen pertama list l, l tidak kosong

    --tail : [Char] ->[Char]
    --tail(l) menghasilkan list tanpa elemen pertama list l, 
    --l tidak kosong
    
    --last : [Char]->Char
    --last(l) menghasilkan elemen terakhir list l, l tidak kosong

    --init: [Char]->[Char]
    --init(l) menghasilkanlist tanpaelementerakhirlist l,
    --l tidak kosong

--DEFINISI DAN SPESIFIKASI PREDIKAT
    isEmpty :: [Char] -> Bool
    --isEmpty(l) true jika list of Char kosong
    --REALISASI
    isEmpty l = null l

    isOneElmt :: [Char] -> Bool
    --isOneElmt(l) true jika list of Char l hanya
    --mempunyai satu elemen
    --REALISASI
    isOneElmt l = (length l) == 1

-- DEFINISI DAN SPESIFIKASI
    isEqFront::[Char] -> [Char] -> Bool
    {- isEqFront l1 l2 akan memeriksa apakah potongan awal
    l2 sama dengan l1. Jika ya, maka menghasilkan true.
    Sebaliknya False. -}

    -- IMPLEMENTASI
    isEqFront l1 l2
        | isOneElmt l1 = (head l1) == (head l2) -- Basis
        | otherwise = (head l1) == (head l2) 
                && isEqFront (tail l1) (tail l2) -- Rekurens

    -- APLIKASI
        -- isEqFront ['a','b','c'] ['a','b','c'] = True