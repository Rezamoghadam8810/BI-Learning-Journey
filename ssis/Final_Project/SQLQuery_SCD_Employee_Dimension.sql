use pubs_DW_BI_1405_01
go 

CREATE TABLE [dbo].[Dim_Employee](
	[employeeKey] int identity(1,1) Primary Key, -- ===> SurogateKey ==> primarykey
	[emp__Alt_id] [varchar](20) NOT NULL, --==> BusinessKey ==> DimensionKey
	[fname] [varchar](20) NOT NULL, --==> Attribute
	[minit] [char](1) NULL,			--==> Attribute
	[lname] [varchar](30) NOT NULL, --==> Attribute
	[job_id] [smallint] NOT NULL,   --==> Attribute
	[job_lvl] [tinyint] NULL,       --==> Attribute
	[pub_id] [char](4) NOT NULL,    --==> Attribute
	[hire_date] [datetime] NOT NULL,)--==> Attribute


	truncate table [dbo].[Emplpee_Staging]