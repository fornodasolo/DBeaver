

--S§NURE     Numero registrazione  
--S§TIMO     Tipo movimento        
--S§CAMO     Causale movimento     
--S§TIGC     Area giacenza         
--S§SOGC     Tipo giacenza         
--S§STMO     Sottocausale movimento
--S§ENUS     Entrata / uscita +/-  
--S§DTRE     Data registrazione    
--S§DTFF     Legame interno        
--S§ARTI     Codice articolo       
--S§DSAR     Descrizione articolo  
--S§CDMG     Codice Magazzino  

SELECT count(*) FROM smedatfda.gmmovi0f 


SELECT DISTINCT s§tigc FROM smedatfda.gmmovi0f 
WHERE S§CDMG IN (
'M0'
)


SELECT SUM(R5IMPO) FROM SMEDATBND.C5RREG0L WHERE      
r5DAAV = 'A'                                
 and r5eser = '2022'  

 SELECT SUM(R5IMPO) FROM SMEDATBND.C5RREG0L WHERE      
r5DAAV = 'D'                                
 and r5eser = '2022'
 
 