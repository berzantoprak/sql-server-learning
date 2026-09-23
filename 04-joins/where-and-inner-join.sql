--- where komutu ile tablolarý birleþtirerek kayýt çekme 

select Ogrenci.OgrenciNo,Ogrenci.Ad,Ogrenci.Soyad,
	Ogrenci.TCKimlikNo,OgrenciAdres.AdresDetay,OgrenciAdres.Sehir
	from Ogrenci,OgrenciAdres
	where Ogrenci.OgrenciNo=OgrenciAdres.OgrenciNo

--- Join kýsmý
--- inner join ile otrak verilere ait kayýtlarý çekme 
select A.OgrenciNo,A.Ad,A.Soyad,A.TCKimlikNo,A.KayýtTarihi,
A.DogumTarihi,B.AdresDetay,B.Sehir from Ogrenci A
inner join OgrenciAdres B
on A.OgrenciNo=B.OgrenciNo


select A.OgrenciNo,A.Ad,A.Soyad,B.MiktarTL from Ogrenci A
inner join KantinKayitlari B
on  A.OgrenciNo=B.OgrenciNo
group by A.OgrenciNo,A.Ad,A.Soyad,B.MiktarTL
order by OgrenciNo desc


select  A.OgrenciNo,A.Ad,A.Soyad,sum(B.MiktarTL) as 'Toplam harcama' from Ogrenci A
inner join KantinKayitlari B
on A.OgrenciNo=B.OgrenciNo
group by  A.OgrenciNo,A.Ad,A.Soyad
order by OgrenciNo