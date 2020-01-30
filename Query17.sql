INSERT dbo.Resim (id,resim)
select 1,resim.* from OPENROWSET(BULK 'C:\Users\Casper\Desktop\image\f�ze4.jpg', SINGLE_BLOB) resim

select * from dbo.Resim

/* hash mash iyi bir �ey de�il azaltmak laz�m index kullanabilirsin bu durumda. Has match olunca veriler ge� gelir index ile bu zaman� k�saltarak
zamandan kazan� sa�lan�r performans artar. Tablolarda genelde PK ya g�re s�ralar fakat sen tabloda ba�ka id ye g�re s�ralama yapmak 
istiyorsan group by ile yapars�n fakat hash match olabilir. Olu�turdugun index otomatik olarak at�yorum prodcutid ye g�re �ekse daha iyi olur.
Disk sorunun varsa index pek iyi de�ildir. Birde indexleri g�nl�k rebuilt etmek gerekir c�nk� insertleri eklemeyebilir. 
drop and create yapanlarda oluyor. shrink ise disk de yer a��yor.*/

select * from dbo.tbl_PersonInfo