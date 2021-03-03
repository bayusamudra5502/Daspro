-- Fungsi Pangkat			pangkat(a,b)

-- DEFINISI DAN SPESIFIKASI
pangkat::Int->Int->Int
{- FUngsi pangkat(a,b) akan menerima masukan dua
buah bilangan Int, lalu menegluarkan hasil perpangkatan
a^b -}

-- IMPLEMENTASI
pangkat a b
    | b == 1 = a -- Basis
    | otherwise = a * pangkat a (b-1) -- Rekurens

-- APLIKASI
    -- pangkat 2 5 = 32
    -- pangkat 3 2 = 9
    -- pangkat 12 2 = 144s