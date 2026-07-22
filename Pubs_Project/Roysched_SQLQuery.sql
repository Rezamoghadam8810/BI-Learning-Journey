use [pubs_DW_BI_1405_01]
go

CREATE TABLE [dbo].[Ref_roysched](
	[royschedKey] int identity(1,1) primary key,
	[title_Alt_id] nvarchar(15) NOT NULL,
	[lorange] [int] NULL,
	[hirange] [int] NULL,
	[royalty] [int] NULL
	
	)


	truncate table Staging_Ref_roysched


	update [dbo].[Ref_roysched]
	set royalty =?,
		DWUpdateDate = SYSDATETIME()
	where title_Alt_id =?;