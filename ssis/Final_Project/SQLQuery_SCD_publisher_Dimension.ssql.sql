use pubs_DW_BI_1405_01
go 



CREATE TABLE [dbo].[Dim_publishers](
	[pubKey] int identity(1,1) primary key, -- ===> SurogateKey ==> primarykey
	[pub_Alt_id] [char](4) NOT NULL, --==> BusinessKey ==> DimensionKey
	[pub_name] [varchar](40) NULL,  --==> Attribute
	[city] [varchar](20) NULL,      --==> Attribute
	[state] [char](2) NULL,			--==> Attribute
	[country] [varchar](30) NULL,   --==> Attribute
	)

truncate table [dbo].[Publishers Staging]