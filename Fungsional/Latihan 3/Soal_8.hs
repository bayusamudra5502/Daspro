-- Memecah List			splitList(l)

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
    splitList :: [Int] -> ([Int],[Int])
    {- splitList li menghasilkan 2 list of integer, listpertama memuat bilangan positif  dan 0 yang merupakan elemen dari li (dengan urutan kemunculan yang tidak berubah),   sedangkan list kedua memuat bilangan negatif elemen li. -}
    {- Prekondisi: li mungkin kosong -}

    -- IMPLEMENTASI
    splitList l
        | isEmpty l = ([],[]) -- Basis
        | otherwise = let -- Rekurens
                (a,b) = splitList (tail l)
            in
                if head l >= 0 then
                    (konso (head l) a, b)
                else
                    (a, konso (head l) b)

    -- APLIKASI
        -- splitList splitList [1,2,3,-4,5] = ([1,2,3,5],[-4])