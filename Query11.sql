CREATE PROCEDURE dbo.Ksel_UrunDurum
AS
BEGIN
SELECT 
	p.ProductName AS �r�n_Ad�,
	c.CategotyName AS Kategori_Name,
	sc.SubCategoryName AS AltKaregoriName,
	pd.ProductCount AS Stock,
	pd.ProductPrice AS YalinFiyat,
	pd.ProductTax AS KDV,
	(pd.ProductPrice * (pd.ProductTax / 100)) + (pd.ProductPrice) AS Fiyat,
	CASE
		WHEN p.ProductActive = 1 THEN 'Active'
		ELSE 'Pasive' END AS ProductActive
FROM 
	dbo.Product p WITH(NOLOCK)
INNER JOIN dbo.ProductDetail pd ON pd.ProductId = p.ProductId
INNER JOIN dbo.Category c ON c.CategoryId=p.CategoryId
INNER JOIN dbo.SubCategory sc ON sc.SubCategoryId=p.SubCategoryId
END

EXEC dbo.Ksel_UrunDurum