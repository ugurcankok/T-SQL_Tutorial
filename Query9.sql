--Triger: tetikleyici, kayýt attýgýn zaman diðer tablo bundan etkileniyorsa veya etkilenmesini istiyorsan trigger ile yapabilirsin

use DonemProje
select * from dbo.Personn
select * from dbo.tbl_PersonInfo
CREATE TRIGGER dbo.trg_Person
ON dbo.Personn
AFTER INSERT --after delete 
AS
BEGIN
	DECLARE @PersonID INT
	select @PersonID=PersonID FROM inserted -- deleted yaparsan da silersin

	Insert into dbo.tbl_PersonInfo(PersonID,PersonName,PersonSurname,PersonEmail,PersonPassword,password_change_status,Role,PersonBirthDate) 
	values (@PersonID,'ugur','can','ugurcan@hotmail.com','ugufugu',1,1,'12.05.2017')
END

Insert into Personn(PersonId,PersonName,PersonSurname,PersonEmail) 
values (20,'ugurcan','kok','uck@hotmail.com')

