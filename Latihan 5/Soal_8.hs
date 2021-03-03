-- Mengurutkan List			sortList(lSudah tadi)

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
    getSmallest :: [Int] -> Int
    {- getSmallest l mengembalikan elemen terkecil di l. Prekondisi: l tidak kosong. -}

    -- IMPLEMENTASI
    getSmallest l
        | isOneElmt l = head l
        | otherwise = let
                last = getSmallest (tail l)
                cur = head l
            in
                if last <= cur then last else cur

    delElement :: Int -> [Int] -> [Int]
    {- delElement x l mengembalikan list l dengan elemen x yang telah dihapus dari l.    
    Jika x bukan elemen l, maka fungsi mengembalikan l semula.   
    Prekondisi: elemen l unik (setiap elemen hanya muncul 1 kali). -}


    -- IMPLEMENTASI
    delElement x l
        | isEmpty l = [] -- Basis
        | otherwise = -- Rekurens
            if head l == x then 
                delElement x (tail l)
            else
                konso (head l) (delElement x (tail l))

    sortList :: [Int] -> [Int]
    {- sortList l mengembalikan hasil pengurutan list 
    l hingga elemen-elemennya terurut  membesar. 
    Prekondisi: l tidak kosong dan semua elemennya unik. -}

    -- IMPLEMENTASI
    sortList l
        | isOneElmt l = l -- Basis
        | otherwise = let-- Rekurens
                small = getSmallest l
            in
                konso small (sortList (delElement small l))

    -- APLIKASI
        -- sortList 