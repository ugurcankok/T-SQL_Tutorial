INSERT dbo.Resim (id,resim)
select 1,resim.* from OPENROWSET(BULK 'C:\Users\Casper\Desktop\image\füze4.jpg', SINGLE_BLOB) resim

select * from dbo.Resim

/* hash mash iyi bir þey deðil azaltmak lazým index kullanabilirsin bu durumda. Has match olunca veriler geç gelir index ile bu zamaný kýsaltarak
zamandan kazanç saðlanýr performans artar. Tablolarda genelde PK ya göre sýralar fakat sen tabloda baþka id ye göre sýralama yapmak 
istiyorsan group by ile yaparsýn fakat hash match olabilir. Oluþturdugun index otomatik olarak atýyorum prodcutid ye göre çekse daha iyi olur.
Disk sorunun varsa index pek iyi deðildir. Birde indexleri günlük rebuilt etmek gerekir cünkü insertleri eklemeyebilir. 
drop and create yapanlarda oluyor. shrink ise disk de yer açýyor.*/

select * from dbo.tbl_PersonInfo