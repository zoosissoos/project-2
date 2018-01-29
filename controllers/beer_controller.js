const express = require('express');

const router = express.Router();


router.get('/', function(req, res) {
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

module.exports = router;