module NbKelipatanX where
  -- Menghitung Kelipatan	nbKelipatanX(m,n,x)

  -- DEFINISI DAN SPESIFIKASI
  nbKelipatanX::Int->Int->Int->Int
  {- Menghitung Kelipatan x pada selang tertutup m dan n-}

  -- IMPLEMENTASI
  nbKelipatanX m n x
     | n < m = 0 -- Basis
     | (n `mod` x /= 0) = nbKelipatanX m (n-1) x -- Rekurens
     | otherwise = 1 + nbKelipatanX m (n-x) x -- Rekurens

  -- APLIKASI
    -- f 
