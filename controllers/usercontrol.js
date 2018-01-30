const express = require('express');
const router = express.Router();

const db = require('../config/connection.js');

const beer = require('../models/beer.js'); 

router.get('/add', function(req, res) {

  var hbsObject = {
      loggedIn: true
  }

  res.render('add', hbsObject);
})

router.get('/', function(req, res) {
  res.render('greeting');
})

router.get('/index', function(req, res) {
  res.render('index');
})

router.get('/signup', function(req, res) {
  res.render('signup');
})

router.post("/api/user/create", function(req, res) {
  console.log(req.body);
  db.query("CALL insertUser(?,?,?,?,?,?,?,?,?)", [req.body.userName, req.body.firstName, req.body.lastName, req.body.password, req.body.address,req.body.email, req.body.city, req.body.state, req.body.zipCode
  ])
});


module.exports = router;