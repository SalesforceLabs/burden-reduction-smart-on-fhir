var express = require('express');
var router = express.Router();

router.post('/provider-login', (req, res) => {
    res.redirect('/route/provider-login');
});

router.post('/payer-login', (req, res) => {
    res.redirect('/route/payer-login');
});

router.get('/provider-login', (req, res) => {
    res.render('providerLogin', {title:"Provider Login"});
});

router.get('/payer-login', (req, res) => {
    res.render('payerLogin', {title:"Payer Login"});
});

module.exports = router;