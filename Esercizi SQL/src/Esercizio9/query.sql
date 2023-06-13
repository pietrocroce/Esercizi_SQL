#Create your own customers table, make sure you create it with an auto_increment primary key.

create table CUSTOMERS(
ID INT auto_increment,
NAME VARCHAR(255),
SURNAME VARCHAR(255),
AGE INT,
primary key (ID)
);

#Insert some customers with an insert statement.

insert into CUSTOMERS(NAME,SURNAME,AGE)values ('PIETRO','CROCE',32),('GIUSEPPE','DETTO LILL0',26),
('ANGELICA','STORM',28),('MARCO','ADRIANI',32),('SARA','DI MASSA',31);

select * from CUSTOMERS;
delete from CUSTOMERS
where ID >=7;

#Edit these customers using the UPDATE statement with a WHERE clause referring to the id.

update CUSTOMERS set AGE = 28 where ID = 2;

update CUSTOMERS set NAME = 'SERENA' where ID = 5;

#Delete some customers with delete from statement with a WHERE clause referring to the id.

insert into CUSTOMERS(NAME,SURNAME,AGE) values ('FRANCESCO','DI COSTANZO',43);

select * from CUSTOMERS;
delete from CUSTOMERS where ID = 6;

#Delete all customers with a truncate statement.

create table TEMPORY_CUSTOMERS as (select * from CUSTOMERS);

select * from TEMPORY_CUSTOMERS;
TRUNCATE TEMPORY_CUSTOMERS;