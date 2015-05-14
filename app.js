var express = require('express');
var path = require('path');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');

var session = require('express-session');
var bcrypt = require('bcrypt-nodejs');
var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;
var app = express();



// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));


var Model = require('./models/model');


//passport is the library that going to take care of the login functionality


passport.use(new LocalStrategy(function(username, password, done) {
    console.log('it entered')
    new Model.User({username: username}).fetch().then(function(data) {
        var user = data;
        if(user === null) {
            return done(null, false, {message: 'Invalid username or password'});
        } else {
            user = data.toJSON();
            if(!bcrypt.compareSync(password, user.password)) {
                return done(null, false, {message: 'Invalid username or password'});
            } else {
                return done(null, user);
            }
        }
    });
}));

passport.serializeUser(function(user, done) {
    console.log('entry1')
    done(null, user.username);
});

passport.deserializeUser(function(username, done) {
    console.log('entry 2')
    new Model.User({username: username}).fetch().then(function(user) {
        done(null, user);
    });
});



app.set('port', process.env.PORT || 3000);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

app.use(cookieParser());
app.use(bodyParser());
app.use(session({secret: 'secret strategic xxzzz code'}));
app.use(passport.initialize());
app.use(passport.session());

require('./controllers')(app)




var server = app.listen(app.get('port'), function(err) {
    if(err) throw err;

    var message = 'Server is running @ http://localhost:' + server.address().port;
    console.log(message);
});




module.exports = app;
