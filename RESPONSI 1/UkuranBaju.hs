module UkuranBaju where
  -- Menentukan Ukuran Baju	ukuranBaju(t,b)

  -- DEFINISI DAN SPESIFIKASI
  ukuranBaju::Int->Int->Int
  {- Menentukan UKuran Baju dari tinggi dan berat badan
     yang dimasukan -}

  -- IMPLEMENTASI
  ukuranBaju t b
     | (t <= 150) = 1
     | (t > 170) && (b > 60) && (b <= 80) = 3
     | (t > 150) && (t <= 170) && (b <= 80) = 2
     | (t > 150) && ( t <= 170) && (b > 80) = 3
     | (t > 170) && (b <= 60) = 2
     | otherwise = 4  