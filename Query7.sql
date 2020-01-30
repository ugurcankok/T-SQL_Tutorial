/*temp tablo belli bir kayýt blogunu belli bir yere çekmek istiyorsanýz kullanlýr*/

CREATE TABLE #tempTable
(
	id int,
	name nvarchar(50)
)

SELECT * FROM #tempTable

insert into #tempTable (id,name) values (1,'ugurcan')
insert into #tempTable (id,name) values (2,'kerem')
insert into #tempTable (id,name) values (3,'gülten')
insert into #tempTable (id,name) values (4,'ilayda')
insert into #tempTable (id,name) values (5,'medit')

DROP TABLE #tempTable

INSERT INTO #tempTable 
select PersonId,PersonSurname from dbo.Personn


/*view: bir select yazdýnýz joinli n tane tablo baðladýnýz içinden beþ tane seçip kullanaksýnýz yeni tablo yapmakta gereksiz burda view lar kullanýlýr. */

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