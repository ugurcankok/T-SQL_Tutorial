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

/*iki tabloda �ok b�y�k ise joinlemek daha iyidir. Tablolardan birinde �ok kay�t di�erinde az kay�t varsa i� sorgu yazmak daha iyidir*/
/*view index atabiliyorsun, join yapabilirsin fakat procedure de bunlar� yapamazs�n bunlardan dolay� view ve procedure farkl�d�r. View g��l�d�r.
View anlams�z olan tablolar� anlaml� hale getirir. Select e g�re daha h�zl� �al���r ��nk� arkada derlenmi�tir tekrar derlemek i�in ugra��lmaz.
OR yava� �al���r bunun yerine IF li yap�lar kullan�l�r.*/