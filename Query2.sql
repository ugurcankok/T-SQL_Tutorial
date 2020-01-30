use DonemProje

--select * from tbl_Comment

--select* from tbl_Question

select dc.PersonName,dc.PersonSurname,dc.PersonEmail,dq.QuestionContent,dq.QuestionDate from tbl_PersonInfo dc
inner join tbl_Question dq on dq.PersonID=dc.PersonID
--inner join tbl_Comment dm on dm.PersonID=dq.PersonID
where dc.PersonID IN(14,18)


