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
router.post('api/beer/add',function(req,res){
    beer.insertOne()
})


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
        let recipeIngred = [];
        for (let i = 0; i <data.length; i ++){
            let ingred = {
            iId: data[i].recipeIngredientsId,
            iQty: data[i].ingredientsQty,
            iDesc: data[i].ingredientsQtyDesc
        }
            recipeIngred.push(ingred);
        }
    
        var hbsObject = {
            recipeId: data[0].recipeId,
            recipeName: data[0].recipeName,
            recipeDesc: data[0].recipeDesc,
            recipeStyleId: data[0].recipeStyleId,
            alcoholByVolume: data[0].alcoholByVolume,
            SG: data[0].SG,
            OG: data[0].OG,
            upvotes: data[0].upvotes,
            recipeDirections: data[0].recipeDirections,
            recipeComments: data[0].recipeComments,
            recipeIngred: recipeIngred
          };
        
        console.log(hbsObject);
        res.render('singlebeer', hbsObject);
    });
});

module.exports = router;