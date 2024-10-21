


use AXIB_ALS

EXEC sp_rename 'BOARD-TBL-134-BOARD-SME', 'BOARD_TBL_134_BOARD_SME' 

commit

select count(*) from BOARD_TBL_134_BOARD_SME_OLD 


select LENGTH(rtrim(ltrim(CUSTACCOUNT))) from EDO_ESTR_ORDINATO_TEST 


DROP TABLE CED.ORDINTEST 

CREATE TABLE CED.AXDOCLINE (
	CUSTACCOUNT nvarchar(50) ,
	SALESID nvarchar(50) ,
	DELIVERYDATE TIMESTAMP ,
	CustomerRef nvarchar(100) ,
	ITEMID nvarchar(50) ,
	NAME nvarchar(500) ,
	QTYORDERED numeric(18,2) ,
	LINEAMOUNT numeric(18,2) ,
	TIPO_ORDINE nvarchar(50) ,
	LINENUM numeric(18,2) 
);




