const express = require('express');
const router = express.Router();

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
router.post('api/beer/add',function(req,res){
    beer.insertOne()
})


//reurns all beers as a json object
router.get('/api/recipes/all', function(req,res){
  beer.getAllBeers(function(data){
      res.json(data);
  })
});

//returns a single beer and its ingredients
router.get('/recipe/:id',function(req,res){
    beer.selectOneBeer([req.params.id], function(data){
        let recipeIngred = [];

        //checks to see if ingredients are present
        for (let i = 0; i <data.length; i ++){
            if(data[i].recipeIngredientsId !== null){
                let ingred = {
                    iId: data[i].recipeIngredientsId,
                    iQty: data[i].ingredientsQty,
                    iDesc: data[i].ingredientsQtyDesc
                }
                recipeIngred.push(ingred);
            }
        }
        
        //handlebars object creation
        var hbsObject = {
            recipeId: data[0].recipeId,
            recipeName: data[0].recipeName,
            styleName: data[0].styleName,
            recipeDesc: data[0].recipeDesc,
            recipeHashtags: data[0].hashtags,
            picUrl: data[0].pictureUrl,
            recipeStyleId: data[0].recipeStyleId,
            alcoholByVolume: data[0].alcoholByVolume,
            SG: data[0].SG,
            FG: data[0].FG,
            IBU: data[0].IBU,
            upvotes: data[0].upvotes,
            recipeDirections: data[0].recipeDirections,
            recipeComments: data[0].recipeComments,
            recipeIngred: recipeIngred
          };
        
        //renders singlebeer page
        console.log(hbsObject);
        res.render('singlebeer', hbsObject);
    });
});



module.exports = router;