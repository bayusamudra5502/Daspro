-- Memeriksa Ganjil			isGanjil(x)

-- DEFINISI DAN SPESIFIKASI

isGanjil::Int->Bool
{- Fungsi isGanjil(x) akan memeriksa apakah x 
    merupakan bilangan ganjil secara rekursi.
    Asumsi pada fungsi ini adalah x>=0 -}

-- IMPLEMENTASI
isGanjil x
    | x == 0 = False -- Basis
    | x == 1 = True -- Basis
    | otherwise = isGanjil (x-2) -- Rekurens