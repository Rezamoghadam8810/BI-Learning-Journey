use [pubs_DW_BI_1405_01]
go



CREATE TABLE [dbo].[Fact_titleauthor](
	[titleauthorKey] int identity(1,1) primary key,
	[authors_key] nvarchar(50) NOT NULL,
	[titlekey] nvarchar(50) NOT NULL,
)

truncate table [dbo].[Staging_TitleAuthor]