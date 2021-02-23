-- deretSegitiga			deretSegitiga(n)

-- DEFINISI DAN SPESIFIKASI
deretSegitiga::Int->Int
{- deretSegitiga(n) akan menghitung bilangan deret segitiga
    ke-n secara rekursi. Asumsi untuk n adalah n > 0 -}

-- IMPLEMENTASI
deretSegitiga n
    | n == 1 = 1 -- Basis
    | otherwise = deretSegitiga (n-1) + n -- Rekurens