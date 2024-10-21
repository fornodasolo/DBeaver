


SELECT E§CPAI, COUNT(E§CPAI) FROM SMEDATBND.BRENTI0F  
 WHERE E§TRAG='CLI' 
  AND E§DINV <= YEAR(CURRENT_DATE) * 10000
                     + MONTH(CURRENT_DATE) * 100
                     + DAY(CURRENT_DATE)
  AND E§DFNV >= YEAR(CURRENT_DATE) * 10000
                     + MONTH(CURRENT_DATE) * 100
                     + DAY(CURRENT_DATE) 
GROUP BY E§CPAI HAVING COUNT(E§CPAI) >1
                     
                     

SELECT * FROM SMEDATBND.BRENTI0F  
 WHERE E§TRAG='CLI' AND E§CPAI='04071960969' 
  AND E§DINV <= YEAR(CURRENT_DATE) * 10000
                     + MONTH(CURRENT_DATE) * 100
                     + DAY(CURRENT_DATE)
  AND E§DFNV >= YEAR(CURRENT_DATE) * 10000
                     + MONTH(CURRENT_DATE) * 100
                     + DAY(CURRENT_DATE) 

                     GROUP BY E§CPAI HAVING COUNT(E§CPAI) >1

                     
                     
SELECT * FROM SMEDATFDA.BRENTI0F bf  -- WHERE e§usin='ENISPA2'
WHERE e§trag='PVE' AND e§crag='0306760'