


SELECT sum(xiimpo), LEFT (XIDTIC, 4) FROM smedatfda.xv5inc0f 
GROUP BY LEFT(XIDTIC, 4) 
ORDER BY LEFT(XIDTIC, 4)
-- WHERE LEFT(digits(XIDTIC), 4) = 4017

SELECT * FROM SMEDATFDA.XV5INC0F WHERE LEFT(XIDTIC, 4) ='4017'

SELECT sum(xiimpo), LEFT(digits(XIDTIC), 4) FROM smedatfda.xv5inc0f 
GROUP BY LEFT(digits(XIDTIC), 4) 
ORDER BY LEFT(digits(XIDTIC), 4)

