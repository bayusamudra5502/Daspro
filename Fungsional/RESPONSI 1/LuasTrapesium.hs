module LuasTrapesium where
    -- Menghitung Luas Trapesium	luasTrapesium(x)
    
    -- DEFINISI DAN SPESIFIKASI
    luasTrapesium::Float->Float->Float->Float
    {- fungsi luasTrapesium t s1 s2 akan menghitung luas
    trapesium dengan tinggi t dan sisi sejajar s1 dan s2 -}
    
    -- IMPLEMENTASI
    luasTrapesium t s1 s2 = 0.5 * t * (s1+s2)
    
    -- APLIKASI
        -- f 