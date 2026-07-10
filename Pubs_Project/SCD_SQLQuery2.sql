use [pubs_DW_BI_1405_01]
go

CREATE TABLE [dbo].[Dim_employee](
	[employeeKey] int identity (1,1) Primary key,
	[emp_Alt_id] [varchar](20) NOT NULL,
	[fname] [varchar](20) NOT NULL,
	[minit] [char](1) NULL,
	[lname] [varchar](30) NOT NULL,
	[job_id] [smallint] NOT NULL,
	[job_lvl] [tinyint] NULL,
	[pub_id] [char](4) NOT NULL,
	[hire_date] [datetime] NOT NULL,)


	Truncate Table [dbo].[Employee_Staging]

use [pubs_DW_BI_1405_01]
go
	CREATE TABLE [dbo].[Dim_stores](
	[storeKey] int identity(1,1) Primary key,
	[stor_Alt_id] [char](4) NOT NULL,
	[stor_name] [varchar](40) NULL,
	[stor_address] [varchar](40) NULL,
	[city] [varchar](20) NULL,
	[state] [char](2) NULL,
	[zip] [char](5) NULL,)

		Truncate Table [dbo].[Staging_Sroers]
