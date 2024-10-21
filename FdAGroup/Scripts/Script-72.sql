


CL: STRAUTCOL USRPRF(JOEUSER) LIBINF((TOYSTORE));
stop; -- Ask JOEUSER to attempt the data access on the TOYSTORE/SALES table
CL: ENDAUTCOL USRPRF(JOEUSER);

-- Review the authorization failures
  SELECT SYSTEM_OBJECT_NAME, DETAILED_REQUIRED_AUTHORITY
      FROM QSYS2.AUTHORITY_COLLECTION
      WHERE AUTHORIZATION_NAME = 'JOEUSER' AND AUTHORITY_CHECK_SUCCESSFUL = '0';

CL: DLTAUTCOL USRPRF(JOEUSER);

CL: GRTOBJAUT OBJ(TOYSTORE) OBJTYPE(*LIB) USER(JOEUSER) AUT(*EXECUTE);
CL: GRTOBJAUT OBJ(TOYSTORE/SALES) OBJTYPE(*FILE) USER(JOEUSER) AUT(*OBJOPR);
CL: GRTOBJAUT OBJ(TOYSTORE/SALES) OBJTYPE(*FILE) USER(JOEUSER) AUT(*READ);


SELECT *
    FROM QSYS2.AUTHORIZATION_LIST_USER_INFO
    WHERE AUTHORIZATION_NAME = '*PUBLIC';
    
   
   
   
   
SELECT journal_code, journal_entry_type, OBJECT, object_type, X.*
    FROM TABLE(QSYS2.Display_Journal('QSYS', 'QAUDJRN', -- Journal library and name
JOURNAL_ENTRY_TYPES => 'CP', -- Journal entry types
STARTING_TIMESTAMP => CURRENT TIMESTAMP - 24 HOURS -- Time period
)) AS x;   
   
   
SELECT *
    FROM QSYS2.DRDA_AUTHENTICATION_ENTRY_INFO
    ORDER BY AUTHORIZATION_NAME, SERVER_NAME;   
   
   
SELECT AUTHORIZATION_NAME, STATUS, NO_PASSWORD_INDICATOR, PREVIOUS_SIGNON, TEXT_DESCRIPTION
    FROM QSYS2.USER_INFO
    WHERE SPECIAL_AUTHORITIES LIKE '%*JOBCTL%' OR AUTHORIZATION_NAME IN (SELECT USER_PROFILE_NAME
                                                  FROM QSYS2.GROUP_PROFILE_ENTRIES
                                                  WHERE GROUP_PROFILE_NAME IN (SELECT
                                                                                AUTHORIZATION_NAME
                                                  FROM QSYS2.USER_INFO
                                                  WHERE SPECIAL_AUTHORITIES LIKE '%*JOBCTL%'))
    ORDER BY AUTHORIZATION_NAME;   
   
   
  SELECT *
    FROM QSYS2.USER_INFO
    WHERE SIGN_ON_ATTEMPTS_NOT_VALID > 0; 
   
   
   
SELECT OBJECT,"CURRENT_USER",remote_address, COUNT(*) AS change_count
    FROM TABLE(qsys2.display_journal('QSYS', 'QAUDJRN', -- Journal library and name
journal_entry_types => 'ZC', -- Journal entry types
starting_timestamp => CURRENT TIMESTAMP - 24 HOURS -- Time period
)) AS x
    WHERE remote_address IS NOT NULL
    GROUP BY OBJECT, "CURRENT_USER", remote_address;   
   
   
   
SELECT * FROM smesys.USERLIST u   

SELECT * FROM smedatbnd.distin0f WHERE NRDS1D LIKE 'A17V00010%' 


   