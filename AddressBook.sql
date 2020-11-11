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
order by FirstName;

ALTER table AddressBook
ADD Type varchar(100) NOT NULL;

UPDATE AddressBook
SET Type='Friends'
WHERE State='AndhraPradesh';

UPDATE AddressBook
SET Type='Profession'
WHERE State='Telangana';

SELECT  COUNT(Type),Type from AddressBook
GROUP BY Type;

INSERT INTO AddressBookFriends(FirstName,LastName,Address,City,State,Zip,MobileNumber,EmailId)
VALUES ('Navya','Borra','Hrths','Eluru','AndhraPradesh',456789,3214567890,'navya@gmail.com'),
('lipica','cheer','warangal','Hyderabad','Telangana',500081,456790,'lipica@gmail.com');

INSERT INTO AddressBookFamily(FirstName,LastName,Address,City,State,Zip,MobileNumber,EmailId)
VALUES ('Sailaja','Sabbisetti','1town','Vijayawada','AndhraPradesh',123456,4567890123,'sailaja@gmail.com'),
('Badarith','Sabbisetti','GandhiChowk','Bantumilli','AndhraPradesh',678954,9290815127,'nadh@gmail.com');



