
select cast(shortnumber as char) "Nr.breve", firstname "Nome", lastname "Cognome", company "Azienda", address "Indirizzo", phone1 "Telefono",
email "E-mail", plantcode "Magazzino",
case owner when 'FDA' then "Rubrica" else owner end "Propietario"
from asterisk.visual_phonebook
where owner = 'FDA'
order by lastname, firstname, shortnumber


select count(*) from visual_phonebook vp


select * from visual_phonebook vp 


