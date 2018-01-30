const express = require('express');
const router = express.Router();

const db = require('../config/connection.js');

const beer = require('../models/beer.js'); 

router.get('/', function(req, res) {
    res.render('greeting');
})

router.get('/login', function(req, res) {
    res.render('login');
})


router.get('/signup', function(req, res) {
    res.render('signup');
})

router.get('/index', function(req, res) {
    res.render('index');
})

router.get('/add', function(req, res) {

    var hbsObject = {
        loggedIn: true
    }

    res.render('add', hbsObject);
})

router.get('/api/recipes/all', function(req,res){
    beer.getAllBeers(function(data){
        console.log(data);
        //res.JSON(data);
        res.redirect("/");
    })
})

router.get('/search', function(req, res) {

    res.render('search');
})

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
        userObject
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

router.post("/api/user/create", function(req, res) {
    console.log(req.body);
    db.query("CALL insertUser(?,?,?,?,?,?,?,?,?)", [req.body.userName, req.body.firstName, req.body.lastName, req.body.password, req.body.address,req.body.email, req.body.city, req.body.state, req.body.zipCode
    ])
  });


  

module.exports = router;