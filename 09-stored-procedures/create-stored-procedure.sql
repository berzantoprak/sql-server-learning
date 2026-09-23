---stored procedure neden kullanýlýr?
---(uzun uzun yazdýðýmýz bir alt sorgu düþünelim ve biz bunu çok sýk kullanýyor olalým )
---(biz istiyoruzki çok kýsa komutlarla alt sorguyu çalýþtýrýp sonucu alalým)
---(iþte bunu stored procedure ile saðlarýz)


create procedure Sehiregoreogrencilistesi(@Sehir int )
as
select * from Ogrenci where OgrenciNo
in
(select OgrenciNo from OgrenciAdres  where Sehir=@Sehir )



exec Sehiregoreogrencilistesi 35
exec Sehiregoreogrencilistesi 34



create procedure adresegoreogrencilistesi(@detay nvarchar(20))
as
select * from Ogrenci where OgrenciNo
in 
(select OgrenciNo from OgrenciAdres where AdresDetay like @detay)


exec adresegoreogrencilistesi '%paris%'