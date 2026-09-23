--- alt sorgu oluþturma(aslýnda koþulu tablo çekme gibi)

select * from Ogrenci where OgrenciNo in
(select OgrenciNo from OgrenciAdres where Sehir=35)


select * from Ogrenci where OgrenciNo in
(select OgrenciNo from KantinKayitlari where MiktarTL>=70)

select * from Ogrenci where OgrenciNo in
(select OgrenciNo from OgrenciAdres where Sehir=34 )