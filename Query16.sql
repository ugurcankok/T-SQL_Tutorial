CREATE SCHEMA Müþteri
CREATE SCHEMA Sipariþ

CREATE TABLE Müþteri.MüþteriDetail
(
	id int,
	name varchar(20)
)

CREATE TABLE Müþteri.MüþteriTablosu
(
	id int,
	name varchar(20)
)
CREATE TABLE Sipariþ.SipriþOranlarý
(
	id int,
	name varchar(20)
)

select * from Sipariþ.SipriþOranlarý