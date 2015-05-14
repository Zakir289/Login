/**
 * Created by zakirelahi on 13/05/15.
 */



var Bookshelf = require('bookshelf');

var config = {
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'FunProject',
    charset: 'UTF8_GENERAL_CI'
};

var DB = Bookshelf.initialize({
    client: 'mysql',
    connection: config
});

module.exports.DB = DB;