var express = require('express');
var router = express.Router();
var dataModel = require('../models/data-model.js');


/* GET users listing. */
router.get('/', function(req, res, next) {
  dataModel.readTable("user_info", function(data){
    Object.keys(data).forEach(function(id){
//      data[id].id = ;
//      data[id].name = ;
//      data[id].pwd = ;
    });
    res.render('users', { pagetitle: 'User Information', items: data });
  });
//  res.render('users');
});

module.exports = router;
