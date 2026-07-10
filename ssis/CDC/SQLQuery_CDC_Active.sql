
use pubs
go

select d.name, d.is_cdc_enabled from sys.databases as d;

use pubs
go
-- enable cdc
exec sys.sp_cdc_enable_db


-- deisable cdc
use pubs
go
exec sys.sp_cdc_disable_db

-- enable CDC Table
exec sys.sp_cdc_enable_table @source_schema = 'dbo', @source_name = 'sales',@capture_instance = NULL, @role_name='cdc'



select t.name,t.is_tracked_by_cdc from sys.tables as t


-- disable CDC Table

exec sys.sp_cdc_disable_table @source_schema = 'dbo', @source_name = 'sales',@capture_instance = 'dbo_sales'
