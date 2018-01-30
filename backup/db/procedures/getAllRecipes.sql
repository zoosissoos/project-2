
DROP PROCEDURE IF EXISTS getAllRecipes;

DELIMITER //

CREATE PROCEDURE `getAllRecipes`()
BEGIN

SELECT 
	R.recipeId,
	R.recipeDesc,
	R.recipeStyleId,
	RS.recipeStyleDesc,
	R.alcoholByVolume,
	R.SG,
	R.OG,
	R.upvotes,
	R.recipeDirections,
	R.recipeComments,
	R.otherComments,
	R.userComments,
    f_GetRecipeHashtags(R.recipeId) AS hashtags



FROM recipe R
INNER JOIN reciprStyle RS
ON R.recipeStyleId = RS.recipeStyleId
ORDER BY R.recipeId;

END//

