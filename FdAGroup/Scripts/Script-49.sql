


  SELECT * FROM SMEDATBND.C£LIST0F 
    WHERE
    L§COD1 LIKE 'C45%' AND
  --  L§COD2 = 'MOD-MOD-M100'  AND
    --BETWEEN 'MOD-MOD-M100' AND 'MOD-MOD-M999'    AND 
    L§CL01 = 'CONTR-GMP'  
    
    non ha dato nessun risultato ==> nessun sconto presente con le caratteristiche indicate.
    
    
    SELECT * FROM SMEDATBND.V5TDOC0F 
    
    SELECT *   FROM SMEDATBND.V5RDOC0F  
    WHERE R§TDOC='DA' AND R§NDOC IN (
    SELECT T§NDOC FROM SMEDATBND.V5TDOC0F WHERE T§CDMG='F8'
     AND T§TDOC='DA' 
    ) 
    AND R§VAL2>0 
    AND R§CDOG IN (SELECT A§ARTI FROM SMEDATBND.BRARTI0F WHERE A§COD3 IN (SELECT SUBSTR(TTELEM, 9, 4) FROM SMEDATBND.TABEL00F WHERE TTSETT='XND' ))  
    
    
    SELECT A§ARTI, A§DEAR, CLASSE_BINDI, A§COD1,A§COD2,A§COD3,A§COD4 FROM  CED.BNDCHECK LEFT JOIN SMEDATBND.BRARTI0F ON ARTICOLO_SMEUP=A§ARTI 
    WHERE A§COD3 LIKE '%M%' AND  CLASSE_BINDI <> A§COD3 
    
    
    WHERE  ARTICOLO_SMEUP IN (SELECT A§ARTI FROM SMEDATBND.BRARTI0F ) 
    
    
    
-- Oggetti creati nella libreria CED negli ultimi 30 gg
SELECT * -- a.objname, objdefiner, objtype, sql_object_type
    FROM TABLE(qsys2.object_statistics('CED', 'ALL')) a 
    WHERE a.objcreated >= (SELECT current date - 1 MONTHS FROM sysibm.sysdummy1)
    

SELECT * FROM SMEDATBND.TABEL00F WHERE TTSETT='ZON'
    

SELECT * FROM SMETSTBND.TABEL00F WHERE TTSETT='ZON'  AND TTELEM='A13' 


UPDATE SMEdatBND.TABEL00F 
SET TTUSER=LEFT(TTUSER, 11)||'00'||SUBSTR(TTUSER, 14, 86) 
WHERE TTSETT='ZON'  AND TTELEM IN --='A13' 
(
'A01',
'A02',
'A03',
'A05',
'A08',
'A09',
'A10',
'A11',
'A12',
'A13',
'A14',
'A17',
'B01',
'B02',
'B03',
'B04',
'B05',
'C29',
'C30',
'C32',
'L00',
'L01',
'L02',
'L03',
'L04',
'L05',
'L06',
'L08',
'L09',
'L10',
'L11',
'M01',
'M02',
'M03',
'M04',
'M05',
'M06',
'M07',
'M08',
'M09',
'M10',
'P01',
'P02',
'P03',
'S01',
'S02',
'S03',
'S04',
'S06',
'S07',
'S08',
'S09',
'S10',
'S11',
'Z01',
'Z02',
'Z03',
'Z04',
'Z05',
'Z06',
'Z07',
'Z08',
'Z09',
'Z10',
'Z14',
'Z15'
)
    
SELECT * FROM smedatbnd.xc5blo0f 
    
    