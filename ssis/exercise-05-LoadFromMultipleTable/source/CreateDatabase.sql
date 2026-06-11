create database DB1;
go
use DB1
go
create table Table_1(
	ID int identity(1,1) primary key,
	Title nvarchar(50) not null
)
------------------------------------------------
create database DB2;
go
use DB2
go
create table Table_2(
	ID int identity(1,1) primary key,
	Title nvarchar(50) not null
)
------------------------------------------------
create database DB3;
go
use DB3
go
create table Table_3(
	ID int identity(1,1) primary key,
	Title nvarchar(50) not null
)
------------------------------------------------
create database IntegratedDB;
go
use IntegratedDB
go
create table MergeTable(
	ID int identity(1,1) primary key,
	Title nvarchar(50) not null
)
--------------------------------------------
create database ETL_Settings;
go
use ETL_Settings
go
create table Table_Settings(
	ID int identity(1,1) primary key,
	ServerName nvarchar(50) not null,
	DatabaseName nvarchar(50) not null,
	TableName nvarchar(50) not null,
	isActive bit 
)
--------------------------------------------
insert into DB1..Table_1(Title)
values('A');
insert into DB2..Table_2(Title)
values('B');
insert into DB3..Table_3(Title)
values('C');

Truncate Table MergeTable

insert into ETL_Settings.dbo.Table_Settings(ServerName,DatabaseName,TableName,isActive)
values('REZA','DB1','Table_1',1),
('REZA','DB2','Table_2',1),
('REZA','DB3','Table_3',1)


select ServerName,DatabaseName,TableName,isActive from dbo.Table_Settings
where isActive =1 
