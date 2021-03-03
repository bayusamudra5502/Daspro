-- Offset List			offsetList(f,g,a,b)

--DEFINISI DAN SPESIFIKASI LIST
    --type List of Float: [ ] atau [e o List]
         --Definisi type List of Float
         --Basis: List of Float kosong adalah list of Float
         --Rekurens: List tidak kosong dibuat dengan menambahkan sebuah
         --elemen bertype Float di awal sebuah list

    --type List of Float: [ ] atau [List • e]
         --Definisi type List of Float:
         --Basis: List of Float kosong adalah list of Float
         --Rekurens: List tidak kosong dibuat dengan menambahkan sebuah
         --elemen bertype Float di akhir sebuah list

--DEFINISI DAN SPESIFIKASI KONSTRUKTOR
    konso:: Float -> [Float] -> [Float]
    --konso(e,l) menghasilkan sebuah list dari e (sebuah
    --elemen) dan l (list of elemen), 
    --dengan e sebagai elemen pertama: e o l -> l' 

    --REALISASI
    konso e l = e : l

    konsDot:: [Float]-> Float -> [Float]
    --konsDot(l,e) menghasilkan sebuah list dari l (list of
    --elemen) dan e (sebuah elemen), 
    --dengan e sebagai elemen terakhir: l •e -> l'
    
    --REALISASI
    konsDot l e = l ++ [e]
    
--DEFINISI DAN SPESIFIKASI SELEKTOR
    --head : [Float] -> Float
    --head(l) menghasilkan elemen pertama list l, l tidak kosong

    --tail : [Float] ->[Float]
    --tail(l) menghasilkan list tanpa elemen pertama list l, 
    --l tidak kosong
    
    --last : [Float]->Float
    --last(l) menghasilkan elemen terakhir list l, l tidak kosong

    --init: [Float]->[Float]
    --init(l) menghasilkanlist tanpaelementerakhirlist l,
    --l tidak kosong

--DEFINISI DAN SPESIFIKASI PREDIKAT
    isEmpty :: [Float] -> Bool
    --isEmpty(l) true jika list of Float kosong
    --REALISASI
    isEmpty = null

    isOneElmt :: [Float] -> Bool
    --isOneElmt(l) true jika list of Float l hanya
    --mempunyai satu elemen
    --REALISASI
    isOneElmt l = length l == 1

-- DEFINISI DAN SPESIFIKASI
    offsetList::(Float->Float)->(Float->Float)->Float->Float->[Float]
    {- fungsi offsetList yang menerima masukan dua buah fungsi f dan g
    serta dua buah bilangan riil (float), a dan b. Fungsi offsetList
    akan menghasilkan sebuah list of float yang merupakan penerapan
    fungsi f terhadap bilangan float antara a dan b, dimulai
    dari a dengan increment menggunakan fungsi g. -}

    -- IMPLEMENTASI
    offsetList f g a b
        | a > b = [] -- Basis
        | otherwise = -- Rekurens
            konso (f a) (offsetList f g (g a) b)

    -- APLIKASI
        -- offsetList (\x->x) (\x->x+2) 1.2 7.1 = [1.2, 3.2, 5.2]
        
        -- offsetList (\x -> if x < 0 then -999.0 else (x + 3.2)) (\x -> x + 0.5) (-1.0) (1.0)
        -- = [-999.0, -999.0, 3.2, 3.7, 4.2]

        -- offsetList (\x -> x*x) (\x->x+1) 0 9
        -- [0.0, 1.0, 4.0, 9.0, 16.0, 25.0, 36.0, 49.0, 64.0, 81.0]