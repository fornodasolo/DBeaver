


select * from qsys2.OUTPUT_QUEUE_ENTRIES  
where OUTPUT_QUEUE_NAME='SALVATAGGI' and OUTPUT_QUEUE_LIBRARY_NAME='QGPL'   

limit 500 offset 0


SELECT * FROM NBFDATSTBN.SOSPESI0F sf  WHERE UNSENTBLCD ='200163'



10  T$ELEM  Numero Dispositivo    **              15    X            1
  20  T$DESC  Descrizione                           30                  
  30  T$XPSA  Tipo device           **               1                 1
  40  T$XPSB  Conto Banca Emitten.  TA C5B          15                 2
  50  T$XPSC  Tipo   Assegnatario   TA BRE           3                17
  60  T$XPSD  Codice Assegnatario   **              15                20
  70  T$XPSE  Zona   Assegnata      TA ZON           3                35
  80  T$XPSF  Data Inizio Delega    D8 *DMYY        10                38
  90  T$XPSG  Data Fine   Delega    D8 *DMYY        10                48
 100  T$XPSH  Mag. di riferimento   TA MAG           3                58
 110  T$XPSI  Conto cassa associat  TA C5B          15                61

 
 
DELETE  FROM SMETSTBND.TABEL00F 
 WHERE TTSETT='XPS' 
 --     TTSETT   TTELEM    TTDESC     TTLIBE

 SELECT 'XPS',   TESSERA,  ASSEGNATO, 'T                  '||CODPDC FROM CED.SIPACARD
 
 INSERT INTO SMETSTBND.TABEL00F (TTSETT, TTELEM, TTDESC, TTLIBE) 
  SELECT 'XPS',   TESSERA, LEFT(ASSEGNATO, 30), 'T                  '||CODPDC FROM CED.SIPACARD

  
  INSERT INTO nbfdatstbn.INCASSI0F 
  SELECT * FROM NBFDATTST.incassi0f 
  
 SELECT * FROM SMEDAT_TS2.GMQUAN0F WHERE G§CDMG='M2' 
 
 SELECT * FROM SMEDAT_TS2.GMUBIC0F 
 
 
 
  SELECT * FROM SMEDATBND.GMQUAN0F WHERE G§TIGC='PF' AND G§SOGC='UB' AND G§CDMG='F3'  
  
  
  SELECT * FROM CED.ARTUBICF3
  
  SELECT B.UBICAZIONE FROM ced.artubicf3 B WHERE  B.UBICAZIONE <>'' AND B.ARTICOLO<>'' -- AND A.G§ARTI=B.ARTICOLO 
  
  UPDATE SMETSTBND.GMQUAN0F A  -- CED.ARTUBICF3 B ON A.G§ARTI=B.ARTICOLO 
  SET A.G§COD3= (SELECT B.UBICAZIONE FROM ced.artubicf3 B WHERE  B.UBICAZIONE <>'' AND B.ARTICOLO<>'' AND A.G§ARTI=B.ARTICOLO )
  WHERE  A.G§TIGC='PF' AND A.G§SOGC='UB' AND A.G§CDMG='F3'   AND A.G§ARTI<>'' 
  AND A.G§ARTI IN ( SELECT DISTINCT ARTICOLO FROM CED.ARTUBICF3) 
  
SELECT * FROM  SMETSTBND.GMQUAN0F A  -- CED.ARTUBICF3 B ON A.G§ARTI=B.ARTICOLO 
  -- SET A.G§COD3= (SELECT B.UBICAZIONE FROM ced.artubicf3 B WHERE  B.UBICAZIONE <>'' AND B.ARTICOLO<>'' AND A.G§ARTI=B.ARTICOLO )
  WHERE  A.G§TIGC='PF' AND A.G§SOGC='UB' AND A.G§CDMG='F3'   AND A.G§ARTI<>'' 