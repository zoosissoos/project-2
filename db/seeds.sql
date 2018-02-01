
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
"JimmyHops",
"Jimmy",
"Johnsen",
"password",
"1313 Mockingbird Lane",
"Jimmy@test.com",
"Somerset",
"NJ",
"08873"
);

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
"BREWboy123",
"John",
"Patrick",
"password",
"1500 Mockingbird Lane",
"BrewBoy@test.com",
"Freehold",
"NJ",
"07728"
);



insert into recipe(
recipeName,
recipeDesc,
styleName,
alcoholByVolume,
SG,
FG,
IBU,
upvotes,
hashtags,
recipeDirections,
recipeComments,
pictureURL,
userId
)

VALUES(
"Boggy Ale",
"A beer on a hot summer day. Best with mowing the lawn.",
"American Ale",
4.5,
1.010,
1.05,
20,
10,
"#cool,#awesome,#tasty",
"This is where the recipe goes.",
"I brewed this the other day and had a great time!",
"https://i.imgur.com/nN3CmtP.jpg",
1
);

insert into recipe(
recipeName,
recipeDesc,
styleName,
alcoholByVolume,
SG,
FG,
IBU,
upvotes,
hashtags,
recipeDirections,
recipeComments,
pictureURL,
userId
)

VALUES(
"Winter is Coming",
"A beer for Mr. Snow",
"Winter Ale",
8,
1.150,
1.08,
40,
30,
"#cool,#awesome,#tasty",
"This is where the recipe goes.",
"Olly does not deserve this beer.",
"https://i.imgur.com/QPxKyUN.jpg",
1
);


insert into recipe(
recipeName,
recipeDesc,
styleName,
alcoholByVolume,
SG,
FG,
IBU,
upvotes,
hashtags,
recipeDirections,
recipeComments,
pictureURL,
userId
)

VALUES(
"Brown Doge Bacon Ale",
"A beer to read dank memes with.",
"Porter",
12,
1.300,
1.150,
20,
15,
"#wow,#suchtasty,#muchbacon",
"This is where the recipe goes",
"Thanks, I too know da wae.",
"https://i.imgur.com/whKgsmE.jpg",
1
);

insert into recipe(
recipeName,
recipeDesc,
styleName,
alcoholByVolume,
SG,
FG,
IBU,
upvotes,
hashtags,
recipeDirections,
recipeComments,
pictureURL,
userId
)

VALUES(
"F20-ALE",
"A sesssionable beer for camping out in the woods",
"IPA",
5,
1.050,
1.02,
60,
10,
"#citrus,#ipa,#citra",
"do some stuff - 4",
"Great recipe. I'll be making this soon!",
"https://i.imgur.com/PKDP9QO.jpg",
1
);

insert into recipe(
recipeName,
recipeDesc,
styleName,
alcoholByVolume,
SG,
FG,
IBU,
upvotes,
hashtags,
recipeDirections,
recipeComments,
pictureURL,
userId
)
 
VALUES(
"Jimmy's Beer",
"Jimmy don gon goofed",
"Ale",
3,
1.05,
1.03,
30,
0,
"#awful,#mistake,#donottry",
"Recipe goes here.",
"This is the worst thing I have ever tasted",
"https://i.imgur.com/HP4PNwk.jpg",
1
);


insert into recipe(
recipeName,
recipeDesc,
styleName,
alcoholByVolume,
SG,
FG,
IBU,
upvotes,
hashtags,
recipeDirections,
recipeComments,
pictureURL,
userId
)

VALUES(
"Forrest Whittaker Oktoberfest",
"This is best served with some bratwurst",
"Marzen",
4,
1.050,
1.020,
17,
30,
"#wow,#tasty,#stout",
"This is the recipe",
"I brewed this while listening to some polka!",
"http://i.imgur.com/6YFIuWB.jpg",
1
);

insert into recipe(
recipeName,
recipeDesc,
styleName,
alcoholByVolume,
SG,
FG,
IBU,
upvotes,
hashtags,
recipeDirections,
recipeComments,
pictureURL,
userId
)

VALUES(
"Hello World Ale",
"A great beer to brew for the beginner homebrewer.",
"American Ale",
10,
1.100,
1.030,
35,
10,
"#starter,#firstbeer,#easy",
"Recipe goes here",
"I taught this to my 2 year old! It was so easy!",
"http://i.imgur.com/flDRWea.jpg",
1
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc,
ingredientName
)

VALUES(
1,
4,
3,
"Oz",
"Citra"
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc,
ingredientName
)

VALUES(
1,
4,
3,
"Oz",
"Mosaic"
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc,
ingredientName
)

VALUES(
1,
1,
3,
"Pounds",
"Golden Promise"
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc,
ingredientName
)

VALUES(
2,
1,
5,
"Pounds",
"Golden Promise"
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc,
ingredientName
)

VALUES(
3,
1,
3,
"Pounds",
"Chocolate Malt"
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc,
ingredientName
)

VALUES(
4,
1,
3,
"Pounds",
"Wheat"
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc,
ingredientName
)

VALUES(
5,
1,
3,
"Pounds",
"Rye"
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc,
ingredientName
)

VALUES(
6,
1,
3,
"Pounds",
"Pale Malt"
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc,
ingredientName
)

VALUES(
7,
1,
3,
"Pounds",
"Golden Promise"
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc,
ingredientName
)

VALUES(
1,
2,
1,
"Oz",
"WLP002 English Ale Yeast"
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc,
ingredientName
)

VALUES(
2,
2,
1,
"Oz",
"WLP002 English Ale Yeast"
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc,
ingredientName
)

VALUES(
3,
2,
1,
"Oz",
"WLP003 German Ale II Yeast"
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc,
ingredientName
)

VALUES(
4,
2,
1,
"Oz",
"WLP008 East Coast Ale Yeast"
);


insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc,
ingredientName
)

VALUES(
5,
2,
1,
"Oz",
"WLP008 East Coast Ale Yeast"
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc,
ingredientName
)

VALUES(
6,
2,
1,
"Oz",
"WLP008 East Coast Ale Yeast"
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc,
ingredientName
)

VALUES(
7,
2,
1,
"Oz",
"WLP008 East Coast Ale Yeast"
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc,
ingredientName
)

VALUES(
2,
4,
3,
"Oz",
"Citra"
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc,
ingredientName
)

VALUES(
2,
4,
3,
"Oz",
"Mosaic"
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc,
ingredientName
)

VALUES(
3,
4,
3,
"Oz",
"Citra"
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc,
ingredientName
)

VALUES(
3,
4,
3,
"Oz",
"Mosaic"
);


insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc,
ingredientName
)

VALUES(
5,
4,
3,
"Oz",
"Apollo"
);

insert into recipe_ingredients(
recipeId,
ingredientsId,
ingredientsQty,
ingredientsQtyDesc,
ingredientName
)

VALUES(
5,
4,
3,
"Oz",
"Mosaic"
);
