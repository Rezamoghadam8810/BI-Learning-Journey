use pubs
go

select * from dbo.discounts
select * from dbo.stores

truncate table [dbo].[Staging_Discount]

use pubs_DW_BI_1405_01
go

CREATE TABLE [dbo].[Dim_discounts](
	[discountkey] int identity(1,1) primary key,
	[discounttype] [varchar](40) NOT NULL,
	[stor_id] [char](4) NULL,
	[lowqty] [smallint] NULL,
	[highqty] [smallint] NULL,
	[discount] [decimal](4, 2) NOT NULL
)