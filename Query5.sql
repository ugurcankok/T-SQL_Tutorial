use DonemProje

/*CREATE TABLE Personn
(
	PersonId INT,
	PersonName NVARCHAR(50),
	PersonSurname NVARCHAR(50)
)*/

--DROP TABLE Personn --tabloyu siler

--INSERT INTO Personn (PersonId,PersonName,PersonSurname) VALUES (1,'ugurcan','kök')

select*from Personn

--update Personn set PersonId=2 where PersonName = 'ugurcan'

/*alter table Personn 
add PersonEmail nvarchar(50)*/

/*alter table Personn
drop column PersonEmail*/

Declare @PersonId INT = 2,
@sayac INT

SET @sayac= (select count(*) from Personn)

While @PersonId <= @sayac
	BEGIN
		IF @PersonId=1
			BEGIN 
				UPDATE Personn set PersonName='uck' where PersonId=@PersonId
				SET @PersonId=@PersonId +1 
			END
		ELSE
			BEGIN
				UPDATE Personn set PersonName='uckk' where PersonId=@PersonId
				SET @PersonId=@PersonId +1 
			END
	END