create procedure sehiregoreliste(@sehir int)
as
select * from Ogrenci where OgrenciNo 
in
(select OgrenciNo from OgrenciAdres where Sehir= @Sehir)

---þimdide triggger edelim 
create trigger mytrigger1
on Ogrenci
after insert 
as
begin 
insert into OgrenciLog(OgrenciSayisi,Tarih)
values((select count(OgenciNo) from Ogrenci),getdate())
end


create trigger mytrigger2
on Ogrenci
after delete
as
begin 
insert into OgrenciLog(OgrenciSayisi,Tarih)
values((select count(OgrenciNo) from Ogrenci),getdate())
end


select * from OgrenciLog