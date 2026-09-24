declare @kitapID int=1;
declare @ToplamStok int;


---Toplam Stok Miktarýný Hesaplama 
select @ToplamStok=sum(StokAdedi)  from Kitapstok
where KitapID=@kitapID


if @ToplamStok <100
begin
	print 'Stok Durumu :'
	print '----------'
	print 'Stok Yetersiz'+'stok Adedi'+cast(@ToplamStok as nvarchar(50))
end

else
begin 
	print 'Stok Durumu'
	print '-------'
	print 'Stok Yeterli'+'Stok Adedi'+cast(@ToplamStok as nvarchar(50));

