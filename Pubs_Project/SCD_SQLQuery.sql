
use [pubs_DW_BI_1405_01]
go

CREATE TABLE [dbo].[Dim_authors](
	[authors_key] int identity(1,1) primary key,
	[au_Alt_id] [varchar](40) NOT NULL,
	[au_lname] [varchar](40) NOT NULL,
	[au_fname] [varchar](20) NOT NULL,
	[phone] [char](12) NOT NULL,
	[address] [varchar](40) NULL,
	[city] [varchar](20) NULL,
	[state] [char](2) NULL,
	[zip] [char](5) NULL,
	[contract] [bit] NOT NULL,
 )
 -----------------------------------------------
