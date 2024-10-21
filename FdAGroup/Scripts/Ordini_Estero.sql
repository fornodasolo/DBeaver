

-- Elenco testate Ordini Estero con numero, data e codice cliente 
SELECT  T§TDOC, T§TMOD, T§NDOC, T§DTDO, T§CODF AS CDCLI,
(SELECT E§RAGS FROM SMEDATFDA.BRENTI0F WHERE E§TRAG='CLI' AND E§CRAG=T§CODF 
AND E§DINV <= YEAR(CURRENT_DATE) * 10000
                     + MONTH(CURRENT_DATE) * 100
                     + DAY(CURRENT_DATE)
       AND E§DFNV >= YEAR(CURRENT_DATE) * 10000
                     + MONTH(CURRENT_DATE) * 100
                     + DAY(CURRENT_DATE) 
) AS RAGCLI, T§CDCL AS CDPVE --, T§NBOL, T§DBOL,T§DTPT,T§ORPT,T§CDVG 
FROM SMEDATFDA.V5TDOC0F VTF WHERE T§TDOC='OA' AND T§TMOD='051' 
AND T§DTDO >= 20230101 AND T§STAT<'80' 

-- Elenco righe Ordini Estero con tipo, numero ecc   
SELECT  R§TDOC,R§NDOC, R§TRIG, R§CDOG, R§DSOG, R§CODS, R§CDCL, R§QT01,R§QT02,R§UNMV, R§CDMG  FROM SMEDATFDA.V5RDOC0F VTF WHERE R§TDOC='OA'  
AND R§NDOC IN (SELECT T§NDOC FROM SMEDATFDA.V5TDOC0F WHERE T§TDOC='OA' AND T§TMOD='051' AND T§DTDO >= 20230101 AND T§STAT<'80') 


SELECT * FROM nbfdattst.xneipa0f WHERE p§dist IN ('210V000kiT', '422V000kmE', '197V000klw')

SELECT * FROM smedat_ts2.DISTIN0F WHERE NRDS1D IN ('210V000kiT', '422V000kmE', '197V000klw')

SELECT DISTINCT paydstcode FROM ced.INCASSI0F if2 



