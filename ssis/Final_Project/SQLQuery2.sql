use pubs_Staging_BI_1405_01
go 
create table Staging_Geography(
[city] varchar(50),
[state] varchar(50)

);

use pubs_Staging_BI_1405_01
go 
DROP TABLE Staging_Geography;


use pubs_DW_BI_1405_01
go 
create table DimGeography(
[Geographykey] INT IDENTITY(1,1) PRIMARY KEY,
[city] varchar(50),
[state] varchar(50)

);

use pubs_DW_BI_1405_01
go 
DROP TABLE DimGeography;