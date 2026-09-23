--create table Kitaplar(
--KitapID int primary key identity(1,1),
--KitapAdi nvarchar(50),
--Yazar nvarchar(50)
--);


--select * from Kitaplar

------------------------------------------------------

--örenek veri ekliyoruz 

insert into Kitaplar(KitapAdi,Yazar)
values('Sefiller','Victor Hugo'),
('Suç ve Ceza','Dostyoveski'),
('1984','George Orweel')


select * from Kitaplar

------------------------------------------

---declare ile deðiþken tanýmlayýp onu kayýt ismine atýyalým

declare @ArananKitap nvarchar(50);
set @ArananKitap='1984';

select KitapID,KitapAdi,Yazar from Kitaplar
where KitapAdi=@ArananKitap;


------------------------------------------------------------