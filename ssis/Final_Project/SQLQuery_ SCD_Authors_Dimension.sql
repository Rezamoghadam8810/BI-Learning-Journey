use pubs_DW_BI_1405_01
go 


CREATE TABLE [dbo].[Dim_authors](
	[auKey] int Identity (1,1) Primary key,  -- ======> SurogateKey ==> Primary Key
	[au_Alternate_id] [varchar](11) NOT NULL,-- ======> BusinessKey ==> Dimensin Key
	[au_lname] [varchar](40) NOT NULL,		-- ======> Attribute
	[au_fname] [varchar](20) NOT NULL,		-- ======> Attribute
	[phone] [char](12) NOT NULL,			-- ======> Attribute
	[address] [varchar](40) NULL,			-- ======> Attribute
	[city] [varchar](20) NULL,				-- ======> Attribute
	[state] [char](2) NULL,					-- ======> Attribute
	[zip] [char](5) NULL,					-- ======> Attribute
	[contract] [bit] NOT NULL,				-- ======> Attribute
	)

--------------------------------------------------------


Truncate table [dbo].[Pubs Authors Staging]