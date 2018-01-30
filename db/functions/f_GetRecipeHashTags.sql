DELIMITER //
DROP FUNCTION IF EXISTS f_GetRecipeHashtags //
CREATE FUNCTION f_GetRecipeHashtags(p_recipeId INT) RETURNS TEXT
BEGIN


	DECLARE v_hashtags TEXT;

	SELECT GROUP_CONCAT(H.hashTagText SEPARATOR ', ') INTO v_hashtags
	FROM recipe R 
    INNER JOIN recipe_hashtag RH
		ON RH.recipeId = R.recipeId
    INNER JOIN hashtag H
		ON H.hashTagId = RH.hashTagID
    WHERE R.recipeId = p_recipeId
    GROUP BY R.recipeId;
    
    RETURN v_hashtags;

END//