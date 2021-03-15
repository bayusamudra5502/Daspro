module SumKelipatanX where
    -- Menghitung jumlah kelipatan

    sumKelipatanX :: Int->Int->Int->Int
    -- sumKelipatanX(x,y,m) akan menghitung jumlah (sum) dari
    -- tiap kelipatan m pada selang [x,y] (inklusif)

    sumKelipatanX x y m
        | x == y = -- Basis
            if x `mod` m == 0
            then x 
            else 0
        | otherwise = -- Rekurens
            if x `mod` m == 0 
            then sumKelipatanX (x+1) y m + x
            else sumKelipatanX (x+1) y m