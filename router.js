var express = require('express');
const axios = require('axios');
const fs = require('fs');
const path = require('path');
var router = express.Router();
var bodyParser = require('body-parser');
var payerConfig = require('./config/payerConfig.json');
const fileUpdater = require('./utils/FileUpdater');
require('dotenv').config();

//Use Section
router.use(bodyParser.urlencoded({ extended: true }));
router.use(bodyParser.json());


//Post Section
router.post('/provider-login', (req, res) => {
    res.redirect('/provider-login');
});

router.post('/payer-login', (req, res) => {
    res.redirect('/payer-login');
});

router.post('/payer/oauthCallback', (req, res) => {
    const accessToken = req.body.access_token;
    const instanceUrl = req.body.instance_url;
    const redirectUrl = `/payer/oauthCallback?access_token=${accessToken}`;
    const filePath = path.join(__dirname, `config/payerConfig.json`);
    fileUpdater.updateFile(filePath, {
        accessToken : accessToken,
        instanceUrl : instanceUrl
    })
    .then(() => {
        console.log('Update complete');
        res.json({ success: true, token: accessToken, redirectUrl: redirectUrl});
    })
    .catch(err => console.error('Update failed:', err)); 
});

router.post('/provider/oauthCallback', (req, res) => {
    const accessToken = req.body.access_token;
    const instanceUrl = req.body.instance_url;
    const redirectUrl = `/provider/oauthCallback?access_token=${accessToken}`;
    const filePath = path.join(__dirname, `config/providerConfig.json`);
    fileUpdater.updateFile(filePath, {
        accessToken : accessToken,
        instanceUrl : instanceUrl
    })
    .then(() => {
        console.log('Update complete');
        res.json({ success: true, token: accessToken, redirectUrl: redirectUrl});
    })
    .catch(err => console.error('Update failed:', err)); 
});

router.post('/updateConfig', (req, res) => {
    const userType = req.body.userType;
    const baseUrl = req.body.baseUrl;
    const clientId = req.body.clientId;
    const callbackUrl = req.body.callbackUrl;
    const authUrl = path.join(baseUrl,'services/oauth2/authorize');
    const fileName = (userType == 'payerLogin' ? 'payerConfig.json' : 'providerConfig.json');
    const filePath = path.join(__dirname, `config/${fileName}`);

    fileUpdater.updateFile(filePath, {
        baseUrl: baseUrl,
        clientId: clientId,
        callbackUrl: callbackUrl,
        authUrl : authUrl
    })
    .then(() => {
        console.log('Update complete');
        res.json({ success: true});
    })
    .catch(err => console.error('Update failed:', err));       
});

router.post('/call-ip', async (req, res) => {
    console.log(payerConfig.instanceUrl);
    const integrationProcedureUrl = path.join(payerConfig.instanceUrl, process.env.SALESFORCE_INTEGRATION_PROCEDURE_URL);
    const requestDataPath = path.join(__dirname, 'requestData.json');
    const accessToken = payerConfig.accessToken;
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




//Get Section
router.get('/', function (req, res) {
    res.render('home', {title:"Login System"});
  });

router.get('/provider-login', (req, res) => {
    res.render('providerLogin', {title:"Provider Login"});
});

router.get('/payer-login', (req, res) => {
    res.render('payerLogin', {title:"Payer Login"});
});


//gets executed by the callback from oauth
router.get('/payer/callback', (req, res) => { 
    res.render('callback', {
        oauthCallBackUrl : "/payer/oauthCallback"
    });
});

router.get('/provider/callback', (req, res) => { 
    res.render('callback', {
        oauthCallBackUrl : "/provider/oauthCallback"
    });
});


router.get('/payer/oauthCallback', (req, res) => {
    accessToken = req.query.access_token;
    res.render('oauthCallback', {
        token: accessToken,title:"IP Call"
    });
});

router.get('/provider/oauthCallback', (req, res) => {
    accessToken = req.query.access_token;
    res.render('oauthCallback', {
        token: accessToken,title:"IP Call"
    });
});

router.get('/payer/crdResponse', (req, res) => {
    data = JSON.parse(req.query.data);
    res.render('crdResponse', {
        title:"CRD Response", 
        cards: data.cards, 
        systemActions: data.systemActions
    });
});

module.exports = router;