


select distinct [ZONE]  from BINDIGEST.dbo.PV_OUT_0002_TestataOrdine 

where 


SELECT 'insert INTO BINDIGEST.dbo.PV_EXE_0007_TblDecZon(ZONBND,ZONSME)',
'|', substr(ttdesc, 11,4),'|', trim(ttelem),'|'  from smedatbnd.tabel00f 
where ttsett='ZON' 


SELECT * FROM smedatbnd.tabel00f 
WHERE ttsett='B�U'



SELECT * FROM SMEDATBND.TABEL00F WHERE TTSETT='ZON'

SELECT 
TTELEM AS "Utente", 
TTDESC AS "Descrizione", 
SUBSTR(TTLIBE, 1, 6) AS "Gruppo Utente",
SUBSTR(TTLIBE, 9, 28) AS "Matricola Dipendente",
E�TELX AS "Cellulare",
E�IEMA AS "Posta elettronica"
FROM SMEDATBND.TABEL00F LEFT JOIN SMEDATBND.BRENTI0F ON TTELEM = E�CRAG
WHERE TTSETT='B�U' AND E�TRAG='USR'

SUBSTR(TTLIBE, 7, 2) AS "T$STAT" 
SUBSTR(TTLIBE, 37, 5) AS "T$CAPP", SUBSTR(TTLIBE, 42, 10) AS "T$CITT",
SUBSTR(TTLIBE, 52, 2) AS "T$PROV", SUBSTR(TTLIBE, 54, 15) AS "T$TELE", SUBSTR(TTLIBE, 69, 3) AS "T$SCOL",
SUBSTR(TTLIBE, 72, 6) AS "T$LING", SUBSTR(TTLIBE, 78, 6) AS "T$AREA", SUBSTR(TTLIBE, 84, 2) AS "T$QUAL",
SUBSTR(TTLIBE, 86, 15) AS "T$TIDI", TTUSIN, TTDTIN, TTORIN, TTUSAG, TTDTAG, TTORAG 



SELECT * FROM SMETSTBND.TABEL00F WHERE TTSETT='GMR'


SELECT E�TRAG,E�CRAG,E�NMNE, E�RAGS,E�ZONA,E�COD1  FROM SMEDATBND.BRENTI0F WHERE e�TRAG='PVE' AND E�ZONA<>''


SELECT *
FROM SMEDATFDA.C�CONR0F X
WHERE C�TPRC='PVE' AND C�NUMP='CFR'

C�CD01=PVE FDA
C�CDVA=PVE FRONERI


SELECT * FROM SMEDATBND.BRENTI0F WHERE E�TRAG='PVE'
AND 
(E�COD1<>''  OR E�ZONA<>'')


SELECT * FROM SMEDATBND.C�CONR0F WHERE C�TPRC='PVE' AND C�NUMP LIKE 'X%' 

SELECT DISTINCT C�NUMP FROM SMEDATBND.C�CONR0F  WHERE C�TPRC='PVE' 

SELECT * FROM SMEDATBND.TABEL00F WHERE TTSETT='XB*06'

WITH X06 AS (	
SELECT TTELEM "KEY", TTDESC "DESCR" FROM SMEDATBND.TABEL00F WHERE TTSETT='XB*06'
), 
X07 AS (
SELECT TTELEM "KEY", TTDESC "DESCR" FROM SMEDATBND.TABEL00F WHERE TTSETT='XB*07'
), 
X08 AS (
SELECT TTELEM "KEY", TTDESC "DESCR" FROM SMEDATBND.TABEL00F WHERE TTSETT='XB*08'
), 
X09 AS (
SELECT TTELEM "KEY", TTDESC "DESCR" FROM SMEDATBND.TABEL00F WHERE TTSETT='XB*09'
), 
X10 AS (
SELECT TTELEM "KEY", TTDESC "DESCR" FROM SMEDATBND.TABEL00F WHERE TTSETT='XB*10'
), 
X11 AS (
SELECT TTELEM "KEY", TTDESC "DESCR" FROM SMEDATBND.TABEL00F WHERE TTSETT='XB*11'
), 

SELECT E�NMNE, E�CRAG, E�RAGS, E�ZONA, E�COD1, 
(SELECT C�CDVA, TTDESC FROM SMEDATBND.C�CONR0F LEFT JOIN SMEDATBND.TABEL00F ON C�TPRC='PVE'
WHERE C�CD01=E�CRAG AND C�NUMP='X06' AND  TTSETT='XB*06'  ) 
FROM SMEDATBND.BRENTI0F  
WHERE E�TRAG='PVE'  AND (E�COD1<>''  OR E�ZONA<>'')



SELECT C�CD01,C�CDVA, TTDESC FROM SMEDATBND.C�CONR0F LEFT JOIN  SMEDATBND.TABEL00F ON  C�CDVA=TTELEM   
WHERE  C�TPRC='PVE' AND C�CD01='0118797'  AND C�NUMP='X06'  AND TTSETT='XB*06'


(SELECT * FROM SMEDATBND.C�CONR0F LEFT JOIN SMEDATBND.TABEL00F ON C�TPRC='PVE' WHERE C�CD01=E�CRAG AND C�NUMP='X06'


SELECT * FROM SMEDATBND.TABEL00F WHERE TTSETT='XB*06'

=Change record  3=Copy record  4=Delete record               
C�TPRC C�CD01          C�CD02          C�NUMP C�CDVA         
                                                             
PVE    0118797                         X02    01             
PVE    0118797                         X06    2              
PVE    0118797                         X07    E              
PVE    0118797                         X08    SQ             
PVE    0118797                         X09    C              
PVE    0118797                         X10    XX             
PVE    0118797                         X13    026            
PVE    0118797                         X14    108            
PVE    0118797                         X15    29     


SELECT * FROM SMEDATBND.TABELV0F  WHERE TTSETT = 'V�R'

SELECT 
E�NMNE AS "Vecchio Codice", 
E�CRAG AS "Codice", 
E�RAGS AS "Ragione Sociale",
E�STAT AS "Stato ente",  
E�INDI AS "Indirizzo",
E�CCOM AS "Comune",
E�LOCA AS "Localit�",
E�CAPA AS "Cap",
E�PROV AS "Provincia", 
(SELECT TTDESC FROM SMEDATBND.TABELV0F WHERE TTSETT='V�R' AND TTELEM=E�CREG) AS "Regione", 
E�CNAZ AS "Nazione", 
E�ZONA AS "Zona", 
E�COD1 AS "Magazzino",  
(SELECT TTDESC FROM SMEDATBND.C�CONR0F LEFT JOIN  SMEDATBND.TABEL00F ON  C�CDVA=TTELEM   
WHERE  C�TPRC='PVE' AND C�CD01=E�CRAG  AND C�NUMP='X06'  AND TTSETT='XB*06' ) AS "Canale di vendita fatturazione" , 
(SELECT TTDESC FROM SMEDATBND.C�CONR0F LEFT JOIN  SMEDATBND.TABEL00F ON  C�CDVA=TTELEM   
WHERE  C�TPRC='PVE' AND C�CD01=E�CRAG  AND C�NUMP='X06'  AND TTSETT='XB*07' ) AS "Sottocanale di vendita fatturazione",  
(SELECT TTDESC FROM SMEDATBND.C�CONR0F LEFT JOIN  SMEDATBND.TABEL00F ON  C�CDVA=TTELEM   
WHERE  C�TPRC='PVE' AND C�CD01=E�CRAG  AND C�NUMP='X06'  AND TTSETT='XB*08' ) AS "Area Manager",   
(SELECT TTDESC FROM SMEDATBND.C�CONR0F LEFT JOIN  SMEDATBND.TABEL00F ON  C�CDVA=TTELEM   
WHERE  C�TPRC='PVE' AND C�CD01=E�CRAG  AND C�NUMP='X06'  AND TTSETT='XB*09' ) AS "District Manager",
(SELECT TTDESC FROM SMEDATBND.C�CONR0F LEFT JOIN  SMEDATBND.TABEL00F ON  C�CDVA=TTELEM   
WHERE  C�TPRC='PVE' AND C�CD01=E�CRAG  AND C�NUMP='X06'  AND TTSETT='XB*10' ) AS "Ispettore",
(SELECT TTDESC FROM SMEDATBND.C�CONR0F LEFT JOIN  SMEDATBND.TABEL00F ON  C�CDVA=TTELEM   
WHERE  C�TPRC='PVE' AND C�CD01=E�CRAG  AND C�NUMP='X06'  AND TTSETT='XB*11' ) AS "Promoter"  
FROM SMEDATBND.BRENTI0F WHERE E�TRAG='PVE' AND E�COD1<>''  OR E�ZONA<>''



select SYSTOOLS.HTTPGETCLOB('http://www.google.com/','') from sysibm.sysdummy1