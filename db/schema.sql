DROP DATABASE IF EXISTS `beers`;
CREATE DATABASE beers;

USE beers;

 

CREATE TABLE user_info
(
userId int NOT NULL AUTO_INCREMENT,
userName VARCHAR(255) NOT NULL,
firstName VARCHAR(255) NULL,
lastName VARCHAR(255) NULL,
userPassword VARCHAR(255) NOT NULL,
email VARCHAR(255) NULL,
address VARCHAR(255) NULL,
city VARCHAR(255) NOT NULL,
state VARCHAR(4) NULL,
zipCode VARCHAR(10) NULL,
createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
lockedInd INT DEFAULT 0,
PRIMARY KEY (userId) 
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
recipeName VARCHAR(255) NULL,
recipeDesc VARCHAR(255) NOT NULL,
styleName VARCHAR(255) NULL,
alcoholByVolume DECIMAL(10,2) NULL,
SG DECIMAL(8,4) NULL,
FG DECIMAL(8,4) NULL,
IBU INTEGER NULL,
upvotes INT DEFAULT 0,
hashtags TEXT,
recipeDirections TEXT NULL,
recipeComments TEXT NULL,
pictureUrl VARCHAR(1000),
userId INT NOT NULL,
createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (recipeId)
);

CREATE TABLE recipe_ingredients
(
recipeIngredientsId int NOT NULL AUTO_INCREMENT,
recipeId INT NOT NULL,
ingredientsId INT NOT NULL,
ingredientsQty DECIMAL(8,4) NOT NULL,
ingredientsQtyDesc VarCHar(255) NULL,
ingredientName VarCHar(255) NULL,
createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (recipeIngredientsId),
FOREIGN KEY fk_recipe(recipeId)
	REFERENCES recipe(recipeId)
	ON DELETE RESTRICT,
FOREIGN KEY fk_recipe_ingredients(ingredientsId)
	REFERENCES ingredients(ingredientsId)
	ON DELETE RESTRICT    
);









