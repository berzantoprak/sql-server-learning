---Query ile tabloya kayýt atma 
insert into Ogrenci values (111,'Melike','Tunç','12121232123','05.05.2026',0,'11.11.2002',0,0,0)
---Query ile tabloya kayýt atalým ama belirli sütunlara tek atalým (not null olanlara)
insert into Ogrenci (OgrenciNo,Ad,Soyad,TCKimlikNo,KayýtTarihi,ErkekMi,DogumTarihi)
	values(112,'Sinan','Yol','12344323565','01.01.2926',1,'01.03.2001')