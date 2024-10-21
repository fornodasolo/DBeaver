
use guacamole_db

-- Se imposti 'guac-totp-key-secret' di un utente su qualcosa di non valido (non deve essere NULL e non vuoto), l'utente può accedere senza TOTP.

update  guacamole_user_attribute set attribute_value='totpdisabled' dove user_id=<userid> e attribute_name='guac-totp-key-secret';

UPDATE guacamole_user_attribute SET attribute_value='totpdisabled' WHERE attribute_name = 'guac-totp-key-secret' and user_id = '21'

-- Dove l'user_id lo trovi partendo dal nome dell'utente 

SELECT user_id FROM guacamole_user INNER JOIN guacamole_entity ON guacamole_entity.entity_id = guacamole_user.entity_id 
WHERE guacamole_entity.name = 'mauro_baldo';
