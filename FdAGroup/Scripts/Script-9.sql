
SELECT COUNT(*) FROM SMEDATFDA.GMMOVI0F WHERE S低DMG='F1'      -- 2667 record 

SELECT COUNT(*) FROM SMEDATFDA.GMQUAN0F WHERE G低DMG='F1'      -- 1 record

SELECT COUNT(*) FROM SMEDATFDA.V5RDOC0F VRF WHERE R低DMG='F1'  -- 1875 record

SELECT COUNT(*) FROM SMEDATFDA.V5RDOC0F VRF WHERE R低DMT='F1'  -- 293 record

SELECT COUNT(*) FROM SMEDATFDA.V5TDOC0F VTF WHERE T低DMG='F1'  -- 420 record

SELECT COUNT(*) FROM SMEDATFDA.V5TDOC0F VTF WHERE T低DMT='F1'  -- 26 record 

SELECT COUNT(*) FROM SMEDATFDA.GMMOAR0F WHERE  B低DMG='F1'     -- 2667 record 

SELECT COUNT(*) FROM SMEDATFDA.GMARMG0F WHERE M低DMG='F1'      -- 124 record 

SELECT COUNT(*) FROM SMEDATFDA.V5STAT0F WHERE D6CDMG='F1'      -- 85record 

UPDATE SMEDAT_TS2.GMMOVI0F SET S低DMG='U4' WHERE S低DMG='F1'   -- 2667 record 

UPDATE SMEDAT_TS2.GMQUAN0F SET G低DMG='U4' WHERE G低DMG='F1'   -- 1 record  

UPDATE SMEDAT_TS2.V5RDOC0F SET R低DMG='U4' WHERE R低DMG='F1'   -- 1875 record

UPDATE SMEDAT_TS2.V5RDOC0F SET R低DMT='U4' WHERE R低DMT='F1'   -- 293 record 

UPDATE SMEDAT_TS2.V5TDOC0F SET T低DMG='U4' WHERE T低DMG='F1'   -- 420 record

UPDATE SMEDAT_TS2.V5TDOC0F SET T低DMT='U4' WHERE T低DMT='F1'   -- 26 record 

UPDATE SMEDAT_TS2.GMMOAR0F SET B低DMG='U4' WHERE B低DMG='F1'   -- 2667 record 

UPDATE SMEDAT_TS2.GMARMG0F SET M低DMG='U4' WHERE M低DMG='F1'   -- 124 record

UPDATE SMEDAT_TS2.V5STAT0F  SET D6CDMG='U4' WHERE D6CDMG='F1'  -- 85 record 


SELECT * FROM SMESYS.USERLIST