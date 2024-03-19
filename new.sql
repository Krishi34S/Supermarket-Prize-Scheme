create database newsupermarket;

USE supermarket;
CREATE TABLE CUSTOMER(
	name varchar(20),
	PhoneNo bigint PRIMARY KEY,
	LicNo bigint,
	DOB date not null,
	Address varchar(100)
);

desc CUSTOMER;

ALTER table CUSTOMER modify column LicNo varchar(10);

INSERT into CUSTOMER(PhoneNo, LicNo, DOB, Address) 
VALUES('Krishi', 9957486993, 'AS78000012', '2004-05-04', '123 Nilachalpur'),
('Aditi',9957485995, 'AS78000024', '2004-12-04', '245 Nilachalpur'),
('PJ', 7896144473, 'AS78000036', '2004-10-28', '420 Durgasarobar');

select * from CUSTOMER;

CREATE TABLE PURCHASES(
	PhoneNo bigint,
	Purchase_Date DATE not null,
	Amount DECIMAL(10,2),
	foreign key(PhoneNo) references CUSTOMER(PhoneNo),
    primary key (PhoneNo, Purchase_Date)
);

desc PURCHASES;

INSERT into PURCHASES(PhoneNo,Purchase_Date, Amount) 
	VALUES
	(7896144473,'2004-05-04', '100.50'),
	(9957485995,'2004-12-04', '345.00'),
	( 9957486993,'2004-10-28', '269.00');

INSERT into PURCHASES(PhoneNo,Purchase_Date, Amount) 
	VALUES
	(7896144473,'2009-05-04', '10012.50'),
	(9957485995,'2005-11-04', '34215.00'),
	( 9957486993,'2024-5-28', '269213.00');
INSERT into PURCHASES(PhoneNo,Purchase_Date, Amount) 
	VALUES
	(7896144473,'2009-05-05', '1012.50'),
	(9957485995,'2005-11-05', '3425.00'),
	( 9957486993,'2024-06-05', '29213.00');

select * from PURCHASES;
select sum(Amount) from PURCHASES where PhoneNo=9957485995;