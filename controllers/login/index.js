
var login = require('./login.js')

module.exports = function(app){

    app.get('/', login.index);


// signin
// GET
    app.get('/signin', login.signIn);
// POST
    app.post('/signin', login.signInPost);

// signup
// GET
    app.get('/signup', login.signUp);
// POST
    app.post('/signup', login.signUpPost);
// logout
// GET
    app.get('/signout', login.signOut);
}