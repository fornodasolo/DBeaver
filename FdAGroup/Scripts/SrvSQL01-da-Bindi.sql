

select * from  BINDIGEST.dbo.PV_OUT_0002_TestataOrdine poto  where KHEADER is NULL 


select * from BINDIGEST.dbo.PV_OUT_0003_RigaOrdine 
where KHEADER  in (
select kheader from BINDIGEST.dbo.PV_OUT_0002_TestataOrdine  
where REQESTEDDELIVERYDATE >= getdate()
)

select * from BINDIGEST.dbo.PV_OUT_0002_TestataOrdine poto  
where REQESTEDDELIVERYDATE>= GETDATE() 

SELECT GETDATE()  FROM BINDIGEST.dbo.PV_OUT_0002_TestataOrdine poto  

-- aggiornamento testate ordini elaborate oggi
update BINDIGEST.dbo.PV_OUT_0002_TestataOrdine 
set STATO= 2 where REQESTEDDELIVERYDATE < getdate()

-- aggiornamento righe ordini elaborate oggi
update BINDIGEST.dbo.PV_OUT_0003_RigaOrdine 
set STATO= 2 where KHEADER  in (
select kheader from BINDIGEST.dbo.PV_OUT_0002_TestataOrdine
where STATO= 2 
)

select * from  BINDIGEST.dbo.PV_OUT_0002_TestataOrdine where stato=0 

select * from  BINDIGEST.dbo.PV_OUT_0003_RigaOrdine where stato=0 



SELECT * FROM  Edo_ESTR_GIACENZA_AX_TUTTI_DETTAGLIO_SMEUP 

