---select * from Tablom


--- Query ile tablo oluþturma
create table Tablom2(
	OgrenciNo int not null,
	Ad varchar(30) not null,
	Soyad varchar(30) not null,
	TCKimlikNo char(11) not null,
	KayýtTarihi date not null,
	ErkekMi bit not null )

--- Query ile tablo silme 
drop table Tablom2
  
select * from Tablom2

---Query ile Tablo günceleme 
alter table Tablom2 alter column KayýtTarihi  getdate not null




---Query ile tabloya sütun eklemek 
alter table Tablom2 add DogumTarihi date not null
select * from Tablom2