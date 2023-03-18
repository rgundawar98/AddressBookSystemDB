/*UC1 Create Database*/
Create Database AddressBookServices
Use AddressBookServices
/*UC2 Ability to create a AddressBook Table */
Create table AddressBook
(
  Id int identity Primary key,
  FirstName varchar(250),
  LastName varchar(250),
  Address varchar(250),
  City varchar(250),
  State varchar(250),
  Zip varchar(50),
  PhoneNumber varchar(250),
  Email varchar(300),
  Type varchar(250) 
)   
/*UC3 Insert data adding contacts*/
Insert into AddressBook values('Raj','Roy','Holy Street','Hyderabad','Telangana','489655','452229846','raj@gmail.com','Friend')
Insert into AddressBook values('Rajesh','oslo','Oslo Street','Kurnool','Telangana','489741','422279846','rajesh@gmail.com','Family')
Insert into AddressBook values('Rani','Retha','Hitech Street','Hyderabad','Telangana','489888','411179846','rani@gmail.com','Friend')
Insert into AddressBook values('Shivani','Singh','Kardiya road','Gondia','Maharashtra','489444','450009846','Shivani@gmail.com','Family')
Insert into AddressBook values('Neha','Roja','Swargate','Pune','Maharashtra','489333','456448846','Neha@gmail.com','Friend')

Select * from AddressBook
/*UC4 Update persons contact*/
Update AddressBook set Email='Nehaaa@yahoo.com' where FirstName='Neha'

/*UC5 Delete person using name*/
Delete AddressBook where LastName='Retha'

/*UC6 Fetch Persons according to City or State*/
/*Fetch record using City Attribute*/
Select * from AddressBook  where city='Hyderabad'
/*Fetch record using State Attribute*/
Select * from AddressBook  where State='Telangana' 

/*UC7 Ability to understand the size of AddressBook by City and State*/
Select COUNT(state) from AddressBook 
Select COUNT(city) from AddressBook

/*UC8 Ability to retrive entries sorted by alphabetically by persons name for a city*/
Select * from AddressBook order by city 

/*UC9 Alter AddressBook to add name and type*/
Alter table AddressBook add Type varchar(250) 
Update AddressBook set Type='Family' where FirstName='Rajesh'
Update AddressBook set Type='Friend' where LastName='Roja'

Select * from AddressBook
/*UC10 Ability to get number of contact persons*/ 
Select count(State) from AddressBook

/*UC11 Ability to add person to both friend and family*/
Insert into AddressBook values('Shilpa','Raao','Katraj','Pune','Maharashtra','499333','450008846','shilpaa@gmail.com','Family')
Insert into AddressBook values('Rutu','Raut','Bavdhan','Pune','Maharashtra','485533','456333046','Rutu@gmail.com','Friend')


