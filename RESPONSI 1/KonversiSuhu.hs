module KonversiSuhu where
	-- Fungsi Konversi Suhu		konversiSuhu(c,temp)

	-- DEFINISI DAN SPESIFIKASI
	konversiSuhu::Float->Char->Float
	{- FUngsi konversiSuhu(c,temp) akan mengkonversikan
 	   suhu celcius c ke satuan temp yang merupakan salah
	   satu dari "R" untuk reamur, "F" untuk Fahrenheit dan
	   "K" untuk Kelvin -}

	-- IMPLEMENTASI
	konversiSuhu c temp
		| temp == 'R' = 4/5*c
		| temp == 'F' = (9/5 * c)+32
		| otherwise = c + 273.15

	-- APLIKASI
    		-- konversiSuhu 25 'R' // 20
