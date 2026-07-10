use pubs
go 


select *  
INTO pubs_Staging_BI_1405_01.dbo.Staging_title
from titles;


truncate table [dbo].[Staging Pubs Titels]


use [pubs_DW_BI_1405_01]
go

CREATE TABLE [dbo].[Dim_Titles](
	[Titlekey] int identity(1,1) Primary key,-- Surogatekey
	[title_Alternat_key] [varchar](6)  NULL, -- Busineekey
	[title] [varchar](80) NOT NULL, -- Atrtribute
	[type] [char](12) NOT NULL, -- Atrtribute
	[pub_id] [char](4) NULL, -- Atrtribute
	[price] [money] NULL, -- Atrtribute
	[advance] [money] NULL,-- Atrtribute
	[royalty] [int] NULL,-- Atrtribute
	[ytd_sales] [int] NULL,-- Atrtribute
	[notes] [varchar](200) NULL,-- Atrtribute
	[pubdate] [datetime] NOT NULL,-- Atrtribute
	)
	select * from [pubs].[dbo].[titles] -- OP
	select * from [pubs_DW_BI_1405_01].[dbo].[Dim_Titles] -- DW
	