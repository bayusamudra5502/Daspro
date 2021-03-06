-- Menggabungkan Dua List Berurutan		mergeList(li1,li2)

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
    --init(l) menghasilkanlist tanpaelementerakhirlist l,
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
    mergeList:: [Int] -> [Int] -> [Int]
    {- mergeList li1 li2 menghasilkan list of integer yang 
        merupakan hasil penggabungan li1 dan li2, dan tetap 
        terurut membesar. 
        Prekondisi: li1 dan li2 adalah list terurut membesar 
        dan mungkin kosong -}

    -- IMPLEMENTASI
    mergeList li1 li2
        | isEmpty li1 = li2 -- Basis
        | isEmpty li2 = li1
        | otherwise = if head li1 < head li2 then
            konso (head li1) (mergeList (tail li1) li2) else
            konso (head li2) (mergeList li1 (tail li2))

    -- APLIKASI
        -- mergeList [1,2,9] [4,8,10] = [1,2,4,8,9,10]