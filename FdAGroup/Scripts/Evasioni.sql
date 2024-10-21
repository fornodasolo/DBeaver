




select count(*) from smedatbnd.tabelx0f 
WHERE ttsett='XCF'  AND ttelem LIKE '%1084.000'

select * from smetstbnd.tabelx0f 
WHERE ttsett='XCF'

--#################################################################


SELECT * FROM smetstbnd.GMRRIM0F gf 


update smetstbnd.GMRRIM0F set 
r£qeui=r£qrui, 
r£qeuc=r£qruc, 
r£live='8',   
r£stat='80'  where r£usin='EDP07' AND R£DTIN='20221003'                                         
                                 

SELECT * FROM SMETSTBND.GMTRIM0F gf 

update SMETSTBND.GMTRIM0F set 
t£stat='80', 
t£live='8' where T£usin='EDP07' AND T£DTIN='20221003'

SELECT * FROM SMETSTBND.V5TRIP0F   where V$dtin=20221003 AND left(v$cdvg,1)='F' AND v$live=2

update smetstbnd.v5trip0f set v$stat='70' 
where V$dtin=20221003 AND left(v$cdvg,1)='F' AND v$live=2            

da aggiornare GMRRIM, GMTRIM e V5TRIP


SELECT * FROM nbfdat.xnbiln0f  

SELECT * FROM nbfdat.xnbihe0f

SELECT count(*) FROM nbfdat.xnbiln0f WHERE date(l§tmin) = '2021-06-15'  

SELECT h§cdmg, count(date(l§tmin)) FROM nbfdat.xnbiln0f INNER JOIN NBFDAT.xnbihe0f ON l§heak=h§heak  
GROUP BY h§cdmg

