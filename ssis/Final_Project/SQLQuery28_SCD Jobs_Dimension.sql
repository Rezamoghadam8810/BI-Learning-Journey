use pubs_DW_BI_1405_01
go 

CREATE TABLE [dbo].[Dim_jobs](
	[jobKey] int Identity(1,1) primary key, -- ===> SurogateKey ==> primarykey
	[job_Alt_id] [smallint] NOT NULL, --==> BusinessKey ==> DimensionKey
	[job_desc] [varchar](50) NOT NULL, --==> Attribute
	[min_lvl] [tinyint] NOT NULL, --==> Attribute
	[max_lvl] [tinyint] NOT NULL, --==> Attribute
	)
	truncate table [dbo].[Jobs Staging]