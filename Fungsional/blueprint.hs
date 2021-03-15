--DEFINISI DAN SPESIFIKASI LIST
    --type List of <type_elemen>: [ ] atau [e o List]
        --Definisi type List of <type_elemen>
        --Basis: List of <type_elemen>kosong adalah list of <type_elemen>
        --Rekurens: List tidak kosong dibuat dengan menambahkan sebuah
        --elemen bertype <type_elemen>di awal sebuah list

    --type List of <type_elemen>: [ ] atau [List •e]
        --Definisi type List of <type_elemen>:
        --Basis: List of <type_elemen>kosong adalah list of <type_elemen>
        --Rekurens: List tidak kosong dibuat dengan menambahkan sebuah
        --elemen bertype <type_elemen> di akhir sebuah list

--DEFINISI DAN SPESIFIKASI KONSTRUKTOR
    konso:: tipe -> [tipe] -> [tipe]
    --konso(e,l) menghasilkan sebuah list dari e (sebuah
    --elemen) dan l (list of elemen), 
    --dengan e sebagai elemen pertama: e o l -> l' 

    --REALISASI
    konso e l = [e] ++ l

    konsDot:: [a]-> a -> [a]
    --konsDot(l,e) menghasilkan sebuah list dari l (list of
    --elemen) dan e (sebuah elemen), 
    --dengan e sebagai elemen terakhir: l •e -> l'
    --REALISASI
    konsDot l e = l ++ [e]

--DEFINISI DAN SPESIFIKASI SELEKTOR
    --head : [<type_elemen>] -><type_elemen>
    --head(l) menghasilkan elemen pertama list l, l tidak kosong

    --tail : [<type_elemen>] ->[<type_elemen>]
    --tail(l) menghasilkan list tanpa elemen pertama list l, 
    --l tidak kosong

    --last : [<type_elemen>]-><type_elemen>
    --last(l) menghasilkan elemen terakhir list l, l tidak kosong

    --init: [<type_elemen>]->[<type_elemen>]
    --init(l) menghasilkanlist tanpaelementerakhirlist l,
    --l tidak kosong

--DEFINISI DAN SPESIFIKASI PREDIKAT
    isEmpty :: [element] -> Bool
    --isEmpty(l) true jika list of tipe kosong
    --REALISASI
    isEmpty l = null l
    
    isOneElmt :: [tipe] -> Bool
    --isOneElmt(l) true jika list of tipe l hanya
    --mempunyai satu elemen
    --REALISASI
    isOneElmt l = (length l) == 1
