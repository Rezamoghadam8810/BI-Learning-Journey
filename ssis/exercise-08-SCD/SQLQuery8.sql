use AdventureWorksDW2022
go 
select 
DPC.ProductCategoryAlternateKey AS ProductCode,
DPC.EnglishProductCategoryName,
DPC.FrenchProductCategoryName,
DPC.SpanishProductCategoryName
into BI_1405_01..ProductCategory
from dbo.DimProductCategory as DPC
---------------------------------------------------

---------------------------------------------------
use [BI_1405_01_DW]
go
CREATE TABLE [dbo].[DimProductCategory](
	[productkey] int identity(1,1) primary key, -- surrogate key
	[ProductAlternatekey] [int] NULL, --Business Key
	[EnglishProductCategoryName] [nvarchar](50) NOT NULL, -- Attribute
	[FrenchProductCategoryName] [nvarchar](50) NOT NULL,  -- Attribute
	[SpanishProductCategoryName] [nvarchar](50) NOT NULL  -- Attribute
)
--------------------------------------------------

select * from [BI_1405_01].[dbo].[ProductCategory] -- OP

select * from [BI_1405_01_DW].[dbo].[DimProductCategory] -- DW



use [BI_1405_01_Staging]
go
truncate table [dbo].[Staging ProductCatrgory]