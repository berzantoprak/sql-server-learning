select Ad,Soyad,SýnavNotu1 as batýrýlan1,SýnavNotu2 as batýrýlan2 from Ogrenci 
select Ad,Soyad,(SýnavNotu1+SýnavNotu2+SýnavNotu3)/3 as Ortalama from Ogrenci

--- between Kullanýmý
select * from  Ogrenci  where OgrenciNo between 400 and 800
select * from Ogrenci where OgrenciNo between 400 and 800 and ErkekMi=0
select * from Ogrenci where DogumTarihi between '2002.03.09' and '2005.11.11'
select * from Ogrenci where  DogumTarihi >='2002.03.09' and  DogumTarihi<='2005.11.11'