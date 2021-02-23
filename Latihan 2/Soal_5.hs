-- Menghitung jumlah pada range bilangan    sumRange(a,b)

-- DEFINISI DAN SPESIFIKASI

sumRange::Int->Int->Int
{- sumRange(a,b) akan menghitung jumlah bilangan bulat 
    secara inklusif antara a dan b. Syarat dari fungsi 
    ini adalah a<=b. -}

-- IMPLEMENTASI
sumRange a b
    | a == b = a -- Basis
    | otherwise = 
        b + sumRange a (b-1) -- Rekurens