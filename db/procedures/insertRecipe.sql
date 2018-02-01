USE beers;
DROP PROCEDURE IF EXISTS insertRecipe;

DELIMITER //
 
CREATE PROCEDURE `insertRecipe`(
								IN p_recipeName VarChar(255), 
								IN p_recipeDesc VarChar(255), 
                                IN p_styleName VarChar(255), 
                                IN p_alcoholByVolume DECIMAL(10,2),
                                IN p_SG DECIMAL(8,4),
                                IN p_FG DECIMAL(8,4),
                                IN p_IBU INT,
                                IN p_hashtags VarChar(1000),
								IN p_recipeDirections TEXT,
                                IN p_recipeComments TEXT,
								IN p_pictureURL VarChar(1000),
                                IN p_userId INT
							 )
BEGIN



	DECLARE v_recipeId INT DEFAULT 0;


	INSERT INTO recipe(
	recipeName,
	recipeDesc,
	styleName,
	alcoholByVolume,
	SG,
	FG,
    IBU,
    hashtags,
	recipeDirections,
	recipeComments,
    pictureUrl,
    userId
	)

	VALUES(
	p_recipeName,
	p_recipeDesc,
	p_styleName,
	p_alcoholByVolume,
	p_SG,
	p_FG,
    p_IBU,
    p_hashtags,
	p_recipeDirections,
	p_recipeComments,
    p_pictureURL,
    p_userId
	);

	SET v_recipeId = LAST_INSERT_ID();

	SELECT v_recipeId as recipeId;

END//