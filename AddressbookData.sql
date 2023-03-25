--UC1
CREATE DATABASE AddressBookData_Service               

--UC2
CREATE TABLE AddressBook_DB
(
PersonId INT PRIMARY KEY IDENTITY(1,1),
FirstName VARCHAR(30) NOT NULL,
LastName VARCHAR(30) NOT NULL,
Address VARCHAR(100) NOT NULL,
City VARCHAR(20) NOT NULL,
State VARCHAR(20) NOT NULL,
Zip INT NOT NULL,
PhoneNumber BIGINT NOT NULL,
Email VARCHAR(50) NOT NULL
);

SELECT * FROM AddressBook_DB

--UC3
INSERT INTO AddressBook_DB(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
VALUES
('Tanu','Shinde','Pradhikaran','Pune','Maharastra',411044,1234567890,'tanvi.shinde.@gmail.com'),
('Aarti','Pundalik','Pradhikaran','pune','Maharastra',411044,9876543210,'aarti.pundalik.@gmail.com'),
('Ars','Khan','GharKul','Pune','Maharastra',411043,1234098765,'arsheen.khan.@gmail.com'),
('Arjun','Kapoor','Bandra','Mumbai','Maharastra',400073,4567890123,'arjun.kapoor.@gmail.com')

--UC4
UPDATE AddressBook_DB SET LastName = 'Kapoor' WHERE FirstName = 'Tanu'
UPDATE AddressBook_DB SET FirstName = 'Arsheen ' WHERE LastName = 'Khan'
UPDATE AddressBook_DB SET Zip = 411044 WHERE FirstName = 'Ars'
UPDATE AddressBook_DB SET PhoneNumber = 8378801345 WHERE FirstName = 'Aarti'
UPDATE AddressBook_DB SET Email = 'kapoor.gmail.com' WHERE FirstName = 'Arjun'


--UC5 
DELETE FROM AddressBook_DB WHERE PersonId = '3'
DELETE FROM AddressBook_DB WHERE PersonId = '4'
DELETE FROM AddressBook_DB WHERE FirstName = 'Ars'

--UC6
SELECT * FROM AddressBook_DB WHERE City = 'Pune'
SELECT * FROM AddressBook_DB WHERE State = 'Maharastra'

-- UC7 
SELECT COUNT (*) FROM AddressBook_DB GROUP BY City 
SELECT COUNT (*) FROM AddressBook_DB GROUP BY State
SELECT COUNT (*) FROM AddressBook_DB WHERE City = 'Pune' GROUP BY City
SELECT COUNT (*) FROM AddressBook_DB WHERE State = 'Maharastra' GROUP BY State

--UC8 
SELECT * FROM AddressBook_DB WHERE City = 'Mumbai' ORDER BY FirstName

