var express = require('express');
const axios = require('axios');
const fs = require('fs');
const path = require('path');
var router = express.Router();
require('dotenv').config();

router.post('/provider-login', (req, res) => {
    res.redirect('/provider-login');
});

router.post('/payer-login', (req, res) => {
    res.redirect('/payer-login');
});

router.get('/provider-login', (req, res) => {
    res.render('providerLogin', {title:"Provider Login"});
});

router.get('/payer-login', (req, res) => {
    res.render('payerLogin', {title:"Payer Login"});
});

let accessToken = '';

//gets executed by the callback from oauth
router.get('/callback', (req, res) => {
    console.log('Callback route hit'); 
    accessToken = req.query.access_token;
    res.render('oauthCallback', {
        token: accessToken,title:"IP Call"
    });
});

router.post('/call-ip', async (req, res) => {
    const integrationProcedureUrl = process.env.SALESFORCE_BASE_URL + process.env.SALESFORCE_INTEGRATION_PROCEDURE_URL;
    const requestDataPath = path.join(__dirname, 'requestData.json');
    let requestData = {};
    try {
        requestData = JSON.parse(fs.readFileSync(requestDataPath, 'utf8'));
        const response = await axios.post(integrationProcedureUrl, requestData, {
            headers: {
                'Authorization': `Bearer ${accessToken}`,
                'Content-Type': 'application/json'
            }
        });
        //send result back to oauth
        res.json({
            success: true,
            data: response.data
        });
    } catch (error) {
        console.error('Error making call to Integration Procedure:', error);
        res.status(500).json({
            success: false,
            error: error.message
        });
    }
});

module.exports = router;