

SELECT OBJECT_NAME(OBJECT_ID) AS TableName,

 SELECT OBJECT_NAME(OBJECT_ID) AS DatabaseName,
 last_user_update,*
FROM sys.dm_db_index_usage_stats
WHERE database_id = DB_ID( 'AXIB') 
--AND OBJECT_ID=1304304424
AND OBJECT_ID =  'Edo_ESTR_RICETTE_SMEUP'


SELECT OBJECT_NAME(OBJECT_ID) AS DatabaseName, last_user_update,*
FROM sys.dm_db_index_usage_stats
WHERE database_id = DB_ID( 'AXIB') AND OBJECT_NAME(OBJECT_ID) like 'Edo_ESTR_%_SMEUP'
