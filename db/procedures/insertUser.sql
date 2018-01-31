USE beers;
DROP PROCEDURE IF EXISTS insertUser;

DELIMITER //

CREATE PROCEDURE `insertUser`(
								IN p_userName VarChar(255), 
								IN p_firstName VarChar(255), 
                                IN p_lastName VarChar(255), 
                                IN p_userPassword VarChar(255),
                                IN p_email VarChar(255),
                                IN p_address VarCHar(255),
								IN p_city VarChar(255),
                                IN p_state VarChar(4),
								IN p_zipCode VarCHar(10)
							 )
BEGIN



DECLARE v_userId INT DEFAULT 0;


INSERT INTO user_info(
userName,
firstName,
lastName,
userPassword,
address,
email,
city,
state,
zipCode
)

VALUES(
p_userName,
p_firstName,
p_lastName,
p_userPassword,
p_email,
p_address,
p_city,
p_state,
p_zipCode
);

SELECT v_userId = LAST_INSERT_ID();

SELECT v_userId;


END//


