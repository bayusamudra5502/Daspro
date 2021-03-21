module LuasBS where
    -- Menghitung luas bujur sangkar

    luasBS::Int->Int
    -- luasBS s akan menghasilkan luas persegi dengan sisi
    -- s.

    luasBS s
        | s == 1 = 1 -- Basis
        | otherwise = luasBS (s-1) + 2*s - 1 -- Rekurens