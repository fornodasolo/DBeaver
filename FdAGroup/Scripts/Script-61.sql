



SELECT t1.numero + 1 AS primo_buco, MIN(t2.numero) - 1 AS ultimo_buco
FROM tabella AS t1
LEFT JOIN tabella AS t2 ON t1.numero < t2.numero
WHERE t2.numero IS NULL
GROUP BY t1.numero
HAVING primo_buco < MIN(t2.numero) 


CREATE TABLE CED.CHEKCOD ( NUMER CHAR(10))  


INSERT INTO  CED.CHEKCOD (
SELECT DISTINCT E§CRAG FROM SMEDATBND.BRENTI0F WHERE E§TRAG='CLI' ORDER BY E§CRAG
)

SELECT NUMER FROM CED.CHEKCOD 
WHERE TRANSLATE(NUMER, ' ', '0123456789') <> '' 

SELECT * FROM SMEDATBND.BRENTI0F WHERE 
E§CCON IN ('CBIAG', '903083E')

SELECT * FROM SMEDATBND.V5TDOC0F vtf WHERE 
T§CDCL IN ('CBIAG', '903083E') OR 
T§CDCC IN ('CBIAG', '903083E') OR 
T§CODF IN ('CBIAG', '903083E') OR 
T§CODS IN ('CBIAG', '903083E') 

-- T§TCCL     Tipo ente intestatario
-- T§CDCL     Ente intestatario     
-- T§TCDC     Tipo ente di conferma 
-- T§CDCC     Ente di conferma          
-- T§TCDF     Tipo ente di fatturazione 
-- T§CODF     Ente di fatturazione      
-- T§TCDS     Tipo ente di spedizione   
-- T§CODS     Ente di spedizione   

SELECT right(digits(RRN(a)), 7)  FROM smedatfda.gmmovi0f a 
WHERE rrn(a) <'9999999'

