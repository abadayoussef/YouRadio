require('dotenv').config();
const express = require('express');
const passport = require('passport');
const bcrypt = require('bcrypt');
const localStrategy = require('passport-local').Strategy;
const ejs = require('ejs');
const mysql = require('mysql');
const session = require('express-session');
const mysqlStore = require('express-mysql-session')(session);
const flash = require('express-flash');
const {
    check,
    validationResult
} = require('express-validator');


const connectOptions = {
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    port: process.env.DB_PORT
};

const con = mysql.createConnection(connectOptions);
const sessionStore = new mysqlStore(connectOptions);


const app = express();
app.set('view engine', 'ejs');
app.use('/resources', express.static(__dirname + '\\public'));
app.use(express.json());
app.use(express.urlencoded({
    extended: false
}));
app.use(session({
    key: process.env.SESSION_NAME,
    secret: process.env.SESSION_SECRETE_KEY,
    store: sessionStore,
    resave: false,
    saveUninitialized: true,
    cookie: {
        maxAge: 2678400000
    } // 31 days
}));
app.use(flash());

function validPassword(password, hash) {
    return bcrypt.compareSync(password, hash);
}

function genPassword(password) {
    const salt = bcrypt.genSaltSync(10);
    const hash = bcrypt.hashSync(password, salt);
    return hash;
}

const customFields = {
    usernameField: 'username',
    passwordField: 'password'
};


const verifyCallback = (username, password, done) => {
    let sql = "SELECT id, password FROM users where username = ? or email = ?";
    con.query(sql, [username, username], function (err, result, fields) {
        if (err) {
            return done(err);
        }
        result = JSON.parse(JSON.stringify(result))[0];
        if (!result) {
            return done(null, false, {
                message: 'Incorrect username or email.'
            });
        }
        if (!validPassword(password, result.password)) {
            return done(null, false, {
                message: 'Incorrect password.'
            });
        }
        return done(null, result);
    });
}


const strategy = new localStrategy(customFields, verifyCallback);
passport.use(strategy);


passport.serializeUser(function (id, done) {
    done(null, id); //put the user id in the session
});

passport.deserializeUser(function (result, done) {
    let sql = "SELECT username, access_level_id, country_id FROM users where id = ?";
    con.query(sql, [result.id], function (err, result, fields) {
        done(err, JSON.parse(JSON.stringify(result))[0]); //grab the user out of the session and find it from database
    });
});

app.use(passport.initialize()); //refresh the passport every time user use a route, in case a session expire 
//passport must be aware of that

app.use(passport.session()); //anything we store in req.session the passport will have access to it
//wether it was default express.session or express-session module


// app.use((req, res, next) => {
//     //console.log(req.session);
//     //console.log(req.user);
//     next();
// })


con.connect(function (err) {
    if (err) throw err;
    console.log("Connected!");
});

app.get('/', (req, res) => {
    if (req.isAuthenticated())
        res.render('home');
    else
        res.render('login');
});

app.get('/logout', (req, res) => {
    req.logout();
    res.redirect('/');
})

function queryCheck(connection, query, value) {
    return new Promise((resolve, reject) => {
        connection.query(query, [value], (err, result) => {
            if (err) throw err;
            resolve(result);
        });
    });
}

app.post('/signIn',
    [
        check('username').exists().trim().not().isEmpty().withMessage('username is required').trim().isLength({ max: 20, min: 3 }).withMessage('username must be 3 and 20 length').custom(function (value) {
            if (!value.match(/^(?=.{3,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$/)) throw new Error('username uses invalid pattern');
            return true;
        }).custom(function (value) {
            return queryCheck(con, "SELECT * From users WHERE username = ?", value)
                .then(result => {
                    if (result.length > 0) return Promise.reject('This username is already taken');
                });
        }),
        check('email').exists().trim().not().isEmpty().withMessage('email is required').trim().isEmail().withMessage('email is not valid').custom(value => {
            return queryCheck(con, "SELECT * From users WHERE email = ?", value)
                .then(result => {
                    if (result.length > 0) return Promise.reject('This email is already is use');
                });
        }),
        check('country').exists().trim().not().isEmpty().withMessage('country is required').isInt().custom(value => {
            return queryCheck(con, "SELECT * From countries WHERE id = ?", value)
                .then(result => {
                    if (result.length === 0) return Promise.reject('This country is not in our database');
                });
        }),
        check('password').exists().trim().not().isEmpty().withMessage('password is required').isLength({ max: 100, min: 5 }).withMessage('Password must be 5 to 100 long'),
        check('rePassword').exists().trim().not().isEmpty().withMessage('password confirmation is required').custom((value, { req }) => {
            if (value !== req.body.password) {
                throw new Error('Passwords are not match');
            }
            return true;
        })
    ],
    function (req, res, next) {
   
        const errors = validationResult(req).array();
        if (errors.length > 0) {
            return res.json({
                errors: errors
            });
        }

        let sql = "INSERT INTO users(username, email, password, country_id, access_level_id) values (?,?,?,?,?)";
        con.query(
            sql, [req.body.username, req.body.email, genPassword(req.body.password), req.body.country, 3],
            function (err, result, fields) {
                if (err) throw err;
                next();
            }
        );
    },
    passport.authenticate('local', { failureRedirect: '/', successRedirect: '/session'})
);

app.get('/session', (req, res) => {
    res.redirect('/');
});

app.post('/login', passport.authenticate('local', {
    failureRedirect: '/',
    successRedirect: '/',
    badRequestMessage: 'empty submission',
    failureFlash: true,
    successFlash: true
})); //called by verifyCallback >> deserializeUser

app.get('/api/mostrecent', (req, res) => {
    let sql = "SELECT id, name, description, image, website, stream_url from radios WHERE is_visible = 1 order by created_at ASC";
    con.query(sql, [], function (err, result, field) {
        if (err) throw err;
        res.json(result);
    })
});


const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`listening on port ${port}`));