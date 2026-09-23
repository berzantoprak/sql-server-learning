select A.OgrenciNo,A.Ad,A.Soyad,B.AdresDetay from Ogrenci A
left join OgrenciAdres B
on A.OgrenciNo=B.OgrenciNo



--sadece A tablosunuda olan OgrenciNumaralraýna ait genel kayýtlar

select * from Ogrenci A
left join KantinKayitlari B
on A.OgrenciNo=B.OgrenciNo
where B.OgrenciNo is null
order by A.OgrenciNo



select  A.OgrenciNo,A.Ad,A.Soyad,A.SýnavNotu1,sum(B.MiktarTL) as 'Toplam harcama'  from Ogrenci A
left join KantinKayitlari B
on A.OgrenciNo=B.OgrenciNo
group by A.OgrenciNo,A.Ad,A.Soyad,A.SýnavNotu1 