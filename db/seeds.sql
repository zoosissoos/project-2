
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
recipeName,
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
"Beer1",
"This is a test - 1",
1,
40,
2.089,
1.3456,
10,
"do some stuff - 1",
"This is a cool recipe - 1"
);


insert into recipe(
recipeName,
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
"Beer2",
"This is a test - 2",
2,
40,
2.095,
1.2356,
10,
"do some stuff - 2",
"This is a cool recipe - 2"
);

insert into recipe(
recipeName,
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
"Beer3",
"This is a test - 3",
1,
20,
1.02,
1.3,
12,
"do some stuff - 3",
"This is a cool recipe - 3"
);

insert into recipe(
recipeName,
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
"Beer4",
"This is a test - 4",
1,
11,
1.34,
1.57,
14,
"do some stuff - 4",
"This is a cool recipe - 4"
);

insert into recipe(
recipeName,
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
"Beer5",
"This is a test - 5",
1,
7.5,
1.87,
2.12,
7,
"do some stuff - 5",
"This is a cool recipe - 5"
);

insert into recipe(
recipeName,
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
"Beer6",
"This is a test - 6",
1,
5.5,
0.89,
1.12,
22,
"do some stuff - 6",
"This is a cool recipe - 6"
);

insert into recipe(
recipeName,
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
"Beer7",
"This is a test - 7",
1,
8,75,
2.43,
2.87,
4,
"do some stuff - 7",
"This is a cool recipe - 7"
);

insert into recipe(
recipeName,
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
"Beer8",
"This is a test - 8",
1,
4.55,
0.99,
1.09
24,
"do some stuff - 8",
"This is a cool recipe - 8"
);

insert into recipe(
recipeName,
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
"Beer9",
"This is a test - 9",
1,
6.5,
1.54,
1.75,
26,
"do some stuff - 9",
"This is a cool recipe - 9"
);

insert into recipe(
recipeName,
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
"Beer10",
"This is a test - 10",
1,
7.55,
1.01,
1.11,
34,
"do some stuff - 10",
"This is a cool recipe - 10"
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

INSERT INTO user_recipes(
userId,
recipeId
)

VALUES(
1,
4
);

INSERT INTO user_recipes(
userId,
recipeId
)

VALUES(
1,
5
);

INSERT INTO user_recipes(
userId,
recipeId
)

VALUES(
1,
6
);

INSERT INTO user_recipes(
userId,
recipeId
)

VALUES(
1,
7
);

INSERT INTO user_recipes(
userId,
recipeId
)

VALUES(
1,
8
);

INSERT INTO user_recipes(
userId,
recipeId
)

VALUES(
1,
9
);

INSERT INTO user_recipes(
userId,
recipeId
)

VALUES(
1,
10
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

insert into hashtag(
hashTagText,
hashTagDesc
)
VALUES(
"#Lager",
"I love Lager"
);

insert into hashtag(
hashTagText,
hashTagDesc
)
VALUES(
"#Porter",
"I love Porter"
);

insert into hashtag(
hashTagText,
hashTagDesc
)
VALUES(
"#Stout",
"I love Stout"
);

insert into hashtag(
hashTagText,
hashTagDesc
)
VALUES(
"#Dunkel",
"I love Dunkel"
);

insert into hashtag(
hashTagText,
hashTagDesc
)
VALUES(
"#Tripel",
"I love Tripel"
);

insert into hashtag(
hashTagText,
hashTagDesc
)
VALUES(
"#Cider",
"I love Cider"
);

insert into hashtag(
hashTagText,
hashTagDesc
)
VALUES(
"#Gose",
"I love Gose"
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

insert into recipe_hashtag(
recipeId,
hashTagId
)

VALUES(
1,
4
);

insert into recipe_hashtag(
recipeId,
hashTagId
)

VALUES(
1,
5
);

insert into recipe_hashtag(
recipeId,
hashTagId
)

VALUES(
1,
6
);

insert into recipe_hashtag(
recipeId,
hashTagId
)

VALUES(
1,
7
);

insert into recipe_hashtag(
recipeId,
hashTagId
)

VALUES(
1,
8
);

insert into recipe_hashtag(
recipeId,
hashTagId
)

VALUES(
1,
9
);

insert into recipe_hashtag(
recipeId,
hashTagId
)

VALUES(
1,
10
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





