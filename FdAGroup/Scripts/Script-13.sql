


SELECT s5scad FROM smedatbnd.xc5rat3l ORDER BY s5scad DESC 


SELECT * FROM SMEDATFDA.DISTIN0F 
WHERE TPPG1D='E' -- identifica pagamento elettronico...
-- AA041D          -- contiene l'ID del terminale elettronico (questo e' associato univocamente ad una zona agente)
-- AA051D          -- contiene l'auth.number (identificativo della transazione)...


SELECT * FROM nbfdatstbn.PV_OUT_0002_TESTATAORDINE pot 

SELECT * FROM NBFDATSTBN.PV_OUT_0003_RIGAORDINE por 


SELECT * FROM smedatfda.SPLUSR01 s 

SELECT

UPDATE GMRRIM0F SET R�QEUI=R�QRUI, R�QEUC=R�QRUC , R�LIVE='8',   
R�STAT='80' 
--  WHERE .....                                          
                                                                 
-- UPDATE GMTRIM0F SET T�STAT='80', T�LIVE='8' WHERE .....        
 
-- UPDATE V5TRIP0F SET V$STAT='70' WHERE ....                       

-- DA AGGIORNARE GMRRIM, GMTRIM E V5TRIP  


SELECT * FROM SMETSTBND.V5TDOC0F 

DELETE FROM SMETSTBND.V5TDOC0F 
WHERE T�USAG='SMEUPBND' AND T�OGAG='XNBI01' 

SELECT * FROM SMETSTBND.V5RDOC0F 
WHERE R�USAG='SMEUPBND' AND R�OGAG='XNBI01' 

DELETE FROM SMETSTBND.V5RDOC0F 
WHERE R�USAG='SMEUPBND' AND R�OGAG='XNBI01' 






