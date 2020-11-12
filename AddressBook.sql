CREATE DATABASE Address_Book_Service;
USE Address_Book_Service;

CREATE TABLE AddressBook(
    FirstName varchar(100) NOT NULL PRIMARY KEY,
    LastName varchar(255) NOT NULL,
	Address varchar(255) NOT NULL,
    City varchar(255) NOT NULL,
    State varchar(255)NOT NUll,
    Zip int(6) NULL NUll,
    MobileNumber bigint(10)NOT NULL,
    EmailId Varchar(320) NOT NULL
);

CREATE TABLE AddressBookType(
FirstName Varchar(100) NOT NULL,
Type varchar(100) NOT NULL,
AddressBookName varchar(100) NOT NULL
);

INSERT INTO AddressBookType(FirstName,Type,AddressBookName)
values('Sravani','Friend','AddressBook'),
('Rupika','Profession','AddressBook'),
('Saraiya','Friend','AddressBook'),
('Manju','Friend','AddressBook'),
('Akhilesh','Family','AddressBook');

SELECT * FROM AddressBookType;

DROP TABLE AddressBook;

INSERT INTO AddressBook(FirstName,LastName,Address,City,State,Zip,MobileNumber,EmailId)
VALUES ('Sravani','Sabbisetti','GandhiChowk','Bantumilli','AndhraPradesh',521324,8712443377,'sravani@gmail.com'),
('Rupika','Sabbisetti','AronodayaColony','Hyderabad','Telangana',500081,9295702642,'abc@gmail.com'),
('Saraiya','Purkana','Krths','Bantumilli','AndhraPradesh',123456,4567890123,'saru@gmail.com'),
('Manju','Chedhalla','Ponnuru','Guntur','AndhraPradesh',678901,9876543210,'manju@gmail.com'),
('Akhilesh','Krishna','Perungudi','Chennai','Tamilnadu',876904,9765432167,'akhi@gmail.com');


UPDATE AddressBook
SET State='Maharastra'
WHERE FirstName='Akhilesh';

delete from AddressBook
Where MobileNumber=9765432167;

select * from AddressBook
Where State='AndhraPradesh' OR City='Bantumilli';

select * from AddressBook
Where State='AndhraPradesh'
order by FirstName;

ALTER table AddressBook
ADD Type varchar(100) NOT NULL;

UPDATE AddressBook
SET Type=CASE FirstName
	WHEN 'Sravani' THEN 'Friend'
    WHEN 'Rupika' THEN 'Profession'
    WHEN 'Saraiya' THEN 'Friend'
    WHEN 'Manju' THEN 'Friend'
    WHEN 'Akhilesh' THEN 'Family'
    ELSE Type
END;

SELECT  COUNT(Type),Type from AddressBookType
GROUP BY Type;

SELECT * from AddressBook
Where Type='Family';

select COUNT(State) from AddressBook
Where State='AndhraPradesh' AND City='Bantumilli';

Select * from AddressBook
Where City='Bantumilli'
Order By FirstName;


