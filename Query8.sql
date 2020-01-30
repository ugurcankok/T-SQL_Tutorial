/* functionlar de�er d�nd�r�r eger sen tablo d�nd�rmek istiyorsan ya store procedure kullan�rs�n ya da view kullan�rs�n. 
Functionlar yava� �al���r �ok tavsiye edilmez*/

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