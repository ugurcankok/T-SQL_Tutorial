--select
--	s.PersonId,
--	p.ProductName,
--	s.SalesDate
--from dbo.Sales s
--INNER JOIN Product p ON p.ProductId=s.ProductId

select
	s.PersonId,
	(select p.ProductName from Product p where p.ProductId=s.ProductId) as ProductName,
	s.SalesDate
from dbo.Sales s

/*iki tabloda çok büyük ise joinlemek daha iyidir. Tablolardan birinde çok kayýt diðerinde az kayýt varsa iç sorgu yazmak daha iyidir*/
/*view index atabiliyorsun, join yapabilirsin fakat procedure de bunlarý yapamazsýn bunlardan dolayý view ve procedure farklýdýr. View güçlüdür.
View anlamsýz olan tablolarý anlamlý hale getirir. Select e göre daha hýzlý çalýþýr çünkü arkada derlenmiþtir tekrar derlemek için ugraþýlmaz.
OR yavaþ çalýþýr bunun yerine IF li yapýlar kullanýlýr.*/