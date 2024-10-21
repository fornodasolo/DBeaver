


use AXIB_ALS

EXEC sp_rename 'BOARD-TBL-134-BOARD-SME', 'BOARD_TBL_134_BOARD_SME' 

commit

select count(*) from BOARD_TBL_134_BOARD_SME_OLD 

use AXIB; 

select * from EDO_ESTR_ORDINATO_TEST 


DROP TABLE CED.ORDINTEST 

-- AXIB.dbo.EDO_ESTR_ORDINATO_TEST definition

-- Drop table

-- DROP TABLE AXIB.dbo.EDO_ESTR_ORDINATO_TEST;

CREATE TABLE AXIB.dbo.EDO_ESTR_ORDINATO_TEST (
	CUSTACCOUNT nvarchar(50) ,
	SALESID nvarchar(50) ,
	DELIVERYDATE timestamp NULL,
	CustomerRef nvarchar(100) ,
	ITEMID nvarchar(50) ,
	NAME nvarchar(500) ,
	QTYORDERED numeric(18,2) NULL,
	LINEAMOUNT numeric(18,2) NULL,
	TIPO_ORDINE nvarchar(50) ,
	LINENUM numeric(18,2) NULL,
	CAUSALE nvarchar(50) 
);

select * from EDO_ESTR_ORDINATO_TEST eeot  
where CUSTACCOUNT ='C114761001' and 
SALESID = 'OC2604193'

