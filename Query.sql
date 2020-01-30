 /*use DonemProje*/
/*select * from tbl_PersonInfo*/
/*select PersonName,PersonSurname from tbl_PersonInfo

select PersonName + ' ' + PersonSurname as PersonFullName from tbl_PersonInfo

select top 100 * from tbl_PersonInfo order by NEWID()*/

/*select  distinct PersonName  from tbl_PersonInfo*/

/*SELECT 
	*	
FROM
	tbl_PersonInfo
WHERE 
	/*PersonID= 14 */
	/*PersonSurname='kök'*/
	/*PersonBirthDate < '2010-08-01' and PersonEmail='kerem@gmail.com' and Role=0*/
	/*PersonSurname='kök' or PersonName='ugur'*/

/*SELECT 
	*
FROM
	tbl_PersonInfo
WHERE 
	/*Role IN (0,1)*/
	PersonEmail IN('ugurcankok@gmail.com','kerem@gmail.com')*/

/*SELECT
	*
FROM
	tbl_PersonInfo
WHERE
		/*PersonBirthDate between '1990-01-01' and '2000-01-01'/*belirtilen noktalar dahildir*/*/
		PersonID between 10 and 20*/

/*SELECT 
	*
FROM
	tbl_PersonInfo
WHERE
	/*PersonName LIKE 'u%' /*u ile baþlýyordu*/*/
	/*PersonName LIKE '%ur' /* sonu ur ile bitenler*/*/
	/*PersonEmail LIKE '%can%' /*içinde can geciyordu like hiçbir yerde case sensitive deðildir*/*/

/*use deneme*/

 /*SELECT 
	*
FROM	
	dbo.Ogrenci
	*/
/*SELECT
	/*count(*) as 'TotalRow' /* where ile functionlar kullanýlmaz*/*/
	/*max(OkulNo) as 'BiggestOkulNo'*/
	/*min(OkulNo) as 'minokulNo'*/
	/*avg(OkulNo) as 'AVG'*/
	/*sum(OkulNo) as 'Toplam' */
	sum(OkulNo) / count(*) as 'AVG'
FROM
	dbo.Ogrenci*/

---order by
/*SELECT 
	*
FROM
	dbo.Ogrenci
--ORDER BY Adý desc /*desc tersten sýralar*/*/

--GROUP BY 
/*SELECT 
	Adý,Soyadý,Okulu
FROM
	dbo.Ogrenci
GROUP BY Adý,Soyadý,Okulu --gruplamana yarýyor*/

/*SELECT
	Adý,count(*)
FROM
	dbo.Ogrenci
GROUP BY Adý --kimden kaç tane var onu gösterir.*/

/*SELECT 
	Okulu,COUNT(*)
FROM
	dbo.Ogrenci
WHERE
	COUNT(*)>1
GROUP BY Okulu -- yanlýþ kullaným functionlarla where kullanýlmaz bunun yerine having kullanýrsýn.*/

SELECT 
	Okulu,COUNT(*)
FROM
	dbo.Ogrenci
GROUP BY Okulu
HAVING
	COUNT(*)>1

