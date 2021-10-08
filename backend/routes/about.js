var express = require('express');
var router = express.Router();
var dataModel = require('../models/data-model.js');


router.get('about', function(req, res, next) {
//  res.render('about', { pagetitle: 'About SA-IMD' });
dataModel.readTable("user_info", function(data) {
    console.log(data);
  });
//  res.render('users', { pagetitle: 'User Information', items: data });
  res.render('about', { pagetitle: 'User Information', items: data });
});

module.exports = router;


const sqlite3 = require('sqlite3').verbose();

let db = new sqlite3.Database(__dirname + '../database/PYLONV3.db');
sqlite3.OPEN_READWRITE, (err) => {
  if (err) {
    console.error (err.message);
  }
  console.log('connected to PYLONV3.db');
};

db.serialize(() => {
  db.each('SELECT userId as id, Name as name FROM user_info', (err, row) => {
    if (err) {
      console.error(err.message);
    }
    console.log(row.id + "\t" + row.name);
  });
});

db.close((err) => {
  if (err) {
    console.error(err.message);
  }
  console.log('close the database connection. ');
});

