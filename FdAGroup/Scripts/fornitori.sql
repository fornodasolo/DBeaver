

SELECT 
E§CRAG AS "FORN_CD_CLIENTE", -- [nvarchar](50) NULL, --Codice Fornitore
E§RAGS AS "FORN_DS_CLIENTE", -- [nvarchar](200) NULL, --Ragione sociale Fornitore
E§INDI AS "FORN_INDIRIZZO", -- [nvarchar](200) NULL, --Indirizzo Fornitore
E§CAPA AS "FORN_CAP", -- [nvarchar](10) NULL, --CAP Fornitore
E§LOCA AS "FORN_LOCALITA", --  [nvarchar](50) NULL, --Comune Fornitore
E§PROV AS "FORN_PROVINCIA", -- [nvarchar](10) NULL, --Provincia
E§NAZI AS "FORN_STATO", --  [nvarchar](10) NULL, --Stato del Fornitore tipo ITA=Italia (*)
E§TELE AS "FORN_TELEFONO", -- [nvarchar](50) NULL, --Telefono Fornitore
E§TFAX AS "FORN_FAX", --  [nvarchar](50) NULL, --FAx Fornitore
E§CPAI AS "FORN_PARTITAIVA", -- [nvarchar](12) NULL, --Partita IVA Fornitore
E§IEMA AS "FORN_EMAIL", --  [nvarchar](200) NULL, --Email Fornitore
E§COD2 AS "FORN_CATACQ", -- [nvarchar](50) NULL, --Categoria Merceologica
--[FORN_DS_CATACQ] [nvarchar](200) NULL, --Categoria Merceologica
E§COFI AS "CODICE_FISCALE"   -- [nvarchar](50) NULL, --Codice Fiscale Fornitore
FROM SMEDATFDA.BRENTI0F  
WHERE E§TRAG='FOR' 
AND E§DINV <= YEAR(CURRENT_DATE) * 10000
                     + MONTH(CURRENT_DATE) * 100
                     + DAY(CURRENT_DATE)  
AND E§DFNV >= YEAR(CURRENT_DATE) * 10000
                     + MONTH(CURRENT_DATE) * 100
                     + DAY(CURRENT_DATE)
                     
                     
SELECT * FROM smetstbnd.c£conr0f WHERE c£nump='X66' 
AND C£TPRC='CLI' 


SELECT * FROM SMEtstbnd.c£conr0f WHERE c£nump='X24' 
AND C£TPRC='PVE' 

AND C£CD01='012588'


SELECT * FROM 