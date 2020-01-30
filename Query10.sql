SELECT
	p.PersonID,
	p.PersonName,
	p.PersonMail,
	p.PersonNumber,
	pt.PersonType,
	CASE
	WHEN p.PersonActive = 1 THEN 'Active'
	WHEN p.PersonActive = 0 THEN 'Pasif'
	ELSE 'Belirsiz' END AS PersonActive,
	CASE 
	WHEN pd.PersonGender = 1 THEN 'Man'
	ELSE 'Woman' END AS PersonGender
FROM dbo.Person p
INNER JOIN dbo.PersonType pt ON pt.PersonTypeId=p.PersonTypeID
INNER JOIN dbo.PersonDetail pd ON pd.PersonId=p.PersonID
