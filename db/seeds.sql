
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
"testuser",
"test",
"user",
"password",
"1313 Mockingbird Lane",
"test@test.com",
"Somerset",
"NJ",
"08873"
);


INSERT INTO recipe_style(
recipeStyleDesc
)
VALUES(
"Pale Ale"
);

INSERT INTO recipe_style(
recipeStyleDesc
)
VALUES(
"Old Ale"
);

INSERT INTO recipe_style(
recipeStyleDesc
)
VALUES(
"Strong Ale"
);

INSERT INTO recipe_style(
recipeStyleDesc
)
VALUES(
"Scotch Ale"
);

INSERT INTO recipe_style(
recipeStyleDesc
)
VALUES(
"Imperial Stout"
);

INSERT INTO recipe_style(
recipeStyleDesc
)
VALUES(
"Barley Wine Ale"
);

INSERT INTO recipe_style(
recipeStyleDesc
)
VALUES(
"Robust Porter"
);


INSERT INTO recipe_style(
recipeStyleDesc
)
VALUES(
"Brown Porter"
);

INSERT INTO recipe_style(
recipeStyleDesc
)
VALUES(
"Sweet Stout"
);

INSERT INTO recipe_style(
recipeStyleDesc
)
VALUES(
"Oatmeal Stout"
);




INSERT INTO ingredients(
ingredientsType,
ingredientsDesc
)
VALUES(
"grains/malts",
"grains/malts"
);

INSERT INTO ingredients(
ingredientsType,
ingredientsDesc
)
VALUES(
"yeast",
"yeast"
);

INSERT INTO ingredients(
ingredientsType,
ingredientsDesc
)
VALUES(
"adjuncts",
"adjuncts"
);

INSERT INTO ingredients(
ingredientsType,
ingredientsDesc
)
VALUES(
"hops",
"hops"
);

insert into recipe(

recipeDesc,
recipeStyleId,
alcoholByVolume,
SG,
OG,
upvotes,
recipeDirections,
recipeComments
)

VALUES(
"This is a test",
1,
40,
2.089,
1.3456,
10,
"do some stuff",
"This is a cool recipe"
);

insert into recipe(

recipeDesc,
recipeStyleId,
alcoholByVolume,
SG,
OG,
upvotes,
recipeDirections,
recipeComments
)

VALUES(
"This is a test 2",
2,
40,
2.095,
1.2356,
10,
"do some stuff",
"This is a cool recipe"
);

insert into recipe(

recipeDesc,
recipeStyleId,
alcoholByVolume,
SG,
OG,
upvotes,
recipeDirections,
recipeComments
)

VALUES(
"This is a test",
1,
20,
1.02,
1.3,
12,
"do some stuff",
"This is a cool recipe"
);

INSERT INTO user_recipes(
userId,
recipeId
)

VALUES(
1,
1
);

INSERT INTO user_recipes(
userId,
recipeId
)

VALUES(
1,
2
);

INSERT INTO user_recipes(
userId,
recipeId
)

VALUES(
1,
3
);


insert into hashtag(
hashTagText,
hashTagDesc
)
VALUES(
"#HelloBeer",
"Hi Beer"
);

insert into hashtag(
hashTagText,
hashTagDesc
)
VALUES(
"#Summer",
"I love Summer"
);

insert into hashtag(
hashTagText,
hashTagDesc
)
VALUES(
"#Winter",
"I love Winter"
);


insert into recipe_hashtag(
recipeId,
hashTagId
)

VALUES(
1,
1
);

insert into recipe_hashtag(
recipeId,
hashTagId
)

VALUES(
1,
2
);

insert into recipe_hashtag(
recipeId,
hashTagId
)

VALUES(
1,
3
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc
)

VALUES(
1,
1,
5,
"Cups"
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc
)

VALUES(
1,
2,
3,
"Tablespoons"
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc
)

VALUES(
1,
3,
10,
"Pounds"
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc
)

VALUES(
1,
4,
1,
"pinch"
);





