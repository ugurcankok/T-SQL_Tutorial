/*temp tablo belli bir kay�t blogunu belli bir yere �ekmek istiyorsan�z kullanl�r*/

CREATE TABLE #tempTable
(
	id int,
	name nvarchar(50)
)

SELECT * FROM #tempTable

insert into #tempTable (id,name) values (1,'ugurcan')
insert into #tempTable (id,name) values (2,'kerem')
insert into #tempTable (id,name) values (3,'g�lten')
insert into #tempTable (id,name) values (4,'ilayda')
insert into #tempTable (id,name) values (5,'medit')

DROP TABLE #tempTable

INSERT INTO #tempTable 
select PersonId,PersonSurname from dbo.Personn


/*view: bir select yazd�n�z joinli n tane tablo ba�lad�n�z i�inden be� tane se�ip kullanaks�n�z yeni tablo yapmakta gereksiz burda view lar kullan�l�r. */

select d.PersonName, a.PersonBirthDate from dbo.tbl_PersonInfo a
INNER JOIN dbo.Personn d on d.PersonId=a.PersonID
where a.PersonID=3

CREATE VIEW dbo.v_ProductName
AS
select d.PersonName, a.PersonBirthDate from dbo.tbl_PersonInfo a
INNER JOIN dbo.Personn d on d.PersonId=a.PersonID
where a.PersonID=3

select*from dbo.v_ProductName

ALTER VIEW dbo.v_ProductName
AS
select d.PersonName, a.PersonBirthDate from dbo.tbl_PersonInfo a
INNER JOIN dbo.Personn d on d.PersonId=a.PersonID
where a.PersonID=8