'use strict';
var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function (req, res) {
    const database_url = process.env.DATABASE_URL
    res.render('index', { title: 'Express', database_url: database_url });
});

module.exports = router;
