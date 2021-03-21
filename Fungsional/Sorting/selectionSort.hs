module SelectionSort where

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
    
    -- Implementasi
        smallestElement :: [Int] -> Int
        smallestElement l
            | isOneElmt l = head l
            | otherwise = let
                    min = smallestElement (tail l)
                in
                    if head l <= min then
                        head l
                    else
                        min
        
        delElement::Int->[Int]->[Int]
        -- delElement n l1 akan menghapus elemen bernilai n pertama pada l1
        delElement n l1
            | isEmpty l1 = l1
            | head l1 == n = tail l1 -- basis
            | otherwise = konso (head l1) (delElement n (tail l1))

        selectionSort :: [Int] -> [Int]
        selectionSort l
            | isEmpty l = l
            | isOneElmt l = l
            | otherwise = let
                    small = smallestElement l
                in
                    konso small (selectionSort (delElement small l))