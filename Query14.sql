USE [DbAkademiYouTubeKurs]
GO
/****** Object:  StoredProcedure [dbo].[Ksel_UrunDurum]    Script Date: 29.04.2019 01:29:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Ksel_UrunDurum]
(
	@CategoryId INT = NULL
)
AS
BEGIN
SELECT 
	p.ProductName AS Ürün_Adı,
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
WHERE ((@CategoryId IS NULL) OR (c.CategoryId=@CategoryId))
END