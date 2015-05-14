/**
 * Created by zakirelahi on 13/05/15.
 */



var DB = require('./db').DB;

var User = DB.Model.extend({
    tableName: 'login_credentials',
    idAttribute: 'userId'
});

module.exports = {
    User: User
};