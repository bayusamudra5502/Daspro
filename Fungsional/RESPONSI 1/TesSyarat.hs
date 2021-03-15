module TesSyarat where
     -- DEFINISI DAN SPESIFIKASI
     tesSyarat::Float->Float->Integer 
     {- Fungsi tesSyarat(ip,pot) menentukan cluster  beasiswa
     manakah yang dapat diterima oleh orang dengan ip dan pot
     yang telah dicantumkan -}
     
     -- IMPLEMENTASI
     tesSyarat ip pot
          | ip >= 3.5 = 4
          | (pot < 1) && (ip < 3.5) = 1
          | (pot >= 1) && (pot < 5) = 
               if ip >= 2 then 3 else 2
          | otherwise = 0
     
     -- APLIKASI
          -- f 