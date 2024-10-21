
-- esempio di lettura file delle giacenze da interfaccia
-- SELECT DISTINCT ARTICOLO FROM SMEDATBND.AXGIAC 
-- WHERE  SITO='01' AND  MAGAZZINO ='TL'

SELECT * FROM SMEDATBND.GMARMG0F gf 

-- Elimino precedenti assortimenti sulle filiali 
DELETE FROM SMEDATBND.GMARMG0F 
WHERE M§CDMG IN ('F2', 'F3', 'F4', 'F6', 'F7') 

-- Elimino precedenti assortimenti sulle filiali 
DELETE FROM SMETSTBND.GMARMG0F 
WHERE M§CDMG IN ('F2', 'F3', 'F4', 'F6', 'F7') 


-- pulizia file di work 
DELETE FROM CED.GMARMG0F

-- SELECT * FROM CED.GMARMG0F 


COMMIT


-- carico assortimento F2 Roma [sito='02', magazzino ='RM']
INSERT INTO CED.GMARMG0F(M§LIVE, M§CDMG, M§CODI, M§LIAM, M§STAM, M§DIUT, M§DTAG, M§USAG) 
SELECT '1', 'F2', ARTICOLO , '2', '10', '20230227', '20230227', 'EDP01SQL'  
FROM SMEDATBND.AXGIAC 
WHERE 
SITO='02' AND 
MAGAZZINO ='RM' 
GROUP BY ARTICOLO


-- carico assortimento F3 Assago [sito='01', magazzino ='TL']
INSERT INTO CED.GMARMG0F(M§LIVE, M§CDMG, M§CODI, M§LIAM, M§STAM, M§DIUT, M§DTAG, M§USAG) 
SELECT '1', 'F3', ARTICOLO , '2', '10', '20230227', '20230227', 'EDP01SQL'  
FROM SMEDATBND.AXGIAC 
WHERE 
SITO='01' AND 
MAGAZZINO ='TL' 
GROUP BY ARTICOLO


-- carico assortimento F4 Lorenzana [sito='04', magazzino ='PL']
-- attenzione che la filiale è ferma e ripartirà ad aprile in concomitanza con F6
-- Viene quindi usato lo stesso assortimento di Firenze (F6)
INSERT INTO CED.GMARMG0F(M§LIVE, M§CDMG, M§CODI, M§LIAM, M§STAM, M§DIUT, M§DTAG, M§USAG) 
SELECT '1', 'F4', ARTICOLO , '2', '10', '20230227', '20230227', 'EDP01SQL'  
FROM SMEDATBND.AXGIAC 
WHERE 
SITO='06' AND               --- dati di F6
MAGAZZINO ='FI'             --- dati di F6   
GROUP BY ARTICOLO

-- carico assortimento F6 Firenze [sito='06', magazzino ='FI']
INSERT INTO CED.GMARMG0F(M§LIVE, M§CDMG, M§CODI, M§LIAM, M§STAM, M§DIUT, M§DTAG, M§USAG) 
SELECT '1', 'F6', ARTICOLO , '2', '10', '20230227', '20230227', 'EDP01SQL'  
FROM SMEDATBND.AXGIAC 
WHERE 
SITO='06' AND 
MAGAZZINO ='FI' 
GROUP BY ARTICOLO


-- carico assortimento F7 Firenze [sito='07', magazzino ='CA']
INSERT INTO CED.GMARMG0F(M§LIVE, M§CDMG, M§CODI, M§LIAM, M§STAM, M§DIUT, M§DTAG, M§USAG) 
SELECT '1', 'F7', ARTICOLO , '2', '10', '20230227', '20230227', 'EDP01SQL'  
FROM SMEDATBND.AXGIAC 
WHERE 
SITO='07' AND 
MAGAZZINO ='CA' 
GROUP BY ARTICOLO



-- carico ambiente di produzione
INSERT INTO SMEDATBND.GMARMG0F SELECT * FROM CED.GMARMG0F 


-- carico ambiente di test
INSERT INTO SMETSTBND.GMARMG0F SELECT * FROM CED.GMARMG0F 



