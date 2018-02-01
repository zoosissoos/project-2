const express = require('express');
const router = express.Router();
const _ = require('lodash');

const db = require('../config/connection.js');

const beer = require('../models/beer.js'); 



//route for search page
router.get('/search', function(req, res) {
  res.render('search');
});

//route for add page
router.get('/beer/add',function(req,res){
    res.render('add');
});

//adds beer to database
router.post('/api/beer/add',function(req,res){
    beer.callInsertSP([req.body.recipeName, 
                        req.body.recipeDesc,
                        req.body.styleName,
                        req.body.alcoholByVolume,
                        req.body.SG,
                        req.body.FG,
                        req.body.IBU,
                        req.body.recipeHashtags,
                        req.body.recipeDirections,
                        req.body.recipeComments,
                        req.body.picUrl,
                        req.body.userId,], function(result) {
    //console.log(result[0][0].recipeId);
    console.log("result");
    console.log(result);
    //var insertedId = result[0][0].recipeId;
    //res.end();
    //res.redirect(`/recipe/${insertedId}`);
    //res.send(result[0][0].recipeId);

    


    // for (let i = 0; i <req.body.recipeIngred.length; i ++){
    //     if(req.body.recipeIngred[i].iId !== null){

    //         beer.create([
    //             "recipeId", 
    //             "ingredientsId",
    //             "ingredientsQty",
    //             "ingredientsQtyDesc",
    //             "ingredientName"
    //         ], 
    //         [
    //             insertedId,
    //             req.body.recipeIngred[i].iQty, 
    //             req.body.recipeIngred[i].iDesc, 
    //             req.body.recipeIngred[i].specificName
    //             //req.body.recipeIngred[i].iId, 
    //         ], function(result) {

    //             res.end();

    //         });

    //     }
    // }


    res.redirect(`/rasdfsadf`);
});
});
// IN p_recipeName VarChar(255), 
// IN p_recipeDesc VarChar(255), 
// IN p_styleName VarChar(255), 
// IN p_alcoholByVolume DECIMAL(10,2),
// IN p_SG DECIMAL(8,4),
// IN p_FG DECIMAL(8,4),
// IN p_IBU INT,
// IN p_hashtags VarChar(1000),
// IN p_recipeDirections TEXT,
// IN p_recipeComments TEXT,
// IN p_pictureURL VarChar(1000),
// IN p_userId INT


//reurns all beers as a json object
router.get('/api/recipes/all', function(req,res){
  beer.getAllBeers(function(data){
      console.log(data[0]);

        var sorted = _.orderBy(data[0], ['upvotes'], ['desc']);
        console.log(sorted)

      res.json(sorted);
  })
});

//returns a single beer and its ingredients
router.get('/recipe/:id',function(req,res){
    beer.selectOneBeer([req.params.id], function(data){
        let grains = [];
        let hops = [];
        let yeasts = [];
        let adjuncts = [];

        //checks to see if ingredients are present
        for (let i = 0; i <data.length; i ++){
            if(data[i].recipeIngredientsId !== null){
                let ingred = {
                    iId: data[i].ingredientsId,
                    iName: data[i].ingredientName,
                    iQty: data[i].ingredientsQty,
                    iDesc: data[i].ingredientsQtyDesc
                }
                //delegates ingredient to approp class
                if(ingred.iId === 1){
                    grains.push(ingred);
                }else if(ingred.iId === 2){
                    yeasts.push(ingred);
                }else if(ingred.iId === 3){
                    adjuncts.push(ingred);
                }else if(ingred.iId === 4){
                    hops.push(ingred);
                }
            }
        }

        let hashArray = (data[0].hashtags).split(",");

        
        
        //handlebars object creation
        var hbsObject = {
            recipeId: data[0].recipeId,
            recipeName: data[0].recipeName,
            styleName: data[0].styleName,
            recipeDesc: data[0].recipeDesc,
            recipeHashtags: hashArray,
            picUrl: data[0].pictureUrl,
            ABV: data[0].alcoholByVolume,
            SG: data[0].SG,
            FG: data[0].FG,
            IBU: data[0].IBU,
            upvotes: data[0].upvotes,
            recipeDirections: data[0].recipeDirections,
            recipeComments: data[0].recipeComments,
            grains: grains,
            hops: hops,
            yeasts: yeasts,
            adjuncts: adjuncts
          };
        
        //renders singlebeer page
        console.log(hbsObject);
        res.render('singlebeer', hbsObject);
    });
});



module.exports = router;