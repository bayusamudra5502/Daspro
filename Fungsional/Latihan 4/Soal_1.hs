-- Filter Array			filterList(l,func)

--DEFINISI DAN SPESIFIKASI LIST
    --type List of element: [ ] atau [e o List]
         --Definisi type List of element
         --Basis: List of element kosong adalah list of element
         --Rekurens: List tidak kosong dibuat dengan menambahkan sebuah
         --elemen bertype element di awal sebuah list

    --type List of element: [ ] atau [List • e]
         --Definisi type List of element:
         --Basis: List of element kosong adalah list of element
         --Rekurens: List tidak kosong dibuat dengan menambahkan sebuah
         --elemen bertype element di akhir sebuah list

--DEFINISI DAN SPESIFIKASI KONSTRUKTOR
    konso:: element -> [element] -> [element]
    --konso(e,l) menghasilkan sebuah list dari e (sebuah
    --elemen) dan l (list of elemen), 
    --dengan e sebagai elemen pertama: e o l -> l' 

    --REALISASI
    konso e l = [e] ++ l

    konsDot:: [element]-> element -> [element]
    --konsDot(l,e) menghasilkan sebuah list dari l (list of
    --elemen) dan e (sebuah elemen), 
    --dengan e sebagai elemen terakhir: l •e -> l'
    
    --REALISASI
    konsDot l e = l ++ [e]
    
--DEFINISI DAN SPESIFIKASI SELEKTOR
    --head : [element] -> element
    --head(l) menghasilkan elemen pertama list l, l tidak kosong

    --tail : [element] ->[element]
    --tail(l) menghasilkan list tanpa elemen pertama list l, 
    --l tidak kosong
    
    --last : [element]->element
    --last(l) menghasilkan elemen terakhir list l, l tidak kosong

    --init: [element]->[element]
    --init(l) menghasilkanlist tanpaelementerakhirlist l,
    --l tidak kosong

--DEFINISI DAN SPESIFIKASI PREDIKAT
    isEmpty :: [element] -> Bool
    --isEmpty(l) true jika list of element kosong
    --REALISASI
    isEmpty l = null l

    isOneElmt :: [element] -> Bool
    --isOneElmt(l) true jika list of element l hanya
    --mempunyai satu elemen
    --REALISASI
    isOneElmt l = (length l) == 1

-- DEFINISI DAN SPESIFIKASI
    filterList::[Int] -> (Int -> Bool) -> [Int]
    {- Fungsi filterList(l,func) akan mengembalikan elemen dari l
    yang nilai dari element tersebut membuat fungsi 
    func bernilai True. -}

    -- IMPLEMENTASI
    filterList l func
        | isEmpty l = l
        | otherwise = 
            if func (head l) then
                konso (head l) (filterList (tail l) func)
            else
                filterList (tail l) func
    
    -- Aplikasi
        -- filterList [1,2,-4,-5] (\x -> x > 0) -- isPos
        -- Expected Result : [1,2]

        -- filterList [1,-2,-3,4,5] (\x -> x < 0) -- isNeg
        -- Expected Result :[-2,-3]

        -- filterList [2002,2100,2000,2004] (\x -> (x `mod` 4 == 0) && (x `mod` 100 /= 0) || (x `mod` 400 == 0))
        -- Expected  Result : [2000,2004]