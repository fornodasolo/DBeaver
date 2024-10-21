

WITH ARTCOM AS (
SELECT 'LIZ' COMPANY, a.* FROM SMEDATLIZ.ANARTFRS a 
UNION 
SELECT 'FDA' COMPANY, b.* FROM SMEDATFDA.ANARTFRS b
) 
SELECT * FROM ARTCOM ORDER BY COMPANY 




SELECT E§CRAG, E§STAT, E§RAGS, E§CNAZ, E§CPAI, E§CPAE, LTRIM(SUBSTRING(E§CPAE , 3 , 27)) AS NEWPAE FROM SMETSTFDA.BRENTI0F   
WHERE  E§DFNV >=  VARCHAR_FORMAT(CURRENT_DATE, 'YYYYMMDD')   
AND E§CPAE<>''
--E§CRAG='240970'
AND E§CNAZ <>'IT'    
--AND E§CNAZ = LEFT(E§CPAE, 2) 

UPDATE SMETSTFDA.BRENTI0F 
SET E§CPAE= LTRIM(SUBSTRING(E§CPAE , 3 , 27)) ,
E§ORAG = '173000' ,   
E§DTAG = '20240702' ,  
E§USAG = 'SQLEDP01'
WHERE  E§DFNV >=  VARCHAR_FORMAT(CURRENT_DATE, 'YYYYMMDD')   
AND E§CPAE<>''
AND E§CNAZ <>'IT'    
AND TRIM(E§CNAZ) = LEFT(E§CPAE, 2) 





SELECT E§CRAG, E§STAT, E§RAGS, E§CNAZ, E§CPAI, E§CPAE FROM SMETSTFDA.BRENTI0F   
WHERE  E§DFNV >=  VARCHAR_FORMAT(CURRENT_DATE, 'YYYYMMDD')   
AND E§CPAE<>''
AND E§CNAZ <>'IT'    
AND E§CNAZ = LEFT(E§CPAE, 2)






SELECT E§CRAG, E§STAT, E§RAGS, E§CNAZ, E§CPAI, E§CPAE FROM SMETSTLIZ.BRENTI0F   
WHERE  E§DFNV >=  VARCHAR_FORMAT(CURRENT_DATE, 'YYYYMMDD')   
AND LEFT(E§CPAE, 2) <>'IT'  AND  LEFT(E§CPAE, 2) <>''
AND E§CNAZ<>'IT'