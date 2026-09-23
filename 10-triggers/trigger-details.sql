create trigger mytrigger1
on Ogrenci
after insert 
as
begin 
insert into OgrenciLog(OgrenciSayisi,Tarih)
values((select count(OgrenciNo) from Ogrenci),getdate())
end


insert into Ogrenci (OgrenciNo,Ad,Soyad,TCKimlikNo,KayýtTarihi,ErkekMi,DogumTarihi)
values(324,'Bektaþ','Türk','1234323231','11.12.2023',1,'11.1.2000')

select * from OgrenciLog





---------



create trigger mytrigger2
on Ogrenci
after delete
as
begin 
insert into OgrenciLog(OgrenciSayisi,Tarih)
		values((select count(OgrenciNo) from Ogrenci),getdate())
end



delete from Ogrenci where OgrenciNo=324
select * from OgrenciLog
