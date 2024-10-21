

SELECT * FROM smedatbnd.v5stat0f


INSERT INTO ced.xnblog0f SELECT * FROM nbfdat.xnblog0f

DELETE FROM nbfdat.xnblog0f 



SELECT * FROM SMEDATFDA.TABELA0F

select a.* , a§dear DesArt, mag.ttdesc DesMag,gmr.ttdesc DesArea 
from table(SMEPER.GETGIACENZEGIORNALIERE(Cast('M' as char(15)), Cast('' as char(15)),Cast('99999' as char(15)),Cast('' as char(15)) ,Cast('99' as char(15)), 20240101 , 20240731)) a
inner join smedatfda.brarti0l on cdarticolo=a§arti
inner join smedatgru5.tabelg1l mag on mag.ttsett ='MAG' and mag.ttelem =cdmag 
inner join smedatgru5.tabelg1l gmr on gmr.ttsett ='GMR' and gmr.ttelem =cdarea 


--WITH Y AS SELECT 
SELECT --*  
E§TRAG, E§CRAG, E§RAGS, E§INDI,E§CAPA, E§LOCA, E§PROV, E§IEMA, E§CPAI, E§CCON AS CODCLI 
--(SELECT X.E§CRAG FROM SMEDATFDA.BRENTI0F X WHERE X.E§TRAG='FOR' AND X.E§CPAI<>'' AND X.E§CPAI=E§CPAI AND X.E§DFNV >=  VARCHAR_FORMAT(CURRENT_DATE, 'YYYYMMDD')) AS CODFOR     
FROM SMEDATFDA.BRENTI0F 
WHERE E§TRAG='MAG' AND 
E§CRAG IN ('U1', 'U3', 'U5', 'N1', 'S3', 'S4', 'F8')  AND 
E§DFNV >=  VARCHAR_FORMAT(CURRENT_DATE, 'YYYYMMDD')  
