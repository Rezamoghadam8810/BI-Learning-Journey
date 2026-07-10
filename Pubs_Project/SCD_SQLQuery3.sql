use [pubs_DW_BI_1405_01]
go
CREATE TABLE [dbo].[Dim_titles](
	[titlekey] int identity(1,1) primary key,
	[title_Alt_id] [varchar](80) NOT NULL,
	[title] [varchar](80) NOT NULL,
	[type] [char](12) NOT NULL,
	[pub_id] [char](4) NULL,
	[price] [money] NULL,
	[advance] [money] NULL,
	[royalty] [int] NULL,
	[ytd_sales] [int] NULL,
	[notes] [varchar](200) NULL,
	[pubdate] [datetime] NOT NULL,)

	truncate table [dbo].[Staging_Titels]
