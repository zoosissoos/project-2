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
recipeName VARCHAR(255) NULL,
recipeDesc VARCHAR(255) NOT NULL,
recipeStyleId INT NOT NULL,
alcoholByVolume DECIMAL(10,2) NULL,
SG DECIMAL(8,4) NULL,
OG DECIMAL(8,4) NULL,
upvotes INT DEFAULT 0,
recipeDirections TEXT NULL,
recipeComments TEXT NULL,
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

CREATE TABLE recipe_hashtag
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


CREATE TABLE user_recipes
(
userRecipeId int NOT NULL AUTO_INCREMENT,
userId Int NOT NULL,
recipeId Int NOT NULL,
activeInd INT DEFAULT 1 NOT NULL,
createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (userRecipeId),
FOREIGN KEY fk_user_recipes_recipe(recipeId)
	REFERENCES recipe(recipeId)
	ON DELETE RESTRICT,
FOREIGN KEY fk_user_recipes_user(userId)
	REFERENCES user_info(userId)
	ON DELETE RESTRICT     
);


