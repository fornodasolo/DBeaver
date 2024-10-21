

/*############################################################################*/

DELETE  FROM CED.GMUBICAF 
COMMIT

SELECT * FROM SMEDATFDA.GMUBIC0F WHERE U§CDMG='G8'

INSERT INTO CED.GMUBICAF 
SELECT * FROM GMUBIC0F WHERE U§CDMG='G8'
COMMIT

SELECT * FROM CED.GMUBICAF

UPDATE CED.GMUBICAF 
SET U§CDMG='G7' ,
U§USIN='EDP01', 
U§DTIN=20200130 ,
U§ORIN=171500, 
U§USAG='EDP01', 
U§DTAG=20200130 ,
U§ORAG=171500 
COMMIT


INSERT INTO GMUBIC0F SELECT * FROM CED.GMUBICAF 

COMMIT

/*############################################################################*/

INSERT INTO CED.G7UBICORD
SELECT * FROM CED.G7UBIC ORDER BY 1


SELECT * FROM CED.G7UBICORD

DELETE FROM CED.GMUBICAF A WHERE RRN(A) >4

INSERT INTO CED.GMUBICAF (U§CDMG,U§LOCN, U§DSUB, 
       U§LOCR,       U§TIGE,       U§TIUB,       U§COAP,
       U§STUB,       U§LIVE,       U§DTUM,       U§TCON,       U§POCC,       U§IDOJ,       U§CORD,
       U§COR2,       U§ALTE,       U§LUNG,       U§LARG,       U§PMAX,       U§COD1,       U§COD2,
       U§COD3,       U§COD4,       U§COD5,       U§NUM1,       U§NUM2,       U§NUM3,       U§NUM4,
       U§NUM5,       U§DT01,       U§DT02,       U§DT03,       U§DT04,       U§DT05,       U§BLUB,
       U§MUIT,       U§MULO,       U§FL04,       U§FL05,       U§FL06,       U§FL07,       U§FL08,
       U§FL09,       U§FL10,       U§FL11,       U§FL12,       U§FL13,       U§FL14,       U§FL15,
       U§FL16,       U§FL17,       U§FL18,       U§FL19,       U§FL20,       U§USAG,       U§DTIN,
       U§DTAG,       U§ORAG 
) 
SELECT U§CDMG, 
       COORD,
       DSCOORD,
       U§LOCR,       U§TIGE,       U§TIUB,       U§COAP,
       U§STUB,       U§LIVE,       U§DTUM,       U§TCON,       U§POCC,       U§IDOJ,       U§CORD,
       U§COR2,       U§ALTE,       U§LUNG,       U§LARG,       U§PMAX,       U§COD1,       U§COD2,
       U§COD3,       U§COD4,       U§COD5,       U§NUM1,       U§NUM2,       U§NUM3,       U§NUM4,
       U§NUM5,       U§DT01,       U§DT02,       U§DT03,       U§DT04,       U§DT05,       U§BLUB,
       U§MUIT,       U§MULO,       U§FL04,       U§FL05,       U§FL06,       U§FL07,       U§FL08,
       U§FL09,       U§FL10,       U§FL11,       U§FL12,       U§FL13,       U§FL14,       U§FL15,
       U§FL16,       U§FL17,       U§FL18,       U§FL19,       U§FL20,       U§USAG,       U§DTIN,
       U§DTAG,       U§ORAG 
FROM CED.GMUBICWK, CED.CORDG7;


INSERT INTO SMEDATFDA.GMUBIC0F SELECT * FROM CED.GMUBICAF

/*############################################################################*/

