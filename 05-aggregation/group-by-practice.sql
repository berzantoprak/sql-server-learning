--- group by 
--- group by gruplandýrma yapýlabilecek sütunlar üzerinden yapýlýr 
select  ErkekMi,count(*) as 'Kiþi sayýsý' from  ogrenci group by ErkekMi
select ErkekMi,count(*) as 'kiþi sayýsý' ,avg(SýnavNotu1) as '1. sýnav ortalamalarý' from Ogrenci group by ErkekMi

select ErkekMi,count(*) as 'Ogrenci sayýsý',
	avg(SýnavNotu1) as '1. sýnav Ortalamasý',
	avg(SýnavNotu2) as '2. sýnav Ortalamasý',
	avg(SýnavNotu3) as 'final ortalamsý'  from Ogrenci group by ErkekMi