DROP DATABASE IF EXISTS bank_db;
CREATE DATABASE bank_db;
use bank_db;
CREATE TABLE accounts (
ID int not null primary key auto_increment,
account_holder nvarchar(50) not null,
balance decimal (18,0) not null,
fees decimal (18,0) not null
);
insert accounts (account_holder, balance, fees) values ('Anna Bengel', 8888.00, 250.00);
insert accounts (account_holder, balance, fees) values ('Chase Williams', 5444.00, 175.00);
insert accounts (account_holder, balance, fees) values ('Jonelle Williams', 3333.00, 175.00);
insert accounts (account_holder, balance, fees) values ('Steven Ross', 3322.00, 88.00);

CREATE TABLE  transactions (
ID int not null primary key auto_increment,
amount decimal (18,0) not null,
txn_type nvarchar (50) not null,
account_id int not null,
FOREIGN KEY (account_id) REFERENCES accounts (ID) 
);
insert transactions (amount, txn_type, account_id) values (500.00, 'deposit', 3);
insert transactions (amount, txn_type, account_id) values (200.00, 'withdrawl', 4);
insert transactions (amount, txn_type, account_id) values (200.00, 'deposit', 4);
insert transactions (amount, txn_type, account_id) values (248.00, 'deposit', 1);





