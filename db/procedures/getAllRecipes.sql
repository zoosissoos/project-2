USE beers;
DROP PROCEDURE IF EXISTS getAllRecipes;

DELIMITER //

CREATE PROCEDURE `getAllRecipes`()
BEGIN

SELECT 
	R.recipeId,
	R.recipeName,
	R.recipeDesc,
	R.styleName,
	R.alcoholByVolume,
	R.SG,
	R.FG,
    R.IBU,
	R.upvotes,
    R.hashtags,
	R.recipeDirections,
	R.recipeComments,
    R.pictureURL,
    R.userId,
    U.username

 

FROM recipe R
LEFT JOIN user_info U 
ON R.userId = U.userId
ORDER BY R.recipeId;

END//


