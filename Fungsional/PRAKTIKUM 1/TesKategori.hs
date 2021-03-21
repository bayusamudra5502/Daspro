module TesKategori where
  -- Tes Kategori		tesKategori(x)

  -- DEFINISI DAN SPESIFIKASI
  tesKategori::Int->Int->Int->Bool
  {- FUngsi tesKategori(t,b,k) akan memeriksa apakah orang
     dengan tinggi t dan berat b dapat menaiki kategori k?
     JIka ya, maka True, sebaliknya False. -}

  -- IMPLEMENTASI
  tesKategori t b k
     | (t > 100) && (b <= 150) = (k /= 1 && k /= 0)
     | (t <= 100) && (b <= 150) = if b > 30 then (k == 1 || k == 2) else (k==1)
     | (t <= 100) && (b > 150) = (k == 2)
     | (t > 100) && (b >150) && (t <= 200)  = (k == 2 || k==3)
     | otherwise = (k==0) 
