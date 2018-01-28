const express = require('express');

const router = express.Router();


router.get('/', function(req, res) {
    console.log("hi")
    res.render('index');
})

router.get('/add', function(req, res) {
    console.log("Hi")
    res.render('add');
})

router.get('/search', function(req, res) {
    console.log("Hi")    
    res.render('search');
})

router.get('/beer', function(req, res) {
    console.log("Hi")    
    res.render('singlebeer');
})

module.exports = router;