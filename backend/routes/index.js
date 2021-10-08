var express = require('express');
var router = express.Router();
var dataModel = require('../models/data-model.js');

/*
function getAnnouncements(req, res, next) {
  req.announce = {};
  dataModel.readTable("announce", function(data) {
    req.announce = data;
    next();
  });
}

function getItems(req, res, next) {
  req.items = {};
  dataModel.readTable("items", function(data) {
    Object.keys(data).forEach(function (id) {
      let price = data[id].price;
      if (price % 100) {           
        price = (parseInt(price) / 100).toFixed(2);      
      } else {
        price = (parseInt(price) / 100);       
      }
      data[id].price = price;
    });
    req.items = data;
    next();
  });
}

function getEvents(req, res, next) {
  dataModel.readTable("events", function (data) {
    req.events = data;
    next();
  });
}

function getMotd(req, res, next) {
  dataModel.readTable("motd", function (data) {
    req.motd = data;
    next();
  });
}
*/

function getUsers(req, res, next) {
  dataModel.readTable("user_info", function (data) {
    req.motd = data;
    next();
  });
}

/* Fetch data, render homepage                                            */

function renderPage(req, res) {
  res.render('index', {
    pagetitle: "SA-IMD",
//    announcements: req.announce,
//    items: req.items,
//    events: req.events,
//    motd: req.motd
    users: req.users
  });
}


/* GET home page. 
router.get('/', function(req, res, next) {
  res.render('index', { title: 'SA-IMD' });
});
*/


router.get('/',
//  getAnnouncements, 
//  getItems, 
//  getEvents, 
  getUsers,
  renderPage
);


module.exports = router;
