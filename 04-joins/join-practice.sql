select A.OgrenciNo,A.Ad,A.Soyad,B.Sehir,B.AdresDetay from Ogrenci A
inner join OgrenciAdres B
on A.OgrenciNo=B.OgrenciNo



--- left join 
select A.OgrenciNo,A.Ad,A.Soyad,B.AdresDetay,B.Sehir from Ogrenci A
left join OgrenciAdres B
on A.OgrenciNo=B.OgrenciNo

--- left join kullanýrken sadece soldakþ tabloda bulunanlarý ver 
select A.OgrenciNo,A.Ad,A.Soyad,A.TCKimlikNo,B.AdresDetay,B.Sehir from Ogrenci A
left join OgrenciAdres B
on A.OgrenciNo=B.OgrenciNo
where B.OgrenciNo is null

select  A.OgrenciNo,A.Ad,A.Soyad,sum(B.MiktarTL) as 'Tolam haracama' from Ogrenci A
left join KantinKayitlari B
on A.OgrenciNo=B.OgrenciNo
group by A.OgrenciNo,A.Ad,A.Soyad
order by OgrenciNo