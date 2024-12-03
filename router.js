var express = require('express');
const axios = require('axios');
const fs = require('fs');
const path = require('path');
var router = express.Router();
var bodyParser = require('body-parser');
var payerConfigFilePath = path.join(__dirname, 'config/payerConfig.json');
const fileUpdater = require('./utils/FileUpdater');
const utils = require('./utils/utils');
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
        console.log('Update complete from payer callback');
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

router.post('/fetchData', async (req, res) => {

    const {instanceUrl,accessToken}  = fileUpdater.getFile(payerConfigFilePath,['instanceUrl','accessToken']);
    const input = req.body;

    const queryTerm = (input.isSosl == true ? 'search': 'query');
    const subApiString = `services/data/v62.0/${queryTerm}?q=` + (input.isSosl == true ? utils.makeSoslQuery(input): input.queryString);
    const apiString = path.join(instanceUrl,subApiString);

    const apiUrl  = encodeURI(apiString);
    try {
        const response = await axios.get(apiUrl, {
            headers: {
                'Authorization': `Bearer ${accessToken}`,
                'Content-Type': 'application/json'
            }
        });
        res.json({
            success: true,
            data: response.data
        });
    } catch (error) {
        console.error('Error making call SOSL', error);
        res.status(500).json({
            success: false,
            error: error.message
        });
    }

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
        authUrl : authUrl,
        instanceUrl : baseUrl
    })
    .then(() => {
        console.log('Update complete');
        res.json({ success: true});
    })
    .catch(err => console.error('Update failed:', err));       
});

router.post('/call-ip', async (req, res) => {
    const {instanceUrl,accessToken, ipType, ipSubtype}  = fileUpdater.getFile(payerConfigFilePath,['instanceUrl','accessToken', 'ipType', 'ipSubtype'],)
    const ipName = ipType+'_'+ipSubtype;
    const integrationProcedureUrl = path.join(instanceUrl, process.env.SALESFORCE_INTEGRATION_PROCEDURE_URL_BASE, ipName);

    let requestData = {};
    try {
        requestData = req.body.input;
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

router.post('/read-order-select-medication-sample-structure', async (req, res) => {
    var sampleMedicationFilePath = path.join(__dirname, 'config/orderSelectMedicationRequestStructure.json');
    const data =  fileUpdater.getFile(sampleMedicationFilePath);
    res.json({ success: true, data: data});
});

router.post('/read-order-select-request-base-structure', async (req, res) => {
    var samplerequestFilePath = path.join(__dirname, 'config/orderSelectRequestBaseStructure.json');
    const data =  fileUpdater.getFile(samplerequestFilePath);
    res.json({ success: true, data: data});
});

router.post('/read-order-select-service-sample-structure', async (req, res) => {
    var sampleServiceFilePath = path.join(__dirname, 'config/orderSelectServiceRequestStructure.json');
    const data =  fileUpdater.getFile(sampleServiceFilePath);
    res.json({ success: true, data: data});
});

router.post('/invoke-ip', async (req, res) => {
    // We know the type - everything. I see when i hit the request again and again payerConfig.json is turing in null values.
    // Understand why this is happening and fix it.
    const {instanceUrl,accessToken}  = fileUpdater.getFile(payerConfigFilePath,['instanceUrl','accessToken']);
    const integrationProcedureUrl = path.join(instanceUrl, process.env.SALESFORCE_INTEGRATION_PROCEDURE_URL_BASE, req.body.ipName);
    try {
        const response = await axios.post(integrationProcedureUrl, req.body.input, {
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
        res.status(500).json({
            success: false,
            error: error.message
        });
    }
});

router.post('/call-disc-api', async (req, res) => {
    const input = req.body;
    const processType = input.processType;
    const discoveryApiRequestQuery = (processType == 'crd') ? process.env.SALESFORCE_CRD_DISCOVERY_API_QUERY : (processType == 'dtr') ? process.env.SALESFORCE_DTR_DISCOVERY_API_QUERY : null;
    const {instanceUrl,accessToken}  = fileUpdater.getFile(payerConfigFilePath,['instanceUrl','accessToken'],)
    const discoveryApiRequestUrl = path.join(instanceUrl, discoveryApiRequestQuery);

    try {
        const response = await axios.get(discoveryApiRequestUrl, {
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
        console.error('Error making call to Discovery API:', error);
        res.status(500).json({
            success: false,
            error: error.message
        });
    }
});

router.post('/useService', async (req, res) => {

    const filePath = path.join(__dirname, `config/payerConfig.json`);
    const rowData = req.body;
    console.log('in use Service: ' + rowData);

    fileUpdater.updateFile(filePath, {
       ipType : rowData.Type,
       ipSubtype : rowData.SubType
    })
    .then(() => {
        console.log('Update complete');
        res.json({ success: true});
    })
    .catch(err => console.error('Update failed:', err));   
});

router.post('/fetchQuestionnaire', async (req, res) => {
    const {instanceUrl,accessToken}  = fileUpdater.getFile(payerConfigFilePath,['instanceUrl','accessToken'],);
    const getQuestionnaireApiUrlBase = path.join(instanceUrl, process.env.SALESFORCE_DTR_GET_QUESTIONNAIRE_API_QUERY);
    const omniprocessId = req.body.userInput;
    const getQuestionnaireApiUrl = path.join(getQuestionnaireApiUrlBase, omniprocessId) + process.env.SALESFORCE_DTR_GET_QUESTIONNAIRE_API_QUERY_PARAMETER;
    try {
        const response = await axios.get(getQuestionnaireApiUrl, {
            headers: {
                'Authorization': `Bearer ${accessToken}`,
                'Content-Type': 'application/json'
            }
        });
        //send result back to oauth
        const root = JSON.parse(JSON.stringify(response.data));
        res.render('questionnaire', {
            title:"DTR Questionnaire",
            root: root
        })
    } catch (error) {
        console.error('Error making call to Get Questionnaire API:', error);
        res.send('Sorry');
    }
});

router.post('/fetchQuestionnaireResponse', async (req, res) => {
    try {
        const questionnaireId = req.body.questionnaireId;
        const filePath = path.join(__dirname, `config/questionnaireList.json`);
        const questionnaireList  = fileUpdater.getFile(filePath);

        if(questionnaireList) {
            const foundElement = questionnaireList.questionnaireIds.find(element => element.Id === questionnaireId);
            if(foundElement) {
                return res.status(200).json({ success: true, data: foundElement.response});
            } else {
                return res.status(200).json({success: false});
            }
        }
    } catch (error) {
        console.error('Error in /fetchQuestionnaireResponse:', error);
        return res.status(500).json({ success: false, message: 'Internal server error.' });
    }
});



router.post('/handleQuestionnaireSubmit', async (req, res) => {
    const filePath = path.join(__dirname, `config/questionnaireList.json`);
    const questionnaireList  = fileUpdater.getFile(filePath);

    const formResponse = req.body.response;
    const questionnaireId = req.body.questionnaireId;

    questionnaireList.questionnaireIds.forEach(item => {
        if(item.Id == questionnaireId){
            item.response  = formResponse;
            item.isFilled  = true;
        }
    });

    fileUpdater.updateFile(filePath, {
        questionnaireIds : questionnaireList.questionnaireIds
    })
    .then(() => {
        console.log('Update complete for questionnaires');
        res.json({ success: true});
    })
    .catch(err => console.error('Update failed:', err)); 

});



//Get Section
router.get('/', async function (req, res) {
    const payerConfigFilePath = path.join(__dirname, `config/payerConfig.json`);
    const providerConfigFilePath = path.join(__dirname, `config/providerConfig.json`);
    const isPayerConfigured = await fileUpdater.isConfigured(payerConfigFilePath, ["accessToken", "instanceUrl"]);
    const isProviderConfigured = await fileUpdater.isConfigured(providerConfigFilePath,["accessToken", "instanceUrl"]);
    res.render('home', {title:"Login System", providerConfiguredAlready:isProviderConfigured, payerConfiguredAlready:isPayerConfigured});
  });

router.get('/provider-login', (req, res) => {
    res.render('providerLogin', {title:"Provider Login"});
});

router.get('/payer-login', (req, res) => {
    res.render('payerLogin', {title:"Payer Login"});
});


//gets executed by the callback from oauth

router.get('/order-select-form', (req,res)=>{
    res.render('orderSelectRequest')
})

router.get('/retrieve-questionnaire-form', (req,res)=>{
    res.render('retrieveQuestionnaireRequest')
})

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
    res.redirect('/');
});

router.get('/provider/oauthCallback', (req, res) => {
    accessToken = req.query.access_token;
    res.redirect('/');
});

router.get('/payer/crdResponse', (req, res) => {
    data = JSON.parse(req.query.data);
    res.render('crdResponse', {
        title:"CRD Response", 
        cards: data.cards, 
        systemActions: data.systemActions,
        operationalOutcome: data.operationalOutcome != undefined ? data.operationalOutcome : data.operationOutcome
    });
});

router.get('/UM-Workspace', (req, res) => {
    const contextId = req.query.contextId;
    const selectedProcessType = req.query.selectedProcessType;
    res.render('umWorkspace',{
        title:"UM Workspace",
        contextId: contextId,
        selectedProcessType: selectedProcessType
    });
});

router.get('/getTableData', (req, res) => {
    const columns = req.query.columns ? JSON.parse(req.query.columns) : [];
    const rows = req.query.rows ? JSON.parse(req.query.rows) : [];
    res.render('dataTable', { showTable: true, columns, rows }, (err, html) => {
        if (err) {
            console.error('Error rendering table:', err);
            res.status(500).send('Error rendering table.');
        } else {
            res.json({ tableHtml: html });
        }
    });
});

router.get('/fetch-field-value', async (req, res) => {
    try {
        const entity =  'ServiceInfoResponseAction';
        const entityId = '1MOSB0000009ZHt4AM';
        const entityField = 'Context';
        const providerConfig = JSON.parse(fs.readFileSync(path.join(__dirname, 'config/providerConfig.json')));
        const response = await axios.get(`${providerConfig.instanceUrl}/services/data/v62.0/sobjects/${entity}/${entityId}`, {
            headers: {
                Authorization: `Bearer ${providerConfig.accessToken}`
            }
        });

        const fieldValue = response.data[entityField]; 
        //console.log(fieldValue);
        res.send(fieldValue);
    } catch (error) {
        console.error('Error fetching the field value:', error);
        res.json({ success: false, error: 'Failed to fetch the field value.' });
    }
});

router.get('/loadQuestionnaire', (req, res) => {
    const questionnaireInput = JSON.parse(fs.readFileSync(path.join(__dirname, 'backup/questionnaire.json')));
    data = JSON.parse(req.query.data);
    res.render('questionnaire', {
        title:"DTR Questionnaire",
        root: data.root
    })
});

router.get('/launchQuestionnaire', (req, res) => {
    const contextId = req.query.contextId;
    res.render('launchQuestionnaire', {
        title:"DTR Portal",
        contextId: contextId
    })
});

router.get('/dtrResponse', (req, res) => {
    const questionnaireList = JSON.parse(fs.readFileSync(path.join(__dirname, 'config/questionnaireList.json')));
    const payload = {
        "questionnaireIds": questionnaireList.questionnaireIds,
        "operationOutcome": questionnaireList.operationOutcome
    }
    res.render('dtrResponse', {
        title:"DTR Questionnaires",
        questionnaireIds : payload.questionnaireIds,
        operationOutcome : payload.operationOutcome

    })
});

router.get('/typeAhead', (req, res) => {
    res.render('typeAheadUse', {
        title:"Use Typeahead",
    })
});



module.exports = router;