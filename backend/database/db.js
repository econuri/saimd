var sqlite3 = require('sqlite3').verbose();

var db = new sqlite3.Database('./PYLONV3.db');

sqlite3.OPEN_READWRITE, (err) => {
    if (err) {
        console.error(err.message);
    }
    console.log('DB connecion success !!!')
        
}


module.exports = db;

