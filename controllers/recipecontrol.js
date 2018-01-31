const express = require('express');
const router = express.Router();

const db = require('../config/connection.js');

const beer = require('../models/beer.js'); 


router.get('/search', function(req, res) {

  res.render('search');
})

router.get('/api/recipes/all', function(req,res){
  beer.getAllBeers(function(data){
      res.json(data);
  })
})

router.get('/recipe/:id',function(req,res){
    beer.selectOneBeer([req.params.id], function(data){
        console.log(data);
        res.render('singlebeer', data);
    });
});

router.get('/beer', function(req, res) {

  var beerObject = {
      name: 'Beer1',
      route: 'beer 1',
      username: 'username',
      description: 'a beer',
      type: 'IPA',
      ingredients: {
          yeasts: ['yeast'],
          hops: ['hops'],
          grains: ['grain'],
          adjuncts: ['adjunct']
      },
      directions: "some directions",
      sg: '5%',
      eg: '4%',
      abv: '3%',
      ibu: '2%',
      upvotes: 10,
      hashtags: ['hashtag1', 'hashtag2', 'hashtag3']
  }

  hbsObject = {
      beerObject,
  }

  res.render('singlebeer', beerObject);
})

router.get('/user', function(req, res) {

  var user = {
      username: 'username',
      favorites: [
          {
              name: 'favorite beer 1',
              route: '/beers/favoritebeer1'
          },
          {
              name: 'favorite beer 2',
              route: '/beers/favoritebeer2'
          }
      ]
  }

  // demonstration beers retrieved from get request
  var beer1 = {
      name: 'Beer1',
      route: 'beer 1',
      username: 'username',
      description: 'a beer',
      type: 'IPA',
      ingredients: {
          yeasts: ['yeast'],
          hops: ['hops'],
          grains: ['grain'],
          adjuncts: ['adjunct']
      },
      directions: "some directions",
      sg: '5%',
      eg: '4%',
      abv: '3%',
      fbu: '2%',
      upvotes: 10,
      hashtags: ['hashtag1', 'hashtag2', 'hashtag3']
  }

  var beer2 = {
      name: 'Beer2',
      route: 'beer 2',
      username: 'username',
      description: 'a beer',
      type: 'IPA2',
      ingredients: {
          yeasts: ['yeast'],
          hops: ['hops'],
          grains: ['grain'],
          adjuncts: ['adjunct']
      },
      directions: "some directions",
      sg: '5%',
      eg: '4%',
      abv: '3%',
      fbu: '2%',
      upvotes: 10,
      hashtags: ['hashtag1', 'hashtag2', 'hashtag3']
  }

  user.email = 'email'
  user.city = 'city'
  user.state = 'state'
  user.beers = [beer1, beer2]

  console.log(user);
  res.render('userprofile', user);
})

module.exports = router;