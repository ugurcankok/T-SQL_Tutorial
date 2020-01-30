/*PROCEDURE kod blogudur, istedigin zaman istediðin yerde çaðýrýrsýn, dinamik yapýdýr.  */

/*CREATE PROCEDURE dbo.EkranaBas
AS
BEGIN

	SELECT 'Ekrana Yazýyý Yazarim'

END*/
EXEC dbo.EkranaBas

ALTER PROCEDURE dbo.EkranaBas
AS
BEGIN

	SELECT 'Ekrana yazýyý yazarim' AS Baslik
END

CREATE PROCEDURE dbo.PersonelAra
(
	@PersonelAdi NVARCHAR(50)=NULL
)

AS
BEGIN

	SELECT * FROM dbo.Personn pe WHERE	pe.PersonName LIKE '%' + @PersonelAdi + '%'
END

SELECT * FROM dbo.Personn
EXEC dbo.PersonelAra 'uckk'

CREATE PROCEDURE dbo.dbHelp
(
	@SchemaName varchar(50) = Null,
	@TableName varchar(50)
)
AS
BEGIN

	SELECT o.name AS 'Table Name', c.name AS 'Column Name',TYPE_NAME(c.user_type_id) AS 'Tür' FROM sys.objects o 
	inner join sys.columns c  on c.object_id=o.object_id
	where o.name=@TableName and o.schema_id=schema_id(@SchemaName)
END

EXEC dbo.dbHelp 'dbo','Personn'
