/*use DonemProje
Declare @PersonID INT = 14,
@PersonBirthDate Date = '2010-05-23'

select * from tbl_PersonInfo ps
where ps.PersonID=@PersonID and ps.PersonBirthDate=@PersonBirthDate */

/*Declare @PersonID INT 

set @PersonID=18

select * from tbl_PersonInfo ps
where ps.PersonID=@PersonID */

/*Declare @PersonID INT = 18

IF @PersonID = 14
	BEGIN
		select 
			* 
		from 
			tbl_PersonInfo ps
		where 
			ps.PersonID=@PersonID 
	END
ELSE IF @PersonID=18
	BEGIN
		select 
			* 
		from 
			tbl_PersonInfo ps
		where 
			ps.PersonID=@PersonID 
	END
ELSE 
	BEGIN
		SELECT 'Yanlis Secim'
	END*/

Declare @TurSayisi INT = 5,
@Sayac INT = 0

WHILE @TurSayisi > @Sayac
	BEGIN
		SELECT @Sayac
		SET @Sayac=@Sayac + 1
	END	 