DROP DATABASE IF EXISTS `beers`;
CREATE DATABASE beers;

USE beers;

CREATE TABLE state
(
stateId int NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL DEFAULT '',
abv CHAR(2) NOT NULL DEFAULT '',
country CHAR(2) NOT NULL,
is_state CHAR(1) DEFAULT NULL,
is_lower48 CHAR(1) DEFAULT NULL,
slug VARCHAR(50) NOT NULL,
latitude FLOAT(9,6) DEFAULT NULL,
longitude FLOAT(9,6) DEFAULT NULL,
population BIGINT(20) DEFAULT NULL,
area FLOAT(8,2) DEFAULT NULL,
createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (stateId)
);


CREATE TABLE user_info
(
userId int NOT NULL AUTO_INCREMENT,
userName VARCHAR(255) NOT NULL,
firstName VARCHAR(255) NULL,
lastName VARCHAR(255) NULL,
userPassword VARCHAR(255) NOT NULL,
createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
lockedInd INT DEFAULT 0,
PRIMARY KEY (userId)
);


CREATE TABLE user_location
(
userLocationId int NOT NULL AUTO_INCREMENT,
userId INT NOT NULL,
city VARCHAR(255) NOT NULL,
stateId INT NOT NULL,
zipCode INT NULL,
latitude DECIMAL(11,8) NULL,
longitude DECIMAL(11,8) NULL,
createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (userLocationId),
FOREIGN KEY fk_user_state(userId)
	REFERENCES user_info(userId)
	ON DELETE RESTRICT,
FOREIGN KEY fk_state(stateId)
	REFERENCES state(stateId)
	ON DELETE RESTRICT    
);


CREATE TABLE contact_type
(
contactTypeId int NOT NULL AUTO_INCREMENT,
contactTypeDesc VARCHAR(255) NOT NULL,
createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (contactTypeId)
);


CREATE TABLE user_contact
(
userContactId INT NOT NULL AUTO_INCREMENT,
userId INT NOT NULL,
contactTypeId INT NOT NULL,
contactTypeValue VARCHAR(255),
primaryInd INT NULL,
createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (userContactId),
FOREIGN KEY fk_contact_user(userId)
	REFERENCES user_info(userId)
	ON DELETE RESTRICT,
FOREIGN KEY fk_contact_type(contactTypeId)
	REFERENCES contact_type(contactTypeId)
	ON DELETE RESTRICT    
);



CREATE TABLE recipe_style
(
recipeStyleId int NOT NULL AUTO_INCREMENT,
recipeStyleDesc VARCHAR(255) NOT NULL,
createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (recipeStyleId)
);


CREATE TABLE ingredients
(
ingredientsId int NOT NULL AUTO_INCREMENT,
ingredientsType VARCHAR(255) NOT NULL,
ingredientsDesc VARCHAR(255) NOT NULL,
createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (ingredientsId)
);


CREATE TABLE recipe
(
recipeId int NOT NULL AUTO_INCREMENT,
recipeDesc VARCHAR(255) NOT NULL,
recipeStyleId INT NOT NULL,
alcoholByVolume DECIMAL(10,2) NULL,
SG DECIMAL(8,4) NULL,
OG DECIMAL(8,4) NULL,
upvotes INT DEFAULT 0,
recipeDirections TEXT NULL,
recipeComments TEXT NULL,
otherComments TEXT NULL,
userComments TEXT NULL,
createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (recipeId),
FOREIGN KEY fk_recipe_style(recipeStyleId)
	REFERENCES recipe_style(recipeStyleId)
	ON DELETE RESTRICT
);

CREATE TABLE recipe_ingredients
(
recipeIngredientsId int NOT NULL AUTO_INCREMENT,
recipeId INT NOT NULL,
ingredientsId INT NOT NULL,
ingredientsQty DECIMAL(8,4) NOT NULL,
ingredientsQtyDesc VarCHar(255) NULL,
createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (recipeIngredientsId),
FOREIGN KEY fk_recipe(recipeId)
	REFERENCES recipe(recipeId)
	ON DELETE RESTRICT,
FOREIGN KEY fk_recipe_ingredients(ingredientsId)
	REFERENCES ingredients(ingredientsId)
	ON DELETE RESTRICT    
);





CREATE TABLE hashtag
(
hashTagId int NOT NULL AUTO_INCREMENT,
hashTagText VARCHAR(255) NOT NULL,
hashTagDesc VARCHAR(255) NOT NULL,
activeInd INT DEFAULT 1 NOT NULL,
createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (hashTagId)
);

CREATE TABLE recipe_hash_tag
(
recipeHashTagId int NOT NULL AUTO_INCREMENT,
recipeId INT NOT NULL,
hashTagID INT NOT NULL,
createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (recipeHashTagId),
FOREIGN KEY fk_hash_tag(hashTagId)
	REFERENCES hashtag(hashTagId)
	ON DELETE RESTRICT,
FOREIGN KEY fk_recipe_hash_tag(recipeId)
	REFERENCES recipe(recipeId)
	ON DELETE RESTRICT    
);

