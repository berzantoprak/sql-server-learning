begin transaction ;


begin try

	insert into Ogrenciler(OgrenciID,Ad,Soyad,Sinif)values(1,'Ahmet','Yýlmaz','10-A');
	insert into Ogrenciler(OgrenciID,Ad,Soyad,Sinif)values(2,'Ayþe','Demir','10-B');
	insert into Ogrenciler(OgrenciID,Ad,Soyad,Sinif)values(3,'Ali','Kaya','10-A');
	insert into Ogrenciler(OgrenciID,Ad,Soyad,Sinif)values(4,'Fatoþ','Yýldýz','10-C');

	--Tüm öðrenciler baþarýyla eklendi iþlemi onaylayalým
	commit;
end try
begin catch
--Hata durumunda iþlemi geri alalým
	rollback;

end catch;
