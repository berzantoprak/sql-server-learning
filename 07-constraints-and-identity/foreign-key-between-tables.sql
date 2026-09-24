create table KitapStok(
	KitapID int,
	StokAdedi int,
	Sehir nvarchar(50),
	constraint FK_Kitap foreign key (KitapID) references Kitaplar(KitapID)
	);



	-----------------------------------

insert into KitapStok(KitapID,StokAdedi,Sehir)
	values (1,50,'Ankara'),	
		  (2,30,'Ýzmir'),
		  (3,20,'Ýstanbul'),
		  (1,40,'Ýstanbul')