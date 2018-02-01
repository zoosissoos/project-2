
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
"Beer1",
"This is a test - 1",
"one",
40,
2.089,
1.3456,
111,
10,
"#cool,#awesome,#tasty",
"do some stuff - 1",
"This is a cool recipe - 1",
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
"Beer2",
"This is a test - 2",
"two",
40,
3.089,
2.3456,
222,
10,
"#cool,#awesome,#tasty",
"do some stuff - 2",
"This is a cool recipe - 2",
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
"Beer1",
"This is a test - 3",
"three",
40,
5.089,
4.3456,
123,
10,
"#cool,#awesome,#tasty",
"do some stuff - 3",
"This is a cool recipe - 3",
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
"Beer1",
"This is a test - 4",
"four",
40,
2.089,
1.3456,
111,
10,
"#cool,#awesome,#tasty",
"do some stuff - 4",
"This is a cool recipe - 4",
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
"Beer1",
"This is a test - 5",
"five",
40,
2.089,
1.3456,
331,
10,
"#cool,#awesome,#tasty",
"do some stuff - 5",
"This is a cool recipe - 5",
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
"Beer1",
"This is a test - 6",
"six",
40,
2.089,
1.3456,
111,
10,
"#wow,#tasty,#stout",
"do some stuff - 6",
"This is a cool recipe - 6",
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
"Beer1",
"This is a test - 7",
"seven",
40,
2.089,
1.3456,
111,
10,
"#I love summer",
"do some stuff - 7",
"This is a cool recipe - 7",
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
"Beer1",
"This is a test - 8",
"eight",
40,
2.089,
1.3456,
111,
10,
"#yummy",
"do some stuff - 8",
"This is a cool recipe - 8",
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
"Beer1",
"This is a test - 9",
"nine",
40,
2.089,
1.3456,
111,
10,
"#cool,#awesome,#tasty",
"do some stuff - 9",
"This is a cool recipe - 9",
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
"Beer1",
"This is a test - 10",
"ten",
40,
2.089,
1.3456,
111,
10,
"#I love winter",
"do some stuff - 10",
"This is a cool recipe - 10",
"https://i.imgur.com/whKgsmE.jpg",
1
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





