-- Menghitung luas persegi			luasBS(s)

-- DEFINISI DAN SPESIFIKASI
luasBS::Int->Int
{- luasBS(s) akan menghitung luas persegi dengan
    sisinya s secara rekursi. Asumsi pada fungsi
    ini adalah s>=0 -}

-- IMPLEMENTASI
luasBS s
    | s == 0 = 0 -- Basis
    | otherwise = 
        luasBS (s-1) + (2*s-1) -- Rekurens
