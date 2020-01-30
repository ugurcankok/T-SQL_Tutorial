/* functionlar deðer döndürür eger sen tablo döndürmek istiyorsan ya store procedure kullanýrsýn ya da view kullanýrsýn. 
Functionlar yavaþ çalýþýr çok tavsiye edilmez*/

--use DonemProje
--select MAX(PersonBirthDate) from dbo.tbl_PersonInfo 

--CREATE FUNCTION dbo.getMaxDate()

--RETURNS DateTime
--AS
--BEGIN
--	DECLARE @TableDate DateTime
--	SET @TableDate = (select MAX(PersonBirthDate) from dbo.tbl_PersonInfo)
--	RETURN @TableDate
--END

--SELECT dbo.getMaxDate()

SELECT * FROM dbo.tbl_PersonInfo a
where a.PersonID=dbo.getMaxDate()

CREATE FUNCTION dbo.getMaxID()
RETURNs INT
AS
BEGIN
	DECLARE @PersonID INT

	SET @PersonID = (select a.PersonID from
					(select TOP 1 PersonID,COUNT(*) AS Amount from dbo.tbl_PersonInfo GROUP BY PersonID order by Amount desc)a)
	RETURN @PersonID
END

select  dbo.getMaxID()

CREATE FUNCTION dbo.getPersonId(@PersonID INT)
RETURNS NVARCHAR(50)
AS
BEGIN
	DECLARE	@PersonName INT
	SET @PersonID=(SELECT PersonID FROM dbo.tbl_PersonInfo where PersonID=@PersonID)
	RETURN @PersonName
END

select dbo.getPersonId(14)