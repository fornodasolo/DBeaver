
--###########################################################################################
--       ESTRAZIONE CONFTI RICAVO AZIENDE DEL GRUPPO 
--###########################################################################################
--  TRACCIATO -- TRACCIATO -- TRACCIATO -- TRACCIATO -- TRACCIATO -- TRACCIATO -- TRACCIATO--
-- GL_BUSINESS_UNIT_CODE, 
-- GL_ACCOUNT_NUMBER,     
-- GL_JOURNAL_ID, 
-- GL_EFFECTIVE_DATE,                  
-- GL_FISCAL_YEAR,
-- DATA FATTURA
-- NUMERO DOCUMENTO ORIGINE
-- GL_REVENUE_ACCOUNT, 
-- GL_GIVE_HAVE, 
-- GL_REPORTING_AMOUNT_CURRENCY,
-- GL_REPORTING_AMOUNT
--###########################################################################################

SELECT        
T5AZIE || '|' ||  -- GL_BUSINESS_UNIT_CODE, 
(SELECT TRIM(E§CACO)||'|' ||TRIM(E§CRAG)|| '|' ||TRIM(E§RAGS) 
 FROM SMEDATFDA.BRENTI0F WHERE E§TRAG='CLI'  AND E§CRAG=T5CDOG 
    AND E§DINV <= YEAR(CURRENT_DATE)*10000 
                  + MONTH(CURRENT_DATE)*100
                  + DAY(CURRENT_DATE)      
    AND E§DFNV >= YEAR(CURRENT_DATE)*10000 
                  + MONTH(CURRENT_DATE)*100
                  + DAY(CURRENT_DATE)) || '|' ||  -- GL_ACCOUNT_NUMBER,     
T5PROG || '|' ||  -- GL_JOURNAL_ID, 
T5DREG || '|' ||  -- GL_EFFECTIVE_DATE,                  
T5ESER || '|' ||  -- GL_FISCAL_YEAR,
T5DDOR || '|' ||  -- DATA FATTURA
T5NDOR || '|' ||  -- NUMERO DOCUMENTO ORIGINE
R5CONT || '|' ||  -- GL_REVENUE_ACCOUNT, 
R5DAAV || '|' ||  -- GL_GIVE_HAVE,  
(CASE WHEN R5VALU='' THEN 'EUR' ELSE R5VALU END) || '|' ||  -- GL_REPORTING_AMOUNT_CURRENCY,
R5IMPO                                                      -- GL_REPORTING_AMOUNT
FROM SMEDATFDA.C5RREG0F INNER JOIN SMEDATFDA.C5TREG0F ON R5PROG=T5PROG AND R5AZIE=T5AZIE 
WHERE R5CONT IN ( 
'088100000850', '088100000900',   -- Intercompany  -- Modif. Rovetta 18/10/2024
'088100000910', '088100000930',   -- Intercompany  -- Modif. Rovetta 18/10/2024
'088100000940', '088100000950',   -- Intercompany  -- Modif. Rovetta 18/10/2024
'088000000030', '088000000020',   -- FDA
'088100000030', '088100000098',   -- FDA
'088100000020', '088100000097',   -- FDA
'088100000400', '088100000201',   -- FDA
'088000000098')                   -- FDA
--,'088100000200', '088000000201') -- conti germania  da non considerare  -- FDA
-- '088000000023', '088100000300', '088100000450', '088100000470',         -- LIZZI
-- '088100000900', '088100000910', '088100000950')                         -- LIZZI 
 --'088200000062' --corrispettivi Assago )                                 -- LIZZI   
AND R5AZIE IN  
--('09')  -- LIZZI  
('01', '02', '06', '07', '11') -- FDA
AND R5DDOR>=20240101 AND R5DDOR<=20240831


--  ESTRAZIONE ANAGRAFICA CLIENTI  
SELECT 
TRIM(E§CRAG)|| '|' || -- CODICE CLIENTE
TRIM(E§NMNE)|| '|' || -- SIGLA CLIENTE 
TRIM(E§STAT)|| '|' || -- STATO CLIENTE
TRIM(E§RAGS)          -- RAGIONE SOCIALE CLIENTE
FROM SMEDATFDA.BRENTI0F WHERE E§TRAG='CLI' 
    AND E§DINV <= YEAR(CURRENT_DATE)*10000 
                  + MONTH(CURRENT_DATE)*100
                  + DAY(CURRENT_DATE)      
    AND E§DFNV >= YEAR(CURRENT_DATE)*10000 
                  + MONTH(CURRENT_DATE)*100
                  + DAY(CURRENT_DATE)


