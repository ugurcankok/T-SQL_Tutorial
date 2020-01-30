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
	/*PersonSurname='k�k'*/
	/*PersonBirthDate < '2010-08-01' and PersonEmail='kerem@gmail.com' and Role=0*/
	/*PersonSurname='k�k' or PersonName='ugur'*/

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
	/*PersonName LIKE 'u%' /*u ile ba�l�yordu*/*/
	/*PersonName LIKE '%ur' /* sonu ur ile bitenler*/*/
	/*PersonEmail LIKE '%can%' /*i�inde can geciyordu like hi�bir yerde case sensitive de�ildir*/*/

/*use deneme*/

 /*SELECT 
	*
FROM	
	dbo.Ogrenci
	*/
/*SELECT
	/*count(*) as 'TotalRow' /* where ile functionlar kullan�lmaz*/*/
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
--ORDER BY Ad� desc /*desc tersten s�ralar*/*/

--GROUP BY 
/*SELECT 
	Ad�,Soyad�,Okulu
FROM
	dbo.Ogrenci
GROUP BY Ad�,Soyad�,Okulu --gruplamana yar�yor*/

/*SELECT
	Ad�,count(*)
FROM
	dbo.Ogrenci
GROUP BY Ad� --kimden ka� tane var onu g�sterir.*/

/*SELECT 
	Okulu,COUNT(*)
FROM
	dbo.Ogrenci
WHERE
	COUNT(*)>1
GROUP BY Okulu -- yanl�� kullan�m functionlarla where kullan�lmaz bunun yerine having kullan�rs�n.*/

SELECT 
	Okulu,COUNT(*)
FROM
	dbo.Ogrenci
GROUP BY Okulu
HAVING
	COUNT(*)>1

