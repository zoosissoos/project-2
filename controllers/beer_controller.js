const express = require('express');
const passport = require('passport'), 
    LocalStrategy = require('passport-local').Strategy;

const db = require('../config/connection.js');

const router = express.Router(); 

router.get('/', function(req, res) {
    res.render('greeting');
})

router.get('/login', function(req, res) {
    res.render('login');
})

router.post('/login',
  passport.authenticate('local', { successRedirect: '/index',
                                   failureRedirect: '/login',
                                   failureFlash: true })
);

router.get('/signup', function(req, res) {
    res.render('signup');
})

router.get('/index', function(req, res) {
    res.render('index');
})

router.get('/add', function(req, res) {
    console.log("Hi")    
    res.render('add');
})

router.get('/search', function(req, res) {
    res.render('search');
})

router.get('/beer', function(req, res) {
    console.log("Hi")
    res.render('singlebeer');
})

router.get('/user', function(req, res) {
    console.log("Hi")    
    res.render('userprofile');
})

router.post("/api/user/create", function(req, res) {
    console.log(req.body);
    db.query("CALL insertUser(?,?,?,?,?,?,?,?,?)", [req.body.userName, req.body.firstName, req.body.lastName, req.body.password,req.body.email, req.body.address, req.body.city, req.body.state, req.body.zipCode
    ]).then(function() {
      res.redirect(307, `/user/${p_userName}`);
    }).catch(function(err) {
      console.log(err);
      res.json(err);
    });
  });

module.exports = router;