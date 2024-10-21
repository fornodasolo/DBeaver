
WITH 
C AS (
SELECT A§ARTI, 
INT(A§NUM1) PZXUMV, 
INT(A§NUM3) PESPEZ,  
(A§NUM1*A§NUM3)/1000 PESNET, 
(SELECT SUBSTR(TTLIBE, 7, 3) FROM SMEDATBND.TABELX1L WHERE TTSETT='XCF' AND TRIM(A§ARTI)||'.'||TRIM(A§NOMC)=TTELEM) CNFCRT
FROM SMEDATBND.BRARTI0F WHERE A§CLCO='P_FIN' 
)
SELECT 
MONTH(S§DTRE) "M23", 
DEC(SUM((S§QTUM*C.PESNET)/100), 10, 3) "2023"
FROM SMEDATBND.GMMOVI0F JOIN C ON S§ARTI=C.A§ARTI 
WHERE S§CDMG='F1' AND
--S§CAMO='1008' AND
YEAR(S§DTRE)=2023 
GROUP BY MONTH(S§DTRE)
ORDER BY 1


SELECT * FROM SMEDATBND.TABEL00F WHERE TTSETT='GMC' AND ((UPPER(TTDESC) LIKE '%VERSAMENTO%') OR (UPPER(TTDESC) LIKE '%INGRESSO%'))

SELECT * FROM SMEDATFDA.TABEL00F WHERE TTSETT='GMC' AND ((UPPER(TTDESC) LIKE '%VERSAMENTO%') OR (UPPER(TTDESC) LIKE '%INGRESSO%'))

SELECT * FROM SMEDATLIZ.TABEL00F WHERE TTSETT='GMC' AND ((UPPER(TTDESC) LIKE '%VERSAMENTO%') OR (UPPER(TTDESC) LIKE '%INGRESSO%'))



SELECT * FROM SMEDATFDA.TABEL00F WHERE TTSETT='GMC' AND UPPER(TTDESC) LIKE '%VERSAMENTO%'


SELECT * FROM CED.CLIFTIMM  
WHERE TRIM(CDCLI) -- NOT IN (SELECT E§CRAG FROM SMEDATBND.BRENTI0F WHERE E§TRAG='CLI')
NOT IN (SELECT C£CD01 FROM SMEDATBND.C£CONR0F WHERE C£NUMP='X79')

SELECT * FROM SMEDATBND.C£CONR0F WHERE C£NUMP='X79'



SELECT V$CDVG  FROM SMEDATBND.V5TRIP0F WHERE V$LIVE='2'
AND V$CDOG='F3'


SELECT T£CD02, T£CD03 FROM SMEDATBND.GMTRIM0F 
WHERE T£CD03 IN 
(SELECT V$CDVG  FROM SMEDATBND.V5TRIP0F WHERE --V$LIVE='2' AND 
V$CDOG IN ('F2', 'F3', 'F4', 'F6', 'F7') 
AND T£CD02 IN (SELECT E§CRAG FROM SMEDATBND.BRENTI0F WHERE E§TRAG='PVE' AND E§CCON IN (SELECT CDCLI FROM CED.CLIFTIMM)
)
)

SELECT * FROM SMEDATFDA.C£CONR0F c£tprc='£16'

SELECT 
WHERE C£NUMP='C00'

WITH X AS (

SELECT S§TRAG,S§CRAG,SUBSTR(S§DESE, 109, 500) FROM smedatbnd.bresco0f WHERE 
S§TRAG IN ( 'PVE')  AND  S§TEST='£16'   AND  S§CODR IN ('C00', 'C04') 
AND S§CRAG IN (
SELECT E§CRAG FROM SMEDATBND.BRENTI0F WHERE E§TRAG='PVE' AND E§CCON IN (SELECT CDCLI FROM CED.CLIFTIMM)
)
SELECT E§CRAG AS CDCL, X.* FROM X 


SELECT * FROM SMEDATBND.v5tdoc0f

SELECT S§TRAG,S§CRAG,SUBSTR(S§DESE, 109, 500) AS MAILFT FROM smedatbnd.bresco0f WHERE 
S§TRAG IN ( 'CLI')  AND  S§TEST='£16'   AND  S§CODR IN ('C00', 'C04') 
AND S§CRAG IN (SELECT CDCLI FROM CED.CLIFTIMM)

SELECT * FROM CED.CLIFTIMM  

SELECT T§CDMG, T§ZONA, T§DTCO, T§CDVG,  T§CODS AS PVE, T§CODF AS CLI, T§NDOC FROM SMEDATBND.V5TDOC0F WHERE T§TDOC='OA'
AND T§TMOD='001' AND T§LIVE='2'  AND T§CDMG IN  ('F2', 'F3', 'F4', 'F6', 'F7')  
-- AND T§ZONA='A09'
 AND T§CODF IN (SELECT CDCLI FROM CED.CLIFTIMM) AND T§DTCO <=20230519
ORDER BY T§CDMG, T§ZONA, T§DTCO, T§CODS 




SELECT * FROM SMEDATBND.C£CONR0F WHERE C£NUMP='X14'
