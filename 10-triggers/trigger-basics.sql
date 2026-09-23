  create trigger mytrigger1
on Ogrenci
after insert
as
begin 
insert into OgrenciLog(OgrenciSayisi,Tarih)
values((select count (OgrenciNo)from Ogrenci),getdate())
end

insert into Ogrenci (OgrenciNo,Ad,Soyad,TCKimlikNo,KayýtTarihi,ErkekMi,DogumTarihi)
values(987,'Can','Bal','12345678976','2025.12.01',1,'2003.09.12')

 select * from OgrenciLog 


 create trigger mytrigger2
 on Ogrenci
 after delete 
 as
 begin 
 insert into OgrenciLog(OgrenciSayisi,Tarih)
 values((select count(OgrenciNo) from Ogrenci),getdate())
 end


 delete from Ogrenci where OgrenciNo in( 984 ,985)
 select * from OgrenciLog