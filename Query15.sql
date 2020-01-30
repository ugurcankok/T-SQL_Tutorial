CREATE TRIGGER dbo.SalesProduct
ON dbo.Sales
AFTER INSERT
AS
BEGIN 
	DECLARE @ProductId INT 
	SELECT @ProductId=ProductId from inserted
	UPDATE ProductDetail SET ProductCount = ProductCount - 1 WHERE ProductId= @ProductId

END
INSERT INTO dbo.Sales (ProductId,ProductCount,PersonId) VALUES (9,1,1)

select * from dbo.Sales

select * from dbo.ProductDetail