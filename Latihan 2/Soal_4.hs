-- Menghitung jumlah digit			sumOfDigits(x)

-- DEFINISI DAN SPESIFIKASI
sumOfDigits::Int->Int
{- sumOfDigits(x) akan menghitung jumlah semua digit
    pada x secara rekursi. Asumsi masukannya adalah
    semua x yg dimasukan haruslah x>=0 -}

sumOfDigitsPosNeg::Int->Int
{- sumOfDigitsPosNeg(x) akan menghitung jumlah digit
    pada x dengan menggunakan sumOfDigits x. -}

-- IMPLEMENTASI
sumOfDigits x
    | x == 0 = 0 -- Basis
    | otherwise = 
        sumOfDigits (x `div` 10) + (x `mod` 10) -- Rekurens

sumOfDigitsPosNeg x
    | x < 0 = sumOfDigits (-x)
    | otherwise = sumOfDigits x