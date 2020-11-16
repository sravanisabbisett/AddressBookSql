
CREATE DATABASE Address_Book_Service;

USE Address_Book_Service;


CREATE TABLE Person(
	PersonId int auto_increment primary Key,
    FirstName varchar(100) NOT NULL,
    LastName varchar(100) NOT NULL,
	Address varchar(100) NOT NULL,
    City varchar(100) NOT NULL,
    State varchar(100)NOT NUll,
    Zip int(6) NULL NUll,
    MobileNumber bigint(10)NOT NULL,
    EmailId Varchar(100) NOT NULL
    );

DROP TABLE Person;

INSERT INTO Person(FirstName,LastName,Address,City,State,Zip,MobileNumber,EmailId)
VALUES ('Sravani','Sabbisetti','GandhiChowk','Bantumilli','AndhraPradesh',521324,8712443377,'sravani@gmail.com'),
('Rupika','Sabbisetti','AronodayaColony','Hyderabad','Telangana',500081,9295702642,'abc@gmail.com'),
('Saraiya','Purkana','Krths','Bantumilli','AndhraPradesh',123456,4567890123,'saru@gmail.com'),
('Manju','Chedhalla','Ponnuru','Guntur','AndhraPradesh',678901,9876543210,'manju@gmail.com'),
('Akhilesh','Krishna','Perungudi','Chennai','Tamilnadu',876904,9765432167,'akhi@gmail.com');

INSERT INTO Person(FirstName,LastName,Address,City,State,Zip,MobileNumber,EmailId)
VALUES ('Sailaja','Sabbisetti','1town','Vijayawada','AndhraPradesh',345890,9295701642,'sailaja@gmail.com');

Select * from Person;

SELECT @Person_id:=last_insert_id();

UPDATE Person
SET State='Maharastra'
WHERE FirstName='Akhilesh';

delete from Person
Where PersonId=6;

select * from Person
Where State='AndhraPradesh' OR City='Bantumilli';

select * from Person
Where State='AndhraPradesh'
order by FirstName;

SELECT  COUNT(AddressBookId),AddressBookId from PersonAddressBook
GROUP BY AddressBookId;

select COUNT(State) from Person
Where State='AndhraPradesh' AND City='Bantumilli';

Select * from Person
Where City='Bantumilli'
Order By FirstName;

CREATE TABLE AddressBookType(
AddressBookId int auto_increment Primary Key,
AddressBookType varchar(100) NOT NULL,
AddressBookName varchar(100) NOT NULL
);

INSERT INTO AddressBookType(AddressBookType,AddressBookName)
values('Friend','FriendAddressBook'),
('Profession','ProfesionAddressBook'),
('Family','FamilyAddressBook');

Delete from AddressBookType
Where AddressBookID=3;

select * From AddressBookType;
Drop Table AddressBookType;

CREATE TABLE PersonAddressBook(
AddressBookId int,
PersonId int,
constraint PersonAddressBook_fk FOREIGN KEY (PersonId) REFERENCES Person(PersonId),
constraint PersonAddressBook_fk1 FOREIGN KEY (AddressBookId) REFERENCES AddressBookType(AddressBookId)
);

INSERT INTO PersonAddressBook(AddressBookId,PersonId)
values(1,1),
(2,1),
(2,2),
(1,3),
(1,4),
(3,5);

select @addressbook_id_Friend :=AddressBookId From AddressBookType where AddressBookType='Friend';
select @addressbook_id_Family :=AddressBookId From AddressBookType where AddressBookType='Family';
select @addressbook_id_Profession :=AddressBookId From AddressBookType where AddressBookType='Profession';

INSERT INTO PersonAddressBook(AddressBookId,PersonId)
values(@addressbook_id_Family,@Person_id);

Select * from PersonAddressBook; 

DROP TABLE PersonAddressBook;

truncate AddressBook1




