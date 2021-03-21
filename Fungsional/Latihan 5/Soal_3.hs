-- Ubah Arah			ubahArah(s,r)

-- DEFINISI DAN SPESIFIKASI
ubahArah::Int->Int->Int
{- {- ubahArah s r adalah fungsi yang menerima masukan dua buah integer s dan r yang
merepresentasikan arah pergerakan dan besar perubahan arah yang akan dilakukan (dalam satu derajat).
Fungsi mengembalikan arah pergerakan yang baru dalam range 0 s.d. 359, setelah s diputar sebesar r. -} -}

-- IMPLEMENTASI
ubahArah s r = (s+r) `mod` 360

-- APLIKASI
    -- ubahArah 50 10 = 60
    -- ubahArah 20 -100 = 280