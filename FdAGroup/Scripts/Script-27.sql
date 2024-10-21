


SELECT * FROM SMEDATBND.BRENTI0F WHERE E§TRAG='MAG' 
AND E§CRAG IN ('F2', 'F3', 'F4', 'F6', 'F7')
AND E§DINV <= YEAR(CURRENT_DATE) * 10000
                     + MONTH(CURRENT_DATE) * 100
                     + DAY(CURRENT_DATE)
       AND E§DFNV >= YEAR(CURRENT_DATE) * 10000
                     + MONTH(CURRENT_DATE) * 100
                     + DAY(CURRENT_DATE) 
                     

SELECT * FROM SMEDATFDA.BRENTI0F WHERE E§TRAG='VET'  AND E§CRAG LIKE 'MT%'                    
AND E§DINV <= YEAR(CURRENT_DATE) * 10000
                     + MONTH(CURRENT_DATE) * 100
                     + DAY(CURRENT_DATE)
       AND E§DFNV >= YEAR(CURRENT_DATE) * 10000
                     + MONTH(CURRENT_DATE) * 100
                     + DAY(CURRENT_DATE)                      
                     

SELECT * FROM smedatbnd.gmubic0f    



                     