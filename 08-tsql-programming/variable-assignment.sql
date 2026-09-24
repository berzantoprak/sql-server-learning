---Deðiþken oluþturma ve deðer atama 

Declare @Kitapadi nvarchar(50)
declare @Yazar nvarchar(50)
declare @KitapId int



set @Kitapadi='Sefiller'
set @Yazar ='Victor Hugo'
set  @KitapId=101


---Ekrana yazdýrma 

print 'Kiatap adi:'+@Kitapadi
print 'Yazar:' +@Yazar
print 'KiatapId:'+ cast(@KitapId as nvarchar)