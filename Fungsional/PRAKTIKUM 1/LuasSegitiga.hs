module LuasSegitiga where
    -- Menghitung luas Segitiga		luasSegitiga(a,t)
    
    -- DEFINISI DAN SPESIFIKASI
    luasSegitiga::Float->Float->Float
    {- Fungsi luasSegitiga(a,t) akan menghitung luas segitiga
        dengan alas sebesar a dan tinggi sebesar t. Fungsi ini
        mengasumsikan semua masukan adalah bilangan real positif
	dan mengeluarkan bilangan real. -}
    
    -- IMPLEMENTASI
    luasSegitiga a t = 0.5 * a * t
    
    -- APLIKASI
        -- luasSegitiga 3 4 // 6
