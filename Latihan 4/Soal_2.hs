-- 	sumInteger  		sumInteger(m,n,f)

-- DEFINISI DAN SPESIFIKASI
sumInteger::Int->Int->(Int->Bool)->Int
{- fungsi sumInteger menerima 2 (dua) buah integer positif (>0),m dan n, 
    dan sebuah fungsi f dan menghasilkan penjumlahan dari semua integer
    antara m dan n (termasuk m dan n) yang memenuhi f. Jika dalam selang 
    m dan n tidak ada yang memenuhi f, maka hasilnya adalah 0.
 -}

-- IMPLEMENTASI
sumInteger m n f
    | m > n = 0 -- Basis
    | otherwise = if f m then -- Rekurens
            m + sumInteger (m+1) n f
        else
            sumInteger (m+1) n f

-- APLIKASI
    -- Menghasilkan True bila x membagi habis 100
    -- sumInteger 1 100 (\x -> x `mod` 100 == 0)
    -- Expected Result : 100

    -- Menghasilkan True bila x adalah genap dan habis dibagi 10
    -- atau bila x adalah ganjil habis dibagi oleh 5.
    -- sumInteger 1 100 (\x -> x `mod` 5 == 0)
    -- Expected Result : 1050

    -- Menghasilkan True bila lebih kecil dari 10
    -- sumInteger 25 25 (\x -> x < 10)
    -- Expected Result : 0