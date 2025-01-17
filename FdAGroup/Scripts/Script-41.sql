


WITH P AS (
SELECT E§CCON,  
E§CRAG,E§STAT, E§NMNE,
E§RAGS, E§CNAZ, E§LOCA, E§INDI FROM SMEDATBND.BRENTI0F WHERE E§TRAG='PVE' 
AND E§DINV <= YEAR(CURRENT_DATE) * 10000
                     + MONTH(CURRENT_DATE) * 100
                     + DAY(CURRENT_DATE)
       AND E§DFNV >= YEAR(CURRENT_DATE) * 10000
                     + MONTH(CURRENT_DATE) * 100 
                     + DAY(CURRENT_DATE) 
),
PI AS (
SELECT P£CD01, MAX(P£CDVA) FROM SMEDATBND.C£ESO00F WHERE P£TPRC='PVE' AND P£NUMP = 'X72' AND P£SSNP = 'PV' AND P£TP01='CNPVE' GROUP BY P£CD01
),
C AS (
SELECT E§CRAG, E§STAT,  E§NMNE, 
E§RAGS, E§CNAZ, E§LOCA, E§INDI FROM SMEDATBND.BRENTI0F WHERE E§TRAG='CLI' 
AND E§DINV <= YEAR(CURRENT_DATE) * 10000
                     + MONTH(CURRENT_DATE) * 100
                     + DAY(CURRENT_DATE)
       AND E§DFNV >= YEAR(CURRENT_DATE) * 10000
                     + MONTH(CURRENT_DATE) * 100 
                     + DAY(CURRENT_DATE) 
),
CI AS (
SELECT P£CD01, MAX(P£CDVA) FROM SMEDATBND.C£ESO00F WHERE P£TPRC='CLI' AND P£NUMP = 'X72' AND P£SSNP = 'CL' AND P£TP01='CNCLI' GROUP BY P£CD01
)
SELECT P.*, PI.*, C.*, CI.*   FROM P INNER JOIN  C ON P.E§CCON=C.E§CRAG INNER JOIN PI ON PI.P£CD01=P.E§CRAG INNER JOIN CI ON P.E§CCON=CI.P£CD01 




I AS 
(SELECT * FROM QTEMP.INSEGNA ) 
SELECT P.*, C.* , I.* FROM P, C, I  WHERE P.E§CCON=C.E§CRAG AND P.E§CRAG=I.CDPV


SELECT P£CD01, MAX(P£CDVA) FROM SMEDATBND.C£ESO00F WHERE P£TPRC='PVE' AND P£NUMP = 'X72' AND P£SSNP = 'PV' AND P£TP01='CNPVE' GROUP BY P£CD01


SELECT * FROM SMEDATBND.C£ESO00F WHERE P£NUMP = 'X72'

SELECT * FROM SMEDATBND.GMQUAN0F 
WHERE G§CDMG='F3' --<>'F3' 
AND G§TIGC='PF'

SELECT * FROM SMEDATBND.CQLOTT0F


G.M.C. DISTRIBUZIONE srl